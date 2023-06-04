pwd=$(pwd)

mv "$pwd"/docker/* "$pwd"

docker build . --tag elestio4test/rustdesk-server:latest;
TAG_TO_CHANGE