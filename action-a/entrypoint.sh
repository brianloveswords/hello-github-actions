#!/bin/sh -l

if [ -n "${GOOGLE_CREDENTIALS_ENCODED}" ]; then
    mkdir -p "${HOME}"/.config/gcloud
    export GOOGLE_APPLICATION_CREDENTIALS=${HOME}/.config/gcloud/credentials.json
    echo "${GOOGLE_CREDENTIALS_ENCODED}" | python -m base64 -d | gzip -d >"${HOME}"/.config/gcloud/credentials.json
else
    error 'must set GOOGLE_CREDENTIALS_ENCODED'
fi

echo Hello world my name is "${INPUT_MY_NAME}"
node -e 'console.log("hi hello")'
jq <"${HOME}"/.config/gcloud/credentials.json
sh -c "ls -lah"
