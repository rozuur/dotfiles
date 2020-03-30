# If not running interactively, don't do anything
[ -z "$PS1" ] && return

shopt -s nocaseglob # Case-insensitive globbing (used in pathname expansion)
shopt -s cdspell # Autocorrect typos in path names when using `cd`

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux` # no need to type cd .. ; .. => cd ..
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null
done

# All the settings reside inside ~/config/ folder, so source all those files.
source ${HOME}/dotfiles/exports
for file in ${HOME}/dotfiles/config/*
do
    source $file
done

[ -f "`brew --prefix`/etc/grc.bashrc" ] && source "`brew --prefix`/etc/grc.bashrc"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
