#!/bin/bash

# filename.txt
#  <contents> 
#   date,directory-name
#  * Point
#   Do not make any space between ','

filename=$1 # filename of laads archive directory
target_basedir=`pwd`/$2
myappkey="A167C61A-10CF-11E9-BA61-CBB570C49BBF"

echo " Download 2 path ${target_dir} "

option1="-e robots=off -m -np -R .html,.tmp -nH --cut-dirs=3"

while read line
do
  dirname=`echo $line | cut -d ',' -f 1`
  getdir=`echo $line | cut -d ',' -f 2`
  httpsdir="https://ladsweb.modaps.eosdis.nasa.gov${getdir}"
  target_dir=${target_basedir}/$dirname
  mkdir -p ${target_dir}
  echo "  ####  Download directory ${getdir}  #### "
  echo "  ####  Download 2 path ${target_dir} #### "
  `wget ${option1} ${httpsdir} --header "Authorization: Bearer ${myappkey}" -P $target_dir `
  sleep 1
done < ./${filename}

echo NORMAL END
