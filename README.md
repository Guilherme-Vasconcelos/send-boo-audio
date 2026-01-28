# send-boo-audio
This project contains a few scripts that can be used to send an audio message in the website boo.world.
As of 28 January 2026, sending audio messages is only possible through their mobile app. Even if you try
to send an attachment and pick an audio file, it does not work since the website performs a validation in
order to only allow attachments to be images.

Be aware that this is NOT an official solution: I am not in any way associated with boo, I'm just a dude who
wants to send an audio message. Therefore, it is possible that boo might terminate your account if they
believe you are violating their terms of service. If you deeply care about your boo account, DO NOT USE THIS!

## How to run the scripts

- To record an audio: either run the script `record_audio.sh`, or record it in any way you prefer (make sure
to name the file `output.wav` as that's the name that will be used by the next script).

- To send an audio: open the file `send_audio.sh`, then fill in your AUTH_TOKEN and CHAT_ID.
  - How to find out your AUTH_TOKEN and CHAT_ID: open the website, open your browser's dev tools (usually by pressing F12), go to the network tab. Then go to the messages page (e.g. /pt/messages) and open the chat you'd like to send an audio to. In the dev tools will find a request that looks like this: GET some_url/v1/message?chatId=something.
    - In the "chatId=something" part, `something` is your CHAT_ID. Copy it and paste into the script.
    - Then open the request's details, go to headers and find the Authorization header. Its value is your AUTH_TOKEN. Copy it and paste into the script.

After setting these values, execute the script.

## FAQ (Frequently Anticipated Questions)

### My audio won't send
I realized the auth token tends to refresh very quickly (once every a few minutes) and the API response is not usually clear that it was an auth error. When in doubt, set your AUTH_TOKEN again.

### My audio length shows up as NaN / NaN in the website
Yeah, same for me. I don't know how to fix it. But playing the audio still works.

## License
Licensed under the Apache License, version 2.0. See more [here](./LICENSE.txt).
