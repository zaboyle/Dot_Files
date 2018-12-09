#Custom PS1 used in Zach's WSL

#colors: 
#34 => blue
#35 => purple
#33 => yellow
#36 => cyan
#37 => white
#\u = user
#\h = host (name of computer)
#\d = date
#\t = time (24 hr clock)
#PS1="\[\033[31m\\][\d \t] \[\033[34m\]\u@\h\[\033[35m\]\w(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\$ "

PS1="\[\033[1;35m\\][\d \t] \[\033[1;36m\]\u \[\033[1;37m\]\w\$ "
#shortcuts for other folders on my computer
eecs281="//mnt/c/Users/zaboy/Desktop/EECS281/"
eecs398="//mnt/c/Users/zaboy/Desktop/EECS398/"
mfly="//mnt/c/Users/zaboy/Desktop/MFly/auvsi-cv/"
desk="//mnt/c/Users/zaboy/Desktop/"
#shortcut to run a bash script to set up C++ debugging files in VSC
alias vsc="sh //mnt/c/Users/zaboy/Desktop/freetime_programming/Bash_Scripts/vsc_setup.sh"
