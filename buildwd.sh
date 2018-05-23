/usr/bin/env tar -zxvf ./v2.9-ctb.0.002-pre.tar.gz -C $HOME
cd $HOME/wdbbs-2.9-ctb.0.002-pre && \
	cp sample/bbs ./$USER && \
	cp -r ./$USER /home/ && \
	cp sample/wdbbs.conf ./wdbbs.conf && \
	sed -i 's|\/home\/bbs|'$HOME'|g' wdbbs.conf 
#vim -c 'set fenc=big5 enc=big5 tenc=utf8' -c 'e!' wdbbs.conf
cd $HOME/wdbbs-2.9-ctb.0.002-pre && \
	bmake all install clean && \
	$HOME/bin/mbbsd 23
