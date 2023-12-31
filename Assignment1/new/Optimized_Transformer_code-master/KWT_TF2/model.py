import tensorflow as tf
from tensorflow.keras.layers import (
    Dense,
    Dropout,
    LayerNormalization,
)
import tensorflow_addons as tfa


class MultiHeadSelfAttention(tf.keras.layers.Layer):
    """
    Class for Multi Head Self Attention layer
    """
    def __init__(self, embed_dim, num_heads=8):
        super(MultiHeadSelfAttention, self).__init__()
        self.embed_dim = embed_dim
        self.num_heads = num_heads
        if embed_dim % num_heads != 0:
            raise ValueError(
                f"embedding dimension = {embed_dim} should be divisible by number of heads = {num_heads}"
            )
        self.projection_dim = embed_dim // num_heads
        self.query_dense = Dense(embed_dim)
        self.key_dense = Dense(embed_dim)
        self.value_dense = Dense(embed_dim)
        self.combine_heads = Dense(embed_dim)

    def attention(self, query, key, value):
        score = tf.matmul(query, key, transpose_b=True)
        dim_key = tf.cast(tf.shape(key)[-1], tf.float32)
        scaled_score = score / tf.math.sqrt(dim_key)
        weights = tf.nn.softmax(scaled_score, axis=-1)
        output = tf.matmul(weights, value)
        return output, weights

    def separate_heads(self, x, batch_size):
        x = tf.reshape(
            x, (batch_size, -1, self.num_heads, self.projection_dim)
        )
        return tf.transpose(x, perm=[0, 2, 1, 3])

    def call(self, inputs):
        batch_size = tf.shape(inputs)[0]
        query = self.query_dense(inputs)
        key = self.key_dense(inputs)
        value = self.value_dense(inputs)
        query = self.separate_heads(query, batch_size)
        key = self.separate_heads(key, batch_size)
        value = self.separate_heads(value, batch_size)

        attention, weights = self.attention(query, key, value)
        attention = tf.transpose(attention, perm=[0, 2, 1, 3])
        concat_attention = tf.reshape(
            attention, (batch_size, -1, self.embed_dim)
        )
        output = self.combine_heads(concat_attention)
        return output


class TransformerBlock(tf.keras.layers.Layer):
    """
    Prenorm transformer block of  KWS streaming layer.
    """
    def __init__(self, embed_dim, num_heads, mlp_dim, dropout=0.1):
        super(TransformerBlock, self).__init__()
        self.att = MultiHeadSelfAttention(embed_dim, num_heads)
        self.mlp = tf.keras.Sequential(
            [
                Dense(mlp_dim),
                Dropout(dropout),
                Dense(embed_dim),
                Dropout(dropout),
            ]
        )
        # self.layernorm1 = LayerNormalization(epsilon=1e-6)
        # self.layernorm2 = LayerNormalization(epsilon=1e-6)
        self.dropout1 = Dropout(dropout)
        self.dropout2 = Dropout(dropout)

    def call(self, inputs, training):
        # inputs_norm = inputs
        inputs_norm = tf.math.l2_normalize(inputs)
        # inputs_norm = self.layernorm1(inputs)
        attn_output = self.att(inputs_norm)
        attn_output = self.dropout1(attn_output, training=training)
        out1 = attn_output + inputs
        # print(f'out 1 shape: {out1.shape}')

        # out1_norm = out1
        out1_norm = tf.math.l2_normalize(out1)

        # out1_norm = self.layernorm2(out1)
        mlp_output = self.mlp(out1_norm)
        mlp_output = self.dropout2(mlp_output, training=training)
        # print(f'mlp output shape: {mlp_output.shape}')

        return mlp_output + out1


class KWS_transformer(tf.keras.Model):
    """
    Model architecture of main Key Word Spotting model
    """
    def __init__(self, image_size, patch_size, num_layers, num_classes, d_model, num_heads, mlp_dim, channels=1,
                 dropout=0.1, ):
        super(KWS_transformer, self).__init__()
        self.image_width = image_size[0]
        self.image_height = image_size[1]
        self.patch_width = patch_size[0]
        self.patch_height = patch_size[1]
        self.d_model = d_model
        self.num_layers = num_layers

        num_patches = int((self.image_width * self.image_height) / (self.patch_width * self.patch_height))
        patch_dim = channels * self.patch_width * self.patch_height
        self.patch_dim = patch_dim

        self.pos_emb = self.add_weight("pos_emb", shape=(1, num_patches + 1, d_model))
        self.patch_proj = Dense(d_model)
        self.class_emb = self.add_weight("class_emb", shape=(1, 1, d_model))

        self.enc_layers = [
            TransformerBlock(d_model, num_heads, mlp_dim, dropout)
            for _ in range(num_layers)
        ]

        self.mlp_head = tf.keras.Sequential(
            [
                # LayerNormalization(epsilon=1e-6),
                Dense(num_classes)
            ]
        )

    def custom_transpose(self, x):
        x = tf.concat([tf.reshape(x[:, i:i + 1, :, :, :, :], (1, 20, 1, 49, 2, 1)) for i in range(2)], axis=2)
        x = tf.reshape(x[0:1, :, :, :, :, :], (20, 1, 2, 49, 2, 1))
        x = tf.concat([tf.reshape(x[:, :, :, i:i + 1, :, :], (20, 1, 2, 2, 1, 1)) for i in range(49)], axis=4)
        x = tf.concat([tf.reshape(x[:, :, i:i + 1, :, :, :], (20, 1, 2, 1, 49, 1)) for i in range(2)], axis=3)
        x = tf.reshape(x[:, 0:1, :, :, :, :], (20, 2, 1, 2, 49, 1))
        return x


    # def extract_patches(self, images):
    #     # batch_size = tf.shape(images)[0]
    #     # batch_size = images.shape[0]
    #     # print(images.shape)
    #     # width = tf.shape(images)[1]
    #     # height = tf.shape(images)[2]
    #     #
    #     # pad = [[0, 0], [0, 0]]
    #     # patches = tf.reshape(images, (40, 49, 2, 1))
    #     # a_concat = tf.concat([tf.reshape(a[i:i + 1, :, :], (shape[1], 1, shape[2])) for i in range(shape[0])], axis=1)
    #
    #     # patches = tf.space_to_batch_nd(images, [self.patch_width, self.patch_height], pad)
    #
    #     x = tf.reshape(images, (1, 2, 20, 49, 2, 1))
    #     x = self.custom_transpose(x)
    #     patches = tf.reshape(x, (40, 2, 49, 1))
    #     patches = tf.split(patches, self.patch_height * self.patch_width, 0)
    #     patches = tf.stack(patches, 3)
    #     patches = tf.squeeze(patches, -1)
    #
    #     pad = [[0, 0], [0, 0]]
    #     patches = tf.space_to_batch_nd(images, [self.patch_width, self.patch_height], pad)
    #     patches = tf.reshape(x, (40, 2, 49, 1))
    #     patches = tf.split(patches, self.patch_height * self.patch_width, 0)
    #     patches = tf.stack(patches, 3)
    #     patches = tf.squeeze(patches, -1)
    #     #
    #     # # reshapes to: (height // patch_height, patch_height, width // patch_width, patch_width)
    #     # image_reshaped = tf.reshape(images, [batch_size, width // self.patch_width, self.patch_width, self.patch_width])
    #     # # swaps axis to shape: (height // patch_height, patch_height, width // patch_width, patch_height, patch_width)
    #     # image_transposed = tf.transpose(image_reshaped, [0, 2, 1, 3])
    #     # # reshapes to ((height // patch_height)*(width // patch_width), patch_height, patch_width, 1)
    #     # return tf.reshape(image_transposed, [-1, patch_height, patch_width, 1]
    #     # patches = tf.image.extract_patches(
    #     #     images=images,
    #     #     sizes=[1, self.patch_width, self.patch_height, 1],
    #     #     strides=[1, self.patch_width, self.patch_height, 1],
    #     #     rates=[1, 1, 1, 1],
    #     #     padding='VALID',
    #     # )
    #     patches = tf.reshape(patches, [1, -1, self.patch_dim])
    #     return patches

    def call(self, x, training):
        # x = tf.keras.Input(shape=(1, 40, 98, 1))(x)
        # batch_size = tf.shape(x)[0]
        # patches = self.extract_patches(x)
        patches = tf.reshape(x, [1, -1, self.patch_dim])
        # patches = x
        x = self.patch_proj(patches)
        class_emb = tf.broadcast_to(self.class_emb, [1, 1, self.d_model])
        x = tf.concat([class_emb, x], axis=1)
        x = x + self.pos_emb

        for layer in self.enc_layers:
            x = layer(x, training)

        x = tf.math.l2_normalize(x)
        x = self.mlp_head(x[:, 0])
        return x



