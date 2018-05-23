setup-x86.exe ^
--quiet-mode ^
--root C:\cygwin ^
--site http://mirrors.kernel.org/sourceware/cygwin ^
--packages base ^
--packages base-devel ^
--packages gcc-core ^
--packages make ^
--packages clang ^
--packages libcrypt-devel ^
--packages libncurses-devel ^
--packages vim ^
--packages git ^
--packages wget ^
--packages curl ^
--packages screen ^
--packages busybox ^
--local-install

C:\cygwin\bin\bash.exe --login bmake.sh

C:\cygwin\bin\bash.exe --login -i /usr/bin/cygserver-config --yes
C:\cygwin\bin\bash.exe --login -i cygrunsrv -S cygserver

C:\cygwin\bin\bash.exe -i buildwd.sh