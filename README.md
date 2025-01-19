
### AM_receiver_SDR

In this repo there's a square law demodulation circuit for AM signals, made by using model based design techniques.
The content of each folder is summarised below:

* golden_model: holds the fixed point simulink model golden reference model,
* audio: holds the input audio files to be modulated,
* references: is the folder with the referenced used as a starting point for the model,
* fixed_point_designer: in this folder there's the model converted in fixed point arithmetic,
* embeded coder: there's the C code automatically generated with embedded coder,
* hdl_coder: there's the VHDL code automatically generated with HDL coder,
* model_composer_models: there's the model created with Xilinx model composer.

The "README.pdf" file is a short report describing the process followed in order to get the models and code artifacts in the repo.
