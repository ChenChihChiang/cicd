
KIWISDK_NAME=`cat AndroidManifest.xml | grep "versionName" | awk -F: '{print $2}' | awk -F= '{print $2}' | sed -e 's/>//g' | sed -e 's/"//g' | sed -e 's/ //g'`


TIME=`date +"%Y-%m-%d_%H%M"`


GIT_HASH=`git rev-parse HEAD`
HEAD=${GIT_HASH:0:6}


rm -rf ./env.properties

echo KIWISDK_VERSION=$KIWISDK_NAME"_"$HEAD"_"$TIME >> ./env.properties

echo BUILD_TIME=$TIME >> ./env.properties
