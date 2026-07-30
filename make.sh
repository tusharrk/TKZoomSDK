REPO=https://github.com/tusharrk/TKZoomSDK/releases/download/v7.1.5.37603
FILE=zoom-sdk-ios-7.1.5.37603.zip

curl "$REPO/$FILE" -O -J -L
unzip -o "$FILE"
rm "$FILE"
