@echo off

(
  "%PREFIX%\python.exe" -d -m nb_conda_kernels.install --enable --prefix="%PREFIX%"
) >>"%PREFIX%\.messages.txt" 2>&1
