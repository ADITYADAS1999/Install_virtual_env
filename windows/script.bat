@echo off
REM Check Python version
python --version

REM Install pip if necessary
python -m ensurepip --upgrade

REM Install the Python virtual environment package
pip install virtualenv

REM Create a virtual environment called my_env
python -m venv my_env

REM Activate the virtual environment
call my_env\Scripts\activate

REM Install Jupyter Notebook inside the virtual environment
pip install jupyter

REM Check if Jupyter Notebook was installed successfully
jupyter --version
if %ERRORLEVEL% == 0 (
    echo Jupyter Notebook installed successfully!
    echo Here's a simple ASCII logo:
    echo       @@@      
    echo      @   @     
    echo     @  $  @    
    echo      @   @     
    echo       @@@      
) else (
    echo Jupyter Notebook installation failed.
)

REM Run Jupyter Notebook
jupyter notebook
