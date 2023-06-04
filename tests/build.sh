pwd=$(pwd)

mv "$pwd"/docker/* "$pwd"

docker build . --tag elestio4test/rustdeskserver:latest;
TAG_TO_CHANGE