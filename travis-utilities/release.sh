#!/bin/bash

cp travis-utilities/.travis.settings.xml $HOME/.m2/settings.xml

openssl aes-256-cbc -K $encrypted_00b218189f3e_key -iv $encrypted_00b218189f3e_iv -in travis-utilities/keys.gpg.enc -out keys.gpg -d

gpg --fast-import keys.gpg

shred keys.gpg

mvn deploy -q -P release