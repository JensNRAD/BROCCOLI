#!/bin/bash

BROCCOLI_GIT_DIRECTORY=`git rev-parse --show-toplevel`

OPENCL_DIRECTORY=/usr/local/cuda-5.5/include/CL #Containing opencl.h
# OPENCL_DIRECTORY=/opt/AMDAPP/include/CL # For AMD OpenCL package
# OPENCL_DIRECTORY2=/opt/AMDAPP/include # For AMD OpenCL package


# Compile BROCCOLI

DEBUG_FLAGS="-O0 -g"
RELEASE_FLAGS="-O3 -DNDEBUG"

FLAGS=${RELEASE_FLAGS}

# Using nvcc from the CUDA toolkit
nvcc -I${OPENCL_DIRECTORY} -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/Eigen ${FLAGS} -m64 -Xcompiler -fPIC -c -o broccoli_lib.o broccoli_lib.cpp

# Using g++
# g++ -I${OPENCL_DIRECTORY} -I${OPENCL_DIRECTORY2} -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/Eigen ${FLAGS} -m64 -fPIC -c -o broccoli_lib.o broccoli_lib.cpp

# Make a library
ar rcs libBROCCOLI_LIB.a broccoli_lib.o
