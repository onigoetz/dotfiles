#!/usr/bin/env bash
# Commands to download JDK from shell.

# http://stackoverflow.com/questions/10268583
# wget --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####

COOKIE="Cookie: oraclelicense=accept-securebackup-cookie"
PLATFORM="macosx-x64.dmg"
# windows-x64.exe, windows-i586.exe, linux-x64.bin, linux-i586.bin, macosx-x64.dmg

#JDK8u25
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"

#JDK8u20
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/8u20-b26/jdk-8u20
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-apidocs.zip"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "http://download.oracle.com/otn-pub/java/tutorial/2014-08-19/javatutorials.zip"

#JDK8u11
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/8u11-b12/jdk-8u11
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-apidocs.zip"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "http://download.oracle.com/otn-pub/java/tutorial/2014-03-18/javatutorials.zip"

#JDK8u5:
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-apidocs.zip"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "http://download.oracle.com/otn-pub/java/tutorial/2014-03-18/javatutorials.zip"

#JDK8.0:
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/8-b132/jdk-8
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-apidocs.zip"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "http://download.oracle.com/otn-pub/java/tutorial/2014-03-18/javatutorials.zip"


##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####

#JDK7u71
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"

#JDK7u67:
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u67
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-apidocs.zip"

#JDK7u51:
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-apidocs.zip"

#JDK7u45:
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-apidocs.zip"


##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### #####

#JDK6u45
BASE_URL=http://download.oracle.com/otn/java/jdk/6u45-b06/jdk-6u45
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"
#wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-apidocs.zip"

#JDK6u45: linux-x64
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/6u45-b06/jdk-6u45
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"

#JDK6u43:
BASE_URL=http://download.oracle.com/otn-pub/java/jdk/6u43-b01/jdk-6u43
wget --no-check-certificate --no-cookies - --header "${COOKIE}" "${BASE_URL}-${PLATFORM}"
