# sanjose environment setup script
#source /auto/andatc/independent/shellrc-files/current/rc/.bashrc.build
source /auto/andatc/independent/shellrc-files/current/rc/.bashrc.build.bglr 
export BYPASS_LOCAL_SITE_CHK=1
# using acme effectively with secure shell (ssh)
# ref: http://wwwin-edde.cisco.com/acme/howto/acme_ssh.shtml
# (dated:20121009)
#[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
#keychain -q ~/.ssh/id_rsa
#. ~/.ssh-agent-${HOSTNAME}

#### PATH backup
#export PATH=$PATH:/auto/andatc/independent/abraxas_code_sign/2.0/bin:/auto/andatc/
independent/user-scripts/2.0/bin:/auto/andatcd/textutils/2.1/bin:/auto/andatcd/texi
nfo/4.7/bin:/auto/andatc/linux//stkdump/1.0/bin:/auto/andatc/linux//srggen/2.0/bin:
/auto/andatcd/shtool/1.6.0/bin:/auto/andatcd/sed/4.0.8/bin:/auto/andatc/independent
/scripts/1.0/bin:/auto/andatcd/nana/2.5/bin:/auto/andatcd/net-snmp/5.1.2/sbin:/auto
/andatcd/net-snmp/5.1.2/bin:/auto/andatcd/perl/5.6.1/bin:/auto/andatcd/patch/2.5.4/
bin:/auto/andatcd/octeon-toolroot1/1.0/octeon-toolroot1/tools/bin:/auto/andatcd/oct
eon-toolroot1/1.0/octeon-toolroot1/host/bin:/auto/andatcd/libtool/1.4.2-a2/bin:/aut
o/andatc/independent/lasgh/1.0/bin:/auto/andatcd/j2sdk/1.7.0_21/bin:/auto/andpkg/re
p_cache//highcppc/1.0/bin:/auto/andatcd/gtar/1.15/sbin:/auto/andatcd/gtar/1.15/bin:
/auto/andatcd/grep/2.5.1.new/bin:/auto/andatcd/gmake/3.80/bin:/auto/andatcd/flex/2.
5.4a/bin:/auto/andatcd/findutils/4.1-a-xargs/bin:/auto/andatcd/coreutils/5.0/bin:/a
uto/andatcd/diffutils/2.8.1/bin:/auto/andatc/independent/ddts-scripts/1.0/bin:/auto
/andatc/independent/ddts-utils/1.0/bin:/auto/andatcd/cvs/1.11.2/bin:/auto/andatcd/c
url/7.9.6/bin:/auto/andatcd/c-doc/1.1/bin:/auto/andatc/independent/build_web/1.0/bi
n:/auto/andatc/independent/build_db/1.0/bin:/auto/andatcd/bison/1.28/bin:/auto/anda
tcd/autoconf/2.59/bin:/auto/andatcd/automake/1.8.3-a1/bin:/auto/isan-sw/tools/other
/ats/linux/ats3.5.0/bin:/auto/andatc/independent/acme_scripts/1.0/bin:/auto/ses/bin
/:/auto/andatc/independent/acme_cmds/1.0/bin:/auto/andatcd/fakeroot/1.14.4/bin:/aut
o/andatcd/cscope/15.5/bin:/auto/andatc/linux//e2fsprogs/1.39/sbin:/auto/andatc/linu
x//e2fsprogs/1.39/bin:/auto/andatc/independent/plugin/1.2/bin:/auto/andatc/linux//m
tsjoin/1.0/bin:/auto/andatcd/img-upgrade/1.2/bin:/auto/andatc/linux//renumber/1.0/b
in:/auto/andatc/linux//mtscomp/2.0/bin:/auto/andatcd/xmlify/6.2.3/bin:/auto/andatcd
/cli_cc/5.5/bin:/auto/andatc/linux//vsh-treegen/2.2/bin:/auto/andatcd/gettext/0.11.
5/bin:/auto/andatcd/isanadd/1.2/bin:/auto/isan-sw/etc:/auto/andatcd/sibyte_broadcom
/6.0/bin:/auto/andatcd/mv-82xx/4.0/bin:/auto/andpkg/rep_cache//mv-82xx/4.0/montavis
ta/pro/devkit/ppc/82xx/bin:/auto/andatc/linux//mv-p7447a/4.0a/bin:/auto/andpkg/rep_
cache//mv-p7447a/4.0a/montavista/pro/devkit/ppc/74xx/bin:/auto/andatc/linux//mv-85x
x/4.0a/bin:/auto/andpkg/rep_cache//mv-85xx/4.0a/montavista/pro/devkit/ppc/85xx/bin:
/auto/andatc/linux//mv-x86/4.0a/bin:/auto/andpkg/rep_cache//mv-x86/4.0a/montavista/
pro/devkit/x86/586/bin:/auto/andatcd/wr-p476/3.0.3e/bin:/auto/andatc/linux//wr-85xx
/3.0.1/bin:/auto/andatc/linux//wr-x86/3.0FCS/bin:/auto/andatcd/mv-sb1-fp-be/3.0-a2/
bin:/auto/andatc/independent/build-scripts/1.0/bin:/auto/andatc/independent/aliases
/1/bin:/usr/kerberos/bin:/usr/local/bin:/auto/ash/g2k/bin

#REF: /auto/ecs/utils/NEWUSER/new.lib/files/bashrc

# personal settings
export PATH=$PATH:/router/bin
export USER_PATH="~/bin"
export SHELL=/bin/bash
export EDITOR=vim
export CSCOPE_EDITOR=vim
export PRINTER=lp                  # Preferred printer.
export NNTPSERVER=usenet.cisco.com # Preferred news server.

# PATH settings
#export PATH=/bin:/usr/bin:/sbin:/usr/sbin:$PATH:/usr/cisco/bin
export PATH=$PATH:/router/bin
export PATH=$PATH:/bin:/usr/bin:/sbin:/usr/sbin:/usr/cisco/bin
export PATH=/ws/prashigu-sjc/scripts/reserve:/users/khaltore/lab/reserve:/users/atm
ondal/reserve:$PATH
export PATH=/ws/prashigu-sjc/scripts/trex/v2.28:$PATH

# Should the full environment be set up even for non-interactive shells?
# Probably not but here is a variable to control it.
export FULLENV=false                # 'true' or 'false'

# Should all paths (even NFS, which might hang) be set up at login?
# The alias "fullpath" is available to setup your full path.  It can
# also be used to change your path by changing USER_PATH above.
export FULLPATH=true                # 'true' or 'false'

###########################################################################
# Everything above this line helps configure the environment.

# This line should not be removed.
#dotdir=~/.files; [ -f $dotdir/sys_bashrc ] && . $dotdir/sys_bashrc
#[ $FULLENV != "true" ] && [ -z "$PS1" ] && return

###########################################################################
# Everything below this line is run for interactive shells.
# If you wish the full environment even in non-interactive
# shells set FULLENV above to 'true'.

umask 022                        # no write by group or other
export autologout=0              # disable autologout
export FIGNORE=".o"              # don't complete .o files
export HISTFILE=~/.bash_history  # history file
#export HISTFILESIZE=500         # history file size
#export HISTSIZE=128             # save last 128 commands
export ignoreeof=10              # disable ^D for logout (up to 10)
set -C                           # disable redirect overwrite
set -b                           # enable immediate job notify

# Source other rc files after this line.
[ -f ~/.bashrc_LOB ] && . ~/.bashrc_LOB
[ -f ~/.bashrc_BU ] && . ~/.bashrc_BU
[ -f ~/.bashrc_USER ] && . ~/.bashrc_USER


# bash history settings
export HISTTIMEFORMAT="%h %d %H:%M:%S> "
export HISTCONTROL=ignoreboth
export HISTIGNORE="df*:free*"
export HISTSIZE=1000


# command prompt settings
host=`hostname`
#export PS1="\h:\w > "            # shell prompt format
#export PS1='`pwd`:/>'
export PS1='[$host:\w]\n# '

# sourcing other files
source ~/.vim/alias.sh

# settings from other sources
#source /ws/prtandon-sjc/scripts/swop.tcl
#source /ws/prtandon-sjc/scripts/parallel_build.tcl

#misc settings
export NXOS_ISSU_CHECKER_ENABLE=1
export LBT_GDBIMG=./build/images/gdb/

