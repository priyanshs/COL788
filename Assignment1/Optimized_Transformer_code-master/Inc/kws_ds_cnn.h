#ifndef __KWS_DS_CNN_H__
#define __KWS_DS_CNN_H__

#include "kws.h"
#include "ds_cnn.h"

class KWS_DS_CNN : public KWS {
public:
  KWS_DS_CNN(int recording_win, int sliding_window_len);
  KWS_DS_CNN(int16_t* audio_buffer);
  ~KWS_DS_CNN();

};

#endif
