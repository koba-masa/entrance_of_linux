#!/bin/sh

echo "Hello, world!"

# BASE_DIR="/home/kadai"
# KADAI_DIR="${BASE_DIR}/permission_and_owner"
# KADAI_USER="p_and_o"

# if [ "`whoami`" != "root" ]; then
#   echo "rootユーザで実行してください。"
#   exit
# fi

# if [ ! -d "${BASE_DIR}" ]; then
#   mkdir -m 777 ${BASE_DIR}
# fi


# if [ -d "${KADAI_DIR}" ]; then
#   rm -rf ${KADAI_DIR}
# fi
# mkdir -m 777 ${KADAI_DIR}

# getent passwd ${KADAI_USER}
# if [ $? -eq 2 ]; then
#   useradd -s /sbin/nologin -M ${KADAI_USER}
# fi
