#!/bin/bash

# while sleep 9m; do echo -e '\n=====[ Gradle build is still running ]====='; done &

echo "Downloading SMTP mail mock server..."
wget -O MockMock.jar https://github.com/tweakers-dev/MockMock/blob/master/release/MockMock.jar?raw=true

if [ ! -f MockMock.jar ]; then
    echo "Mock mail server file MockMock.jar could not be downloaded!"
    exit 1
fi

echo "Running SMTP mail mock server..."
java -jar MockMock.jar -p 25000 &>/dev/null &
