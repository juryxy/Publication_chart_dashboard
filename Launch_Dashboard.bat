@echo off
setlocal
cd /d "%~dp0"
title Publication Chart Dashboard

echo ==============================================
echo   Publication Chart Dashboard - Windows

echo ==============================================
echo.

set "PYTHON_CMD="
where py >nul 2>&1
if %errorlevel%==0 set "PYTHON_CMD=py -3"

if not defined PYTHON_CMD (
    where python >nul 2>&1
    if %errorlevel%==0 set "PYTHON_CMD=python"
)

if not defined PYTHON_CMD (
    echo Python 3 was not found on this computer.
    echo.
    echo Install Python from https://www.python.org/downloads/windows/
    echo During installation, select "Add python.exe to PATH".
    echo Then double-click this file again.
    echo.
    pause
    exit /b 1
)

if not exist ".venv\Scripts\python.exe" (
    echo First-time setup: creating the local Python environment...
    %PYTHON_CMD% -m venv .venv
    if errorlevel 1 goto :error

    echo Installing required packages. This happens only on first setup...
    ".venv\Scripts\python.exe" -m pip install --upgrade pip
    if errorlevel 1 goto :error
    ".venv\Scripts\python.exe" -m pip install -r requirements.txt
    if errorlevel 1 goto :error
)

echo Starting the dashboard...
echo Your default browser should open automatically.
echo Keep this window open while using the application.
echo Press Ctrl+C here to stop the dashboard.
echo.

".venv\Scripts\python.exe" -m streamlit run app.py
if errorlevel 1 goto :error
exit /b 0

:error
echo.
echo The dashboard could not be started.
echo Review the error message above, then press any key to close.
pause >nul
exit /b 1
