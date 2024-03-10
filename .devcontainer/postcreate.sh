#!/bin/bash

sudo cp .devcontainer/sdkman.config /usr/local/sdkman/etc/config

echo "source  /usr/local/sdkman/bin/sdkman-init.sh" >> ~/.bashrc
echo "source  /usr/local/sdkman/bin/sdkman-init.sh" >> ~/.zshrc

find . -name .sdkmanrc -execdir bash -c '. /usr/local/sdkman/bin/sdkman-init.sh && sdk env install' \;
 