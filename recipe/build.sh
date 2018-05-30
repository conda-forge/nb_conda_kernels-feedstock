python setup.py install --single-version-externally-managed --record=record.txt
mkdir -p bin
POST_LINK=bin/.nb_conda_kernels-post-link.sh
PRE_UNLINK=bin/.nb_conda_kernels-pre-unlink.sh
cp $SRC_DIR/conda-recipe/post-link.sh $POST_LINK
cp $SRC_DIR/conda-recipe/pre-unlink.sh $PRE_UNLINK
chmod +x $POST_LINK $PRE_UNLINK
