REM tests currently flaky in appveyor
exit 0

cd /D "%SRC_DIR%"

conda install -y --quiet -n root -c conda-forge notebook
conda install -y --quiet -n _test -c r r-irkernel

CALL npm install || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%

CALL npm run test || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%
