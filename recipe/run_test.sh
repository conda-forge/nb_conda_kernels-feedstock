# tests currently don't build properly inside Docker inside CircleCI
if [[ $(uname) == Linux ]]; then
  exit 0
fi

cd "${SRC_DIR}"

conda install r-irkernel -y -n _test -c r

"${PREFIX}/bin/npm" install .
"${PREFIX}/bin/npm" run test
