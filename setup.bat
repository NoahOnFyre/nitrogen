@echo off

REM This script will install everything you'll need to build an use Nitro.
echo Installing Nitro...

echo Installing Go dependencies...
go install

echo Building...
go build

echo Copying files...
copy %cd%\Nitro.exe %userprofile%

echo Prepairing start...
cd %userprofile%

echo Starting Nitro...
nitro