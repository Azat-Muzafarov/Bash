#!/bin/bash

sed -i 's/500/'$1'/' configSFG
sed -i 's/MOD: on/MOD: '$2'/' configSFG
if grep -q "Resolution=" "configSFG"; then
	echo " Resolution already here"
else
	echo "Resolution= $3" >> configSFG
fi
#echo Resolution: 1280 >> configSFG
cat configSFG
