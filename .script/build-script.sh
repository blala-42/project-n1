#!/bin/bash

cd "$(dirname "$0")"
cd ../backend

rm -rf target/*

echo "Building Spring Boot application with Gradle..."
cd ./src/ghub/
./gradlew clean build
cd -

echo "Moving JAR file to target folder..."
mv src/ghub/build/libs/ghub-0.0.1-SNAPSHOT.jar target/ghub.jar
