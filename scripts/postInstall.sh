#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
echo "Waiting for software to be ready ..."
# sleep 40s;

#register the local server in the web ui

  echo "Install finished"