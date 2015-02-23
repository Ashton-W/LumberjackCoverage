#!/bin/bash

SYMROOT="$PWD/Sample/LumberjackCoverage/build"

OBJECT_DIR="$PWD/Sample/LumberjackCoverage/build/DerivedData/Build/Intermediates/LumberjackCoverage.build/Debug-iphonesimulator/LumberjackCoverage.build/Objects-normal/x86_64"

echo $SYMROOT
rm -rf Sample/LumberjackCoverage/build

set -o pipefail && xcodebuild -project Sample/LumberjackCoverage/LumberjackCoverage.xcodeproj \
	-sdk iphonesimulator \
	-scheme LumberjackCoverage \
	-configuration Debug \
	-destination platform='iOS Simulator',OS=8.1,name='iPhone 6' \
	clean build test | xcpretty -c

mkdir -p SampleReport
./gcovr/scripts/gcovr -r . --object-directory $OBJECT_DIR --exclude '.*Tests.*' --xml > SampleReport/coverage.xml
./gcovr/scripts/gcovr -r . --object-directory $OBJECT_DIR --exclude '.*Tests.*' --html --html-details -o SampleReport/coverage.html


