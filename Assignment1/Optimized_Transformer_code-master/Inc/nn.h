#ifndef __NN_H__
#define __NN_H__

#include "arm_nnfunctions.h"

class NN{
  public:
    //NN();
	virtual ~NN();
    virtual void run_nn(q7_t* in_data, q7_t* out_data)=0;
    int get_num_mfcc_features();
    int get_num_frames();
    int get_frame_len();
    int get_frame_shift();
    int get_num_out_classes();
    int get_in_dec_bits();

  protected:
    int frame_len;
    int frame_shift;
    int num_mfcc_features;
    int num_frames;
    int num_out_classes;
    int in_dec_bits;

};

#endif
