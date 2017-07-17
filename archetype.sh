#! /bin/bash

artifactId=$1
groupId=$2
if [ $# -eq "0" ]; then
	artifactId="my-app"
	groupId="com.lvonce"	
fi

if [ $# -eq "1" ]; then
	artifactdId=$1
	groupId="com.lvonce"
fi

if [ $# -eq "2" ]; then
	artifactId=$1
	groupId=$2
fi


mvn archetype:generate -DgroupId=$groupId -DartifactId=$artifactId -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
