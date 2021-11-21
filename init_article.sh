#!/bin/bash -e

cd `dirname $0`;

if [ -n "$1" ]; then
    ID=$1;
else
    ID=`expr $(ls articles/ | grep -o ^[0-9]*$ | sort -n | tail -n 1) + 1`;
fi

mkdir "articles/$ID";

touch "articles/$ID/description.txt";
touch "articles/$ID/directory.txt";
touch "articles/$ID/main.md";

echo "新しい記事のIDは$IDです。";

exit 0;