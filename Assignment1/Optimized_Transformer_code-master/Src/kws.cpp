//#include <stdio.h>
//#include "kws.h"
//#include "usbd_cdc_if.h"
//#include "usbd_cdc_interface.h"
//
//
//#define FILL_BUFFER_SIZE 640
//extern int16_t Proc_Buffer_f[FILL_BUFFER_SIZE];
//
//KWS::KWS()
//{
//}
//
//KWS::~KWS()
//{
//  delete mfcc;
//  delete mfcc_buffer;
//  delete output;
//  delete predictions;
//  delete averaged_output;
//
//}
//
//
//void KWS::init_kws()
//{
//  num_mfcc_features = nn->get_num_mfcc_features();//10
//  num_frames = nn->get_num_frames(); //49
//  frame_len = nn->get_frame_len(); //640
//  frame_shift = nn->get_frame_shift();//320
//  int mfcc_dec_bits = nn->get_in_dec_bits();//1
//  num_out_classes = nn->get_num_out_classes();//12
//  mfcc = new MFCC(num_mfcc_features, frame_len, mfcc_dec_bits);
//  mfcc_buffer = new q7_t[num_frames*num_mfcc_features];
//  output = new q7_t[num_out_classes];
//  averaged_output = new q7_t[num_out_classes];
//  predictions = new q7_t[sliding_window_len*num_out_classes];
//  audio_block_size = recording_win*frame_shift;//960
//  audio_buffer_size = audio_block_size + frame_len - frame_shift;//1280
//
//}
//
//void KWS::extract_features()
//{
//  if(num_frames>recording_win) {
//    //move old features left
//    memmove(mfcc_buffer,mfcc_buffer+(recording_win*num_mfcc_features),(num_frames-recording_win)*num_mfcc_features);
//  }
//  //compute features only for the newly recorded audio
//  int32_t mfcc_buffer_head = (num_frames-recording_win)*num_mfcc_features;
//  for (uint16_t f = 0; f < recording_win; f++) {
//    //mfcc->mfcc_compute(audio_buffer+(f*frame_shift),&mfcc_buffer[mfcc_buffer_head]);
//	mfcc->mfcc_compute(Proc_Buffer_f+(f*frame_shift),&mfcc_buffer[mfcc_buffer_head]);
//    mfcc_buffer_head += num_mfcc_features;
//  }
////  STLBLE_PRINTF("in feature extraction...\r\n");
// }
//
//void KWS::classify()
//{
//  nn->run_nn(mfcc_buffer, output);
//  // Softmax
//  arm_softmax_q7(output,num_out_classes,output);
//}
//
//int KWS::get_top_class(q7_t* prediction)
//{
//  int max_ind=0;
//  int max_val=-128;
//  for(int i=0;i<num_out_classes;i++) {
//    if(max_val<prediction[i]) {
//    	//("cgg");
//
//    	max_val = prediction[i];
//      max_ind = i;
//
//    }
//  }
//  return max_ind;
//}
//
//
//
//void KWS::average_predictions()
//{
//  // shift the old predictions left
//  arm_copy_q7((q7_t *)(predictions+num_out_classes), (q7_t *)predictions, (sliding_window_len-1)*num_out_classes);
//  // add new predictions at the end
//  arm_copy_q7((q7_t *)output, (q7_t *)(predictions+(sliding_window_len-1)*num_out_classes), num_out_classes);
//  //compute averages
//  int sum;
//  for(int j=0;j<num_out_classes;j++) {
//    sum=0;
//    for(int i=0;i<sliding_window_len;i++)
//      sum += predictions[i*num_out_classes+j];
//    averaged_output[j] = (q7_t)(sum/sliding_window_len);
//  }
//}
//
