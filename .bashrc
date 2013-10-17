shopt -s nocaseglob # Case-insensitive globbing (used in pathname expansion)
shopt -s cdspell # Autocorrect typos in path names when using `cd`

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux` # no need to type cd .. ; .. => cd ..
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

# Auto Complete git with 'g' and its bash completions
complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null || complete -o default -o nospace -F _git g

# change this to vim or emacs, if you don't want to use nano
export EDITOR="nano"

# For colors
export GREP_OPTIONS='--color=auto'
# http://unix.stackexchange.com/questions/2897/clicolor-and-ls-colors-in-bash
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# All the settings reside inside config/ folder, so source all those files.
for file in config/*
do
  source $file
done

# Place sensitive data inside ~/.bashrc.<user_name> or to override
[ -f ~/.bashrc.${USER} ] && source ~/.bashrc.${USER}

# Display a random command description
echo "Did you know that:"; whatis $(basename $(ls /bin/*.exe | shuf | head -1) | cut -d. -f 1)
