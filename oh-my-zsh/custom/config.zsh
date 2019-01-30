#   -----------------------------
#   MAKE TERMINAL BETTER
#   -----------------------------

    alias wtf="watch -n 1 w -hs"
    alias wth="ps -uxa | more"
    alias findbig='find . -type f -exec ls -s {} \; | sort -n -r | head -5'
    alias ports='netstat -nape --inet'
    alias ping4='ping -c 4'
    alias ns='netstat -alnp --protocol=inet'
    alias ls='ls -aFG'
    alias la='ls -Al'
    alias lx='ls -lXB'
    alias lk='ls -lSr'
    alias lc='ls -lcr'
    alias lu='ls -lur'
    alias lr='ls -lR'
    alias lt='ls -ltr'
    alias lm='ls -al |more'
    alias rm='rm'
    alias cp='cp -iv'                           # Preferred 'cp' implementation
    alias mv='mv -iv'                           # Preferred 'mv' implementation
    alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
    alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
    alias less='less -FSRXc'                    # Preferred 'less' implementation
    cd() { builtin cd "$@"; ls; }               # Always list directory contents upon 'cd'
    alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
    alias ..='cd ../'                           # Go back 1 directory level
    alias ...='cd ../../'                       # Go back 2 directory levels
    alias .3='cd ../../../'                     # Go back 3 directory levels
    alias .4='cd ../../../../'                  # Go back 4 directory levels
    alias .5='cd ../../../../../'               # Go back 5 directory levels
    alias .6='cd ../../../../../../'            # Go back 6 directory levels
    alias h='cd ~'
    alias ~="cd ~"                              # ~:            Go Home
    alias c='clear'                             # c:            Clear terminal display
    #alias which='type -all'                     # which:        Find executables
    alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
    alias show_options='shopt'                  # Show_options: display bash options settings
    alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
    alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
    mkcd () { mkdir -p "$1" && cd "$1"; }       # mcd:          Makes new Dir and jumps inside



#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
    alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#           displays paginated result with colored search terms and two lines surrounding each hit.             Example: mans mplayer codec
#   --------------------------------------------------------------------
    mans () {
        man $1 | grep -iC2 --color=always $2 | less
    }

#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
    showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }


#   -------------------------------
#   FILE AND FOLDER MANAGEMENT
#   -------------------------------

    zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder
    alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir
    alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
    alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
    alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

#   encrypt:  Encrypt given file/directory
#   ---------------------------------------------------------
    encrypt () { gpg -ac --no-options "$1" }

#   decrypt:  Decrypt give file/directory
#   ---------------------------------------------------------
    decrypt () { gpg --no-options "$1" }

#   ---------------------------
#   SEARCHING
#   ---------------------------

    alias qfind="find . -name "                 # qfind:    Quickly search for file
    ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
    ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
    ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string


#   ---------------------------
#   PROCESS MANAGEMENT
#   ---------------------------

#   findPid: find out the pid of a specified process
#   -----------------------------------------------------
#       Note that the command name can be specified via a regex
#       E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
#       Without the 'sudo' it will only find processes of the current user
#   -----------------------------------------------------
    findPid () { lsof -t -c "$@" ; }

#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
    alias memHogsTop='top -l 1 -o rsize | head -20'
    alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
    alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#   topForever:  Continual 'top' listing (every 10 seconds)
#   -----------------------------------------------------
    alias topForever='top -l 9999999 -s 10 -o cpu'

#   ttop:  Recommended 'top' invocation to minimize resources
#   ------------------------------------------------------------
#       Taken from this macosxhints article
#       http://www.macosxhints.com/article.php?story=20060816123853639
#   ------------------------------------------------------------
    alias ttop="top -R -F -s 10 -o rsize"

#   my_ps: List processes owned by my user:
#   ------------------------------------------------------------
    my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }


#   ---------------------------
#   NETWORKING
#   ---------------------------

    alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
    alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
    alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
    alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
    alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
    alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
    alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
    alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
    alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
    alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs
    alias hosts='sudo vim /etc/hosts'

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


#   ---------------------------------------
#   SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------
    alias mountReadWrite='/sbin/mount -uw /'    # mountReadWrite:   For use when booted into single-user

#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
    alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

#   ---------------------------------------
#   SYSTEM ADMINISTRATION
#   ---------------------------------------
    alias root='sudo su -'
    alias suroot='sudo -E -s'
    unalias gcp
    
    # SSL Management
    certinfo () { openssl x509 -in "$1" -noout -text; }
    csr () { openssl req -new -newkey rsa:2048 -nodes -keyout "$1".key -out "$1".csr; }
    cabundle() { cat "$1".crt > "$1"-bundle.crt && cat "$1".ca >> "$1"-bundle.crt}

#   ---------------------------------------
#   DEVELOPMENT ALIASES
#   ---------------------------------------

    # General
    alias code='cd "{ $code_path }"'
    pms () { gaa && gcmsg "pms" && gp; }
    gpe () { git commit --allow-empty -m "Trigger push"; }

    # Brew Aliases
    alias brew:services="brew services list"
    alias brew:start="brew services start"
    alias brew:stop="brew services stop"

    # Artisan Aliases
    alias pa="php artisan"
    alias art="php artisan"
    alias artisan="php artisan"
    alias par="php artisan routes"
    alias pda="php artisan dumpautoload"
    alias ptest="clear && phpunit"

    # Artisan Migration Aliases
    alias migrate="php artisan migrate"
    alias redb="php artisan migrate:refresh && php artisan migrate --seed"
    alias pam="php artisan migrate"
    alias pam:r="php artisan migrate:refresh"
    alias pam:roll="php artisan migrate:rollback"
    alias pam:rs="php artisan migrate:refresh --seed"

    # Artisan Deploy Helpers
    alias pac="php artisan route:cache && php artisan config:cache && php artisan optimize"
    alias paclear="php artisan route:clear && php artisan config:clear && php artisan clear-compiled && php artisan view:clear"

    # Composer Aliases
    alias ci="composer install"
    alias cu="composer update"
    alias cda="composer dump-autoload -o"
    
    # Rails Aliases
    alias rc="rails console"
    alias rd="rails destroy"
    alias rdb="rails dbconsole"
    alias rg="rails generate"
    alias ru="rails generate migration"
    alias rp="rails plugin"
    alias ru="rails runner"
    alias rs="rails server"
    alias rsd="rails server --debugger"
    
    # Rake Aliases
    alias rdm="rake db:migrate"
    alias rdms="rake db:migrate:status"
    alias rdr="rake db:rollback"
    alias rdc="rake db:create"
    alias rds="rake db:seed"
    alias rdd="rake db:drop"
    alias rdtc="rake db:test:clone"
    alias rdtp="rake db:test:prepare"
    alias rdmtc="rake db:migrate db:test:clone"
    alias rlc="rake log:clear"
    alias rn="rake notes"
    alias rr="rake routes"
    
    # Bundler Aliases
    alias bi="bundle install"
    alias bu="bundle update"
