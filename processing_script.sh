#!/bin/zsh

cd ~/Desktop/Processed
mkdir ${1##*/}
cd ${1##*/}
mv $1 ${1##*/}
/Users/naupaka/git/pdf-show-highlights/pdf-show-highlights ${1##*/} | sed -E 's/-[[:space:]]//g' | csplit -ks -f Annotation_ - /----/+1 {9999}
find . -size 0 -delete
if [ "$?" != "0" ]; then
	exit 0
fi
