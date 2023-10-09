
#ifndef __KWS_DNN_H__
#define __KWS_DNN_H__

#include "kws.h"
#include "dnn.h"

class KWS_DNN : public KWS {
public:
  KWS_DNN(int recording_win, int sliding_window_len);
  KWS_DNN(int16_t* audio_buffer);
  ~KWS_DNN();
};

#endif
