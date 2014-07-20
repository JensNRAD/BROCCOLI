#!/bin/bash

# cp /home/andek/cuda-workspace/BROCCOLI_LIB/Release/libBROCCOLI_LIB.a ../BROCCOLI_LIB

BROCCOLI_GIT_DIRECTORY=`git rev-parse --show-toplevel`
OPENCL_HEADER_DIRECTORY=/usr/include/CL
# OPENCL_HEADER_DIRECTORY2=/usr/local/cuda-5.5/include
# OPENCL_HEADER_DIRECTORY=/opt/AMDAPP/include/CL # For AMD OpenCL package
# OPENCL_HEADER_DIRECTORY2=/opt/AMDAPP/include # For AMD OpenCL package
# OPENCL_LIBRARY_DIRECTORY=/opt/AMDAPP/lib/x86_64/lib
OPENCL_LIBRARY_DIRECTORY=/usr/lib

g++ GetOpenCLInfo.cpp -lBROCCOLI_LIB -I${OPENCL_HEADER_DIRECTORY}  -L${OPENCL_LIBRARY_DIRECTORY} -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/lib -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/Eigen -o GetOpenCLInfo -lOpenCL

# Support for compressed files
g++ MotionCorrection.cpp -lBROCCOLI_LIB -lniftiio -lznz -lz -I${OPENCL_HEADER_DIRECTORY}  -L${OPENCL_LIBRARY_DIRECTORY} -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/lib -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/Eigen -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/niftilib -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/znzlib -o MotionCorrection -lOpenCL

g++ RegisterTwoVolumes.cpp  -lBROCCOLI_LIB -lniftiio -lznz -lz -I${OPENCL_HEADER_DIRECTORY}  -L${OPENCL_LIBRARY_DIRECTORY} -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/lib -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/Eigen -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/niftilib -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/znzlib -o RegisterTwoVolumes -lOpenCL

g++ TransformVolume.cpp  -lBROCCOLI_LIB -lniftiio -lznz -lz -I${OPENCL_HEADER_DIRECTORY}  -L${OPENCL_LIBRARY_DIRECTORY} -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/lib -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/Eigen -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/niftilib -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/znzlib -o TransformVolume -lOpenCL

g++ RandomiseGroupLevel.cpp  -lBROCCOLI_LIB -lniftiio -lznz -lz -I${OPENCL_HEADER_DIRECTORY}  -L${OPENCL_LIBRARY_DIRECTORY} -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/lib -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/Eigen -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/niftilib -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/znzlib -o RandomiseGroupLevel -lOpenCL

g++ FirstLevelAnalysis.cpp  -lBROCCOLI_LIB -lniftiio -lznz -lz -I${OPENCL_HEADER_DIRECTORY}  -L${OPENCL_LIBRARY_DIRECTORY} -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/lib -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/Eigen -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/niftilib -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/znzlib -o FirstLevelAnalysis -lOpenCL

# No support for compressed files
# g++ RegisterTwoVolumes.cpp ${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/niftilib/nifti1_io.c ${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/znzlib/znzlib.c  -lBROCCOLI_LIB -I${OPENCL_HEADER_DIRECTORY} -L${OPENCL_LIBRARY_DIRECTORY} -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -L${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/ -I${BROCCOLI_GIT_DIRECTORY}/code/BROCCOLI_LIB/Eigen -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/niftilib -I${BROCCOLI_GIT_DIRECTORY}/code/Bash_Wrapper/nifticlib-2.0.0/znzlib -o RegisterTwoVolumes -lOpenCL



