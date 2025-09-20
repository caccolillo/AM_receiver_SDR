# AM_receiver_SDR Repository Analysis

*Repository: https://github.com/caccolillo/AM_receiver_SDR*  
*Analysis Date: September 20, 2025*

## Project Overview

The **caccolillo/AM_receiver_SDR** repository contains a square law demodulation circuit for AM signals, made by using model based design techniques. The project demonstrates a comprehensive model-based design workflow for implementing an Amplitude Modulation (AM) receiver using Software Defined Radio (SDR) principles.

## Repository Structure and Content

The repository is organized into seven main folders, each representing a different stage or aspect of the model-based design process:

### 1. golden_model
Contains the fixed point simulink model golden reference model - this serves as the baseline reference implementation that other versions are compared against.

### 2. audio
Contains the input audio files to be modulated - these are likely test audio signals used to validate the AM receiver's performance.

### 3. references
Contains the referenced used as a starting point for the model - this probably includes academic papers, technical specifications, or existing implementations that informed the design.

### 4. fixed_point_designer
Contains the model converted in fixed point arithmetic - this represents the transition from floating-point to fixed-point implementation, crucial for hardware deployment where computational resources are limited.

### 5. embedded_coder
Contains the C code automatically generated with embedded coder - this shows the automatic code generation capabilities of MATLAB/Simulink for embedded system deployment.

### 6. hdl_coder
Contains the VHDL code automatically generated with HDL coder - this represents the hardware description language implementation suitable for FPGA deployment.

### 7. model_composer_models
Contains the model created with Xilinx model composer - this likely shows integration with Xilinx's development environment for FPGA implementation.

## Technical Approach

The project employs **square law demodulation** for AM signal processing. Square law demodulation is a non-coherent detection method where the AM signal is squared (multiplied by itself) to extract the modulating information. This technique is simpler than coherent demodulation as it doesn't require carrier phase recovery.

## Model-Based Design Workflow

The repository demonstrates a complete model-based design flow:

1. **Reference Model Development** - Starting with mathematical models and references
2. **Simulink Implementation** - Creating a golden reference model in MATLAB/Simulink
3. **Fixed-Point Conversion** - Optimizing for hardware constraints
4. **Code Generation** - Automatic generation of both software (C) and hardware (VHDL) implementations
5. **Hardware Integration** - Xilinx-specific implementation for FPGA deployment

## Technical Implementation Details

### Square Law Demodulation
- **Method**: Non-coherent AM demodulation
- **Process**: Signal is squared to extract modulating information
- **Advantages**: Simpler than coherent methods, no carrier phase recovery required
- **Applications**: Suitable for AM broadcast reception and SDR implementations

### Development Tools Used
- **MATLAB/Simulink**: Primary modeling environment
- **Fixed-Point Designer**: For arithmetic optimization
- **Embedded Coder**: C code generation for embedded systems
- **HDL Coder**: VHDL code generation for FPGA implementation
- **Xilinx Model Composer**: FPGA-specific development integration

## Documentation

The repository includes a **README.pdf** file which is a short report describing the process followed in order to get the models and code artifacts in the repo.

## Educational and Professional Value

This repository serves as an excellent example of:

### SDR Implementation
- Practical software-defined radio receiver design
- Real-world application of digital signal processing concepts
- Demonstration of AM demodulation techniques

### Model-Based Engineering
- Using MATLAB/Simulink toolchain for systematic development
- Structured approach from concept to implementation
- Verification and validation methodologies

### Hardware-Software Co-design
- Complete pipeline from algorithm to implementation
- Both embedded software and FPGA hardware targets
- Automatic code generation workflows

### Verification and Validation
- Golden model approach for reference comparison
- Multi-target validation across different implementations
- Systematic testing with audio input files

## Target Audiences

### Students and Educators
- Digital Signal Processing coursework
- SDR and communications system design
- Model-based design methodologies
- FPGA development workflows

### Professional Engineers
- Reference implementation for AM receiver design
- Best practices in model-based development
- Code generation and deployment strategies
- Hardware-software co-design examples

### Researchers
- Baseline implementation for comparative studies
- Starting point for enhanced AM demodulation techniques
- Model-based design workflow optimization

## Key Takeaways

1. **Comprehensive Workflow**: Demonstrates end-to-end development from concept to hardware
2. **Tool Integration**: Effective use of MATLAB/Simulink ecosystem for multi-target deployment
3. **Validation Strategy**: Golden model approach ensures consistency across implementations
4. **Practical Application**: Real AM receiver implementation with test audio files
5. **Educational Value**: Well-structured repository suitable for learning and reference

This repository represents a well-executed example of modern digital signal processing development, showcasing the power of model-based design in creating robust, verifiable, and deployable AM receiver implementations.
