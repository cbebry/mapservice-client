#!/bin/bash

zip -r bin/mapservice-client.nw . --exclude=*.git* -x@7zignore.lst
cat ./lib/linux-x64/nw ./bin/mapservice-client.nw > ./bin/linux-x64/mapservice-client && chmod +x ./bin/linux-x64/mapservice-client
