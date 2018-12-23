#!/bin/bash
if [ -z "$1" ]
	then echo 'usage: ./generate_ids.sh <path>'
	exit 1
fi
echo 'generating ids for all elements (this may take several minutes)'
for file in `find $1 -name '*.html'`; do
	rand=REPLACE_WITH_ID_PLEASE
	gsed -i '/id=/! s/<\([^>^ ^\/]\+\)/<\1 id="'$rand'"/g' $file
done
while [[ `grep -r 'REPLACE_WITH_ID_PLEASE' $1` ]]; do
	echo -ne '.'
	for file in `find $1 -name '*.html'`; do
		rand=`uuidgen | cut -d'-' -f 1,2`;
		gsed -i '0,/REPLACE_WITH_ID_PLEASE/s//'$rand'/g' $file
	done
done
echo Done!
