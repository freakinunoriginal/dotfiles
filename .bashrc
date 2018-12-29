# Looks something like:
# ▒ user ▒ host ▒ where ▒
# $
# With transitional colors, and assuming a dark background


if [[ $- == *i* ]]; then # apparently needs this to keep Ubuntu from freaking out on login

# define my colors
bgBlack=$(tput setab 233);
txtWhite=$(tput setaf 231);
bgGreen=$(tput setab 43);
txtGreen=$(tput setaf 43);
bgBlue=$(tput setab 69);
txtBlue=$(tput setaf 69);
bgYellow=$(tput setab 221);
txtYellow=$(tput setaf 221);
txtPink=$(tput setaf 219);
reset=$(tput sgr0);

# PS1 if you couldn't tell
PS1="\[${bgBlack}\] \[${txtGreen}\]▒";
PS1+="\[${txtWhite}\]\[${bgGreen}\]";
PS1+=" \u "; # user
PS1+="\[${txtGreen}\]\[${bgBlue}\]▒";
PS1+="\[${txtYellow}\]";
PS1+=" \h "; # host/machine name
PS1+="\[${txtBlue}\]\[${bgYellow}\]▒";
#PS1+="\[${txtWhite}\]";
PS1+=" \w "; # where/current dir (full path)
PS1+="\[${bgBlack}\]\[${txtYellow}\]▒";
PS1+='\[${txtPink}\]\n\$\[${reset}\]'; # input line
export PS1;

fi
