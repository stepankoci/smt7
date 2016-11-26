#!/bin/sh

# SSH KEY
if [ -z "$SSH_KEY" ]
then
    echo "Attention: Env var SSH_KEY is not set!"
else
    sudo -E -u developer sh -c '(umask 077; echo $SSH_KEY | base64 --decode > /home/developer/.ssh/id_rsa)'
fi

# Start services
service apache2 start
service postgresql start
