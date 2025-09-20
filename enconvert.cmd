@echo off
setlocal EnableDelayedExpansion

if "%1"=="/?" (
    echo HOW TO USE? SCRIPT_NAME NAME_DIRECTORY FROM_ENCODING TO_ENCODING
    echo SUPPORTED ENCODINGS: ASCII, CP866, KOI8-R, UTF-8, UTF-16
    exit /b 0
 )

if "%1"=="" (
    echo PLEASE SELECT DIRECTORY. HELP -- /?
    exit /b 0
 )

if "%3"=="" (
    echo PLEASE SELECT TO_ENCODING. HELP -- /?
    exit /b 0
 )

set "DIR=%~1"
set "FROM=%~2"
set "TO=%~3"

for /r "%DIR%" %%F in (*.txt) do (
    set "FILE=%%F"
    set "TMP=!FILE!.tmp"
    iconv -f %FROM% -t %TO% "!FILE!" > "!TMP!"

    if %ERRORLEVEL% neq 0 (
	echo ERROR!
	exit /b %ERRORLEVEL%
 )

    if exist "!TMP!" (
	move /Y "!TMP!" "!FILE!" >nul
	echo DONE !FILE!
    )
)
echo DONE
exit /b 0

