export ARCH="aarch64"
cd $(dirname $0)
echo $pwd;
srcdir=$( cd "$(dirname $0)/../"  && pwd )
echo "srcdir=$srcdir"
docker run --rm -v $srcdir:/root/jobber alpine:latest /bin/sh /root/jobber/buildscript/build_alpine.sh 
