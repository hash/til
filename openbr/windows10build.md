### For successfull build
http://openbiometrics.org/docs/install/#windows when building OpenCV 2.4.11

    c:\dev\openbr\build>cmake -G "CodeBlocks - NMake Makefiles" -DCMAKE_PREFIX_PATH="C:/dev/opencv-2.4.11/build/install;C:/Qt/Qt5.4.1/5.4/msvc2013_64" -DCMAKE_INSTALL_PREFIX="./install" -DBR_INSTALL_DEPENDENCIES=ON -DCMAKE_BUILD_TYPE=Release -DOpenCV_DIR="C:/dev/opencv-2.4.11/build" ..

then bug in Eigen/src/Core/MapBase.h
> In theory we could simply refer to Base:Base::operator=, but MSVC does not like Base::Base,
> see bugs 821 and 920.

* fix in:
  * http://eigen.tuxfamily.org/bz/show_bug.cgi?id=920
  
then dont know
    [...]
    Microsoft (R) Windows (R) Resource Compiler Version 10.0.10011.16384
    Copyright (C) Microsoft Corporation.  All rights reserved.

    [ 76%] Building CXX object openbr/CMakeFiles/openbr.dir/openbr_automoc.cpp.obj
    openbr_automoc.cpp
    NMAKE : fatal error U1073: don't know how to make 'C:\dev\opencv-2.4.11\build\lib\opencv_contrib2411.lib'
    Stop.
    NMAKE : fatal error U1077: '"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\BIN\nmake.exe"' : return code '0x2'
    Stop.
    NMAKE : fatal error U1077: '"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\BIN\nmake.exe"' : return code '0x2'
    Stop.
