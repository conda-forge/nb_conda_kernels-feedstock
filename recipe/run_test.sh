# tests currently don't build properly inside Docker inside CircleCI
cd "${SRC_DIR}"

conda install -n root notebook -c conda-forge
conda install r-irkernel -y -n _test -c r

"${PREFIX}/bin/npm" install .
"${PREFIX}/bin/npm" run test
