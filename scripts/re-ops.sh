echo "==> Setting up re-ops user"
wget https://github.com/re-ops/re-base/releases/download/0.3.1/re-base.tar.gz -O /tmp/re-base.tar.gz
mkdir /tmp/re-base
tar -xzf /tmp/re-base.tar.gz -C /tmp/re-base
cd /tmp/re-base
cat /tmp/dev.edn
node main.js /tmp/dev.edn re-ops
