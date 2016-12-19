@set OpenCV_DIR=d:\lib\opencv3.1.0\winbuild\vs2013x86\install
@set QTDIR=d:\lib\qt\5.6\msvc2015_64
@set Caffe_DIR=d:\lib\caffe\caffe\build\install

call "d:\lib\caffe\caffe\build\libraries\prependpath.bat"

@set PATH=%QTDIR%\bin;%OpenCV_DIR%\x64\vc12\bin;%PATH%
rem @set OPENSSL_ROOT_DIR=g:\lib\openssl_vs2013_x86
@set cmakeCacheDir=.build
rem @del /F /Q %cmakeCacheDir%
@mkdir %cmakeCacheDir%
@cd %cmakeCacheDir%

@call cmake-gui .\..
