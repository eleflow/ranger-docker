#!/bin/bash
cd ${RANGER_HOME}/admin
cat ${RANGER_SCRIPTS}/ranger-admin-install.properties | envsubst > ${RANGER_HOME}/admin/install.properties 
if [ ! -e "${RANGER_HOME}/.setupDone" ]
then
	cd ${RANGER_HOME}/admin
	./setup.sh
	touch ${RANGER_HOME}/.setupDone
fi
/usr/bin/ranger-admin start
# prevent the container from exiting
tail -f /dev/null