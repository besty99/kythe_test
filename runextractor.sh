export KYTHE_ROOT_DIRECTORY="/home/WorkSpace/kythe-test/cmake_helloworld"
export KYTHE_CORPUS="Solve"

export KYTHE_OUTPUT_DIRECTORY="/home/WorkSpace/kythe-test/java-output/extracts"

rm -rf "$KYTHE_OUTPUT_DIRECTORY"

mkdir -p "$KYTHE_OUTPUT_DIRECTORY"

/opt/kythe/kythe-v0.0.52/tools/runextractor compdb \
    -extractor=/opt/kythe/kythe-v0.0.52/extractors/javac_extractor.jar
