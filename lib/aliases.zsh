# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi
# List direcory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
alias sl=ls # often screw this up
alias zz='ssh -A -p 5190 zugzug.bluehost.com'
alias vm='ssh -p 3022 devstack@localhost'
alias afind='ack-grep -il'

function zssh {
  /usr/bin/ssh -t -A zugzug2.bluehost.com -p5190 "ssh -A $1 "
}

function k {
  /usr/bin/ssh -t -A zugzug2.bluehost.com -p5190 "ssh -t bclifford@keyserv.unifiedlayer.com $1"
}

function kb {
  /usr/bin/ssh -t -A zugzug2.bluehost.com -p5190 "ssh -t bclifford@keyserv.beta.unifiedlayer.com $1"
}

function vps {
  /usr/bin/ssh -t -A zugzug2.bluehost.com -p5190 "ssh -A bclifford@198.57.212.32"
}

function alpha {
  zssh $1.alpha
}
