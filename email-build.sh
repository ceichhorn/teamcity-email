#!/bin/bash

(
echo "EHLO HOSTNAME"
echo "mail from:<FROM>"
echo "rcpt to:<TO>"

sleep 1

echo "data"

sleep 1
echo "From: EMAIL"
echo "To: EMAIL"
echo "subject: ${BRANCH_NAME} Feature build successful"
echo ""
sleep 1
echo
echo "${FULL_REPO_NAME}"
echo " Build was created in ${ARTIFACTORY_URL}/${REPOSITORY_NAME}-${BUILD_NUMBER}.tar.gz"
sleep 1
echo ""
echo "Your branch name: ${BRANCH_NAME}"
echo "From repo:        ${REPOSITORY_NAME}"
echo "Build triggered by:  %teamcity.build.triggeredBy%"
#echo ""
echo "Test IP address:   http://%SERVER_IP_ADDRESS%"
echo "."
sleep 2

echo "exit"

) | telnet smtp 25
exit 0
