from scipy.io import wavfile
samplerate, data = wavfile.read('./positive_sample.wav')
buff_to_write = [str(x) for x in data]
# save this buffer to a txt file
with open('./positive.h', 'w') as f:
    for item in buff_to_write:
        f.write("%s, " % item)
samplerate, data = wavfile.read('./negative_sample.wav')
buff_to_write = [str(x) for x in data]
# save this buffer to a txt file
with open('./negative.h', 'w') as f:
    for item in buff_to_write:
        f.write("%s, " % item)
