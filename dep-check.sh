#!/bin/bash

set -e

DOWNLOAD_URL="https://bintray.com/jeremy-long/owasp/download_file?file_path=dependency-check-5.1.0-release.zip"
ZIP=dependency-check.zip
REPORT_DIR=log/
PROJECT=bonjour

_DEPCHECK=./dependency-check/bin/dependency-check.sh

install() {
  curl -L ${DOWNLOAD_URL} -o ${ZIP}
  unzip ${ZIP}
  rm ${ZIP}
}

[[ -f ${_DEPCHECK} ]] || install

mkdir -p ${REPORT_DIR}
${_DEPCHECK} --format HTML --suppression supression.xml --failOnCVSS 0 --project ${PROJECT} --scan . --exclude 'dependency-check/**' --exclude 'vendor/bundle/**' -out ${REPORT_DIR}