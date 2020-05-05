export ARCH="aarch64"
cd $(dirname $0)
srcdir=$( cd "$(dirname $0)/../.."  && pwd )
echo "srcdir=$srcdir"
docker run --rm -v $srcdir:/root/jobber alpine:latest /bin/sh /root/jobber/buildscripts/build_alpine.sh 
