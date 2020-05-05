export ARCH="aarch64"
cd $(dirname $0)
echo $pwd;
srcdir=$( cd "$(HOME)/mohneesh9797-puresoftware/jobber"  && pwd )
echo "srcdir=$srcdir"
docker run --rm -v $srcdir:/root/jobber alpine:latest /bin/sh /root/jobber/buildscript/build_alpine.sh 
