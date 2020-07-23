#!/bin/bash
#
#

#yum install epel-release -y
yum install bash-completion -y

pip install shadowsocks
/usr/bin/ssserver -k tgf2abcd  --fast-open --user nobody -d start -p 443

## alias
cat <<END >> /etc/profile.d/alias.sh
alias tailf='tail -f -n 50'
alias ps='ps aux'
alias ll='ls -lh'
alias la='ls -alh'
alias sss='/usr/bin/ssserver -k tgf2abcd  --fast-open --user nobody -d start -p'
alias psgrep='ps aux | grep'
END

source /etc/profile.d/alias.sh

