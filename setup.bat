:: Change Directory to Where this batch file places

@chdir %~dp0
@chdir

:: Installing Cygwin and Related Packages Automatically

@setup-x86.exe ^
--quiet-mode ^
--root C:\cygwin ^
--download ^
--local-install ^
--no-startmenu ^
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

:: Copy Shell Script for Running in Cygwin

@copy bmake.sh C:\cygwin\tmp\
@copy buildwd.sh C:\cygwin\tmp\

:: Building NetBSD make tool in Cygwin

@C:\cygwin\bin\bash.exe --login -i /tmp/bmake.sh

:: Enable Cygwin CygServer Feature

@C:\cygwin\bin\bash.exe --login -i -c '/usr/bin/cygserver-config --yes'
@C:\cygwin\bin\bash.exe --login -i -c '/usr/bin/cygrunsrv -S cygserver'

:: Compiling Wind-Dust BBS

@C:\cygwin\bin\bash.exe --login -i /tmp/buildwd.sh
