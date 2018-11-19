cd /tmp \
    && sh -c "curl -L http://crufty.net/ftp/pub/sjg/bmake-20171207.tar.gz|tar -zxv" \
    && cd bmake \
    && ./boot-strap prefix=/usr/local \
    && ./boot-strap prefix=/usr/local op=install
