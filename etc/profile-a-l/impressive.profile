# Firejail profile for impressive
# Description: presentation tool with eye candy
# This file is overwritten after every install/update
# Persistent local customizations
include impressive.local
# Persistent global definitions
#include globals.local

nodeny  ${DOCUMENTS}
nodeny  /sbin
nodeny  /usr/sbin

# Allow python (blacklisted by disable-interpreters.inc)
#include allow-python2.inc
include allow-python3.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.cache/mesa_shader_cache
allow  /usr/share/opengl-games-utils
allow  /usr/share/zenity
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
machine-id
net none
nodvd
nogroups
noinput
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

private-cache
private-dev
private-tmp

dbus-user none
dbus-system none

read-only ${HOME}
read-write ${HOME}/.cache/mesa_shader_cache
