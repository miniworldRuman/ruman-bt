#!/bin/bash
sudo service ssh start
exec code-server --bind-addr=0.0.0.0:8080 --auth=none
