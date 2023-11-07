//#include "kws_dnn.h"
////#include "dnn.h"
//
//KWS_DNN::KWS_DNN(int record_win, int sliding_win_len)
//{
//  nn = new DNN();
//  recording_win = record_win;
//  sliding_window_len = sliding_win_len;
//  init_kws();
//}
//
//KWS_DNN::KWS_DNN(int16_t* audio_data_buffer)
//{
//  nn = new DNN();
//  audio_buffer = audio_data_buffer;
//  recording_win = nn->get_num_frames();
//  sliding_window_len = 1;
//  init_kws();
//}
//
//KWS_DNN::~KWS_DNN()
//{
//  delete nn;
//}
//
