# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PS1="\[\033[0;33m\]\u:\[\033[0;32m\] \w \[\033[0;37m\] >>>\n> "
