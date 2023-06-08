pwd=$(pwd)

mv "$pwd"/docker-classic/* "$pwd"

docker build . --tag elestio4test/rustdesk-server:latest;