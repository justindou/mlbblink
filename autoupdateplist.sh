#!/bin/sh

#read num
if [ $# != 2 ]; then
   echo invalid param
   exit 0
else
   echo param: $1:$2
fi

FILE_NAME=$1
IPA_VERSION=$2

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
                    <key>url</key>" > install.plist
echo "                    <string>http://192.168.40.210:9880/mobagame/ipa/mobaiosinhouse_out_${FILE_NAME}.ipa</string>" >> install.plist
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
                <key>bundle-version</key>" >> install.plist
echo "                <string>${IPA_VERSION}</string>" >> install.plist
echo "                <key>kind</key>\n\
                <string>software</string>\n\
                <key>title</key>\n\
                <string>Mobile Legends: Bang Bang</string>\n\
            </dict>\n\
        </dict>\n\
    </array>\n\
</dict>\n\
</plist>" >> install.plist


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
                    <key>url</key>" > installout.plist
echo "                    <string>http://114.215.170.217:9877/ipa/mobaiosinhouse_out_${FILE_NAME}.ipa</string>" >> installout.plist
echo "            </dict>\n\
                <dict>\n\
                    <key>kind</key>\n\
                    <string>display-image</string>\n\
                    <key>needs-shine</key>\n\
                    <true/>\n\
                    <key>url</key>\n\
                    <string>http://114.215.170.217:9877/ipa/res/180.png</string>\n\
                </dict>\n\
            </array>\n\
            <key>metadata</key>\n\
            <dict>\n\
                <key>bundle-identifier</key>\n\
                <string>com.mobile.legends.inhouse</string>\n\
                <key>bundle-version</key>" >> installout.plist
echo "                <string>${IPA_VERSION}</string>" >> installout.plist
echo "                <key>kind</key>\n\
                <string>software</string>\n\
                <key>title</key>\n\
                <string>Mobile Legends: Bang Bang</string>\n\
            </dict>\n\
        </dict>\n\
    </array>\n\
</dict>\n\
</plist>" >> installout.plist
