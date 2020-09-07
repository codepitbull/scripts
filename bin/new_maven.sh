#!/bin/bash
artifactId=${PWD##*/}
cp -R ~/.dotfiles/bin/templates/maven/* ./
sed -i '' "s/artifactid/${artifactId}/g" pom.xml
