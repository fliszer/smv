@echo off

IF "%SETUP_IFORT_COMPILER_64%"=="1" GOTO envexist

  set SETUP_IFORT_COMPILER_64=1

  IF DEFINED IFORT_COMPILER14 set IFORT_COMPILER=%IFORT_COMPILER14%
  IF DEFINED IFORT_COMPILER15 set IFORT_COMPILER=%IFORT_COMPILER15%
  IF DEFINED IFORT_COMPILER16 set IFORT_COMPILER=%IFORT_COMPILER16%
  IF DEFINED IFORT_COMPILER17 set IFORT_COMPILER=%IFORT_COMPILER17%
  IF DEFINED IFORT_COMPILER18 set IFORT_COMPILER=%IFORT_COMPILER18%
  IF DEFINED IFORT_COMPILER19 set IFORT_COMPILER=%IFORT_COMPILER19%

  IF NOT DEFINED IFORT_COMPILER (
    echo "*** Error: Intel IFORT_COMPILER environment variable not defined."
  )
  IF DEFINED IFORT_COMPILER (
    echo Setting up Fortran compiler environment
    call "%IFORT_COMPILER%\bin\ifortvars" intel64
  )

  IF DEFINED ICPP_COMPILER14 set ICPP_COMPILER=%ICPP_COMPILER14%
  IF DEFINED ICPP_COMPILER15 set ICPP_COMPILER=%ICPP_COMPILER15%
  IF DEFINED ICPP_COMPILER16 set ICPP_COMPILER=%ICPP_COMPILER16%
  IF DEFINED ICPP_COMPILER17 set ICPP_COMPILER=%ICPP_COMPILER17%
  IF DEFINED ICPP_COMPILER18 set ICPP_COMPILER=%ICPP_COMPILER18%
  IF DEFINED ICPP_COMPILER19 set ICPP_COMPILER=%ICPP_COMPILER19%

  IF NOT DEFINED ICPP_COMPILER (
    echo "*** Error: Intel ICPP_COMPILER environment variable not defined."
  )
  IF DEFINED ICPP_COMPILER (
    echo Setting up C/C++ compiler environment
    call "%ICPP_COMPILER%\bin\iclvars" intel64
  )
:envexist
