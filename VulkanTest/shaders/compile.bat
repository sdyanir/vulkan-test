@echo off

echo creating folders 32\ and 64\
mkdir 32
mkdir 64

echo Compiling with 32 bit compiler to folder 32\
echo compiling vertex shader.
C:\VulkanSDK\1.0.65.1\Bin32\glslangValidator.exe -V -o 32\vert.spv shader.vert

if errorlevel 1 (
   echo Failure. errorlevel: %errorlevel%
   exit /b %errorlevel%
)

echo compiling fragment shader.
C:\VulkanSDK\1.0.65.1\Bin32\glslangValidator.exe -V -o 32\frag.spv shader.frag

if errorlevel 1 (
   echo Failure. errorlevel: %errorlevel%
   exit /b %errorlevel%
)

rem ----------------------------------------------------------

echo Compiling with 64 bit compiler to folder 64\
echo compiling vertex shader.
C:\VulkanSDK\1.0.65.1\Bin\glslangValidator.exe -V -o 64\vert.spv shader.vert

if errorlevel 1 (
   echo Failure. errorlevel: %errorlevel%
   exit /b %errorlevel%
)

echo compiling fragment shader.
C:\VulkanSDK\1.0.65.1\Bin\glslangValidator.exe -V -o 64\frag.spv shader.frag

if errorlevel 1 (
   echo Failure. errorlevel: %errorlevel%
   exit /b %errorlevel%
)
