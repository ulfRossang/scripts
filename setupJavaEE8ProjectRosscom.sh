#!/bin/sh
PROJECT_NAME=$1
mvn archetype:generate -DarchetypeGroupId=com.airhacks -DarchetypeArtifactId=javaee8-essentials-archetype -DarchetypeVersion=0.0.4 -DgroupId=se.rosscom -DartifactId=${PROJECT_NAME} -Dversion=0.0.1 -Darchetype.interactive=false --batch-mode%

