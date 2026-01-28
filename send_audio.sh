#!/bin/sh

set -eux

AUTH_TOKEN="AUTH_TOKEN GOES HERE!"
CHAT_ID="CHAT_ID GOES HERE!"
AUDIO_FILE="output.wav"

curl --verbose -X POST \
  "https://api.prod.boo.dating/v1/message/audio?chatId=${CHAT_ID}" \
  -H "authorization: ${AUTH_TOKEN}" \
  -F "audio=@${AUDIO_FILE};type=audio/wav"
