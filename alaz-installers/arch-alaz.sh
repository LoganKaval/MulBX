#!/bin/bash

# Hello

echo "
       ____________________       ________________         ________          ________
       |                   |     |    ________    |        \       \        /       /
       |    ___     ___    |     |   |________|   |         \       \      /       /
       |   |   |   |   |   |     |               /           \       \    /       / 
       |   |   |   |   |   |     |   __________  \            \       \__/       /
       |   |   |   |   |   |     |  |          |  |            \                / 
       |   |   |   |   |   |     |  |__________|  |            /      ____      \ 
       |___|   |___|   |   |     |________________/           /      /    \      \ 	    
                       |   |                                 /      /      \______\ 
    ___________________|   |________________________________/      /______________________        
    \                                                                                    /
    /____________________________________________________________________________________\ 
"

rounds 1
until [ "$rounds" = 5 ]
do
	echo "Prepairing MulBX Installer..."
	echo "Just One Moment Please!"
	sleep 0.3s
	(( rounds ++ ))
done



# Warnings and Beginning
echo "This Will Turn Arch Linux Into MulBX!"
echo "Exit the Script If your not on Arch or if Your Not in a User Directory!"
echo "You Have Five Seconds to do so"
sleep 7

# Collecting Directories

echo "What is The User Account That You Want the Base Files to Go In?"
echo "The Root Account WILL NOT Work!!!"
read dir


sleep 10


# To Install Packages in the Package List
sudo pacman -Syu
sudo pacman -Syy
sudo pacman -S tty-clock -y
sudo pacman -S chromium-browser -y
sudo pacman -S thunar -y
sudo pacman -S libreoffice -y
sudo pacman -S cheese -y
sudo pacman -S git -y
sudo pacman -S wget -y
sudo pacman -S xmonad -y
sudo pacman -S xmonad-contrib -y
sudo pacman -S xmobar -y
sudo pacman -S xterm -y
sudo pacman -S terminator -y
sudo pacman -S featherpad -y
sudo pacman -S nitrogen -y
sudo pacman -S picom -y
sudo pacman -S vim -y
sudo pacman -S screenfetch -y
sudo pacman -S ranger -y
sudo pacman -S btop -y
sudo pacman -S lxappearance -y
sudo pacman -S slock -y
sudo pacman -S dmenu -y
sudo pacman -S qt5ct -y
sudo pacman -S gnome-clocks -y
sudo pacman -S xfce4-power-manager -y
sudo pacman -S nano -y
sudo pacman -S mc -y
sudo pacman -S curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo pacman -S spectacle -y
sudo pacman -S ufw -y



# Making Directories

mkdir /home/$dir/.config
mkdir /home/$dir/.xmonad
sudo mkdir /etc/MulBX
sudo mkdir /etc/MulBX/xmobar
sudo mkdir /usr/share/backgrounds/MulBX
sudo mkdir /etc/skel/.xmonad
sudo mkdir /usr/share/backgrounds

# Moving Files


#cp bashrc /home/$dir/.bashrc

echo "# ~/.bashrc: executed by bash(1) for non-login shells." > /home/$dir/.bashrc
echo "# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)" >> /home/$dir/.bashrc
echo "case $- in" >> /home/$dir/.bashrc
echo "    *i*) ;;" >> /home/$dir/.bashrc
echo "      *) return;;" >> /home/$dir/.bashrc
echo "esac" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "HISTCONTROL=ignoreboth" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "shopt -s histappend" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "HISTSIZE=1000" >> /home/$dir/.bashrc
echo "HISTFILESIZE=2000" >> /home/$dir/.bashrc
echo "# check the window size after each command and, if necessary," >> /home/$dir/.bashrc
echo "# update the values of LINES and COLUMNS." >> /home/$dir/.bashrc
echo "shopt -s checkwinsize" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# If set, the pattern "**" used in a pathname expansion context will" >> /home/$dir/.bashrc
echo "# match all files and zero or more directories and subdirectories." >> /home/$dir/.bashrc
echo "#shopt -s globstar" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# make less more friendly for non-text input files, see lesspipe(1)" >> /home/$dir/.bashrc
echo "#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# set variable identifying the chroot you work in (used in the prompt below)" >> /home/$dir/.bashrc
echo "if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then" >> /home/$dir/.bashrc
echo "    debian_chroot=$(cat /etc/debian_chroot)" >> /home/$dir/.bashrc
echo "fi" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# set a fancy prompt (non-color, unless we know we "want" color)" >> /home/$dir/.bashrc
echo "case "$TERM" in" >> /home/$dir/.bashrc
echo "    xterm-color|*-256color) color_prompt=yes;;" >> /home/$dir/.bashrc
echo "esac" >> /home/$dir/.bashrc
echo " "  >> /home/$dir/.bashrc
echo "# uncomment for a colored prompt, if the terminal has the capability; turned" >> /home/$dir/.bashrc
echo "# off by default to not distract the user: the focus in a terminal window" >> /home/$dir/.bashrc
echo "# should be on the output of commands, not on the prompt" >> /home/$dir/.bashrc
echo "#force_color_prompt=yes" >> /home/$dir/.bashrc
echo " "  >> /home/$dir/.bashrcr
echo "if [ -n "$force_color_prompt" ]; then" >> /home/$dir/.bashrc
echo "    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then" >> /home/$dir/.bashrc
echo "	# We have color support; assume it's compliant with Ecma-48" >> /home/$dir/.bashrc
echo "	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such" >> /home/$dir/.bashrc
echo "	# a case would tend to support setf rather than setaf.)" >> /home/$dir/.bashrc
echo "	color_prompt=yes" >> /home/$dir/.bashrc
echo "    else" >> /home/$dir/.bashrc
echo "	color_prompt=" >> /home/$dir/.bashrc
echo "    fi" >> /home/$dir/.bashrc
echo "fi" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "if [ "$color_prompt" = yes ]; then" >> /home/$dir/.bashrc
echo "    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> /home/$dir/.bashrc
echo "else" >> /home/$dir/.bashrc
echo "    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '" >> /home/$dir/.bashrc
echo "fi"  >> /home/$dir/.bashrc
echo "unset color_prompt force_color_prompt" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# If this is an xterm set the title to user@host:dir" >> /home/$dir/.bashrc
echo "case "$TERM" in" >> /home/$dir/.bashrc
echo "xterm*|rxvt*)" >> /home/$dir/.bashrc
echo "    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"" >> /home/$dir/.bashrc
echo "    ;;" >> /home/$dir/.bashrce
echo "*)" >> /home/$dir/.bashrc
echo "    ;;" >> /home/$dir/.bashrc
echo "esac" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# enable color support of ls and also add handy aliases" >> /home/$dir/.bashrc
echo "if [ -x /usr/bin/dircolors ]; then" >> /home/$dir/.bashrc
echo "    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"" >> /home/$dir/.bashrc
echo "    alias ls='ls --color=auto'" >> /home/$dir/.bashrc
echo "    #alias dir='dir --color=auto'" >> /home/$dir/.bashrc
echo "    #alias vdir='vdir --color=auto'"
echo " " >> /home/$dir/.bashrc
echo "    #alias grep='grep --color=auto'" >> /home/$dir/.bashrc
echo "    #alias fgrep='fgrep --color=auto'" >> /home/$dir/.bashrc
echo "    #alias egrep='egrep --color=auto'" >> /home/$dir/.bashrc
echo "fi" >> /home/$dir/.bashrc
echo " "  >> /home/$dir/.bashrc
echo "# colored GCC warnings and errors"
echo "#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# some more ls aliases" >> /home/$dir/.bashrc
echo "alias ll='ls -l'" >> /home/$dir/.bashrc
echo "alias lla='ls -Al'" >> /home/$dir/.bashrc
echo "alias la='ls -A'" >> /home/$dir/.bashrc
echo "alias l='ls -CF'" >> /home/$dir/.bashrc
echo "alias ..='cd ..'" >> /home/$dir/.bashrc
echo "alias tcl='tty-clock -cxbt'" >> /home/$dir/.bashrc
echo "alias clearfetch='clear && screenfetch'" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# Alias definitions." >> /home/$dir/.bashrc
echo "# You may want to put all your additions into a separate file like" >> /home/$dir/.bashrc
echo "# ~/.bash_aliases, instead of adding them here directly." >> /home/$dir/.bashrc
echo "# See /usr/share/doc/bash-doc/examples in the bash-doc package." >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "if [ -f ~/.bash_aliases ]; then" >> /home/$dir/.bashrc
echo "    . ~/.bash_aliases" >> /home/$dir/.bashrc
echo "fi" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# enable programmable completion features (you don't need to enable" >> /home/$dir/.bashrc
echo "# this, if it's already enabled in /etc/bash.bashrc and /etc/profile" >> /home/$dir/.bashrc
echo "# sources /etc/bash.bashrc)." >> /home/$dir/.bashrc
echo "if ! shopt -oq posix; then" >> /home/$dir/.bashrc
echo "  if [ -f /usr/share/bash-completion/bash_completion ]; then" >> /home/$dir/.bashrc
echo "    . /usr/share/bash-completion/bash_completion" >> /home/$dir/.bashrc
echo "  elif [ -f /etc/bash_completion ]; then" >> /home/$dir/.bashrc
echo "    . /etc/bash_completion" >> /home/$dir/.bashrc
echo "  fi" >> /home/$dir/.bashrc
echo "fi" >> /home/$dir/.bashrc
echo " "  >> /home/$dir/.bashrc
echo "echo '"  >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "                 _" >> /home/$dir/.bashrc
echo "               /  /|" >> /home/$dir/.bashrc
echo "             /  / /|" >> /home/$dir/.bashrc
echo "           / | / / |" >> /home/$dir/.bashrc
echo "         /|  |/ /  |" >> /home/$dir/.bashrc
echo "       /  |  / /___|" >> /home/$dir/.bashrc
echo "      /   | / /    |" >> /home/$dir/.bashrc
echo "      |   |/ /_____|" >> /home/$dir/.bashrc
echo "      |   / /      |" >> /home/$dir/.bashrc
echo "      |  / /     __|" >> /home/$dir/.bashrc
echo "      | / /     /" >> /home/$dir/.bashrc
echo "       / /------" >> /home/$dir/.bashrc
echo "       | |" >> /home/$dir/.bashrc
echo "       | |" >> /home/$dir/.bashrc
echo "       |_|" >> /home/$dir/.bashrc
echo "       \_\." >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "'" >> /home/$dir/.bashrc
echo "clear" >> /home/$dir/.bashrc
echo "echo '" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "                 _" >> /home/$dir/.bashrc
echo "               /  /|" >> /home/$dir/.bashrc
echo "             /  / /|" >> /home/$dir/.bashrc
echo "           / | / / |" >> /home/$dir/.bashrc
echo "         /|  |/ /  |" >> /home/$dir/.bashrc
echo "       /  |  / /___|" >> /home/$dir/.bashrc
echo "      /   | / /    |" >> /home/$dir/.bashrc
echo "      |   |/ /_____|" >> /home/$dir/.bashrc
echo "      |   / /      |" >> /home/$dir/.bashrc
echo "      |  / /     __|" >> /home/$dir/.bashrc
echo "      | / /     /" >> /home/$dir/.bashrc
echo "       / /------" >> /home/$dir/.bashrc
echo "       | |" >> /home/$dir/.bashrc
echo "       | |" >> /home/$dir/.bashrc
echo "       |_|" >> /home/$dir/.bashrc
echo "       \_\." >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "'" >> /home/$dir/.bashrc


#sudo cp xmobar.config /etc/MulBX/xmobar/xmobar.config

echo "Config { " > /etc/MulBX/xmobar/xmobar.config
echo "   -- appearance" >> /etc/MulBX/xmobar/xmobar.config
echo "     font =         "Bitstream Vera Sans Mono Bold 9:pixelsize=30"" >> /etc/MulBX/xmobar/xmobar.config
echo "   , bgColor =      "black"" >> /etc/MulBX/xmobar/xmobar.config
echo "   , fgColor =      "#646464"" >> /etc/MulBX/xmobar/xmobar.config
echo "   , position =     Top" >> /etc/MulBX/xmobar/xmobar.config
echo "   , border =       BottomB" >> /etc/MulBX/xmobar/xmobar.config
echo "   , borderColor =  "#097969"" >> /etc/MulBX/xmobar/xmobar.config
echo "   -- layout" >> /etc/MulBX/xmobar/xmobar.config
echo "   , sepChar =  "%"   -- delineator between plugin names and straight text" >> /etc/MulBX/xmobar/xmobar.config
echo "   , alignSep = "}{"  -- separator between left-right alignment" >> /etc/MulBX/xmobar/xmobar.config
echo "   , template = "%battery% | %multicpu% | %coretemp% | %memory% | %dynnetwork% }{ %RJTT% | %date% || %kbd% "" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "   -- general behavior" >> /etc/MulBX/xmobar/xmobar.config
echo "   , lowerOnStart =     True    -- send to bottom of window stack on start" >> /etc/MulBX/xmobar/xmobar.config
echo "   , hideOnStart =      False   -- start with window unmapped (hidden)" >> /etc/MulBX/xmobar/xmobar.config
echo "   , allDesktops =      True    -- show on all desktops" >> /etc/MulBX/xmobar/xmobar.config
echo "   , overrideRedirect = True    -- set the Override Redirect flag (Xlib)" >> /etc/MulBX/xmobar/xmobar.config
echo "   , pickBroadest =     False   -- choose widest display (multi-monitor)" >> /etc/MulBX/xmobar/xmobar.config
echo "   , persistent =       True    -- enable/disable hiding (True = disabled)" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "   -- plugins" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   Numbers can be automatically colored according to their value. xmobar" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   decides color based on a three-tier/two-cutoff system, controlled by" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   command options:" >> /etc/MulBX/xmobar/xmobar.config
echo "   --     --Low sets the low cutoff" >> /etc/MulBX/xmobar/xmobar.config
echo "   --     --High sets the high cutoff" >> /etc/MulBX/xmobar/xmobar.config
echo "   --" >> /etc/MulBX/xmobar/xmobar.config
echo "   --     --low sets the color below --Low cutoff" >> /etc/MulBX/xmobar/xmobar.config
echo "   --     --normal sets the color between --Low and --High cutoffs" >> /etc/MulBX/xmobar/xmobar.config
echo "   --     --High sets the color above --High cutoff" >> /etc/MulBX/xmobar/xmobar.config
echo "   --" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   The --template option controls how the plugin is displayed. Text" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   color can be set by enclosing in <fc></fc> tags. For more details" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   see http://projects.haskell.org/xmobar/#system-monitor-plugins." >> /etc/MulBX/xmobar/xmobar.config
echo "   , commands = " >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- weather monitor" >> /etc/MulBX/xmobar/xmobar.config
echo "        [ Run Weather "RJTT" [ "--template", "<skyCondition> | <fc=#4682B4><tempC></fc>°C | <fc=#4682B4><rh></fc>% | <fc=#4682B4><pressure></fc>hPa"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 36000" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- network activity monitor (dynamic interface resolution)" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run DynNetwork     [ "--template" , "<dev>: <tx>kB/s|<rx>kB/s"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--Low"      , "1000"       -- units: B/s" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--High"     , "5000"       -- units: B/s" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--low"      , "darkgreen"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--normal"   , "darkorange"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--high"     , "darkred"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 10" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- cpu activity monitor" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run MultiCpu       [ "--template" , "Cpu: <total0>%|<total1>%"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--Low"      , "50"         -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--High"     , "85"         -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--low"      , "darkgreen"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--normal"   , "darkorange"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--high"     , "darkred"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 10" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- cpu core temperature monitor" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run CoreTemp       [ "--template" , "Temp: <core0>°C|<core1>°C"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--Low"      , "70"        -- units: °C" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--High"     , "80"        -- units: °C" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--low"      , "darkgreen"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--normal"   , "darkorange"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--high"     , "darkred"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 50" >> /etc/MulBX/xmobar/xmobar.config
echo "                          " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- memory usage monitor" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run Memory         [ "--template" ,"Mem: <usedratio>%"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--Low"      , "20"        -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--High"     , "90"        -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--low"      , "darkgreen"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--normal"   , "darkorange"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--high"     , "darkred"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 10" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- battery monitor"
echo "        , Run Battery        [ "--template" , "Batt: <acstatus>"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--Low"      , "25"        -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--High"     , "80"        -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--low"      , "darkred"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--normal"   , "darkorange"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--high"     , "darkgreen"" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--" -- battery specific options" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       -- discharging status" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       , "-o"	, "<left>% (<timeleft>)"" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       -- AC "on" status" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       , "-O"	, "<fc=#dAA520>Charging</fc>"" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       -- charged status" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       , "-i"	, "<fc=#006000>Charged</fc>"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 50" >> /etc/MulBX/xmobar/xmobar.config
echo " "
echo "        -- time and date indicator " >> /etc/MulBX/xmobar/xmobar.config
echo "        --   (%F = y-m-d date, %a = day of week, %T = h:m:s time)" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run Date           "<fc=#ABABAB>%F (%a) %T</fc>" "date" 10" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- keyboard layout indicator" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run Kbd            [ ("us(dvorak)" , "<fc=#00008B>DV</fc>")" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , ("us"         , "<fc=#8B0000>US</fc>")" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ]" >> /etc/MulBX/xmobar/xmobar.config
echo "        ]"
echo "   }" >> /etc/MulBX/xmobar/xmobar.config

#cp arch-xmonad.hs /home/$dir/.xmonad/xmonad.hs


echo "----------------------------------------------------------------------------------------------------------------- Imports" > /home/$dir/.xmonad/xmonad.hs
echo "import XMonad" >> /home/$dir/.xmonad/xmonad.hs
echo "import Data.Monoid" >> /home/$dir/.xmonad/xmonad.hs
echo "import System.Exit" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Util.SpawnOnce" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Hooks.ManageDocks" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Util.Run" >> /home/$dir/.xmonad/xmonad.hs
echo "import qualified XMonad.StackSet as W" >> /home/$dir/.xmonad/xmonad.hs
echo "import qualified Data.Map        as M" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Layout Modifers" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Layout.Spacing" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Layout Imports" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Layout.Grid" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Layout.Spiral" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Layout.ThreeColumns" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Layout.MultiColumns" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "----------------------------------------------------------------------------------------------------------------- Prefrences" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- The preferred terminal program, which is used in a binding below and by" >> /home/$dir/.xmonad/xmonad.hs
echo "-- certain contrib modules." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myTerminal      = "terminator"" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Whether focus follows the mouse pointer." >> /home/$dir/.xmonad/xmonad.hs
echo "myFocusFollowsMouse :: Bool" >> /home/$dir/.xmonad/xmonad.hs
echo "myFocusFollowsMouse = True" >> /home/$dir/.xmonad/xmonad.hs
echo "  " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Whether clicking on a window to focus also passes the click to the window" >> /home/$dir/.xmonad/xmonad.hs
echo "myClickJustFocuses :: Bool" >> /home/$dir/.xmonad/xmonad.hs
echo "myClickJustFocuses = False" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Width of the window border in pixels." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myBorderWidth   = 5" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- modMask lets you specify which modkey you want to use. The default" >> /home/$dir/.xmonad/xmonad.hs
echo "-- is mod1Mask ("left alt").  You may also consider using mod3Mask" >> /home/$dir/.xmonad/xmonad.hs
echo "-- ("right alt"), which does not conflict with emacs keybindings. The" >> /home/$dir/.xmonad/xmonad.hs
echo "-- "windows key" is usually mod4Mask." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myModMask       = mod4Mask" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- The default number of workspaces (virtual screens) and their names." >> /home/$dir/.xmonad/xmonad.hs
echo "-- By default we use numeric strings, but any string may be used as a" >> /home/$dir/.xmonad/xmonad.hs
echo "-- workspace name. The number of workspaces is determined by the length" >> /home/$dir/.xmonad/xmonad.hs
echo "-- of this list." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- A tagging example:" >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- > workspaces = ["web", "irc", "code" ] ++ map show [4..9]" >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myWorkspaces    = ["1","2","3","4","5","6","7","8","9"]" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Border colors for unfocused and focused windows, respectively." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myNormalBorderColor  = "#097969"" >> /home/$dir/.xmonad/xmonad.hs
echo "myFocusedBorderColor = "#50c878"" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Key bindings. Add, modify or remove key bindings here." >> /home/$dir/.xmonad/xmonad.hs
echo "--"
echo "myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $"
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- launch a terminal" >> /home/$dir/.xmonad/xmonad.hs
echo "    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_x     ), spawn $ XMonad.terminal conf)" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- launch dmenu" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_p     ), spawn "dmenu_run")" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_c     ), spawn "dmenu_run")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Launch Brave Browser" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_v     ), spawn "brave-browser")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Launch Chromium" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_v     ), spawn "chromium")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- launch gmrun" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_p     ), spawn "gmrun")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- close focused window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_c     ), kill)" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Launch Thunar" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_x     ), spawn "thunar")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Launch  FeatherPad" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_d     ), spawn "featherpad")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Rotate through the available layout algorithms" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_space ), sendMessage NextLayout)" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    --  Reset the layouts on the current workspace to default" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Resize viewed windows to the correct size" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_n     ), refresh)" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Move focus to the next window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_Tab   ), windows W.focusDown)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_z     ), windows W.focusDown)" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Move focus to the next window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_j     ), windows W.focusDown)" >> /home/$dir/.xmonad/xmonad.hs
echo " "  >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Move focus to the previous window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_k     ), windows W.focusUp  )" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_z     ), windows W.focusUp  )" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Move focus to the master window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_m     ), windows W.focusMaster  )" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "   -- Lock screen" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_y     ), spawn "slock")    )" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Swap the focused window and the master window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_Return), windows W.swapMaster)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_a     ), windows W.swapMaster)" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Swap the focused window with the next window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Swap the focused window with the previous window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Shrink the master area" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_h     ), sendMessage Shrink)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_p     ), sendMessage Shrink)" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Expand the master area" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_l     ), sendMessage Expand)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_p     ), sendMessage Expand)" >> /home/$dir/.xmonad/xmonad.hs
echo " "  >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Push window back into tiling" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_t     ), withFocused $ windows . W.sink)" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Increment the number of windows in the master area" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Deincrement the number of windows in the master area" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Toggle the status bar gap" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Use this binding with avoidStruts from Hooks.ManageDocks." >> /home/$dir/.xmonad/xmonad.hs
echo "    -- See also the statusBar function from Hooks.DynamicLog." >> /home/$dir/.xmonad/xmonad.hs
echo "    --" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- , ((modm              , xK_b     ), sendMessage ToggleStruts)" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Quit xmonad" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Restart xmonad" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Run xmessage with a summary of the default keybindings (useful for beginners)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_slash ), spawn ("echo \"" ++ help ++ "\" | xmessage -file -"))" >> /home/$dir/.xmonad/xmonad.hs
echo "    ]" >> /home/$dir/.xmonad/xmonad.hs
echo "    ++" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    --" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-[1..9], Switch to workspace N" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-shift-[1..9], Move client to workspace N" >> /home/$dir/.xmonad/xmonad.hs
echo "    --" >> /home/$dir/.xmonad/xmonad.hs
echo "    [((m .|. modm, k), windows $ f i)" >> /home/$dir/.xmonad/xmonad.hs
echo "        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]" >> /home/$dir/.xmonad/xmonad.hs
echo "        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]" >> /home/$dir/.xmonad/xmonad.hs
echo "    ++" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    --" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3" >> /home/$dir/.xmonad/xmonad.hs
echo "    --" >> /home/$dir/.xmonad/xmonad.hs
echo "    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))" >> /home/$dir/.xmonad/xmonad.hs
echo "        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]" >> /home/$dir/.xmonad/xmonad.hs
echo "        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Mouse bindings: default actions bound to mouse events" >> /home/$dir/.xmonad/xmonad.hs
echo "--"  >> /home/$dir/.xmonad/xmonad.hs
echo "myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $" >> /home/$dir/.xmonad/xmonad.hs
echo " "  >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-button1, Set the window to floating mode and move by dragging" >> /home/$dir/.xmonad/xmonad.hs
echo "    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w" >> /home/$dir/.xmonad/xmonad.hs
echo "                                       >> windows W.shiftMaster))" >> /home/$dir/.xmonad/xmonad.hs
echo " "  >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-button2, Raise the window to the top of the stack" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-button3, Set the window to floating mode and resize by dragging" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w" >> /home/$dir/.xmonad/xmonad.hs
echo "                                       >> windows W.shiftMaster))" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- you may also bind events to the mouse scroll wheel (button4 and button5)" >> /home/$dir/.xmonad/xmonad.hs
echo "    ]" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Layouts:" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- You can specify and transform your layouts by modifying these values." >> /home/$dir/.xmonad/xmonad.hs
echo "-- If you change layout bindings be sure to use 'mod-shift-space' after" >> /home/$dir/.xmonad/xmonad.hs
echo "-- restarting (with 'mod-q') to reset your layout state to the new" >> /home/$dir/.xmonad/xmonad.hs
echo "-- defaults, as xmonad preserves your old layout settings by default." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- The available layouts.  Note that each layout is separated by |||," >> /home/$dir/.xmonad/xmonad.hs
echo "-- which denotes layout choice." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myLayout =" >> /home/$dir/.xmonad/xmonad.hs
echo "  spacing 20 $  avoidStruts (tiled ||| Mirror tiled ||| Full ||| Grid ||| spiral golden ||| ThreeCol nmaster delta ratio ||| multiCol [1] 1 0.01 (-0.5))" >> /home/$dir/.xmonad/xmonad.hs
echo "     where" >> /home/$dir/.xmonad/xmonad.hs
echo "     -- default tiling algorithm partitions the screen into two panes" >> /home/$dir/.xmonad/xmonad.hs
echo "     tiled   = Tall nmaster delta ratio" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "     -- The default number of windows in the master pane" >> /home/$dir/.xmonad/xmonad.hs
echo "     nmaster = 1" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "     -- Golden Ratio" >> /home/$dir/.xmonad/xmonad.hs
echo "     golden  = 6/7" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "     -- Spiral Number" >> /home/$dir/.xmonad/xmonad.hs
echo "     num     = 15/19" >> /home/$dir/.xmonad/xmonad.hs
echo "     -- Default proportion of screen occupied by master pane" >> /home/$dir/.xmonad/xmonad.hs
echo "     ratio   = 1/2" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "     -- Percent of screen to increment by when resizing panes" >> /home/$dir/.xmonad/xmonad.hs
echo "     delta   = 3/100" >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Window rules:" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Execute arbitrary actions and WindowSet manipulations when managing" >> /home/$dir/.xmonad/xmonad.hs
echo "-- a new window. You can use this to, for example, always float a" >> /home/$dir/.xmonad/xmonad.hs
echo "-- particular program, or have a client always appear on a particular" >> /home/$dir/.xmonad/xmonad.hs
echo "-- workspace." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- To find the property name associated with a program, use" >> /home/$dir/.xmonad/xmonad.hs
echo "-- > xprop | grep WM_CLASS" >> /home/$dir/.xmonad/xmonad.hs
echo "-- and click on the client you're interested in." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- To match on the WM_NAME, you can use 'title' in the same way that" >> /home/$dir/.xmonad/xmonad.hs
echo "-- 'className' and 'resource' are used below." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myManageHook = composeAll" >> /home/$dir/.xmonad/xmonad.hs
echo "    [ className =? "MPlayer"        --> doFloat" >> /home/$dir/.xmonad/xmonad.hs
echo "--    , className =? "Gimp"           --> doFloat" >> /home/$dir/.xmonad/xmonad.hs
echo "    , resource  =? "desktop_window" --> doIgnore" >> /home/$dir/.xmonad/xmonad.hs
echo "    , resource  =? "kdesktop"       --> doIgnore ]" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Event handling" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- * EwmhDesktops users should change this to ewmhDesktopsEventHook" >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Defines a custom handler function for X Events. The function should" >> /home/$dir/.xmonad/xmonad.hs
echo "-- return (All True) if the default handler is to be run afterwards. To" >> /home/$dir/.xmonad/xmonad.hs
echo "-- combine event hooks use mappend or mconcat from Data.Monoid." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myEventHook = mempty" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Status bars and logging" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Perform an arbitrary action on each internal state change or X event." >> /home/$dir/.xmonad/xmonad.hs
echo "-- See the 'XMonad.Hooks.DynamicLog' extension for examples." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myLogHook = return ()" >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Startup hook" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Perform an arbitrary action each time xmonad starts or is restarted" >> /home/$dir/.xmonad/xmonad.hs
echo "-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize" >> /home/$dir/.xmonad/xmonad.hs
echo "-- per-workspace layout choices." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- By default, do nothing." >> /home/$dir/.xmonad/xmonad.hs
echo "myStartupHook = do" >> /home/$dir/.xmonad/xmonad.hs
echo "	spawnOnce "nitrogen --restore &"" >> /home/$dir/.xmonad/xmonad.hs
echo "	spawnOnce "picom &"" >> /home/$dir/.xmonad/xmonad.hs
echo "        spawnOnce "ufw &"" >> /home/$dir/.xmonad/xmonad.hs
echo "        spawnOnce "xfce4-power-manager &"" >> /home/$dir/.xmonad/xmonad.hs
echo "--        spawnOnce "volumeicon &"" >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Now run xmonad with all the defaults we set up." >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Run xmonad with the settings you specify. No need to modify this." >> /home/$dir/.xmonad/xmonad.hs
echo "--"  >> /home/$dir/.xmonad/xmonad.hs
echo "main = do" >> /home/$dir/.xmonad/xmonad.hs
echo "  xmproc <- spawnPipe "xmobar /etc/MulBX/xmobar/xmobar.config"" >> /home/$dir/.xmonad/xmonad.hs
echo "  xmonad $ docks defaults" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- A structure containing your configuration settings, overriding" >> /home/$dir/.xmonad/xmonad.hs
echo "-- fields in the default config. Any you don't override, will" >> /home/$dir/.xmonad/xmonad.hs
echo "-- use the defaults defined in xmonad/XMonad/Config.hs" >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- No need to modify this." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "defaults = def {" >> /home/$dir/.xmonad/xmonad.hs
echo "      -- simple stuff" >> /home/$dir/.xmonad/xmonad.hs
echo "        terminal           = myTerminal," >> /home/$dir/.xmonad/xmonad.hs
echo "        focusFollowsMouse  = myFocusFollowsMouse," >> /home/$dir/.xmonad/xmonad.hs
echo "        clickJustFocuses   = myClickJustFocuses," >> /home/$dir/.xmonad/xmonad.hs
echo "        borderWidth        = myBorderWidth," >> /home/$dir/.xmonad/xmonad.hs
echo "        modMask            = myModMask," >> /home/$dir/.xmonad/xmonad.hs
echo "        workspaces         = myWorkspaces," >> /home/$dir/.xmonad/xmonad.hs
echo "        normalBorderColor  = myNormalBorderColor," >> /home/$dir/.xmonad/xmonad.hs
echo "        focusedBorderColor = myFocusedBorderColor," >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "      -- key bindings" >> /home/$dir/.xmonad/xmonad.hs
echo "        keys               = myKeys," >> /home/$dir/.xmonad/xmonad.hs
echo "        mouseBindings      = myMouseBindings," >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "      -- hooks, layouts" >> /home/$dir/.xmonad/xmonad.hs
echo "        layoutHook         = myLayout," >> /home/$dir/.xmonad/xmonad.hs
echo "        manageHook         = myManageHook," >> /home/$dir/.xmonad/xmonad.hs
echo "        handleEventHook    = myEventHook," >> /home/$dir/.xmonad/xmonad.hs
echo "        logHook            = myLogHook," >> /home/$dir/.xmonad/xmonad.hs
echo "        startupHook        = myStartupHook" >> /home/$dir/.xmonad/xmonad.hs
echo "    }" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- | Finally, a copy of the default bindings in simple textual tabular format." >> /home/$dir/.xmonad/xmonad.hs
echo "help :: String" >> /home/$dir/.xmonad/xmonad.hs
echo "help = unlines ["The default modifier key is 'alt'. Default keybindings:"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- launching and killing programs"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-Enter  Launch xterminal"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-p            Launch dmenu"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-p      Launch gmrun"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-c      Close/kill the focused window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Space        Rotate through the available layout algorithms"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-Space  Reset the layouts on the current workSpace to default"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-n            Resize/refresh viewed windows to the correct size"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- move focus up or down the window stack"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Tab        Move focus to the next window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-Tab  Move focus to the previous window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-j          Move focus to the next window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-k          Move focus to the previous window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-m          Move focus to the master window"," >> /home/$dir/.xmonad/xmonad.hs
echo "   ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- modifying the window order"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Return   Swap the focused window and the master window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-j  Swap the focused window with the next window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-k  Swap the focused window with the previous window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- resizing the master/slave ratio"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-h  Shrink the master area"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-l  Expand the master area"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- floating layer support"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-t  Push window back into tiling; unfloat and re-tile it"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- increase or decrease number of windows in the master area"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-comma  (mod-,)   Increment the number of windows in the master area"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-period (mod-.)   Deincrement the number of windows in the master area"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- quit, or restart"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-q  Quit xmonad"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-q        Restart xmonad"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-[1..9]   Switch to workSpace N"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- Workspaces & screens"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-[1..9]   Move client to workspace N","
echo "    "mod-{w,e,r}        Switch to physical/Xinerama screens 1, 2, or 3"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-{w,e,r}  Move client to screen 1, 2, or 3"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- Mouse bindings: default actions bound to mouse events"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-button1  Set the window to floating mode and move by dragging"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-button2  Raise the window to the top of the stack"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-button3  Set the window to floating mode and resize by dragging"]" >> /home/$dir/.xmonad/xmonad.hs


sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart


#sudo cp arch-os-release /etc/os-release

sudo echo "PRETTY_NAME="MulBX GNU/Linux [Arch Linux Base] 3.8.2 (Dağ)"" > /etc/os-release
sudo echo "NAME="MulBX GNU/Linux [Arch Linux Base]"" >> /etc/os-release
sudo echo "VERSION_ID="3.8.2"" >> /etc/os-release
sudo echo "VERSION="3.8.2 (Dağ)"" >> /etc/os-release
sudo echo "VERSION_CODENAME=Dağ" >> /etc/os-release
sudo echo "ID=Mulbx" >> /etc/os-release
sudo echo "HOME_URL="https://archlinux.org/"" >> /etc/os-release
sudo echo "SUPPORT_URL="https://bbs.archlinux.org/"" >> /etc/os-release
sudo echo "BUG_REPORT_URL="https://gitlab.archlinux.org/groups/archlinux/-/issues"" >> /etc/os-release



#sudo cp bashrc /etc/skel/.bashrc


sudo echo "# ~/.bashrc: executed by bash(1) for non-login shells." > /etc/skel/.bashrc
sudo echo "# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)" >> /etc/skel/.bashrc
sudo echo "case $- in" >> /etc/skel/.bashrc
sudo echo "    *i*) ;;" >> /etc/skel/.bashrc
sudo echo "      *) return;;" >> /etc/skel/.bashrc
sudo echo "esac" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "HISTCONTROL=ignoreboth" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "shopt -s histappend" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "HISTSIZE=1000" >> /etc/skel/.bashrc
sudo echo "HISTFILESIZE=2000" >> /etc/skel/.bashrc
sudo echo "# check the window size after each command and, if necessary," >> /etc/skel/.bashrc
sudo echo "# update the values of LINES and COLUMNS." >> /etc/skel/.bashrc
sudo echo "shopt -s checkwinsize" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# If set, the pattern "**" used in a pathname expansion context will" >> /etc/skel/.bashrc
sudo echo "# match all files and zero or more directories and subdirectories." >> /etc/skel/.bashrc
sudo echo "#shopt -s globstar" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# make less more friendly for non-text input files, see lesspipe(1)" >> /etc/skel/.bashrc
sudo echo "#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# set variable identifying the chroot you work in (used in the prompt below)" >> /etc/skel/.bashrc
sudo echo "if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then" >> /etc/skel/.bashrc
sudo echo "    debian_chroot=$(cat /etc/debian_chroot)" >> /etc/skel/.bashrc
sudo echo "fi" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# set a fancy prompt (non-color, unless we know we "want" color)" >> /etc/skel/.bashrc
sudo echo "case "$TERM" in" >> /etc/skel/.bashrc
sudo echo "    xterm-color|*-256color) color_prompt=yes;;" >> /etc/skel/.bashrc
sudo echo "esac" >> /etc/skel/.bashrc
sudo echo " "  >> /etc/skel/.bashrc
sudo echo "# uncomment for a colored prompt, if the terminal has the capability; turned" >> /etc/skel/.bashrc
sudo echo "# off by default to not distract the user: the focus in a terminal window" >> /etc/skel/.bashrc
sudo echo "# should be on the output of commands, not on the prompt" >> /etc/skel/.bashrc
sudo echo "#force_color_prompt=yes" >> /etc/skel/.bashrc
sudo echo " "  >> /etc/skel/.bashrcr
sudo echo "if [ -n "$force_color_prompt" ]; then" >> /etc/skel/.bashrc
sudo echo "    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then" >> /etc/skel/.bashrc
sudo echo "	color_prompt=yes" >> /etc/skel/.bashrc
sudo echo "    else" >> /etc/skel/.bashrc
sudo echo "	color_prompt=" >> /etc/skel/.bashrc
sudo echo "    fi" >> /etc/skel/.bashrc
sudo echo "fi" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "if [ "$color_prompt" = yes ]; then" >> /etc/skel/.bashrc
sudo echo "    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> /etc/skel/.bashrc
sudo echo "else" >> /etc/skel/.bashrc
sudo echo "    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '" >> /etc/skel/.bashrc
sudo echo "fi"  >> /etc/skel/.bashrc
sudo echo "unset color_prompt force_color_prompt" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# If this is an xterm set the title to user@host:dir" >> /etc/skel/.bashrc
sudo echo "case "$TERM" in" >> /etc/skel/.bashrc
sudo echo "xterm*|rxvt*)" >> /etc/skel/.bashrc
sudo echo "    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"" >> /etc/skel/.bashrc
sudo echo "    ;;" >> /etc/skel/.bashrce
sudo echo "*)" >> /etc/skel/.bashrc
sudo echo "    ;;" >> /etc/skel/.bashrc
sudo echo "esac" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# enable color support of ls and also add handy aliases" >> /etc/skel/.bashrc
sudo echo "if [ -x /usr/bin/dircolors ]; then" >> /etc/skel/.bashrc
sudo echo "    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"" >> /etc/skel/.bashrc
sudo echo "    alias ls='ls --color=auto'" >> /etc/skel/.bashrc
sudo echo "    #alias dir='dir --color=auto'" >> /etc/skel/.bashrc
sudo echo "    #alias vdir='vdir --color=auto'"
sudo echo " " >> /home/$dir/.bashrc
sudo echo "    #alias grep='grep --color=auto'" >> /etc/skel/.bashrc
sudo echo "    #alias fgrep='fgrep --color=auto'" >> /etc/skel/.bashrc
sudo echo "    #alias egrep='egrep --color=auto'" >> /etc/skel/.bashrc
sudo echo "fi" >> /etc/skel/.bashrc
sudo echo " "  >> /etc/skel/.bashrc
sudo echo "# colored GCC warnings and errors"
sudo echo "#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# some more ls aliases" >> /etc/skel/.bashrc
sudo echo "alias ll='ls -l'" >> /etc/skel/.bashrc
sudo echo "alias lla='ls -Al'" >> /etc/skel/.bashrc
sudo echo "alias la='ls -A'" >> /etc/skel/.bashrc
sudo echo "alias l='ls -CF'" >> /etc/skel/.bashrc
sudo echo "alias ..='cd ..'" >> /etc/skel/.bashrc
sudo echo "alias tcl='tty-clock -cxbt'" >> /etc/skel/.bashrc
sudo echo "alias clearfetch='clear && screenfetch'" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# Alias definitions." >> /etc/skel/.bashrc
sudo echo "# You may want to put all your additions into a separate file like" >> /etc/skel/.bashrc
sudo echo "# ~/.bash_aliases, instead of adding them here directly." >> /etc/skel/.bashrc
sudo echo "# See /usr/share/doc/bash-doc/examples in the bash-doc package." >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "if [ -f ~/.bash_aliases ]; then" >> /etc/skel/.bashrc
sudo echo "    . ~/.bash_aliases" >> /etc/skel/.bashrc
sudo echo "fi" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# enable programmable completion features (you don't need to enable" >> /etc/skel/.bashrc
sudo echo "# this, if it's already enabled in /etc/bash.bashrc and /etc/profile" >> /etc/skel/.bashrc
sudo echo "# sources /etc/bash.bashrc)." >> /etc/skel/.bashrc
sudo echo "if ! shopt -oq posix; then" >> /etc/skel/.bashrc
sudo echo "  if [ -f /usr/share/bash-completion/bash_completion ]; then" >> /etc/skel/.bashrc
sudo echo "    . /usr/share/bash-completion/bash_completion" >> /etc/skel/.bashrc
sudo echo "  elif [ -f /etc/bash_completion ]; then" >> /etc/skel/.bashrc
sudo echo "    . /etc/bash_completion" >> /etc/skel/.bashrc
sudo echo "  fi" >> /etc/skel/.bashrc
sudo echo "fi" >> /etc/skel/.bashrc
sudo echo " "  >> /etc/skelir/.bashrc
sudo echo "echo '"  >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "                 _" >> /etc/skel/.bashrc
sudo echo "               /  /|" >> /etc/skel/.bashrc
sudo echo "             /  / /|" >> /etc/skel/.bashrc
sudo echo "           / | / / |" >> /etc/skel/.bashrc
sudo echo "         /|  |/ /  |" >> /etc/skel/.bashrc
sudo echo "       /  |  / /___|" >> /etc/skel/.bashrc
sudo echo "      /   | / /    |" >> /etc/skel/.bashrc
sudo echo "      |   |/ /_____|" >> /etc/skel/.bashrc
sudo echo "      |   / /      |" >> /etc/skel/.bashrc
sudo echo "      |  / /     __|" >> /etc/skel/.bashrc
sudo echo "      | / /     /" >> /etc/skel/.bashrc
sudo echo "       / /------" >> /etc/skel/.bashrc
sudo echo "       | |" >> /etc/skel/.bashrc
sudo echo "       | |" >> /etc/skel/.bashrc
sudo echo "       |_|" >> /etc/skel/.bashrc
sudo echo "       \_\." >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "'" >> /etc/skel/.bashrc
sudo echo "clear" >> /etc/skel/.bashrc
sudo echo "echo '" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "                 _" >> /etc/skel/.bashrc
sudo echo "               /  /|" >> /etc/skel/.bashrc
sudo echo "             /  / /|" >> /etc/skel/.bashrc
sudo echo "           / | / / |" >> /etc/skel/.bashrc
sudo echo "         /|  |/ /  |" >> /etc/skel/.bashrc
sudo echo "       /  |  / /___|" >> /etc/skel/.bashrc
sudo echo "      /   | / /    |" >> /etc/skel/.bashrc
sudo echo "      |   |/ /_____|" >> /etc/skel/.bashrc
sudo echo "      |   / /      |" >> /etc/skel/.bashrc
sudo echo "      |  / /     __|" >> /etc/skel/.bashrc
sudo echo "      | / /     /" >> /etc/skel/.bashrc
sudo echo "       / /------" >> /etc/skel/.bashrc
sudo echo "       | |" >> /etc/skel/.bashrc
sudo echo "       | |" >> /etc/skel/.bashrc
sudo echo "       |_|" >> /etc/skel/.bashrc
sudo echo "       \_\." >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "'" >> /etc/skel/.bashrc

#sudo cp arch-xmonad.hs /etc/skel/.xmonad/xmonad.hs

sudo echo "----------------------------------------------------------------------------------------------------------------- Imports" > /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import Data.Monoid" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import System.Exit" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Util.SpawnOnce" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Hooks.ManageDocks" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Util.Run" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import qualified XMonad.StackSet as W" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import qualified Data.Map        as M" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Layout Modifers" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Layout.Spacing" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Layout Imports" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Layout.Grid" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Layout.Spiral" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Layout.ThreeColumns" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Layout.MultiColumns" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "----------------------------------------------------------------------------------------------------------------- Prefrences" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- The preferred terminal program, which is used in a binding below and by" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- certain contrib modules." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myTerminal      = "terminator"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Whether focus follows the mouse pointer." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myFocusFollowsMouse :: Bool" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myFocusFollowsMouse = True" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "  " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Whether clicking on a window to focus also passes the click to the window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myClickJustFocuses :: Bool" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myClickJustFocuses = False" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Width of the window border in pixels." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myBorderWidth   = 5" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- modMask lets you specify which modkey you want to use. The default" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- is mod1Mask ("left alt").  You may also consider using mod3Mask" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- ("right alt"), which does not conflict with emacs keybindings. The" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- "windows key" is usually mod4Mask." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myModMask       = mod4Mask" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- The default number of workspaces (virtual screens) and their names." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- By default we use numeric strings, but any string may be used as a" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- workspace name. The number of workspaces is determined by the length" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- of this list." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- A tagging example:" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- > workspaces = ["web", "irc", "code" ] ++ map show [4..9]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myWorkspaces    = ["1","2","3","4","5","6","7","8","9"]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Border colors for unfocused and focused windows, respectively." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myNormalBorderColor  = "#097969"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myFocusedBorderColor = "#50c878"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Key bindings. Add, modify or remove key bindings here." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $"
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- launch a terminal" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_x     ), spawn $ XMonad.terminal conf)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- launch dmenu" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_p     ), spawn "dmenu_run")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_c     ), spawn "dmenu_run")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Launch Brave Browser" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_v     ), spawn "brave-browser")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Launch Chromium" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_v     ), spawn "chromium")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- launch gmrun" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_p     ), spawn "gmrun")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- close focused window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_c     ), kill)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Launch Thunar" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_x     ), spawn "thunar")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Launch  FeatherPad" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_d     ), spawn "featherpad")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Rotate through the available layout algorithms" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_space ), sendMessage NextLayout)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --  Reset the layouts on the current workspace to default" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Resize viewed windows to the correct size" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_n     ), refresh)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Move focus to the next window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_Tab   ), windows W.focusDown)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_z     ), windows W.focusDown)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Move focus to the next window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_j     ), windows W.focusDown)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " "  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Move focus to the previous window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_k     ), windows W.focusUp  )" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_z     ), windows W.focusUp  )" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Move focus to the master window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_m     ), windows W.focusMaster  )" >> /home//.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "   -- Lock screen" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_y     ), spawn "slock")    )" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Swap the focused window and the master window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_Return), windows W.swapMaster)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_a     ), windows W.swapMaster)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Swap the focused window with the next window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Swap the focused window with the previous window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Shrink the master area" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_h     ), sendMessage Shrink)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_p     ), sendMessage Shrink)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Expand the master area" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_l     ), sendMessage Expand)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_p     ), sendMessage Expand)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " "  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Push window back into tiling" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_t     ), withFocused $ windows . W.sink)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Increment the number of windows in the master area" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Deincrement the number of windows in the master area" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Toggle the status bar gap" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Use this binding with avoidStruts from Hooks.ManageDocks." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- See also the statusBar function from Hooks.DynamicLog." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- , ((modm              , xK_b     ), sendMessage ToggleStruts)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Quit xmonad" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Restart xmonad" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")" >> /home//.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Run xmessage with a summary of the default keybindings (useful for beginners)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_slash ), spawn ("echo \"" ++ help ++ "\" | xmessage -file -"))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ++" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-[1..9], Switch to workspace N" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-shift-[1..9], Move client to workspace N" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    [((m .|. modm, k), windows $ f i)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ++" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Mouse bindings: default actions bound to mouse events" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--"  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " "  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-button1, Set the window to floating mode and move by dragging" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "                                       >> windows W.shiftMaster))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " "  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-button2, Raise the window to the top of the stack" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-button3, Set the window to floating mode and resize by dragging" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "                                       >> windows W.shiftMaster))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- you may also bind events to the mouse scroll wheel (button4 and button5)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Layouts:" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- You can specify and transform your layouts by modifying these values." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- If you change layout bindings be sure to use 'mod-shift-space' after" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- restarting (with 'mod-q') to reset your layout state to the new" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- defaults, as xmonad preserves your old layout settings by default." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- The available layouts.  Note that each layout is separated by |||," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- which denotes layout choice." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myLayout =" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "  spacing 20 $  avoidStruts (tiled ||| Mirror tiled ||| Full ||| Grid ||| spiral golden ||| ThreeCol nmaster delta ratio ||| multiCol [1] 1 0.01 (-0.5))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     where" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- default tiling algorithm partitions the screen into two panes" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     tiled   = Tall nmaster delta ratio" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- The default number of windows in the master pane" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     nmaster = 1" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- Golden Ratio" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     golden  = 6/7" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- Spiral Number" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     num     = 15/19" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- Default proportion of screen occupied by master pane" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     ratio   = 1/2" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- Percent of screen to increment by when resizing panes" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     delta   = 3/100" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Window rules:" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Execute arbitrary actions and WindowSet manipulations when managing" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- a new window. You can use this to, for example, always float a" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- particular program, or have a client always appear on a particular" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- workspace." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- To find the property name associated with a program, use" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- > xprop | grep WM_CLASS" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- and click on the client you're interested in." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- To match on the WM_NAME, you can use 'title' in the same way that" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- 'className' and 'resource' are used below." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myManageHook = composeAll" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    [ className =? "MPlayer"        --> doFloat" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--    , className =? "Gimp"           --> doFloat" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , resource  =? "desktop_window" --> doIgnore" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , resource  =? "kdesktop"       --> doIgnore ]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Event handling" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- * EwmhDesktops users should change this to ewmhDesktopsEventHook" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Defines a custom handler function for X Events. The function should" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- return (All True) if the default handler is to be run afterwards. To" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- combine event hooks use mappend or mconcat from Data.Monoid." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myEventHook = mempty" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Status bars and logging" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Perform an arbitrary action on each internal state change or X event." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- See the 'XMonad.Hooks.DynamicLog' extension for examples." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myLogHook = return ()" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Startup hook" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Perform an arbitrary action each time xmonad starts or is restarted" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- per-workspace layout choices." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- By default, do nothing." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myStartupHook = do" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "	spawnOnce "nitrogen --restore &"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "	spawnOnce "picom &"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        spawnOnce "ufw &"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        spawnOnce "xfce4-power-manager &"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--        spawnOnce "volumeicon &"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Now run xmonad with all the defaults we set up." >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Run xmonad with the settings you specify. No need to modify this." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--"  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "main = do" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "  xmproc <- spawnPipe "xmobar /etc/MulBX/xmobar/xmobar.config"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "  xmonad $ docks defaults" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- A structure containing your configuration settings, overriding" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- fields in the default config. Any you don't override, will" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- use the defaults defined in xmonad/XMonad/Config.hs" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- No need to modify this." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "defaults = def {" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "      -- simple stuff" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        terminal           = myTerminal," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        focusFollowsMouse  = myFocusFollowsMouse," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        clickJustFocuses   = myClickJustFocuses," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        borderWidth        = myBorderWidth," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        modMask            = myModMask," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        workspaces         = myWorkspaces," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        normalBorderColor  = myNormalBorderColor," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        focusedBorderColor = myFocusedBorderColor," >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "      -- key bindings" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        keys               = myKeys," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        mouseBindings      = myMouseBindings," >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "      -- hooks, layouts" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        layoutHook         = myLayout," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        manageHook         = myManageHook," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        handleEventHook    = myEventHook," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        logHook            = myLogHook," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        startupHook        = myStartupHook" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    }" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- | Finally, a copy of the default bindings in simple textual tabular format." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "help :: String" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "help = unlines ["The default modifier key is 'alt'. Default keybindings:"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- launching and killing programs"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-Enter  Launch xterminal"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-p            Launch dmenu"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-p      Launch gmrun"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-c      Close/kill the focused window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Space        Rotate through the available layout algorithms"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-Space  Reset the layouts on the current workSpace to default"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-n            Resize/refresh viewed windows to the correct size"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- move focus up or down the window stack"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Tab        Move focus to the next window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-Tab  Move focus to the previous window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-j          Move focus to the next window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-k          Move focus to the previous window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-m          Move focus to the master window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "   ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- modifying the window order"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Return   Swap the focused window and the master window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-j  Swap the focused window with the next window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-k  Swap the focused window with the previous window"," >> /home/$dir/x.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- resizing the master/slave ratio"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-h  Shrink the master area"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-l  Expand the master area"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- floating layer support"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-t  Push window back into tiling; unfloat and re-tile it"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- increase or decrease number of windows in the master area"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-comma  (mod-,)   Increment the number of windows in the master area"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-period (mod-.)   Deincrement the number of windows in the master area"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- quit, or restart"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-q  Quit xmonad"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-q        Restart xmonad"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-[1..9]   Switch to workSpace N"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- Workspaces & screens"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-[1..9]   Move client to workspace N","
sudo echo "    "mod-{w,e,r}        Switch to physical/Xinerama screens 1, 2, or 3"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-{w,e,r}  Move client to screen 1, 2, or 3"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- Mouse bindings: default actions bound to mouse events"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-button1  Set the window to floating mode and move by dragging"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-button2  Raise the window to the top of the stack"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-button3  Set the window to floating mode and resize by dragging"]" >> /etc/skel/.xmonad/xmonad.hs


#sudo cp install-type /etc/MulBX/install-type

echo "MulBX_Version_Code=none" > /etc/MulBX/install-type


# Extra Packages
echo "Would You Like to Install Office and Media Packages?(y/n)"
read extpak

if [ "$extpak" = "y" ];
then
	echo "More Packages Will be Installed!"
	sudo pacman -Syu
    sudo pacman -Syy
    sudo pacman -S freecad -y
    sudo pacman -S prusa-slicer -y
    sudo pacman -S gimp -y
    sudo pacman -S kdenlive -y
    sudo pacman -S libreoffice -y
else
	echo "No Extra Pacakges Will be Installed!"
fi

# Adding My Own Packages

echo "Would You Like to Install Custom Packages?(y/n)"
read cpak

if [ "$cpak" = "y" ];
then
	
    echo "This Will Install All Packages that Are Listed!"
    echo "Keep a Space Inbetween!"
    echo "Type Quit to Leave!"
    sleep 7
    sudo pacman -Syu
    sudo pacman -Syy


    echo "What Package Do You Want To Install?"
    read paknm


    until [ "$paknm" = "quit" ]
    do
	    echo "What Package(s) Do You Want to Install?"
	    echo "You Can List Them With One Space Inbetween Each Package!"
	    read paknm

	    sudo pacman -S $paknm -y

    done

else
	echo "Custom Packages Will Not be Installed!"

fi


echo "Do You Want to Install A Backup Desktop Environment?(y/n)"
sleep 3
echo "The Options are:"
echo "KDE"
echo "GNOME"
echo "Xfce"
echo "LXQT"
echo "Cinnamon"
echo "MATE"
echo "Budgie"
sleep 2
read  desk

sleep 10


if [ "$desk" = "y" ];
then
	echo "Do You Want KDE?(y/n)"
	read  kde
	sleep 7
    if [ "$kde" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S plasma -y

	else
		echo "KDE Will Not Be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install GNOME?(y/n)"
	read  gnome
        sleep 7

	if [ "$gnome" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S gnome -y

	else
		echo "GNOME Will Not be Installed!"
	fi

    sleep 5

	echo "Do You Want to Install Xfce?(y/n)"
	read  xfce
	sleep 7

	if [ "$xfce" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S xfce4 xfce4-goodies -y

	else
		echo "Xfce Will Not be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install LXQT?(y/n)"
	read  lxqt
	sleep 7

	if [ "$lxqt" = "y" ];
	then 
        sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S xorg lxqt -y

	else
		echo "LXQT Will Not be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install Cinnamon?(y/n)"
	read  cin
	sleep 7

	if [ "$cin" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S cinnamon -y

	else
		echo "Cinnamon Will Not be Installed!"
	
	fi

	sleep 5
    echo "Do You Want to Install MATE?(y/n)"
	read  mate
	sleep 7

	if [ "$MATE" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S mate -y
	else
		echo "MATE Will Not be Installed!"

	fi
	
	sleep 5
	echo "Do You Want to Install Budgie?(y/n)"
        read  bud
	sleep 7

	if [ "$bud" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S budgie -y
	else
		echo "Budgie Will Not be Installed!"
	fi

    else
	echo "No Extra Desktop Environments Will be Installed!"

fi


# Extra Package Manager(s)


echo "Do You Want to Install Extra Package Managers?(y/n)"
read  pak
sleep 7

if [ "$pak" = "y" ];
then
    echo "Do You Want to Install the Nix Package Manager?(y/n)"
	read  nix
	sleep 7

	if [ "$nix" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S nix

	else
		echo "Nix Will Not be Installed!"
	fi

else
	echo "No Extra Package Managers Will be Installed"

fi



# Making Directories Again

mkdir /home/$dir/.config
mkdir /home/$dir/.xmonad
sudo mkdir /etc/MulBX
sudo mkdir /etc/MulBX/xmobar
sudo mkdir /usr/share/backgrounds/MulBX
sudo mkdir /etc/skel/.xmonad
sudo mkdir /usr/share/backgrounds

# Moving Files Again


#cp bashrc /home/$dir/.bashrc

echo "# ~/.bashrc: executed by bash(1) for non-login shells." > /home/$dir/.bashrc
echo "# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)" >> /home/$dir/.bashrc
echo "case $- in" >> /home/$dir/.bashrc
echo "    *i*) ;;" >> /home/$dir/.bashrc
echo "      *) return;;" >> /home/$dir/.bashrc
echo "esac" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "HISTCONTROL=ignoreboth" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "shopt -s histappend" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "HISTSIZE=1000" >> /home/$dir/.bashrc
echo "HISTFILESIZE=2000" >> /home/$dir/.bashrc
echo "# check the window size after each command and, if necessary," >> /home/$dir/.bashrc
echo "# update the values of LINES and COLUMNS." >> /home/$dir/.bashrc
echo "shopt -s checkwinsize" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# If set, the pattern "**" used in a pathname expansion context will" >> /home/$dir/.bashrc
echo "# match all files and zero or more directories and subdirectories." >> /home/$dir/.bashrc
echo "#shopt -s globstar" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# make less more friendly for non-text input files, see lesspipe(1)" >> /home/$dir/.bashrc
echo "#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# set variable identifying the chroot you work in (used in the prompt below)" >> /home/$dir/.bashrc
echo "if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then" >> /home/$dir/.bashrc
echo "    debian_chroot=$(cat /etc/debian_chroot)" >> /home/$dir/.bashrc
echo "fi" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# set a fancy prompt (non-color, unless we know we "want" color)" >> /home/$dir/.bashrc
echo "case "$TERM" in" >> /home/$dir/.bashrc
echo "    xterm-color|*-256color) color_prompt=yes;;" >> /home/$dir/.bashrc
echo "esac" >> /home/$dir/.bashrc
echo " "  >> /home/$dir/.bashrc
echo "# uncomment for a colored prompt, if the terminal has the capability; turned" >> /home/$dir/.bashrc
echo "# off by default to not distract the user: the focus in a terminal window" >> /home/$dir/.bashrc
echo "# should be on the output of commands, not on the prompt" >> /home/$dir/.bashrc
echo "#force_color_prompt=yes" >> /home/$dir/.bashrc
echo " "  >> /home/$dir/.bashrcr
echo "if [ -n "$force_color_prompt" ]; then" >> /home/$dir/.bashrc
echo "    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then" >> /home/$dir/.bashrc
echo "	# We have color support; assume it's compliant with Ecma-48" >> /home/$dir/.bashrc
echo "	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such" >> /home/$dir/.bashrc
echo "	# a case would tend to support setf rather than setaf.)" >> /home/$dir/.bashrc
echo "	color_prompt=yes" >> /home/$dir/.bashrc
echo "    else" >> /home/$dir/.bashrc
echo "	color_prompt=" >> /home/$dir/.bashrc
echo "    fi" >> /home/$dir/.bashrc
echo "fi" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "if [ "$color_prompt" = yes ]; then" >> /home/$dir/.bashrc
echo "    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> /home/$dir/.bashrc
echo "else" >> /home/$dir/.bashrc
echo "    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '" >> /home/$dir/.bashrc
echo "fi"  >> /home/$dir/.bashrc
echo "unset color_prompt force_color_prompt" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# If this is an xterm set the title to user@host:dir" >> /home/$dir/.bashrc
echo "case "$TERM" in" >> /home/$dir/.bashrc
echo "xterm*|rxvt*)" >> /home/$dir/.bashrc
echo "    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"" >> /home/$dir/.bashrc
echo "    ;;" >> /home/$dir/.bashrce
echo "*)" >> /home/$dir/.bashrc
echo "    ;;" >> /home/$dir/.bashrc
echo "esac" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# enable color support of ls and also add handy aliases" >> /home/$dir/.bashrc
echo "if [ -x /usr/bin/dircolors ]; then" >> /home/$dir/.bashrc
echo "    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"" >> /home/$dir/.bashrc
echo "    alias ls='ls --color=auto'" >> /home/$dir/.bashrc
echo "    #alias dir='dir --color=auto'" >> /home/$dir/.bashrc
echo "    #alias vdir='vdir --color=auto'"
echo " " >> /home/$dir/.bashrc
echo "    #alias grep='grep --color=auto'" >> /home/$dir/.bashrc
echo "    #alias fgrep='fgrep --color=auto'" >> /home/$dir/.bashrc
echo "    #alias egrep='egrep --color=auto'" >> /home/$dir/.bashrc
echo "fi" >> /home/$dir/.bashrc
echo " "  >> /home/$dir/.bashrc
echo "# colored GCC warnings and errors"
echo "#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# some more ls aliases" >> /home/$dir/.bashrc
echo "alias ll='ls -l'" >> /home/$dir/.bashrc
echo "alias lla='ls -Al'" >> /home/$dir/.bashrc
echo "alias la='ls -A'" >> /home/$dir/.bashrc
echo "alias l='ls -CF'" >> /home/$dir/.bashrc
echo "alias ..='cd ..'" >> /home/$dir/.bashrc
echo "alias tcl='tty-clock -cxbt'" >> /home/$dir/.bashrc
echo "alias clearfetch='clear && screenfetch'" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# Alias definitions." >> /home/$dir/.bashrc
echo "# You may want to put all your additions into a separate file like" >> /home/$dir/.bashrc
echo "# ~/.bash_aliases, instead of adding them here directly." >> /home/$dir/.bashrc
echo "# See /usr/share/doc/bash-doc/examples in the bash-doc package." >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "if [ -f ~/.bash_aliases ]; then" >> /home/$dir/.bashrc
echo "    . ~/.bash_aliases" >> /home/$dir/.bashrc
echo "fi" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "# enable programmable completion features (you don't need to enable" >> /home/$dir/.bashrc
echo "# this, if it's already enabled in /etc/bash.bashrc and /etc/profile" >> /home/$dir/.bashrc
echo "# sources /etc/bash.bashrc)." >> /home/$dir/.bashrc
echo "if ! shopt -oq posix; then" >> /home/$dir/.bashrc
echo "  if [ -f /usr/share/bash-completion/bash_completion ]; then" >> /home/$dir/.bashrc
echo "    . /usr/share/bash-completion/bash_completion" >> /home/$dir/.bashrc
echo "  elif [ -f /etc/bash_completion ]; then" >> /home/$dir/.bashrc
echo "    . /etc/bash_completion" >> /home/$dir/.bashrc
echo "  fi" >> /home/$dir/.bashrc
echo "fi" >> /home/$dir/.bashrc
echo " "  >> /home/$dir/.bashrc
echo "echo '"  >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "                 _" >> /home/$dir/.bashrc
echo "               /  /|" >> /home/$dir/.bashrc
echo "             /  / /|" >> /home/$dir/.bashrc
echo "           / | / / |" >> /home/$dir/.bashrc
echo "         /|  |/ /  |" >> /home/$dir/.bashrc
echo "       /  |  / /___|" >> /home/$dir/.bashrc
echo "      /   | / /    |" >> /home/$dir/.bashrc
echo "      |   |/ /_____|" >> /home/$dir/.bashrc
echo "      |   / /      |" >> /home/$dir/.bashrc
echo "      |  / /     __|" >> /home/$dir/.bashrc
echo "      | / /     /" >> /home/$dir/.bashrc
echo "       / /------" >> /home/$dir/.bashrc
echo "       | |" >> /home/$dir/.bashrc
echo "       | |" >> /home/$dir/.bashrc
echo "       |_|" >> /home/$dir/.bashrc
echo "       \_\." >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "'" >> /home/$dir/.bashrc
echo "clear" >> /home/$dir/.bashrc
echo "echo '" >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "                 _" >> /home/$dir/.bashrc
echo "               /  /|" >> /home/$dir/.bashrc
echo "             /  / /|" >> /home/$dir/.bashrc
echo "           / | / / |" >> /home/$dir/.bashrc
echo "         /|  |/ /  |" >> /home/$dir/.bashrc
echo "       /  |  / /___|" >> /home/$dir/.bashrc
echo "      /   | / /    |" >> /home/$dir/.bashrc
echo "      |   |/ /_____|" >> /home/$dir/.bashrc
echo "      |   / /      |" >> /home/$dir/.bashrc
echo "      |  / /     __|" >> /home/$dir/.bashrc
echo "      | / /     /" >> /home/$dir/.bashrc
echo "       / /------" >> /home/$dir/.bashrc
echo "       | |" >> /home/$dir/.bashrc
echo "       | |" >> /home/$dir/.bashrc
echo "       |_|" >> /home/$dir/.bashrc
echo "       \_\." >> /home/$dir/.bashrc
echo " " >> /home/$dir/.bashrc
echo "'" >> /home/$dir/.bashrc


#sudo cp xmobar.config /etc/MulBX/xmobar/xmobar.config

echo "Config { " > /etc/MulBX/xmobar/xmobar.config
echo "   -- appearance" >> /etc/MulBX/xmobar/xmobar.config
echo "     font =         "Bitstream Vera Sans Mono Bold 9:pixelsize=30"" >> /etc/MulBX/xmobar/xmobar.config
echo "   , bgColor =      "black"" >> /etc/MulBX/xmobar/xmobar.config
echo "   , fgColor =      "#646464"" >> /etc/MulBX/xmobar/xmobar.config
echo "   , position =     Top" >> /etc/MulBX/xmobar/xmobar.config
echo "   , border =       BottomB" >> /etc/MulBX/xmobar/xmobar.config
echo "   , borderColor =  "#097969"" >> /etc/MulBX/xmobar/xmobar.config
echo "   -- layout" >> /etc/MulBX/xmobar/xmobar.config
echo "   , sepChar =  "%"   -- delineator between plugin names and straight text" >> /etc/MulBX/xmobar/xmobar.config
echo "   , alignSep = "}{"  -- separator between left-right alignment" >> /etc/MulBX/xmobar/xmobar.config
echo "   , template = "%battery% | %multicpu% | %coretemp% | %memory% | %dynnetwork% }{ %RJTT% | %date% || %kbd% "" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "   -- general behavior" >> /etc/MulBX/xmobar/xmobar.config
echo "   , lowerOnStart =     True    -- send to bottom of window stack on start" >> /etc/MulBX/xmobar/xmobar.config
echo "   , hideOnStart =      False   -- start with window unmapped (hidden)" >> /etc/MulBX/xmobar/xmobar.config
echo "   , allDesktops =      True    -- show on all desktops" >> /etc/MulBX/xmobar/xmobar.config
echo "   , overrideRedirect = True    -- set the Override Redirect flag (Xlib)" >> /etc/MulBX/xmobar/xmobar.config
echo "   , pickBroadest =     False   -- choose widest display (multi-monitor)" >> /etc/MulBX/xmobar/xmobar.config
echo "   , persistent =       True    -- enable/disable hiding (True = disabled)" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "   -- plugins" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   Numbers can be automatically colored according to their value. xmobar" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   decides color based on a three-tier/two-cutoff system, controlled by" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   command options:" >> /etc/MulBX/xmobar/xmobar.config
echo "   --     --Low sets the low cutoff" >> /etc/MulBX/xmobar/xmobar.config
echo "   --     --High sets the high cutoff" >> /etc/MulBX/xmobar/xmobar.config
echo "   --" >> /etc/MulBX/xmobar/xmobar.config
echo "   --     --low sets the color below --Low cutoff" >> /etc/MulBX/xmobar/xmobar.config
echo "   --     --normal sets the color between --Low and --High cutoffs" >> /etc/MulBX/xmobar/xmobar.config
echo "   --     --High sets the color above --High cutoff" >> /etc/MulBX/xmobar/xmobar.config
echo "   --" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   The --template option controls how the plugin is displayed. Text" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   color can be set by enclosing in <fc></fc> tags. For more details" >> /etc/MulBX/xmobar/xmobar.config
echo "   --   see http://projects.haskell.org/xmobar/#system-monitor-plugins." >> /etc/MulBX/xmobar/xmobar.config
echo "   , commands = " >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- weather monitor" >> /etc/MulBX/xmobar/xmobar.config
echo "        [ Run Weather "RJTT" [ "--template", "<skyCondition> | <fc=#4682B4><tempC></fc>°C | <fc=#4682B4><rh></fc>% | <fc=#4682B4><pressure></fc>hPa"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 36000" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- network activity monitor (dynamic interface resolution)" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run DynNetwork     [ "--template" , "<dev>: <tx>kB/s|<rx>kB/s"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--Low"      , "1000"       -- units: B/s" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--High"     , "5000"       -- units: B/s" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--low"      , "darkgreen"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--normal"   , "darkorange"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--high"     , "darkred"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 10" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- cpu activity monitor" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run MultiCpu       [ "--template" , "Cpu: <total0>%|<total1>%"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--Low"      , "50"         -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--High"     , "85"         -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--low"      , "darkgreen"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--normal"   , "darkorange"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--high"     , "darkred"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 10" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- cpu core temperature monitor" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run CoreTemp       [ "--template" , "Temp: <core0>°C|<core1>°C"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--Low"      , "70"        -- units: °C" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--High"     , "80"        -- units: °C" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--low"      , "darkgreen"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--normal"   , "darkorange"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--high"     , "darkred"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 50" >> /etc/MulBX/xmobar/xmobar.config
echo "                          " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- memory usage monitor" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run Memory         [ "--template" ,"Mem: <usedratio>%"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--Low"      , "20"        -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--High"     , "90"        -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--low"      , "darkgreen"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--normal"   , "darkorange"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--high"     , "darkred"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 10" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- battery monitor"
echo "        , Run Battery        [ "--template" , "Batt: <acstatus>"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--Low"      , "25"        -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--High"     , "80"        -- units: %" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--low"      , "darkred"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--normal"   , "darkorange"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--high"     , "darkgreen"" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "                             , "--" -- battery specific options" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       -- discharging status" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       , "-o"	, "<left>% (<timeleft>)"" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       -- AC "on" status" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       , "-O"	, "<fc=#dAA520>Charging</fc>"" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       -- charged status" >> /etc/MulBX/xmobar/xmobar.config
echo "                                       , "-i"	, "<fc=#006000>Charged</fc>"" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ] 50" >> /etc/MulBX/xmobar/xmobar.config
echo " "
echo "        -- time and date indicator " >> /etc/MulBX/xmobar/xmobar.config
echo "        --   (%F = y-m-d date, %a = day of week, %T = h:m:s time)" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run Date           "<fc=#ABABAB>%F (%a) %T</fc>" "date" 10" >> /etc/MulBX/xmobar/xmobar.config
echo " " >> /etc/MulBX/xmobar/xmobar.config
echo "        -- keyboard layout indicator" >> /etc/MulBX/xmobar/xmobar.config
echo "        , Run Kbd            [ ("us(dvorak)" , "<fc=#00008B>DV</fc>")" >> /etc/MulBX/xmobar/xmobar.config
echo "                             , ("us"         , "<fc=#8B0000>US</fc>")" >> /etc/MulBX/xmobar/xmobar.config
echo "                             ]" >> /etc/MulBX/xmobar/xmobar.config
echo "        ]"
echo "   }" >> /etc/MulBX/xmobar/xmobar.config

#cp arch-xmonad.hs /home/$dir/.xmonad/xmonad.hs


echo "----------------------------------------------------------------------------------------------------------------- Imports" > /home/$dir/.xmonad/xmonad.hs
echo "import XMonad" >> /home/$dir/.xmonad/xmonad.hs
echo "import Data.Monoid" >> /home/$dir/.xmonad/xmonad.hs
echo "import System.Exit" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Util.SpawnOnce" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Hooks.ManageDocks" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Util.Run" >> /home/$dir/.xmonad/xmonad.hs
echo "import qualified XMonad.StackSet as W" >> /home/$dir/.xmonad/xmonad.hs
echo "import qualified Data.Map        as M" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Layout Modifers" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Layout.Spacing" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Layout Imports" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Layout.Grid" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Layout.Spiral" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Layout.ThreeColumns" >> /home/$dir/.xmonad/xmonad.hs
echo "import XMonad.Layout.MultiColumns" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "----------------------------------------------------------------------------------------------------------------- Prefrences" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- The preferred terminal program, which is used in a binding below and by" >> /home/$dir/.xmonad/xmonad.hs
echo "-- certain contrib modules." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myTerminal      = "terminator"" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Whether focus follows the mouse pointer." >> /home/$dir/.xmonad/xmonad.hs
echo "myFocusFollowsMouse :: Bool" >> /home/$dir/.xmonad/xmonad.hs
echo "myFocusFollowsMouse = True" >> /home/$dir/.xmonad/xmonad.hs
echo "  " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Whether clicking on a window to focus also passes the click to the window" >> /home/$dir/.xmonad/xmonad.hs
echo "myClickJustFocuses :: Bool" >> /home/$dir/.xmonad/xmonad.hs
echo "myClickJustFocuses = False" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Width of the window border in pixels." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myBorderWidth   = 5" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- modMask lets you specify which modkey you want to use. The default" >> /home/$dir/.xmonad/xmonad.hs
echo "-- is mod1Mask ("left alt").  You may also consider using mod3Mask" >> /home/$dir/.xmonad/xmonad.hs
echo "-- ("right alt"), which does not conflict with emacs keybindings. The" >> /home/$dir/.xmonad/xmonad.hs
echo "-- "windows key" is usually mod4Mask." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myModMask       = mod4Mask" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- The default number of workspaces (virtual screens) and their names." >> /home/$dir/.xmonad/xmonad.hs
echo "-- By default we use numeric strings, but any string may be used as a" >> /home/$dir/.xmonad/xmonad.hs
echo "-- workspace name. The number of workspaces is determined by the length" >> /home/$dir/.xmonad/xmonad.hs
echo "-- of this list." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- A tagging example:" >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- > workspaces = ["web", "irc", "code" ] ++ map show [4..9]" >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myWorkspaces    = ["1","2","3","4","5","6","7","8","9"]" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Border colors for unfocused and focused windows, respectively." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myNormalBorderColor  = "#097969"" >> /home/$dir/.xmonad/xmonad.hs
echo "myFocusedBorderColor = "#50c878"" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Key bindings. Add, modify or remove key bindings here." >> /home/$dir/.xmonad/xmonad.hs
echo "--"
echo "myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $"
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- launch a terminal" >> /home/$dir/.xmonad/xmonad.hs
echo "    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_x     ), spawn $ XMonad.terminal conf)" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- launch dmenu" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_p     ), spawn "dmenu_run")" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_c     ), spawn "dmenu_run")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Launch Brave Browser" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_v     ), spawn "brave-browser")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Launch Chromium" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_v     ), spawn "chromium")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- launch gmrun" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_p     ), spawn "gmrun")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- close focused window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_c     ), kill)" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Launch Thunar" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_x     ), spawn "thunar")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Launch  FeatherPad" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_d     ), spawn "featherpad")" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Rotate through the available layout algorithms" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_space ), sendMessage NextLayout)" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    --  Reset the layouts on the current workspace to default" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Resize viewed windows to the correct size" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_n     ), refresh)" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Move focus to the next window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_Tab   ), windows W.focusDown)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_z     ), windows W.focusDown)" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Move focus to the next window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_j     ), windows W.focusDown)" >> /home/$dir/.xmonad/xmonad.hs
echo " "  >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Move focus to the previous window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_k     ), windows W.focusUp  )" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_z     ), windows W.focusUp  )" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Move focus to the master window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_m     ), windows W.focusMaster  )" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "   -- Lock screen" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_y     ), spawn "slock")    )" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Swap the focused window and the master window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_Return), windows W.swapMaster)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_a     ), windows W.swapMaster)" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Swap the focused window with the next window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Swap the focused window with the previous window" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Shrink the master area" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_h     ), sendMessage Shrink)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_p     ), sendMessage Shrink)" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Expand the master area" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_l     ), sendMessage Expand)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_p     ), sendMessage Expand)" >> /home/$dir/.xmonad/xmonad.hs
echo " "  >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Push window back into tiling" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm,               xK_t     ), withFocused $ windows . W.sink)" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Increment the number of windows in the master area" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Deincrement the number of windows in the master area" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Toggle the status bar gap" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Use this binding with avoidStruts from Hooks.ManageDocks." >> /home/$dir/.xmonad/xmonad.hs
echo "    -- See also the statusBar function from Hooks.DynamicLog." >> /home/$dir/.xmonad/xmonad.hs
echo "    --" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- , ((modm              , xK_b     ), sendMessage ToggleStruts)" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Quit xmonad" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Restart xmonad" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- Run xmessage with a summary of the default keybindings (useful for beginners)" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm .|. shiftMask, xK_slash ), spawn ("echo \"" ++ help ++ "\" | xmessage -file -"))" >> /home/$dir/.xmonad/xmonad.hs
echo "    ]" >> /home/$dir/.xmonad/xmonad.hs
echo "    ++" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    --" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-[1..9], Switch to workspace N" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-shift-[1..9], Move client to workspace N" >> /home/$dir/.xmonad/xmonad.hs
echo "    --" >> /home/$dir/.xmonad/xmonad.hs
echo "    [((m .|. modm, k), windows $ f i)" >> /home/$dir/.xmonad/xmonad.hs
echo "        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]" >> /home/$dir/.xmonad/xmonad.hs
echo "        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]" >> /home/$dir/.xmonad/xmonad.hs
echo "    ++" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    --" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3" >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3" >> /home/$dir/.xmonad/xmonad.hs
echo "    --" >> /home/$dir/.xmonad/xmonad.hs
echo "    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))" >> /home/$dir/.xmonad/xmonad.hs
echo "        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]" >> /home/$dir/.xmonad/xmonad.hs
echo "        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Mouse bindings: default actions bound to mouse events" >> /home/$dir/.xmonad/xmonad.hs
echo "--"  >> /home/$dir/.xmonad/xmonad.hs
echo "myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $" >> /home/$dir/.xmonad/xmonad.hs
echo " "  >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-button1, Set the window to floating mode and move by dragging" >> /home/$dir/.xmonad/xmonad.hs
echo "    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w" >> /home/$dir/.xmonad/xmonad.hs
echo "                                       >> windows W.shiftMaster))" >> /home/$dir/.xmonad/xmonad.hs
echo " "  >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-button2, Raise the window to the top of the stack" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- mod-button3, Set the window to floating mode and resize by dragging" >> /home/$dir/.xmonad/xmonad.hs
echo "    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w" >> /home/$dir/.xmonad/xmonad.hs
echo "                                       >> windows W.shiftMaster))" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "    -- you may also bind events to the mouse scroll wheel (button4 and button5)" >> /home/$dir/.xmonad/xmonad.hs
echo "    ]" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Layouts:" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- You can specify and transform your layouts by modifying these values." >> /home/$dir/.xmonad/xmonad.hs
echo "-- If you change layout bindings be sure to use 'mod-shift-space' after" >> /home/$dir/.xmonad/xmonad.hs
echo "-- restarting (with 'mod-q') to reset your layout state to the new" >> /home/$dir/.xmonad/xmonad.hs
echo "-- defaults, as xmonad preserves your old layout settings by default." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- The available layouts.  Note that each layout is separated by |||," >> /home/$dir/.xmonad/xmonad.hs
echo "-- which denotes layout choice." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myLayout =" >> /home/$dir/.xmonad/xmonad.hs
echo "  spacing 20 $  avoidStruts (tiled ||| Mirror tiled ||| Full ||| Grid ||| spiral golden ||| ThreeCol nmaster delta ratio ||| multiCol [1] 1 0.01 (-0.5))" >> /home/$dir/.xmonad/xmonad.hs
echo "     where" >> /home/$dir/.xmonad/xmonad.hs
echo "     -- default tiling algorithm partitions the screen into two panes" >> /home/$dir/.xmonad/xmonad.hs
echo "     tiled   = Tall nmaster delta ratio" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "     -- The default number of windows in the master pane" >> /home/$dir/.xmonad/xmonad.hs
echo "     nmaster = 1" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "     -- Golden Ratio" >> /home/$dir/.xmonad/xmonad.hs
echo "     golden  = 6/7" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "     -- Spiral Number" >> /home/$dir/.xmonad/xmonad.hs
echo "     num     = 15/19" >> /home/$dir/.xmonad/xmonad.hs
echo "     -- Default proportion of screen occupied by master pane" >> /home/$dir/.xmonad/xmonad.hs
echo "     ratio   = 1/2" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "     -- Percent of screen to increment by when resizing panes" >> /home/$dir/.xmonad/xmonad.hs
echo "     delta   = 3/100" >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Window rules:" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Execute arbitrary actions and WindowSet manipulations when managing" >> /home/$dir/.xmonad/xmonad.hs
echo "-- a new window. You can use this to, for example, always float a" >> /home/$dir/.xmonad/xmonad.hs
echo "-- particular program, or have a client always appear on a particular" >> /home/$dir/.xmonad/xmonad.hs
echo "-- workspace." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- To find the property name associated with a program, use" >> /home/$dir/.xmonad/xmonad.hs
echo "-- > xprop | grep WM_CLASS" >> /home/$dir/.xmonad/xmonad.hs
echo "-- and click on the client you're interested in." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- To match on the WM_NAME, you can use 'title' in the same way that" >> /home/$dir/.xmonad/xmonad.hs
echo "-- 'className' and 'resource' are used below." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myManageHook = composeAll" >> /home/$dir/.xmonad/xmonad.hs
echo "    [ className =? "MPlayer"        --> doFloat" >> /home/$dir/.xmonad/xmonad.hs
echo "--    , className =? "Gimp"           --> doFloat" >> /home/$dir/.xmonad/xmonad.hs
echo "    , resource  =? "desktop_window" --> doIgnore" >> /home/$dir/.xmonad/xmonad.hs
echo "    , resource  =? "kdesktop"       --> doIgnore ]" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Event handling" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- * EwmhDesktops users should change this to ewmhDesktopsEventHook" >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Defines a custom handler function for X Events. The function should" >> /home/$dir/.xmonad/xmonad.hs
echo "-- return (All True) if the default handler is to be run afterwards. To" >> /home/$dir/.xmonad/xmonad.hs
echo "-- combine event hooks use mappend or mconcat from Data.Monoid." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myEventHook = mempty" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Status bars and logging" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Perform an arbitrary action on each internal state change or X event." >> /home/$dir/.xmonad/xmonad.hs
echo "-- See the 'XMonad.Hooks.DynamicLog' extension for examples." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "myLogHook = return ()" >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Startup hook" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Perform an arbitrary action each time xmonad starts or is restarted" >> /home/$dir/.xmonad/xmonad.hs
echo "-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize" >> /home/$dir/.xmonad/xmonad.hs
echo "-- per-workspace layout choices." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- By default, do nothing." >> /home/$dir/.xmonad/xmonad.hs
echo "myStartupHook = do" >> /home/$dir/.xmonad/xmonad.hs
echo "	spawnOnce "nitrogen --restore &"" >> /home/$dir/.xmonad/xmonad.hs
echo "	spawnOnce "picom &"" >> /home/$dir/.xmonad/xmonad.hs
echo "        spawnOnce "ufw &"" >> /home/$dir/.xmonad/xmonad.hs
echo "        spawnOnce "xfce4-power-manager &"" >> /home/$dir/.xmonad/xmonad.hs
echo "--        spawnOnce "volumeicon &"" >> /home/$dir/.xmonad/xmonad.hs
echo "------------------------------------------------------------------------" >> /home/$dir/.xmonad/xmonad.hs
echo "-- Now run xmonad with all the defaults we set up." >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- Run xmonad with the settings you specify. No need to modify this." >> /home/$dir/.xmonad/xmonad.hs
echo "--"  >> /home/$dir/.xmonad/xmonad.hs
echo "main = do" >> /home/$dir/.xmonad/xmonad.hs
echo "  xmproc <- spawnPipe "xmobar /etc/MulBX/xmobar/xmobar.config"" >> /home/$dir/.xmonad/xmonad.hs
echo "  xmonad $ docks defaults" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- A structure containing your configuration settings, overriding" >> /home/$dir/.xmonad/xmonad.hs
echo "-- fields in the default config. Any you don't override, will" >> /home/$dir/.xmonad/xmonad.hs
echo "-- use the defaults defined in xmonad/XMonad/Config.hs" >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "-- No need to modify this." >> /home/$dir/.xmonad/xmonad.hs
echo "--" >> /home/$dir/.xmonad/xmonad.hs
echo "defaults = def {" >> /home/$dir/.xmonad/xmonad.hs
echo "      -- simple stuff" >> /home/$dir/.xmonad/xmonad.hs
echo "        terminal           = myTerminal," >> /home/$dir/.xmonad/xmonad.hs
echo "        focusFollowsMouse  = myFocusFollowsMouse," >> /home/$dir/.xmonad/xmonad.hs
echo "        clickJustFocuses   = myClickJustFocuses," >> /home/$dir/.xmonad/xmonad.hs
echo "        borderWidth        = myBorderWidth," >> /home/$dir/.xmonad/xmonad.hs
echo "        modMask            = myModMask," >> /home/$dir/.xmonad/xmonad.hs
echo "        workspaces         = myWorkspaces," >> /home/$dir/.xmonad/xmonad.hs
echo "        normalBorderColor  = myNormalBorderColor," >> /home/$dir/.xmonad/xmonad.hs
echo "        focusedBorderColor = myFocusedBorderColor," >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "      -- key bindings" >> /home/$dir/.xmonad/xmonad.hs
echo "        keys               = myKeys," >> /home/$dir/.xmonad/xmonad.hs
echo "        mouseBindings      = myMouseBindings," >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "      -- hooks, layouts" >> /home/$dir/.xmonad/xmonad.hs
echo "        layoutHook         = myLayout," >> /home/$dir/.xmonad/xmonad.hs
echo "        manageHook         = myManageHook," >> /home/$dir/.xmonad/xmonad.hs
echo "        handleEventHook    = myEventHook," >> /home/$dir/.xmonad/xmonad.hs
echo "        logHook            = myLogHook," >> /home/$dir/.xmonad/xmonad.hs
echo "        startupHook        = myStartupHook" >> /home/$dir/.xmonad/xmonad.hs
echo "    }" >> /home/$dir/.xmonad/xmonad.hs
echo " " >> /home/$dir/.xmonad/xmonad.hs
echo "-- | Finally, a copy of the default bindings in simple textual tabular format." >> /home/$dir/.xmonad/xmonad.hs
echo "help :: String" >> /home/$dir/.xmonad/xmonad.hs
echo "help = unlines ["The default modifier key is 'alt'. Default keybindings:"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- launching and killing programs"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-Enter  Launch xterminal"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-p            Launch dmenu"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-p      Launch gmrun"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-c      Close/kill the focused window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Space        Rotate through the available layout algorithms"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-Space  Reset the layouts on the current workSpace to default"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-n            Resize/refresh viewed windows to the correct size"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- move focus up or down the window stack"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Tab        Move focus to the next window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-Tab  Move focus to the previous window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-j          Move focus to the next window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-k          Move focus to the previous window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-m          Move focus to the master window"," >> /home/$dir/.xmonad/xmonad.hs
echo "   ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- modifying the window order"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Return   Swap the focused window and the master window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-j  Swap the focused window with the next window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-k  Swap the focused window with the previous window"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- resizing the master/slave ratio"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-h  Shrink the master area"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-l  Expand the master area"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- floating layer support"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-t  Push window back into tiling; unfloat and re-tile it"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- increase or decrease number of windows in the master area"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-comma  (mod-,)   Increment the number of windows in the master area"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-period (mod-.)   Deincrement the number of windows in the master area"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- quit, or restart"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-q  Quit xmonad"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-q        Restart xmonad"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-[1..9]   Switch to workSpace N"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- Workspaces & screens"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-[1..9]   Move client to workspace N","
echo "    "mod-{w,e,r}        Switch to physical/Xinerama screens 1, 2, or 3"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-Shift-{w,e,r}  Move client to screen 1, 2, or 3"," >> /home/$dir/.xmonad/xmonad.hs
echo "    ""," >> /home/$dir/.xmonad/xmonad.hs
echo "    "-- Mouse bindings: default actions bound to mouse events"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-button1  Set the window to floating mode and move by dragging"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-button2  Raise the window to the top of the stack"," >> /home/$dir/.xmonad/xmonad.hs
echo "    "mod-button3  Set the window to floating mode and resize by dragging"]" >> /home/$dir/.xmonad/xmonad.hs


sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart


#sudo cp arch-os-release /etc/os-release

sudo echo "PRETTY_NAME="MulBX GNU/Linux [Arch Linux Base] 3.8.2 (Dağ)"" > /etc/os-release
sudo echo "NAME="MulBX GNU/Linux [Arch Linux Base]"" >> /etc/os-release
sudo echo "VERSION_ID="3.8.2"" >> /etc/os-release
sudo echo "VERSION="3.8.2 (Dağ)"" >> /etc/os-release
sudo echo "VERSION_CODENAME=Dağ" >> /etc/os-release
sudo echo "ID=Mulbx" >> /etc/os-release
sudo echo "HOME_URL="https://archlinux.org/"" >> /etc/os-release
sudo echo "SUPPORT_URL="https://bbs.archlinux.org/"" >> /etc/os-release
sudo echo "BUG_REPORT_URL="https://gitlab.archlinux.org/groups/archlinux/-/issues"" >> /etc/os-release



#sudo cp bashrc /etc/skel/.bashrc


sudo echo "# ~/.bashrc: executed by bash(1) for non-login shells." > /etc/skel/.bashrc
sudo echo "# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)" >> /etc/skel/.bashrc
sudo echo "case $- in" >> /etc/skel/.bashrc
sudo echo "    *i*) ;;" >> /etc/skel/.bashrc
sudo echo "      *) return;;" >> /etc/skel/.bashrc
sudo echo "esac" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "HISTCONTROL=ignoreboth" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "shopt -s histappend" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "HISTSIZE=1000" >> /etc/skel/.bashrc
sudo echo "HISTFILESIZE=2000" >> /etc/skel/.bashrc
sudo echo "# check the window size after each command and, if necessary," >> /etc/skel/.bashrc
sudo echo "# update the values of LINES and COLUMNS." >> /etc/skel/.bashrc
sudo echo "shopt -s checkwinsize" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# If set, the pattern "**" used in a pathname expansion context will" >> /etc/skel/.bashrc
sudo echo "# match all files and zero or more directories and subdirectories." >> /etc/skel/.bashrc
sudo echo "#shopt -s globstar" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# make less more friendly for non-text input files, see lesspipe(1)" >> /etc/skel/.bashrc
sudo echo "#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# set variable identifying the chroot you work in (used in the prompt below)" >> /etc/skel/.bashrc
sudo echo "if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then" >> /etc/skel/.bashrc
sudo echo "    debian_chroot=$(cat /etc/debian_chroot)" >> /etc/skel/.bashrc
sudo echo "fi" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# set a fancy prompt (non-color, unless we know we "want" color)" >> /etc/skel/.bashrc
sudo echo "case "$TERM" in" >> /etc/skel/.bashrc
sudo echo "    xterm-color|*-256color) color_prompt=yes;;" >> /etc/skel/.bashrc
sudo echo "esac" >> /etc/skel/.bashrc
sudo echo " "  >> /etc/skel/.bashrc
sudo echo "# uncomment for a colored prompt, if the terminal has the capability; turned" >> /etc/skel/.bashrc
sudo echo "# off by default to not distract the user: the focus in a terminal window" >> /etc/skel/.bashrc
sudo echo "# should be on the output of commands, not on the prompt" >> /etc/skel/.bashrc
sudo echo "#force_color_prompt=yes" >> /etc/skel/.bashrc
sudo echo " "  >> /etc/skel/.bashrcr
sudo echo "if [ -n "$force_color_prompt" ]; then" >> /etc/skel/.bashrc
sudo echo "    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then" >> /etc/skel/.bashrc
sudo echo "	color_prompt=yes" >> /etc/skel/.bashrc
sudo echo "    else" >> /etc/skel/.bashrc
sudo echo "	color_prompt=" >> /etc/skel/.bashrc
sudo echo "    fi" >> /etc/skel/.bashrc
sudo echo "fi" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "if [ "$color_prompt" = yes ]; then" >> /etc/skel/.bashrc
sudo echo "    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> /etc/skel/.bashrc
sudo echo "else" >> /etc/skel/.bashrc
sudo echo "    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '" >> /etc/skel/.bashrc
sudo echo "fi"  >> /etc/skel/.bashrc
sudo echo "unset color_prompt force_color_prompt" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# If this is an xterm set the title to user@host:dir" >> /etc/skel/.bashrc
sudo echo "case "$TERM" in" >> /etc/skel/.bashrc
sudo echo "xterm*|rxvt*)" >> /etc/skel/.bashrc
sudo echo "    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"" >> /etc/skel/.bashrc
sudo echo "    ;;" >> /etc/skel/.bashrce
sudo echo "*)" >> /etc/skel/.bashrc
sudo echo "    ;;" >> /etc/skel/.bashrc
sudo echo "esac" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# enable color support of ls and also add handy aliases" >> /etc/skel/.bashrc
sudo echo "if [ -x /usr/bin/dircolors ]; then" >> /etc/skel/.bashrc
sudo echo "    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"" >> /etc/skel/.bashrc
sudo echo "    alias ls='ls --color=auto'" >> /etc/skel/.bashrc
sudo echo "    #alias dir='dir --color=auto'" >> /etc/skel/.bashrc
sudo echo "    #alias vdir='vdir --color=auto'"
sudo echo " " >> /home/$dir/.bashrc
sudo echo "    #alias grep='grep --color=auto'" >> /etc/skel/.bashrc
sudo echo "    #alias fgrep='fgrep --color=auto'" >> /etc/skel/.bashrc
sudo echo "    #alias egrep='egrep --color=auto'" >> /etc/skel/.bashrc
sudo echo "fi" >> /etc/skel/.bashrc
sudo echo " "  >> /etc/skel/.bashrc
sudo echo "# colored GCC warnings and errors"
sudo echo "#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# some more ls aliases" >> /etc/skel/.bashrc
sudo echo "alias ll='ls -l'" >> /etc/skel/.bashrc
sudo echo "alias lla='ls -Al'" >> /etc/skel/.bashrc
sudo echo "alias la='ls -A'" >> /etc/skel/.bashrc
sudo echo "alias l='ls -CF'" >> /etc/skel/.bashrc
sudo echo "alias ..='cd ..'" >> /etc/skel/.bashrc
sudo echo "alias tcl='tty-clock -cxbt'" >> /etc/skel/.bashrc
sudo echo "alias clearfetch='clear && screenfetch'" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# Alias definitions." >> /etc/skel/.bashrc
sudo echo "# You may want to put all your additions into a separate file like" >> /etc/skel/.bashrc
sudo echo "# ~/.bash_aliases, instead of adding them here directly." >> /etc/skel/.bashrc
sudo echo "# See /usr/share/doc/bash-doc/examples in the bash-doc package." >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "if [ -f ~/.bash_aliases ]; then" >> /etc/skel/.bashrc
sudo echo "    . ~/.bash_aliases" >> /etc/skel/.bashrc
sudo echo "fi" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "# enable programmable completion features (you don't need to enable" >> /etc/skel/.bashrc
sudo echo "# this, if it's already enabled in /etc/bash.bashrc and /etc/profile" >> /etc/skel/.bashrc
sudo echo "# sources /etc/bash.bashrc)." >> /etc/skel/.bashrc
sudo echo "if ! shopt -oq posix; then" >> /etc/skel/.bashrc
sudo echo "  if [ -f /usr/share/bash-completion/bash_completion ]; then" >> /etc/skel/.bashrc
sudo echo "    . /usr/share/bash-completion/bash_completion" >> /etc/skel/.bashrc
sudo echo "  elif [ -f /etc/bash_completion ]; then" >> /etc/skel/.bashrc
sudo echo "    . /etc/bash_completion" >> /etc/skel/.bashrc
sudo echo "  fi" >> /etc/skel/.bashrc
sudo echo "fi" >> /etc/skel/.bashrc
sudo echo " "  >> /etc/skelir/.bashrc
sudo echo "echo '"  >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "                 _" >> /etc/skel/.bashrc
sudo echo "               /  /|" >> /etc/skel/.bashrc
sudo echo "             /  / /|" >> /etc/skel/.bashrc
sudo echo "           / | / / |" >> /etc/skel/.bashrc
sudo echo "         /|  |/ /  |" >> /etc/skel/.bashrc
sudo echo "       /  |  / /___|" >> /etc/skel/.bashrc
sudo echo "      /   | / /    |" >> /etc/skel/.bashrc
sudo echo "      |   |/ /_____|" >> /etc/skel/.bashrc
sudo echo "      |   / /      |" >> /etc/skel/.bashrc
sudo echo "      |  / /     __|" >> /etc/skel/.bashrc
sudo echo "      | / /     /" >> /etc/skel/.bashrc
sudo echo "       / /------" >> /etc/skel/.bashrc
sudo echo "       | |" >> /etc/skel/.bashrc
sudo echo "       | |" >> /etc/skel/.bashrc
sudo echo "       |_|" >> /etc/skel/.bashrc
sudo echo "       \_\." >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "'" >> /etc/skel/.bashrc
sudo echo "clear" >> /etc/skel/.bashrc
sudo echo "echo '" >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "                 _" >> /etc/skel/.bashrc
sudo echo "               /  /|" >> /etc/skel/.bashrc
sudo echo "             /  / /|" >> /etc/skel/.bashrc
sudo echo "           / | / / |" >> /etc/skel/.bashrc
sudo echo "         /|  |/ /  |" >> /etc/skel/.bashrc
sudo echo "       /  |  / /___|" >> /etc/skel/.bashrc
sudo echo "      /   | / /    |" >> /etc/skel/.bashrc
sudo echo "      |   |/ /_____|" >> /etc/skel/.bashrc
sudo echo "      |   / /      |" >> /etc/skel/.bashrc
sudo echo "      |  / /     __|" >> /etc/skel/.bashrc
sudo echo "      | / /     /" >> /etc/skel/.bashrc
sudo echo "       / /------" >> /etc/skel/.bashrc
sudo echo "       | |" >> /etc/skel/.bashrc
sudo echo "       | |" >> /etc/skel/.bashrc
sudo echo "       |_|" >> /etc/skel/.bashrc
sudo echo "       \_\." >> /etc/skel/.bashrc
sudo echo " " >> /etc/skel/.bashrc
sudo echo "'" >> /etc/skel/.bashrc

#sudo cp arch-xmonad.hs /etc/skel/.xmonad/xmonad.hs

sudo echo "----------------------------------------------------------------------------------------------------------------- Imports" > /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import Data.Monoid" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import System.Exit" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Util.SpawnOnce" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Hooks.ManageDocks" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Util.Run" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import qualified XMonad.StackSet as W" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import qualified Data.Map        as M" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Layout Modifers" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Layout.Spacing" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Layout Imports" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Layout.Grid" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Layout.Spiral" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Layout.ThreeColumns" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "import XMonad.Layout.MultiColumns" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "----------------------------------------------------------------------------------------------------------------- Prefrences" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- The preferred terminal program, which is used in a binding below and by" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- certain contrib modules." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myTerminal      = "terminator"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Whether focus follows the mouse pointer." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myFocusFollowsMouse :: Bool" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myFocusFollowsMouse = True" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "  " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Whether clicking on a window to focus also passes the click to the window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myClickJustFocuses :: Bool" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myClickJustFocuses = False" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Width of the window border in pixels." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myBorderWidth   = 5" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- modMask lets you specify which modkey you want to use. The default" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- is mod1Mask ("left alt").  You may also consider using mod3Mask" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- ("right alt"), which does not conflict with emacs keybindings. The" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- "windows key" is usually mod4Mask." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myModMask       = mod4Mask" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- The default number of workspaces (virtual screens) and their names." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- By default we use numeric strings, but any string may be used as a" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- workspace name. The number of workspaces is determined by the length" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- of this list." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- A tagging example:" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- > workspaces = ["web", "irc", "code" ] ++ map show [4..9]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myWorkspaces    = ["1","2","3","4","5","6","7","8","9"]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Border colors for unfocused and focused windows, respectively." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myNormalBorderColor  = "#097969"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myFocusedBorderColor = "#50c878"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Key bindings. Add, modify or remove key bindings here." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $"
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- launch a terminal" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_x     ), spawn $ XMonad.terminal conf)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- launch dmenu" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_p     ), spawn "dmenu_run")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_c     ), spawn "dmenu_run")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Launch Brave Browser" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_v     ), spawn "brave-browser")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Launch Chromium" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_v     ), spawn "chromium")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- launch gmrun" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_p     ), spawn "gmrun")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- close focused window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_c     ), kill)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Launch Thunar" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_x     ), spawn "thunar")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Launch  FeatherPad" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_d     ), spawn "featherpad")" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Rotate through the available layout algorithms" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_space ), sendMessage NextLayout)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --  Reset the layouts on the current workspace to default" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Resize viewed windows to the correct size" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_n     ), refresh)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Move focus to the next window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_Tab   ), windows W.focusDown)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_z     ), windows W.focusDown)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Move focus to the next window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_j     ), windows W.focusDown)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " "  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Move focus to the previous window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_k     ), windows W.focusUp  )" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_z     ), windows W.focusUp  )" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Move focus to the master window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_m     ), windows W.focusMaster  )" >> /home//.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "   -- Lock screen" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_y     ), spawn "slock")    )" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Swap the focused window and the master window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_Return), windows W.swapMaster)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_a     ), windows W.swapMaster)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Swap the focused window with the next window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Swap the focused window with the previous window" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Shrink the master area" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_h     ), sendMessage Shrink)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_p     ), sendMessage Shrink)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Expand the master area" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_l     ), sendMessage Expand)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_p     ), sendMessage Expand)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " "  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Push window back into tiling" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm,               xK_t     ), withFocused $ windows . W.sink)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Increment the number of windows in the master area" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Deincrement the number of windows in the master area" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Toggle the status bar gap" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Use this binding with avoidStruts from Hooks.ManageDocks." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- See also the statusBar function from Hooks.DynamicLog." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- , ((modm              , xK_b     ), sendMessage ToggleStruts)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Quit xmonad" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Restart xmonad" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")" >> /home//.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- Run xmessage with a summary of the default keybindings (useful for beginners)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm .|. shiftMask, xK_slash ), spawn ("echo \"" ++ help ++ "\" | xmessage -file -"))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ++" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-[1..9], Switch to workspace N" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-shift-[1..9], Move client to workspace N" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    [((m .|. modm, k), windows $ f i)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ++" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    --" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Mouse bindings: default actions bound to mouse events" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--"  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " "  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-button1, Set the window to floating mode and move by dragging" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "                                       >> windows W.shiftMaster))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " "  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-button2, Raise the window to the top of the stack" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- mod-button3, Set the window to floating mode and resize by dragging" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "                                       >> windows W.shiftMaster))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    -- you may also bind events to the mouse scroll wheel (button4 and button5)" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Layouts:" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- You can specify and transform your layouts by modifying these values." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- If you change layout bindings be sure to use 'mod-shift-space' after" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- restarting (with 'mod-q') to reset your layout state to the new" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- defaults, as xmonad preserves your old layout settings by default." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- The available layouts.  Note that each layout is separated by |||," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- which denotes layout choice." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myLayout =" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "  spacing 20 $  avoidStruts (tiled ||| Mirror tiled ||| Full ||| Grid ||| spiral golden ||| ThreeCol nmaster delta ratio ||| multiCol [1] 1 0.01 (-0.5))" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     where" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- default tiling algorithm partitions the screen into two panes" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     tiled   = Tall nmaster delta ratio" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- The default number of windows in the master pane" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     nmaster = 1" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- Golden Ratio" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     golden  = 6/7" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- Spiral Number" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     num     = 15/19" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- Default proportion of screen occupied by master pane" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     ratio   = 1/2" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     -- Percent of screen to increment by when resizing panes" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "     delta   = 3/100" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Window rules:" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Execute arbitrary actions and WindowSet manipulations when managing" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- a new window. You can use this to, for example, always float a" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- particular program, or have a client always appear on a particular" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- workspace." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- To find the property name associated with a program, use" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- > xprop | grep WM_CLASS" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- and click on the client you're interested in." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- To match on the WM_NAME, you can use 'title' in the same way that" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- 'className' and 'resource' are used below." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myManageHook = composeAll" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    [ className =? "MPlayer"        --> doFloat" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--    , className =? "Gimp"           --> doFloat" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , resource  =? "desktop_window" --> doIgnore" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    , resource  =? "kdesktop"       --> doIgnore ]" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Event handling" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- * EwmhDesktops users should change this to ewmhDesktopsEventHook" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Defines a custom handler function for X Events. The function should" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- return (All True) if the default handler is to be run afterwards. To" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- combine event hooks use mappend or mconcat from Data.Monoid." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myEventHook = mempty" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Status bars and logging" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Perform an arbitrary action on each internal state change or X event." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- See the 'XMonad.Hooks.DynamicLog' extension for examples." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myLogHook = return ()" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Startup hook" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Perform an arbitrary action each time xmonad starts or is restarted" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- per-workspace layout choices." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- By default, do nothing." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "myStartupHook = do" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "	spawnOnce "nitrogen --restore &"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "	spawnOnce "picom &"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        spawnOnce "ufw &"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        spawnOnce "xfce4-power-manager &"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--        spawnOnce "volumeicon &"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "------------------------------------------------------------------------" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Now run xmonad with all the defaults we set up." >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- Run xmonad with the settings you specify. No need to modify this." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--"  >> /etc/skel/.xmonad/xmonad.hs
sudo echo "main = do" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "  xmproc <- spawnPipe "xmobar /etc/MulBX/xmobar/xmobar.config"" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "  xmonad $ docks defaults" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- A structure containing your configuration settings, overriding" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- fields in the default config. Any you don't override, will" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- use the defaults defined in xmonad/XMonad/Config.hs" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- No need to modify this." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "--" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "defaults = def {" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "      -- simple stuff" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        terminal           = myTerminal," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        focusFollowsMouse  = myFocusFollowsMouse," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        clickJustFocuses   = myClickJustFocuses," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        borderWidth        = myBorderWidth," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        modMask            = myModMask," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        workspaces         = myWorkspaces," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        normalBorderColor  = myNormalBorderColor," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        focusedBorderColor = myFocusedBorderColor," >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "      -- key bindings" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        keys               = myKeys," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        mouseBindings      = myMouseBindings," >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "      -- hooks, layouts" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        layoutHook         = myLayout," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        manageHook         = myManageHook," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        handleEventHook    = myEventHook," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        logHook            = myLogHook," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "        startupHook        = myStartupHook" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    }" >> /etc/skel/.xmonad/xmonad.hs
sudo echo " " >> /etc/skel/.xmonad/xmonad.hs
sudo echo "-- | Finally, a copy of the default bindings in simple textual tabular format." >> /etc/skel/.xmonad/xmonad.hs
sudo echo "help :: String" >> /etc/skel/.xmonad/xmonad.hs
sudo echo "help = unlines ["The default modifier key is 'alt'. Default keybindings:"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- launching and killing programs"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-Enter  Launch xterminal"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-p            Launch dmenu"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-p      Launch gmrun"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-c      Close/kill the focused window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Space        Rotate through the available layout algorithms"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-Space  Reset the layouts on the current workSpace to default"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-n            Resize/refresh viewed windows to the correct size"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- move focus up or down the window stack"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Tab        Move focus to the next window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-Tab  Move focus to the previous window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-j          Move focus to the next window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-k          Move focus to the previous window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-m          Move focus to the master window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "   ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- modifying the window order"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Return   Swap the focused window and the master window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-j  Swap the focused window with the next window"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-k  Swap the focused window with the previous window"," >> /home/$dir/x.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- resizing the master/slave ratio"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-h  Shrink the master area"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-l  Expand the master area"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- floating layer support"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-t  Push window back into tiling; unfloat and re-tile it"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- increase or decrease number of windows in the master area"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-comma  (mod-,)   Increment the number of windows in the master area"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-period (mod-.)   Deincrement the number of windows in the master area"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- quit, or restart"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-q  Quit xmonad"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-q        Restart xmonad"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-[1..9]   Switch to workSpace N"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- Workspaces & screens"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-[1..9]   Move client to workspace N","
sudo echo "    "mod-{w,e,r}        Switch to physical/Xinerama screens 1, 2, or 3"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-Shift-{w,e,r}  Move client to screen 1, 2, or 3"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    ""," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "-- Mouse bindings: default actions bound to mouse events"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-button1  Set the window to floating mode and move by dragging"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-button2  Raise the window to the top of the stack"," >> /etc/skel/.xmonad/xmonad.hs
sudo echo "    "mod-button3  Set the window to floating mode and resize by dragging"]" >> /etc/skel/.xmonad/xmonad.hs


#sudo cp install-type /etc/MulBX/install-type

echo "MulBX_Version_Code=none" > /etc/MulBX/install-type



# Version Code

echo "Do You Have a Version Code?(y/n)"
read codeans

if [ "$codeans" = "y" ]; 
then
	echo "What Version Code Do You Have?"
    read vcode

    if [ "$vcode" = "v141.Mango" ];
    then
        
        rounds = 1
        until [ "$rounds" = 5 ]
        do
        	echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
	        echo "Fixing Version Code"
	        echo "One Moment..."
	        sleep 0.3s
	        (( rounds ++ ))
        done

        echo "Done!"
        sudo pacman -Syu
        sudo pacman -Syy
        sudo pacman -S ly
        sudo systemctl enable ly
        sudo systemctl disable gdm
        sudo systemctl disable sddm
        sudo systemctl disable lightdm
        sudo pacman -S ufw
        sudo ufw status
        sudo ufw enable
        sudo ufw limit 22
        sudo ufw allow 80
        sudo ufw allow 443
        sudo pacman -S freecad
        sudo pacman -S prusa-slicer
        sudo pacman -S libreoffice
        sudo pacman -S gimp
        sudo pacman -S kdenlive
        sudo echo "MulBX_Version_Code="v141.Mango"" > /etc/MulBX/install-type
        exit

    else
        echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
    fi


    if [ "$vcode" = "shhh_XonNOS" ];
    then
        rounds = 1
        until [ "$rounds" = 19 ]
        do
     	    echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
     	    echo "Fixing Version Code"
     	    echo "One Moment..."
    	    sleep 0.3s
	        (( rounds ++ ))
        done

        echo "Done!"

        echo "Installing the Secret Distro of MulBX..."
        echo "Installing XonNOS..."



        sudo pacman -Syu
        sudo pacman -Syy
        sudo pacman -S ly
        sudo systemctl enable ly
        sudo systemctl disable gdm
        sudo systemctl disable sddm
        sudo systemctl disable lightdm
        sudo pacman -S ufw
        sudo ufw status
        sudo ufw enable
        sudo ufw deny 22
        sudo ufw allow 80
        sudo ufw allow 443
        sudo pacman -S freecad
        sudo pacman -S prusa-slicer
        sudo pacman -S libreoffice
        sudo pacman -S gimp
        sudo pacman -S kdenlive 
        sudo echo "MulBX_Version_Code="shhh_XonNOS"" > /etc/MulBX/install-type
        sudo echo "PRETTY_NAME="XonNOS GNU/Linux 3.8.3 (Underrated)"" > /etc/os-release
        sudo echo "NAME="XonNOS GNU/Linux"" >> /etc/os-release
        sudo echo "VERSION_ID="3.8.3 (Underrated)"" >> /etc/os-release
        sudo echo "VERSION="3.8.3"" >> /etc/os-release
        sudo echo "VERSION_CODENAME=Underrated" >> /etc/os-release
        sudo echo "ID=XonNOS" >> /etc/os-release
        sudo echo "HOME_URL="https://archlinux.org/"" >> /etc/os-release
        sudo echo "SUPPORT_URL="https://bbs.archlinux.org/"" >> /etc/os-release
        sudo echo "BUG_REPORT_URL="https://gitlab.archlinux.org/groups/archlinux/-/issues"" >> /etc/os-release

        exit

    else
        echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
    fi


    if [ "$vcode" = "AZarch" ];
    then
        rounds = 1
        until [ "$rounds" = 5 ]
        do
	        echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
	        echo "Fixing Version Code"
	        echo "One Moment..."
	        sleep 0.3s
	        (( rounds ++ ))
        done

        echo "Done!"
        sudo pacman -Syu
        sudo pacman -Syy
        sudo pacman -S ly
        sudo systemctl enable ly
        sudo systemctl disable gdm
        sudo systemctl disable sddm  
        sudo systemctl disable lightdm
        sudo pacman -S ufw
        sudo ufw status
        sudo ufw enable
        sudo ufw deny 22
        sudo ufw allow 80
        sudo ufw allow 443
        #cp azarch-xmonad.hs /home/$dir/.xmonad/xmonad.hs
        #sudo cp azarch-xmonad.hs /etc/skel/.xmonad/xmonad.hs
        

        #sudo cp azarch-install-type /etc/MulBX/install-type
        sudo echo "MulBX_Version_Code="AZarch"" > /etc/MulBX/install-type
        
        
        #sudo cp azarch-os-release /etc/os-release
        sudo echo "PRETTY_NAME="MulBX GNU/Linux [AZarch] 3.8.1 (Dağ)"" > /etc/os-release
        sudo echo "NAME="MulBX GNU/Linux [AZarch]"" >> /etc/os-release
        sudo echo "VERSION_ID="3.8.1"" >> /etc/os-release
        sudo echo "VERSION="3.8.1 (Dağ)"" >> /etc/os-release
        sudo echo "VERSION_CODENAME=Dağ" >> /etc/os-release
        sudo echo "ID=Mulbx" >> /etc/os-release
        sudo echo "HOME_URL="https://archlinux.org/"" >> /etc/os-release
        sudo echo "SUPPORT_URL="https://bbs.archlinux.org/"" >> /etc/os-release
        sudo echo "BUG_REPORT_URL="https://gitlab.archlinux.org/groups/archlinux/-/issues"" >> /etc/os-release


        exit

    else
        echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
    fi


    if [ "$vcode" = "EFE" ];
    then
        echo "What is the Access Code?"
        read acod

        sleep 5

        if [ "$acod" = "Efes'in Efe'si" ];
        then 
            # Validation

            echo "Access Code: Vailed"
            sleep .3
            echo "Initiating Process"

            echo " "
            echo " "
            sleep 3

            # Welcome

            echo " 
                   _____________        _____________        _____________
                  |   _________|       |   _________|       |   _________| 
                  |   |_____           |   |_____           |   |_____
                  |    _____|          |    _____|          |    _____|   
                  |   |________        |   |                |   |________
                  |____________|       |___|                |____________| 
                   _______________________________________________________
                  \                                                      /
                  /______________________________________________________\ 


            "


            # Installing Packages

            sudo pacman -Syu
            sudo pacman -Syy
            sudo pacman -S ly
            sudo pacman -S picom
            sudo pacman -S terminator

            # Copying New Directories

            #cp arch-efe-bashrc /home/$dir/.bashrc

            echo "# ~/.bashrc: executed by bash(1) for non-login shells." > /home/$dir/.bashrc
            echo "# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)" >> /home/$dir/.bashrc
            echo "# If not running interactively, don't do anything" >> /home/$dir/.bashrc
            echo "case $- in" >> /home/$dir/.bashrc
            echo "    *i*) ;;" >> /home/$dir/.bashrc
            echo "      *) return;;" >> /home/$dir/.bashrc
            echo "esac" >> /home/$dir/.bashrc
            echo " " >> /home/$dir/.bashrc
            echo "# don't put duplicate lines or lines starting with space in the history." >> /home/$dir/.bashrc
            echo "# See bash(1) for more options" >> /home/$dir/.bashrc
            echo "HISTCONTROL=ignoreboth" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# append to the history file, don't overwrite it" >> /home/$dir/.bashrc
            echo "shopt -s histappend" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)" >> /home/$dir/.bashrc
            echo "HISTSIZE=1000" >> /home/$dir/.bashrc
            echo "HISTFILESIZE=2000" >> /home/$dir/.bashrc
            echo " " >> /home/$dir/.bashrc
            echo "# check the window size after each command and, if necessary," >> /home/$dir/.bashrc
            echo "# update the values of LINES and COLUMNS." >> /home/$dir/.bashrc
            echo "shopt -s checkwinsize" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# If set, the pattern "**" used in a pathname expansion context will" >> /home/$dir/.bashrc
            echo "# match all files and zero or more directories and subdirectories." >> /home/$dir/.bashrc
            echo "#shopt -s globstar" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# make less more friendly for non-text input files, see lesspipe(1)" >> /home/$dir/.bashrc
            echo "#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# set variable identifying the chroot you work in (used in the prompt below)" >> /home/$dir/.bashrc
            echo "if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then" >> /home/$dir/.bashrc
            echo "    debian_chroot=$(cat /etc/debian_chroot)" >> /home/$dir/.bashrc
            echo "fi" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# set a fancy prompt (non-color, unless we know we "want" color)" >> /home/$dir/.bashrc
            echo "case "$TERM" in" >> /home/$dir/.bashrc
            echo "    xterm-color|*-256color) color_prompt=yes;;" >> /home/$dir/.bashrc
            echo "esac" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# uncomment for a colored prompt, if the terminal has the capability; turned" >> /home/$dir/.bashrc
            echo "# off by default to not distract the user: the focus in a terminal window" >> /home/$dir/.bashrc
            echo "# should be on the output of commands, not on the prompt" >> /home/$dir/.bashrc
            echo "#force_color_prompt=yes" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "if [ -n "$force_color_prompt" ]; then" >> /home/$dir/.bashrc
            echo "    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then" >> /home/$dir/.bashrc
            echo "	# We have color support; assume it's compliant with Ecma-48" >> /home/$dir/.bashrc
            echo "	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such" >> /home/$dir/.bashrc
            echo "	# a case would tend to support setf rather than setaf.)" >> /home/$dir/.bashrc
            echo "	color_prompt=yes" >> /home/$dir/.bashrc
            echo "   else" >> /home/$dir/.bashrc
            echo "	color_prompt=" >> /home/$dir/.bashrc
            echo "    fi" >> /home/$dir/.bashrc
            echo "fi" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "if [ "$color_prompt" = yes ]; then" >> /home/$dir/.bashrc
            echo "    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> /home/$dir/.bashrc
            echo "else" >> /home/$dir/.bashrc
            echo "    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '" >> /home/$dir/.bashrc
            echo "fi" >> /home/$dir/.bashrc
            echo "unset color_prompt force_color_prompt" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# If this is an xterm set the title to user@host:dir" >> /home/$dir/.bashrc
            echo "case "$TERM" in" >> /home/$dir/.bashrc
            echo "xterm*|rxvt*)" >> /home/$dir/.bashrc
            echo "    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"" >> /home/$dir/.bashrc
            echo "    ;;" >> /home/$dir/.bashrc
            echo "*)" >> /home/$dir/.bashrc
            echo "   ;;" >> /home/$dir/.bashrc
            echo "esac" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# enable color support of ls and also add handy aliases" >> /home/$dir/.bashrc
            echo "if [ -x /usr/bin/dircolors ]; then" >> /home/$dir/.bashrc
            echo "    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"" >> /home/$dir/.bashrc
            echo "    alias ls='ls --color=auto'" >> /home/$dir/.bashrc
            echo "    #alias dir='dir --color=auto'" >> /home/$dir/.bashrc
            echo "    #alias vdir='vdir --color=auto'" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "    #alias grep='grep --color=auto'" >> /home/$dir/.bashrc
            echo "    #alias fgrep='fgrep --color=auto'" >> /home/$dir/.bashrc
            echo "    #alias egrep='egrep --color=auto'" >> /home/$dir/.bashrc
            echo "fi" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# colored GCC warnings and errors" >> /home/$dir/.bashrc
            echo "#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# some more ls aliases" >> /home/$dir/.bashrc
            echo "alias ll='ls -l'" >> /home/$dir/.bashrc
            echo "alias lla='ls -Al'" >> /home/$dir/.bashrc
            echo "alias la='ls -A'" >> /home/$dir/.bashrc
            echo "#alias l='ls -CF'" >> /home/$dir/.bashrc
            echo "alias ..='cd ..'" >> /home/$dir/.bashrc
            echo "alias tcl='tty-clock -cxbt'" >> /home/$dir/.bashrc
            echo "alias clearfetch='clear && screenfetch'" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# Alias definitions." >> /home/$dir/.bashrc
            echo "# You may want to put all your additions into a separate file like" >> /home/$dir/.bashrc
            echo "# ~/.bash_aliases, instead of adding them here directly." >> /home/$dir/.bashrc
            echo "# See /usr/share/doc/bash-doc/examples in the bash-doc package." >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "if [ -f ~/.bash_aliases ]; then" >> /home/$dir/.bashrc
            echo "    . ~/.bash_aliases" >> /home/$dir/.bashrc
            echo "fi" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "# enable programmable completion features (you don't need to enable" >> /home/$dir/.bashrc
            echo "# this, if it's already enabled in /etc/bash.bashrc and /etc/profile" >> /home/$dir/.bashrc
            echo "# sources /etc/bash.bashrc)." >> /home/$dir/.bashrc
            echo "if ! shopt -oq posix; then" >> /home/$dir/.bashrc
            echo "  if [ -f /usr/share/bash-completion/bash_completion ]; then" >> /home/$dir/.bashrc
            echo "    . /usr/share/bash-completion/bash_completion" >> /home/$dir/.bashrc
            echo "  elif [ -f /etc/bash_completion ]; then" >> /home/$dir/.bashrc
            echo "    . /etc/bash_completion" >> /home/$dir/.bashrc
            echo "  fi" >> /home/$dir/.bashrc
            echo "fi" >> /home/$dir/.bashrc

            echo "echo " " >> /home/$dir/.bashrc
            echo "       _____________        _____________        _____________" >> /home/$dir/.bashrc
            echo "       |   _________|       |   _________|       |   _________| " >> /home/$dir/.bashrc
            echo "       |   |_____           |   |_____           |   |_____" >> /home/$dir/.bashrc
            echo "       |    _____|          |    _____|          |    _____|" >> /home/$dir/.bashrc
            echo "       |   |________        |   |                |   |________" >> /home/$dir/.bashrc
            echo "       |____________|       |___|                |____________| " >> /home/$dir/.bashrc
            echo "       _______________________________________________________
            echo "       \                                                      /" >> /home/$dir/.bashrc
            echo "       /______________________________________________________\ " >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "" >> /home/$dir/.bashrc
            echo "echo "Merhaba Efe"" >> /home/$dir/.bashrc
            echo "echo "Hoş Geldiniz"" >> /home/$dir/.bashrc


            #sudo cp arch-efe-bashrc /etc/skel/.bashrc
            
            
            
            
            sudo echo "# ~/.bashrc: executed by bash(1) for non-login shells." > /etc/skel/.bashrc
            sudo echo "# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)" >> /etc/skel/.bashrc
            sudo echo "# If not running interactively, don't do anything" >> /etc/skel/.bashrc
            sudo echo "case $- in" >> /etc/skel/.bashrc
            sudo echo "    *i*) ;;" >> /etc/skel/.bashrc
            sudo echo "      *) return;;" >> /etc/skel/.bashrc
            sudo echo "esac" >> /etc/skel/.bashrc
            sudo echo " " >> /etc/skel/.bashrc
            sudo echo "# don't put duplicate lines or lines starting with space in the history." >> /etc/skel/.bashrc
            sudo echo "# See bash(1) for more options" >> /etc/skel/.bashrc
            sudo echo "HISTCONTROL=ignoreboth" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# append to the history file, don't overwrite it" >> /etc/skel/.bashrc
            sudo echo "shopt -s histappend" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)" >> /etc/skel/.bashrc
            sudo echo "HISTSIZE=1000" >> /etc/skel/.bashrc
            sudo echo "HISTFILESIZE=2000" >> /etc/skel/.bashrc
            sudo echo " " >> /etc/skel/.bashrc
            sudo echo "# check the window size after each command and, if necessary," >> /etc/skel/.bashrc
            sudo echo "# update the values of LINES and COLUMNS." >> /etc/skel/.bashrc
            sudo echo "shopt -s checkwinsize" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# If set, the pattern "**" used in a pathname expansion context will" >> /etc/skel/.bashrc
            sudo echo "# match all files and zero or more directories and subdirectories." >> /etc/skel/.bashrc
            sudo echo "#shopt -s globstar" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# make less more friendly for non-text input files, see lesspipe(1)" >> /etc/skel/.bashrc
            sudo echo "#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# set variable identifying the chroot you work in (used in the prompt below)" >> /etc/skel/.bashrc
            sudo echo "if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then" >> /etc/skel/.bashrc
            sudo echo "    debian_chroot=$(cat /etc/debian_chroot)" >> /etc/skel/.bashrc
            sudo echo "fi" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# set a fancy prompt (non-color, unless we know we "want" color)" >> /etc/skel/.bashrc
            sudo echo "case "$TERM" in" >> /etc/skel/.bashrc
            sudo echo "    xterm-color|*-256color) color_prompt=yes;;" >> /etc/skel/.bashrc
            sudo echo "esac" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# uncomment for a colored prompt, if the terminal has the capability; turned" >> /etc/skel/.bashrc
            sudo echo "# off by default to not distract the user: the focus in a terminal window" >> /etc/skel/.bashrc
            sudo echo "# should be on the output of commands, not on the prompt" >> /etc/skel/.bashrc
            sudo echo "#force_color_prompt=yes" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "if [ -n "$force_color_prompt" ]; then" >> /etc/skel/.bashrc
            sudo echo "    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then" >> /etc/skel/.bashrc
            sudo echo "	# We have color support; assume it's compliant with Ecma-48" >> /etc/skel/.bashrc
            sudo echo "	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such" >> /etc/skel/.bashrc
            sudo echo "	# a case would tend to support setf rather than setaf.)" >> /etc/skel/.bashrc
            sudo echo "	color_prompt=yes" >> /etc/skel/.bashrc
            sudo echo "   else" >> /etc/skel/.bashrc
            sudo echo "	color_prompt=" >> /etc/skel/.bashrc
            sudo echo "    fi" >> /etc/skel/.bashrc
            sudo echo "fi" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "if [ "$color_prompt" = yes ]; then" >> /etc/skel/.bashrc
            sudo echo "    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> /etc/skel/.bashrc
            sudo echo "else" >> /etc/skel/.bashrc
            sudo echo "    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '" >> /etc/skel/.bashrc
            sudo echo "fi" >> /etc/skel/.bashrc
            sudo echo "unset color_prompt force_color_prompt" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# If this is an xterm set the title to user@host:dir" >> /etc/skel/.bashrc
            sudo echo "case "$TERM" in" >> /etc/skel/.bashrc
            sudo echo "xterm*|rxvt*)" >> /etc/skel/.bashrc
            sudo echo "    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"" >> /etc/skel/.bashrc
            sudo echo "    ;;" >> /etc/skel/.bashrc
            sudo echo "*)" >> /etc/skel/.bashrc
            sudo echo "   ;;" >> /etc/skel/.bashrc
            sudo echo "esac" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# enable color support of ls and also add handy aliases" >> /etc/skel/.bashrc
            sudo echo "if [ -x /usr/bin/dircolors ]; then" >> /etc/skel/.bashrc
            sudo echo "    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"" >> /etc/skel/.bashrc
            sudo echo "    alias ls='ls --color=auto'" >> /etc/skel/.bashrc
            sudo echo "    #alias dir='dir --color=auto'" >> /etc/skel/.bashrc
            sudo echo "    #alias vdir='vdir --color=auto'" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "    #alias grep='grep --color=auto'" >> /etc/skel/.bashrc
            sudo echo "    #alias fgrep='fgrep --color=auto'" >> /etc/skel/.bashrc
            sudo echo "    #alias egrep='egrep --color=auto'" >> /etc/skel/.bashrc
            sudo echo "fi" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# colored GCC warnings and errors" >> /etc/skel/.bashrc
            sudo echo "#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# some more ls aliases" >> /etc/skel/.bashrc
            sudo echo "alias ll='ls -l'" >> /etc/skel/.bashrc
            sudo echo "alias lla='ls -Al'" >> /etc/skel/.bashrc
            sudo echo "alias la='ls -A'" >> /etc/skel/.bashrc
            sudo echo "#alias l='ls -CF'" >> /etc/skel/.bashrc
            sudo echo "alias ..='cd ..'" >> /etc/skel/.bashrc
            sudo echo "alias tcl='tty-clock -cxbt'" >> /etc/skel/.bashrc
            sudo echo "alias clearfetch='clear && screenfetch'" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# Alias definitions." >> /etc/skel/.bashrc
            sudo echo "# You may want to put all your additions into a separate file like" >> /etc/skel/.bashrc
            sudo echo "# ~/.bash_aliases, instead of adding them here directly." >> /etc/skel/.bashrc
            sudo echo "# See /usr/share/doc/bash-doc/examples in the bash-doc package." >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "if [ -f ~/.bash_aliases ]; then" >> /etc/skel/.bashrc
            sudo echo "    . ~/.bash_aliases" >> /etc/skel/.bashrc
            sudo echo "fi" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "# enable programmable completion features (you don't need to enable" >> /etc/skel/.bashrc
            sudo echo "# this, if it's already enabled in /etc/bash.bashrc and /etc/profile" >> /etc/skel/.bashrc
            sudo echo "# sources /etc/bash.bashrc)." >> /etc/skel/.bashrc
            sudo echo "if ! shopt -oq posix; then" >> /etc/skel/.bashrc
            sudo echo "  if [ -f /usr/share/bash-completion/bash_completion ]; then" >> /etc/skel/.bashrc
            sudo echo "    . /usr/share/bash-completion/bash_completion" >> /etc/skel/.bashrc
            sudo echo "  elif [ -f /etc/bash_completion ]; then" >> /etc/skel/.bashrc
            sudo echo "    . /etc/bash_completion" >> /etc/skel/.bashrc
            sudo echo "  fi" >> /etc/skel/.bashrc
            sudo echo "fi" >> /etc/skel/.bashrc
            sudo echo "echo " " >> /etc/skel/.bashrc
            sudo echo "       _____________        _____________        _____________" >> /etc/skel/.bashrc
            sudo echo "       |   _________|       |   _________|       |   _________| " >> /etc/skel/.bashrc
            sudo echo "       |   |_____           |   |_____           |   |_____" >> /etc/skel/.bashrc
            sudo echo "       |    _____|          |    _____|          |    _____|" >> /etc/skel/.bashrc
            sudo echo "       |   |________        |   |                |   |________" >> /etc/skel/.bashrc
            sudo echo "       |____________|       |___|                |____________| " >> /etc/skel/.bashrc
            sudo echo "       _______________________________________________________
            sudo echo "       \                                                      /" >> /etc/skel/.bashrc
            sudo echo "       /______________________________________________________\ " >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "" >> /etc/skel/.bashrc
            sudo echo "echo "Merhaba Efe"" >> /etc/skel/.bashrc
            sudo echo "echo "Hoş Geldiniz"" >> /etc/skel/.bashrc

            #sudo cp arch-efe-os-release /etc/os-release
            #sudo cp arch-efe-install-type /etc/MulBX/install-type
        else
            echo "[        3E_7r_7r_3o_9r     ] Error: Access Code Does Not Qualify"
            echo "[        7R_3u_2i_9n        ] Error: Default Missing In: bash-backs.loader"
        fi

        exit

    else
        echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
    fi

else
	   echo "Ok! Continuing Install!"
fi

# UFW Setup


echo "Setting Up FireWall:"

sudo ufw status
sudo ufw enable
sudo ufw allow 433
sudo ufw allow 80
sudo ufw limit 20
sudo ufw allow 313
sudo ufw allow 141
sudo ufw enable 

echo "UFW Almost Done:"

sudo ufw status


# Finishing Up

xmonad --recompile
echo "All Done!!!"
echo "I Will Now Reboot!"
sleep 10
sudo reboot
reboot