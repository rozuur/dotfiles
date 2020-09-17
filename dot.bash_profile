# User dependent .bash_profile file

if [ -d "/usr/local/sbin" ]; then
    PATH="/usr/local/sbin:${PATH}"
fi

if [ -d "/usr/local/bin" ]; then
    PATH="/usr/local/bin:${PATH}"
fi

export PATH=".:${PATH}"

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
    source "${HOME}/.bashrc"
fi

# Don't add anything to this profile file
