# Firejail profile for k3b
# Description: Sophisticated CD/DVD burning application
# This file is overwritten after every install/update
# Persistent local customizations
include k3b.local
# Persistent global definitions
include globals.local

nodeny  ${HOME}/.config/k3brc
nodeny  ${HOME}/.kde/share/config/k3brc
nodeny  ${HOME}/.kde4/share/config/k3brc
nodeny  ${HOME}/.local/share/kxmlgui5/k3b
nodeny  ${MUSIC}

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.keep chown,dac_override,ipc_lock,net_bind_service,sys_admin,sys_nice,sys_rawio,sys_resource
# net none
netfilter
no3d
# nonewprivs - breaks privileged helpers
noinput
# noroot - breaks privileged helpers
nosound
notv
novideo
# protocol unix - breaks privileged helpers
# seccomp - breaks privileged helpers
shell none

private-dev
# private-tmp
