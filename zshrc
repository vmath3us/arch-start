# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# If you come from bash you might have to change your $PATH.
# export PATH="$PATH=$HOME/bin:/usr/local/bin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="/home/victormatheus/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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

# Uncomment the following line to change how often to auto-update (in days). export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
     git
     gitignore
     docker
     fzf
     docker-compose
     zsh-autosuggestions
     systemd
     zsh-syntax-highlighting
)

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

#####################################################################################
#                               vi mode
#####################################################################################
set -o vi
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
#####################################################################################
#
#			alias session
#
#####################################-general-#######################################
alias c="clear"
alias iotop="sudo iotop"
alias powersave="sudo cpupower frequency-set -g powersave"
alias powernormal="sudo cpupower frequency-set -g schedutil"
alias dmesg="sudo dmesg"
alias compsize="sudo compsize"
alias inteltop="sudo intel_gpu_top"
alias updatebase="sudo pac-base -Syu --noconfirm"
alias admin="sudo -s"
alias edit="nvim"
alias top="htop"
alias vim="nvim"
alias flist="flatpak list --app --columns=name,application"
####################################-btrfs-####################################################
alias btro="sudo btrfs su snap -r"
alias show="sudo btrfs su show"
alias snapshots="sudo btrfs su l -st /home"
alias sublist="sudo btrfs su l"
alias btcr="sudo btrfs su cr"
alias btsnap="sudo btrfs su snap"
#######################################-multimidia##########################################
alias vlc="org.videolan.VLC"
alias mpv="ln -sf ~/.config/mpv/configvideo ~/.config/mpv/config && io.mpv.Mpv --osc=yes"
alias smpv="ln -sf ~/.config/mpv/confignospeed ~/.config/mpv/config && io.mpv.Mpv --osc=yes"
alias nmpv="ln -sf ~/.config/mpv/confignovaapi ~/.config/mpv/config && io.mpv.Mpv --osc=yes"
alias ampv="ln -sf ~/.config/mpv/configaudio ~/.config/mpv/config && io.mpv.Mpv --osc=yes"
alias cmpv="ln -sf ~/.config/mpv/configclear ~/.config/mpv/config && io.mpv.Mpv --osc=yes"
alias hmpv="ln -sf ~/.config/mpv/confighighvideo ~/.config/mpv/config && io.mpv.Mpv --osc=yes"
alias quality="yt-dlp -F"
alias download='cd ~/Vídeos && yt-dlp --ppa "Merger+ffmpeg_i1:-hwaccel vaapi" -f '
alias downloadhere='yt-dlp --ppa "Merger+ffmpeg_i1:-hwaccel vaapi" -f 22'
alias downloadaudio="cd ~/Música && yt-dlp -f 251"
######################################################################################
alias lpishell='podman start lpi-debian && podman attach lpi-debian --detach-keys="ctrl-d"'
alias golang="docker start golangalpine && docker exec -it golangalpine /bin/sh"
alias k="kubectl"
alias ip="ip -br -c a"
alias paste='curl -F 'file=@-' 0x0.st'
######################################################################################
#
#				export
#
##################################################################################				
export SYSTEMD_EDITOR="/usr/bin/nvim"
export PATH=$PATH:/home/victormatheus/bin:/home/victormatheus/.local/bin:/opt
export MANPAGER="nvim +Man!" 
export EDITOR="nvim"
export FZF_BASE=/home/victormatheus/fzf/shell
export DOCKER_HOST=unix:///run/user/1000/docker.sock
export DOCKER_CONTEXT=default
export XDG_DATA_DIRS=/home/victormatheus/.local/share/:/home/victormatheus/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share/:/usr/share/
#upload file,512mb limit
upload() {
    for i in "$@" 
    do
        curl -F file=@$i http://0x0.st 
    done 
}
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
##################################################-container-#######################################################
newroot(){
    image=$@
    namebar=${image/\//}
    name=${namebar/\:/}
    podman stop integrate-$name
    podman rm integrate-$name
    podman run --name integrate-$name -v /home:/home --detach-keys="ctrl-d" -it $@
    podman ps
}
root(){
    podman start integrate-$@ && podman attach integrate-$@ --detach-keys="ctrl-d"
}
newisoroot(){
    image=$@ &&
    namebar=${image/\//}&&
    name=${namebar/\:/}&&
    podman stop iso-$name
    podman rm iso-$name
    podman run --name iso-$name --detach-keys="ctrl-d" -it $@
    podman ps
}
isoroot(){
    podman start iso-$@ && podman attach iso-$@ --detach-keys="ctrl-d"
}
tarsplit(){
    moment=$(date +%Y-%m-%d--%H-%M-%S)
    data=$moment
    tar --owner=0 --group=0 $@ --zstd -cf - | split - -b 500M -d ${@[1]}-in-$data.tar.zst.part.
}
source <(kubectl completion zsh)
