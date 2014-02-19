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
sudo ln -s /usr/local/bin/s3cmd /bin/s3cmd

echo "
[default]
access_key = ${ACCESS_KEY}
gpg_passphrase = ${GPG_PASSPHRASE}
secret_key = ${SECRET_KEY}
bucket_location = US
cloudfront_host = cloudfront.amazonaws.com
default_mime_type = binary/octet-stream
delete_removed = False
dry_run = False
enable_multipart = True
encoding = UTF-8
encrypt = False
follow_symlinks = False
force = False
get_continue = False
gpg_command = /usr/bin/gpg
gpg_decrypt = %(gpg_command)s -d --verbose --no-use-agent --batch --yes --passphrase-fd %(passphrase_fd)s -o %(output_file)s %(input_file)s
gpg_encrypt = %(gpg_command)s -c --verbose --no-use-agent --batch --yes --passphrase-fd %(passphrase_fd)s -o %(output_file)s %(input_file)s
guess_mime_type = True
host_base = s3.amazonaws.com
host_bucket = %(bucket)s.s3.amazonaws.com
human_readable_sizes = False
invalidate_on_cf = False
list_md5 = False
log_target_prefix =
mime_type =
multipart_chunk_size_mb = 15
preserve_attrs = True
progress_meter = True
proxy_host =
proxy_port = 0
recursive = False
recv_chunk = 4096
reduced_redundancy = False
send_chunk = 4096
simpledb_host = sdb.amazonaws.com
skip_existing = False
socket_timeout = 300
urlencoding_mode = normal
use_https = True
verbosity = WARNING
website_endpoint = http://%(bucket)s.s3-website-%(location)s.amazonaws.com/
website_error =
website_index = index.html" > ~/.s3cfg
sudo cp ~/.s3cfg /root/
