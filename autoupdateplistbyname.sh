#!/bin/sh

#read num
if [[ $# -lt 2 ]]; then
   echo invalid param
   exit 0
else
   echo param: $1:$2
fi

FILE_NAME=$1
IPA_VERSION=$2
PLIST_NAME=$3
if [[ -z ${PLIST_NAME} ]]; then
    echo Fallback PLIST_NAME to "installunity5out.plist"
    PLIST_NAME=installunity5out.plist
fi
TITLE_NAME=$4
if [[ -z ${TITLE_NAME} ]]; then
    echo Fallback TITLE_NAME to "Out-Mobile Legends: Bang Bang"
    TITLE_NAME="Out-Mobile Legends: Bang Bang"
fi

echo "<?xml version="1.0" encoding="UTF-8"?>\n\
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">\n\
<plist version="1.0">\n\
<dict>\n\
    <key>items</key>\n\
    <array>\n\
        <dict>\n\
            <key>assets</key>\n\
            <array>\n\
                <dict>\n\
                    <key>kind</key>\n\
                    <string>software-package</string>\n\
                    <key>url</key>" > ${PLIST_NAME}
echo "                    <string>http://192.168.40.210:9880/mobagame/ipa/mobaiosinhouse_out_${FILE_NAME}.ipa</string>" >> ${PLIST_NAME}
echo "            </dict>\n\
                <dict>\n\
                    <key>kind</key>\n\
                    <string>display-image</string>\n\
                    <key>needs-shine</key>\n\
                    <true/>\n\
                    <key>url</key>\n\
                    <string>http://192.168.40.210:9880/mobagame/ipa/res/180.png</string>\n\
                </dict>\n\
            </array>\n\
            <key>metadata</key>\n\
            <dict>\n\
                <key>bundle-identifier</key>\n\
                <string>com.mobile.legends.inhouse</string>\n\
                <key>bundle-version</key>" >> ${PLIST_NAME}
echo "                <string>${IPA_VERSION}</string>" >> ${PLIST_NAME}
echo "                <key>kind</key>\n\
                <string>software</string>\n\
                <key>title</key>\n\
                <string>${TITLE_NAME}</string>\n\
            </dict>\n\
        </dict>\n\
    </array>\n\
</dict>\n\
</plist>" >> ${PLIST_NAME}

