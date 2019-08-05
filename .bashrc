#         31 => red
#         34 => blue
#         35 => purple
#         33 => yellow
#         36 => cyan
#         37 => white
#\d = date
#\t = time (24 hr clock)
#\u = user

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# powerline stuff (won't use my custom theme for some reason)
# ==============================
# function _update_ps1() {
#     PS1=$(powerline-shell $?)
# }

# if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
# fi
# ==============================

#shows: zboyle parentDir/currDir (git branch)$
PS1='\[\033[1;31m\]\u \[\033[1;37m\]${PWD#"${PWD%/*/*}/"}\[\033[1;36m\]$(git_branch)\[\033[1;35m\]\$ \[\033[00m\]'

# added by Anaconda3 installer
# uncomment this to use your anaconda environment in wsl (not really any reason to do this)
# export PATH=/home/zboyle/anaconda3/bin:$PATHG
eecs281="//mnt/c/Users/zaboy/MyFiles/EECS281/"
eecs398="//mnt/c/Users/zaboy/MyFiles/EECS398/"
eecs370="//mnt/c/Users/zaboy/MyFiles/EECS370/"
mfly="//mnt/c/Users/zaboy/MyFiles/MFly/"
desk="//mnt/c/Users/zaboy/Desktop/"
freetime="//mnt/c/Users/zaboy/MyFiles/freetime_programming/"
conda="//mnt/c/Users/zaboy/Anaconda3/envs/condaEnv/"
alias vsc="sh //mnt/c/Users/zaboy/MyFiles/freetime_programming/Bash_Scripts/vsc_setup.sh"
#default python is 2.7.15
alias python3="//mnt/c/Users/zaboy/AppData/Local/Programs/Python/Python37/python.exe"
#default pip is for python2
alias pip3="//mnt/c/Users/zaboy/AppData/Local/Programs/Python/Python37/Scripts/pip3.7.exe"
alias conda="//mnt/c/Users/zaboy/Anaconda3/envs/condaEnv/python.exe"
alias conda_pip="//mnt/c/Users/zaboy/Anaconda3/envs/condaEnv/Scripts/pip.exe"
alias hub="//mnt/c/Users/zaboy/Downloads/hub-windows-amd64-2.12.3/bin/hub.exe"
alias mongo="//mnt/c/Program\ Files/MongoDB/Server/4.0/bin/mongo.exe"
alias mongod.exe="//mnt/c/Program\ Files/MongoDB/Server/4.0/bin/mongod.exe"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
