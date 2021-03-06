# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="ys"
#ZSH_THEME="amuse"
#ZSH_THEME="philips"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux zsh-autosuggestions zsh-syntax-highlighting)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=${SCALA_HOME}/bin:${SPARK_HOME}/bin:${HADOOP_HOME}/bin:${FLUME_HOME}/bin:${ZOOKEEPER_HOME}/bin:${KAFKA_HOME}/bin:${HBASE_HOME}/bin:${SQOOP_HOME}/bin:${PIG_HOME}/bin:${HIVE_HOME}/bin:${MAHOUT_HOME}/bin:$PATH

#source ~/.oh-my-zsh/plugins/incr/incr-0.2.zsh
alias tmux="TERM=screen-256color-bce tmux"
export EDITOR=/usr/bin/vim
set mouse=a

# Example aliases
alias make_rtt="scons -c && scons -j24 && ./mkimage.sh"
#alias make_rtt="scons -j24"
alias make_clean_rtt="scons -c"
alias make_menuconfig_rtt="scons --menuconfig"
alias check_file= "../../../tools/as.sh"
alias make_m1_defconfig_rtt="cp board/m1_slt/defconfig ./ &&  rm .config && mv defconfig .config"
alias make_rk2108_defconfig_rtt="cp board/rk2108_slt/defconfig ./ &&  rm .config && mv defconfig .config"
alias make_save_defconfig_rtt="rm ./board/m1_slt/defconfig &&  cp .config ./board/m1_slt && mv ./board/m1_slt/.config ./board/m1_slt/defconfig"
alias make_slt_rv1126="make ARCH=arm rv1126-tps549b22-slt.img -j24"
alias make_save_deconfig_rv1126="make ARCH=arm savedefconfig && mv defconfig arch/arm/configs/rv1126_slt_defconfig"
alias make_2108d_mb="make ARCH=arm64 rk1808-slt-mb-v11-rk2108d.img -j24"
alias make_rtt_rk2108d="scons -c && ./build.sh"

[[ -s /home/leonardo.guo/.autojump/etc/profile.d/autojump.sh  ]] && source /home/leonardo.guo/.autojump/etc/profile.d/autojump.sh
alias ctag_file="ctags -R --c++-kinds=+p --fields=+iaS --extra=+q"

