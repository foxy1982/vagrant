#!/bin/bash

mkdir src
cd src
git clone https://github.com/EventStore/EventStore.git EventStore
cd EventStore
xbuild src/EventStore.sln