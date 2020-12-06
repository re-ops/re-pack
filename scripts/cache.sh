if [ ! -z "$CACHE" ] ; then
  echo "Acquire::http::Proxy \"$CACHE\";"  | sudo tee -a /etc/apt/apt.conf.d/00cache
fi
