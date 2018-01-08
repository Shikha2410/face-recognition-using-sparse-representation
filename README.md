# Face Recognition using Weighted Sparse Representation

Project Members:

Raheen Mazgaonkar, UFID: 4714 6316

Shikha Mehta, UFID: 4851 9256

Steps to execute: 

I)  Install SPAMS package:
    1) Install C++ compiler for MATLAB as follows:
       Home -> Addons-> Get Addons -> MATLAB Support for MinGW-w64 C/C++ Compiler
    2) In compile.m make the following changes:
	i) Change path_to_compiler (line 73) to the path were MinGW-w64 C/C++ Compiler is installed.
	ii) Change path of spams package (line 169)
    3) On MATLAB command window set path to directory of SPAMS package and run the following commands:
	i) compile 
	ii) start_spams 

    Note:
     This toolbox requires lapack and blas libraries. They are present in the current working directory.   
     In case they are still not detected, move libmwblas.lib and libmwlapack.lib from $MATLAB_DIR \R2017b\extern\lib\win64\microsoft to current folder. (where $MATLAB_DIR indicates your Matlab installation directory).

II) Install Dimensionality reduction toolbox:
	1) Copy the drtoolbox/ folder into the $MATLAB_DIR/toolbox directory (where $MATLAB_DIR indicates your Matlab installation directory). 
	2)  In MATLAB, select 'Set path...' from the File menu, click the 'Add with subfolders...' button, select the folder $MATLAB_DIR/toolbox/drtoolbox in the file dialog, and press Open. 
	    Subsequently, press the Save button in order to save your changes to the Matlab search path.

III) Execute the main file. Change eigenFacesDim & fisherFacesDim if required.
