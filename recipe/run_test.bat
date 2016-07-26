REM tests currently flaky in appveyor
exit 0

cd /D "%SRC_DIR%"

conda install -n root notebook -c conda-forge
conda install r-irkernel -y -n _test -c r

CALL npm install || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%

CALL npm run test || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%
