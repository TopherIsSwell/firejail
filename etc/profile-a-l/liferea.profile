# Firejail profile for liferea
# Description: Feed/news/podcast client with plugin support
# This file is overwritten after every install/update
# Persistent local customizations
include liferea.local
# Persistent global definitions
include globals.local

nodeny  ${HOME}/.cache/liferea
nodeny  ${HOME}/.config/liferea
nodeny  ${HOME}/.local/share/liferea

# Allow python (blacklisted by disable-interpreters.inc)
include allow-python2.inc
include allow-python3.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.cache/liferea
mkdir ${HOME}/.config/liferea
mkdir ${HOME}/.local/share/liferea
allow  ${HOME}/.cache/liferea
allow  ${HOME}/.config/liferea
allow  ${HOME}/.local/share/liferea
allow  /usr/share/liferea
include whitelist-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

caps.drop all
netfilter
# no3d
nodvd
nogroups
noinput
nonewprivs
noroot
# nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-dev
private-tmp

dbus-user filter
dbus-user.own net.sourceforge.liferea
dbus-user.talk ca.desrt.dconf
# Add the next line to your liferea.local if you use the 'Popup Notifications' plugin.
#dbus-user.talk org.freedesktop.Notifications
# Add the next line to your liferea.local if you use the 'Libsecret Support' plugin.
#dbus-user.talk org.freedesktop.secrets
dbus-system none
