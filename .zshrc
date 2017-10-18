# If you come from bash you might have to change your $PATH.
ANDROID_SDK=$HOME/Android/Sdk/platform-tools
ANDROID_SDK_TOOLS=$HOME/Android/Sdk/tools/bin
ANDROID_STUDIO=$HOME/studio/android-studio/bin
NODE_BIN=/home/mi/node-v8.4.0-linux-x64/bin
# JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export SYSTRACE_PATH=/home/mi/Android/chromium-trace
export PATH=$ANDROID_SDK:$ANDROID_STUDIO:$ANDROID_SDK_TOOLS:$NODE_BIN:$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/apache-maven-3.5.2/bin:$PATH
export PATH=/home/mi/miuiSource/rootkit:$PATH
export PATH=/home/mi/miuiSource/tools:$PATH


# Path to your oh-my-zsh installation.
  export ZSH=/home/mi/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="syh"
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias t2='tree -L 2'
alias t3='tree -L 3'
alias t4='tree -L 4'
alias t2l='tree -L 2 | less'
alias t3l='tree -L 3 | less'
alias t4l='tree -L 4 | less'
alias lt='ll -rt'
alias lg='l | grep'
alias gs='git status'
alias gb='git branch'
alias gch='git checkout'
alias gchp='git cherry-pick'
alias gam='git commit -a --amend'
alias gct='git commit'
alias grh='git reset --hard HEAD^'
alias v='vim'
alias c='clear'

alias ads='adb devices'
alias ash='adb shell'
alias aps='adb shell ps'
alias adp='adb shell dumpsys package'
alias ada='adb shell dumpsys activity'
alias adsf='adb shell dumpsys SurfaceFlinger'
alias as='adb shell dumpsys'
alias apsg='adb shell ps | grep'
alias akill='adb shell kill'

alias smiui='ssh miuireport@10.232.34.13'

alias g='grep'

alias nau='nautilus'
alias op='nautilus .'
alias pse='ps -eo user,pid,ppid,pgid,comm'
alias systrace='python /home/mi/Android/chromium-trace/systrace.py'
alias syt='python /home/mi/Android/chromium-trace/systrace.py -o ~/sysout/out.html sched gfx view dalvik webview input disk am wm app res freq idle load binder_driver'

# 从手机截屏
alias ascap='adb shell screencap -p  >'

alias charm='~/pycharm-community-2017.2/bin/pycharm.sh'

# for compile android source code
export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx20g"


function receive-file {
    echo '这是你的 IP 地址: '
    while read ; do
        echo "  $REPLY";
    done <<< $(hostname -I)
    echo '挑选一个合适的(可能只有一个), 告诉你的小伙伴吧'
    echo '发送方运行 $ send-file <ip-addr> <file-or-directory>'

    nc -l 23333 | tar -xf -
}


function send-file {
    if [[ -z "$1" ]]; then
        echo '需要接收方的 IP 地址'
        echo
        echo '用法: $ send-file <remote-ip-addr> <path-to-file-or-dir>'
        return
    fi
    if [[ -z "$2" ]]; then
        echo '需要填写待发送的文件'
        echo
        echo '用法: $ send-file <remote-ip-addr> <path-to-file-or-dir>'
        return
    fi
    tar -cf - $2 | nc $1 23333
}


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/mi/.sdkman"
[[ -s "/home/mi/.sdkman/bin/sdkman-init.sh" ]] && source "/home/mi/.sdkman/bin/sdkman-init.sh"
