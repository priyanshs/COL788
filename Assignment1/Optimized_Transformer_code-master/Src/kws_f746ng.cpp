//#include "kws_f746ng.h"
//#include "SensorTile_conf.h"
//
//KWS_F746NG::KWS_F746NG(int recording_win, int sliding_window_len)
//:KWS_DS_CNN(recording_win, sliding_window_len){
////:KWS_DNN(recording_win, sliding_window_len){
//// Change the parent class to KWS_DNN to switch to DNN model
//
//	 audio_buffer = new int16_t[800];
//	 audio_buffer_in = new int16_t[audio_block_size*4]; //2 (L/R) channels x 2 for ping-pong buffers
//	 audio_buffer_out = new int16_t[audio_block_size*4]; //2 (L/R) channels x 2 for ping-pong buffers
//}
//
//KWS_F746NG::~KWS_F746NG()
//{
//  delete audio_buffer;
//  delete audio_buffer_in;
//  delete audio_buffer_out;
//}
//
//void KWS_F746NG::set_volume(int vol)
//{
//  //audio.IN_SetVolume(vol);
//}
//
//void KWS_F746NG::start_kws()
//{
//  // Initialize buffers
//
//
//  // May need to adjust volume to get better accuracy/user-experience
//  /*audio.IN_SetVolume(75);
//
//  // Start Recording
//  audio.IN_Record((uint16_t*)audio_buffer_in, audio_block_size * 4);
//
//  // Start Playback for listening to what is being classified
//  audio.OUT_SetAudioFrameSlot(CODEC_AUDIOFRAME_SLOT_02);
//  audio.OUT_Play((uint16_t*)audio_buffer_out, audio_block_size * 8);*/
//
//}
