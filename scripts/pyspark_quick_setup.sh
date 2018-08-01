#!/usr/bin/env bash

# bind conda to spark
#echo -e "\nexport PYSPARK_PYTHON=/home/hadoop/conda/bin/python" >> /etc/spark/conf/spark-env.sh
#echo "export PYSPARK_DRIVER_PYTHON=/home/hadoop/conda/bin/jupyter" >> /etc/spark/conf/spark-env.sh
#echo "export PYSPARK_DRIVER_PYTHON_OPTS='notebook --no-browser --ip=$1'" >> /etc/spark/conf/spark-env.sh

SAGEPYSPARK_JARS=`/usr/local/bin/sagemakerpyspark-emr-jars :`

cd /usr/lib/spark/conf
cp spark-defaults.conf spark-defaults.conf.bk
sed -i "/^spark\.driver\.extraClassPath/ s|\$|:$SAGEPYSPARK_JARS|" spark-defaults.conf
sed -i "/^spark\.executor\.extraClassPath/ s|\$|:$SAGEPYSPARK_JARS|" spark-defaults.conf
