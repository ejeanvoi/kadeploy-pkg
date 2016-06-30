#/bin/bash

OUTPUT="output"
rm -rf $OUTPUT && mkdir $OUTPUT
docker build -t kadeploy-rpm-builder rpm
docker run -it --rm -v $(pwd)/$OUTPUT:/tmp/build_result kadeploy-rpm-builder
docker rmi kadeploy-rpm-builder
docker build -t kadeploy-deb-builder deb
docker run -it --rm -v $(pwd)/$OUTPUT:/tmp/build_result kadeploy-deb-builder
docker rmi kadeploy-deb-builder
