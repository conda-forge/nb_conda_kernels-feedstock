cd /D nb_conda_kernels

conda clean --lock
conda install -y --quiet -n root -c conda-forge notebook
conda install -y --quiet -p %CONDA_PREFIX% -c r r-irkernel

CALL npm install || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%

CALL npm run test || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%
