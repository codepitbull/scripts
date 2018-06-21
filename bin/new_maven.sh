#!/bin/bash
artifactId=${PWD##*/}
cp -R ~/bin/scripts/templates/maven/* ./
sed -i '' "s/artifactid/${artifactId}/g" pom.xml
