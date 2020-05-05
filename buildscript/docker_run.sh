export ARCH="aarch64"
cd $(dirname $0)
srcdir=$( cd "/home/travis/gopath/src/github.com/mohneesh9797-puresoftware/"  && pwd )
echo "srcdir=$srcdir"
LS = $(ls)
echo $LS
docker run --rm -v $srcdir:/root/mohneesh9797-puresoftware/jobber alpine:latest /bin/sh /root/jobber/buildscript/build_alpine.sh 
