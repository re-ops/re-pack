cd /tmp
wget http://downloads.sourceforge.net/project/s3tools/s3cmd/1.5.0-beta1/s3cmd-1.5.0-beta1.tar.gz

sum=$(md5sum s3cmd-1.5.0-beta1.tar.gz | awk '{print $1}')
md5="14d651221d80948af3d065a62e9dd6c7"
if [ "$sum" != "$md5" ]
then
  echo "md5 sums mismatch"
  exit 1
fi
tar -xzvf s3cmd-1.5.0-beta1.tar.gz
cd s3cmd-1.5.0-beta1
sudo cp -r s3cmd S3 /usr/local/bin/

