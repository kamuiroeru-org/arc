cd $(dirname $0)

BUIID_DIR=build
mkdir -p ${BUIID_DIR}

ls *.sh | grep -v init.sh | xargs -I {} cp {} ${BUIID_DIR}
cp *.yaml ${BUIID_DIR}

cd ${BUIID_DIR}
chmod +x *.sh
