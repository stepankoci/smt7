#!/bin/sh

sh /resources/smt7/start.sh

# Container command
tail -f /var/log/apache2/error.log
