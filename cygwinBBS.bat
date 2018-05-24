@chdir %~dp0
@chdir

:: @pause

setup-x86.exe ^
--quiet-mode ^
--root C:\cygwin ^
--download ^
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
--packages busybox

:: @pause

setup-x86.exe ^
--quiet-mode ^
--root C:\cygwin ^
--local-install ^
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
--packages busybox

:: @pause

copy bmake.sh C:\cygwin\tmp\
copy buildwd.sh C:\cygwin\tmp\

:: @pause

C:\cygwin\bin\bash.exe --login -i /tmp/bmake.sh

:: @pause

C:\cygwin\bin\bash.exe --login -i -c '/usr/bin/cygserver-config --yes'
C:\cygwin\bin\bash.exe --login -i -c '/usr/bin/cygrunsrv -S cygserver'

:: @pause

C:\cygwin\bin\bash.exe --login -i /tmp/buildwd.sh

:: @pause

dism /online /Enable-Feature /FeatureName:TelnetClient

:: @pause

telnet localhost