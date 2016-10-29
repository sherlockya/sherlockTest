#!/bin/sh
set -e

bin=/root/elasticsearch-jdbc-2.3.3.0/bin111
lib=/root/elasticsearch-jdbc-2.3.3.0b
tbname=("center_daycencus" "dengkai")
for tb in ${tbname[*]}
do
echo "\"$tb\""
echo '{
"type" : "jdbc",
"jdbc" : {
"url" : "jdbc:mysql://192.168.1.13:3306/test",
"user" : "root",
"password" : "123456",
"sql" : "select * from tbname[*];",
"index": "test",
"type": "dengkai"
}
}' | java \
-cp "${lib}/*" \
-Dlog4j.configurationFile=${bin}/log4j2.xml \
org.xbib.tools.Runner \
org.xbib.tools.JDBCImporter


111
done
