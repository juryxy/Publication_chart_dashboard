@echo off
setlocal
py -m venv .docs-venv
call .docs-venv\Scripts\activate.bat
python -m pip install --upgrade pip
python -m pip install -r readthedocs\requirements-docs.txt
python -m sphinx -b html readthedocs readthedocs\_build\html
if errorlevel 1 exit /b 1
echo.
echo Documentation built at readthedocs\_build\html\index.html
pause
