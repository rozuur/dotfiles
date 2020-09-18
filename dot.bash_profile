# User dependent .bash_profile file

if [ -d "/usr/local/sbin" ]; then
    PATH="/usr/local/sbin:${PATH}"
fi

if [ -d "/usr/local/bin" ]; then
    PATH="/usr/local/bin:${PATH}"
fi

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
    source "${HOME}/.bashrc"
fi

export PATH=".:${PATH}"

# Don't add anything to this profile file
