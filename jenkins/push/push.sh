#!/bin/bash 


echo "***************"
echo "****Pushing image"
echo "***************"

IMAGE="maven-project"

echo "***Logging in ****"
docker login -u manjunathhr -p $PASSWD
echo "*** Tagging image"
docker tag $IMAGE:$BUILD_TAG manjunathhr/$IMAGE:$BUILD_TAG
echo "*** Pushing image "
docker push manjunathhr/$IMAGE:$BUILD_TAG
