sh -c "curl -L https://github.com/ccns/dreambbs_snap/archive/v1.0.0.tar.gz|tar -zxv" \
        && mv dreambbs_snap-1.0.0 ./$USER \
        && cp -r ./$USER /home/ \
        && rm -rf ./$USER
curl -L https://github.com/ccns/dreambbs/archive/v1.0.0.tar.gz | tar -zxv -C $HOME
cd $HOME/dreambbs-1.0.0 \
        && cp sample/dreambbs.conf ./dreambbs.conf \
        && sed -i 's|\/home\/bbs|'$HOME'|g' dreambbs.conf 
#vim -c 'set fenc=big5 enc=big5 tenc=utf8' -c 'e!' dreambbs.conf
cd $HOME/dreambbs-1.0.0 \
        && bmake all install clean \
        && sh $HOME/sh/start.sh \
        && $HOME/bin/bbsd 23
