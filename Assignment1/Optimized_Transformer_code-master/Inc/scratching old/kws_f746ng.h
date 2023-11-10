#ifndef __KWS_F746NG_H__
#define __KWS_F746NG_H__

#include "kws_ds_cnn.h"
//#include "kws_dnn.h"

// Change the parent class to KWS_DNN to switch to DNN model
//class KWS_F746NG : public KWS_DNN {
class KWS_F746NG : public KWS_DS_CNN {
public:
  KWS_F746NG(int recording_win, int sliding_window_len);
  ~KWS_F746NG();
  void start_kws();
  void set_volume(int vol);
  int16_t* audio_buffer_in;
  //for debugging: microphone to headphone loopback
  int16_t* audio_buffer_out; 

private:
  //AUDIO_DISCO_F746NG audio;

};

#endif
