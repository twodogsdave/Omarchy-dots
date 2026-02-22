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

alias grub='sudo nano /boot/limine.conf'
alias grubup='sudo limine-update'
alias services='systemctl list-units  --type=service  --state=running'
alias timers='systemctl list-timers'
alias backuppacman='pacman -Qqe > ~/.config/pkglist/pacman.txt'
alias backupaur='pacman -Qqm > ~/.config/pkglist/aur.txt'
alias updatefont='sudo fc-cache -fv'
alias dmesg='sudo dmesg'
alias journal='journalctl --since "10min ago" -f'
alias audio='yt-dlp --extract-audio --audio-format mp3 --embed-thumbnail'
alias video="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"
alias ip='figlet "$(curl --silent http://ipecho.net/plain)" | lolcat'
alias flolcat='clear && fastfetch | lolcat'
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
alias fixsound='systemctl --user restart pipewire wireplumber pipewire-pulse'
alias periodic='periodic-table-cli'
alias minecrafty='prime-run minecraft-launcher'
alias openspadesy='prime-run openspades'
alias alacarchy='bash <(curl -fsSL https://raw.githubusercontent.com/DanielCoffey1/a-la-carchy/master/a-la-carchy.sh)'
alias omarchycleaner='curl -fsSL https://raw.githubusercontent.com/maxart/omarchy-cleaner/main/omarchy-cleaner.sh | bash'
alias restartwaybar='omarchy-restart-waybar'
alias rootfiles='nautilus admin:///'
alias vimcheat='~/Documents/vim_cheatsheet.sh | less'
alias lazycheat='~/Documents/lazyvim_cheatsheet.sh | less'
alias ho='hyprshade off'
alias hr='hyprshade on'
alias shaders='cd ~/.config/hypr/shaders/'
alias installhooks='curl -fsSL https://imbypass.github.io/omarchy-theme-hook/install.sh | bash'
alias updatehooks='thctl update'
alias updatekeyring='sudo pacman -Sy archlinux-keyring'
alias omarchytte='tte -i ~/.config/omarchy/branding/screensaver.txt --frame-rate 120 --canvas-width 0 --canvas-height 0 --reuse-canvas --anchor-canvas c --anchor-text c --random-effect --exclude-effects dev_worm --no-eol --no-restore-cursor'
alias nq='nautilus -q'
alias makecolors='make-colors.sh ~/.config/omarchy/themes/*'
alias robco='/home/dave/Documents/Fallout3Terminal-master/terminalscript'
alias timer='~/.config/waybar/scripts/timer.sh'
alias pomo='~/.config/waybar/scripts/timer.sh pomo'
alias colors='~/bin/bash.sh'
alias current='omarchy-theme-current'

#--------------------

# Get fastest mirrors in your neighborhood
alias mirrorbackup='sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak'
alias mirrorlist='cat /etc/pacman.d/mirrorlist'
alias mirror='sudo reflector --verbose --sort rate -l 10 -c "United States" -p https --save /etc/pacman.d/mirrorlist'

#--------------------

# CLI apps
alias bt='btop'
alias ca='cava'
alias cm='cmatrix -C green -u 9 -b'
alias f='clear && fastfetch'
alias ht='htop'
alias mc='mc'
alias nc='ncmpcpp'
alias nv='nvtop'
alias o='omarchyy'
alias py='pyradio'
alias r='rmpc'
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
