NUWACAMERA2_NAME=`cat app/build.gradle | grep "versionName" | awk '{print $2}' | sed -e 's/"//g'`

TIME=`date +"%Y-%m-%d_%H%M"`


GIT_HASH=`git rev-parse HEAD`
HEAD=${GIT_HASH:0:6}


rm -rf ./env.properties

echo NUWACAMERA2_VERSION=$NUWACAMERA2_NAME"_"$HEAD"_"$TIME >> ./env.properties

echo BUILD_TIME=$TIME >> ./env.properties
