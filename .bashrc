alias temp="vi cust-env.txt"
alias vi="vim"

#spinup API  creds
alias spu="source /Users/todd7494/.spinup-env && echo $SPU_APIKEY && echo $SPU_USERNAME"



alias greo="grep"
alias sbp='. ~/.bash_profile' 
alias aligrep="alias | grep"


#aliases 
rdns () {
dig +short $1| head -1 | awk '{ print "IP address: " $1 }'
ssh bastion whois $(dig +short $1 | tail -1) | grep OrgName
}

pydev_disk=bc648840-17b2-4b9f-9bde-fe0206246fde

SND_BFV=0ce39816-16f2-484c-b18f-b4acbf2a1147

alias sn-docker-create='rack servers instance create --block-device source-type=volume,source-id=$SND_BFV,volume-size=50,destination-type=volume,delete-on-termination=false --flavor-id general1-1 --name ssn-docker --keypair todd-key-new --admin-pass Shimano23'

alias sn-docker="ssh root@23.253.120.219"
alias sn-docker-delete="rack server instance delete --name sn-docker"

alias nvgrep="nova | grep"
alias prof='. ~/.bash_profile'
alias bp="vi ~/.bash_profile"
alias rm="rm -i"
alias la="ls -al"
alias cl="clear"
alias ba=" vi ~/.bashrc"
alias brc=". ~/.bashrc"
alias ..="cd .."
alias ...="cd ..."
alias ping="ping -c3"
alias flush="sudo killall -HUP mDNSResponder; sleep 2; echo macOS DNS Cache Reset | say"
alias ns="dig -t ns"
alias envgrep=" env | grep"


## ENV aliases
alias OS_="env | grep OS_"
alias SPU_='env | grep SPU_'


# changing sshconfig files
alias home="mv ~/.ssh/config ~/.ssh/.config"
alias work="mv ~/.ssh/.config ~/.ssh/config"
alias oc="ssh todd@174.143.201.167"
alias pydev='ssh root@$SSH_CLB_IP'

####
#    SUPERNOVA ALIASES AND CONFIGURATIONS    ####    #####    ## 
###


alias snovaconf="vim ~/.supernova"





# rack CLI aliases
alias rconf='vi ~/.rack/config'
alias virack="vi ~/.rack/config"
alias rackmi="rack profile activate -name mi"
alias pydev-delete='rack servers instance delete --name pydev'
alias pydev-get='rack servers instance get --name pydev'
alias swiftly-instance-create='rack servers instance create --image-id 0ce39816-16f2-484c-b18f-b4acbf2a1147 --flavor-id general1-1 --name $USER --admin-pass Shimano23'
alias pydev-create='rack servers instance create --block-device source-type=volume,source-id=$PYDEV_DISK,volume-size=50,destination-type=volume,delete-on-termination=false --flavor-id general1-8 --security-groups 940f127e-217e-453b-bb60-78fc4d649bfa --name pydev --keypair todd-key-new --admin-pass Shimano23'
alias DFW-pub-add='rack networks security-group-rule create --security-group-id c302e775-2dfe-42b5-ba75-a2153e39bf2c --direction ingress  --ether-type ipv4 --port-range-min 22 --port-range-max 22 --protocol tcp --remote-ip-prefix $IP_ADDR'
alias DFW-pub-list='rack networks security-group-rule list --security-group-id c302e775-2dfe-42b5-ba75-a2153e39bf2c'
alias cust="rack profile activate --name cust"

alias vpnproxy='ssh -fqN -D localhost:8899 todd7494@127.0.0.1 -p2222'


#  Virtual ENV Aliases. 
alias pip="pip3"
alias nova3="source ~/.virtualenv/novaclient/bin/activate"

export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH="${PYENV_ROOT}/bin:${PATH}"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

alias ll="ls -al"


###############
#Docker Aliases 
###############
alias swiftly='docker run --env NAME=cloudtams --env KEY=ed02ace78a1640638dbeffaf341a5602 matanube/swiftly'

###############  


. .nova-bashcompletion
