%PYTHON% setup.py install --single-version-externally-managed --record=record.txt
mkdir Scripts
copy %SRC_DIR%\conda-recipe\post-link.bat Scripts\.nb_conda_kernels-post-link.bat
copy %SRC_DIR%\conda-recipe\pre-unlink.bat Scripts\.nb_conda_kernels-pre-unlink.bat
