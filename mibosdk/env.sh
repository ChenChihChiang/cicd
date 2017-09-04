
BASEBACKENDCLIENT_NAME=`cat config.gradle | grep "baseBackendClientVersionName" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`
BASEBACKENDCLIENT_ID=`cat config.gradle | grep "baseBackendClientArtifactId" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`



CONNECTION_NAME=`cat config.gradle | grep "connectionVersionName" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`
CONNECTION_ID=`cat config.gradle | grep "connectionArtifactId" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`



MIBOSERVICECLIENT_NAME=`cat config.gradle | grep "miboServiceClientVersionName" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`
MIBOSERVICECLIENT_ID=`cat config.gradle | grep "miboServiceClientArtifactId" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`



MQTT_NAME=`cat config.gradle | grep "mqttVersionName" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`
MQTT_ID=`cat config.gradle | grep "mqttArtifactId" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`


NUWAOAUTHJAVACLIENT_NAME=`cat config.gradle | grep "nuwaOAuthJavaClientVersionName" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`
NUWAOAUTHJAVACLIENT_ID=`cat config.gradle | grep "nuwaOAuthJavaClientArtifactId" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`


ASSESTUPDATER_NAME=`cat config.gradle | grep "assetUpdaterVersionName" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`
ASSESTUPDATER_ID=`cat config.gradle | grep "assetUpdaterArtifactId" | awk '{print $3}' | sed -e 's/"//g' | sed -e 's/,//g'`


TIME=`date +"%Y-%m-%d_%H%M"`


GIT_HASH=`git rev-parse HEAD`
HEAD=${GIT_HASH:0:6}

#echo $HEAD

rm -rf ./env.properties

echo BASEBACKENDCLIENT_VERSION=$BASEBACKENDCLIENT_NAME"_"$HEAD"_"$TIME >> ./env.properties
echo BASEBACKENDCLIENT_ID=$BASEBACKENDCLIENT_ID >> ./env.properties

echo CONNECTION_VERSION=$CONNECTION_NAME"_"$HEAD"_"$TIME >> ./env.properties
echo CONNECTION_ID=$CONNECTION_ID >> ./env.properties

echo MIBOSERVICECLIENT_VERSION=$MIBOSERVICECLIENT_NAME"_"$HEAD"_"$TIME >> ./env.properties
echo MIBOSERVICECLIENT_ID=$MIBOSERVICECLIENT_ID >> ./env.properties

echo MQTT_VERSION=$MQTT_NAME"_"$HEAD"_"$TIME >> ./env.properties
echo MQTT_ID=$MQTT_ID >> ./env.properties

echo NUWAOAUTHJAVACLIENT_VERSION=$NUWAOAUTHJAVACLIENT_NAME"_"$HEAD"_"$TIME >> ./env.properties
echo NUWAOAUTHJAVACLIENT_ID=$NUWAOAUTHJAVACLIENT_ID >> ./env.properties

echo ASSESTUPDATER_VERSION=$ASSESTUPDATER_NAME"_"$HEAD"_"$TIME >> ./env.properties
echo ASSESTUPDATER_ID=$ASSESTUPDATER_ID >> ./env.properties

echo BUILD_TIME=$TIME >> ./env.properties
