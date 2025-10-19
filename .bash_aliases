# ██████╗  █████╗ ███████╗██╗  ██╗         █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗
# ██╔══██╗██╔══██╗██╔════╝██║  ██║        ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝
# ██████╔╝███████║███████╗███████║        ███████║██║     ██║███████║███████╗█████╗  ███████╗
# ██╔══██╗██╔══██║╚════██║██╔══██║        ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║
# ██████╔╝██║  ██║███████║██║  ██║███████╗██║  ██║███████╗██║██║  ██║███████║███████╗███████║
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
# ~/.bash_aliases

#--------------------

alias cdd="builtin cd"
alias q="exit"
alias c="clear"
alias cleaner='sudo pacman -Rns $(pacman -Qtdq)'
alias info='yay -Si'
alias search='yay'
alias install='yay -S'
alias remove='yay -Rs'
alias cache='paccache -r'

alias grub='sudo nano /etc/default/grub'
alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias services='systemctl list-units  --type=service  --state=running'
alias timers='systemctl list-timers'
alias installed='pacman -Q > ~/Documents/installed_packages'
alias updatefont='sudo fc-cache -fv'
alias dmesg='sudo dmesg'
alias journal='journalctl --since "10min ago" -f'
alias audio='yt-dlp --extract-audio --audio-format mp3 --embed-thumbnail'
alias video="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"
alias ip='figlet "$(curl --silent http://ipecho.net/plain)" | lolcat'
alias convert2png='mogrify -format png *.*'
alias sudo!!='sudo !!'
alias sb='source ~/.bashrc'
alias wget='wget -c'
alias 3d='figlet -f 3d -t'
alias bloody='figlet -f Bloody -t'
alias calvin='figlet -f "Calvin S" -t'
alias shadow='figlet -f "ANSI Shadow" -t'
alias thunder='mplayer ~/Music/"EPIC THUNDER.mp3"'
alias ambient='mplayer ~/Music/"EPIC AMBIENT.mp3"'
alias hacker='mplayer ~/Music/"HACKER MUSIC.mp3"'
alias mc='. /usr/lib/mc/mc-wrapper.sh'
alias myinfo='inxi -Fxxxrza'
alias fixsound='systemctl --user restart pulseaudio'
#alias getkey="wev -event keyboard  | egrep -o 'keycode.*\)'"
alias periodic='periodic-table-cli'
alias minecrafty='prime-run minecraft-launcher'
alias openspadesy='prime-run openspades'
alias sn="cd ~/.notes && ./sn.sh"
alias omarchycleaner='curl -fsSL https://raw.githubusercontent.com/maxart/omarchy-cleaner/main/omarchy-cleaner.sh | bash'


# Get fastest mirrors in your neighborhood
alias mirrorbackup='sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak'
alias mirrorlist='cat /etc/pacman.d/mirrorlist'
alias mirror="sudo reflector -f 10 -l 10 --number 10 --verbose --save /etc/pacman.d/mirrorlist" # download speed

#--------------------

alias bt='btop'
alias ca='cava'
alias cm='cmatrix -C green -u 9 -b'
alias f='clear && fastfetch'
alias ht='htop'
alias mc='mc'
alias nc='ncmpcpp'
alias nv='nvtop'
alias pm='pulsemixer'
alias py='pyradio'
alias tt='tty-clock -c -C 6 -D'

#--------------------

## colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## readable output
alias df='df -h'

## space on drive
alias disk='du -S | sort -n -r |more'

## free
alias free="free -mt"

## ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

## hardware info --short
alias hw="hwinfo --short"

## get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

## pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

#### SAFETY ####
alias rm='rm -Iv --preserve-root'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -i'

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias shred='shred -n 100 -z -v -u'

#### REBOOT/SHUTDOWN ####
alias logout="gnome-session-quit"
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
alias suspend='sudo pm-suspend'
