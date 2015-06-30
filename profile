# Convert docker commands to aliases directly
alias dattach="docker attach"
alias dbuild="docker build"
alias dcommit="docker commit"
alias dcp="docker cp"
alias dcreate="docker create"
alias ddiff="docker diff"
alias devents="docker events"
alias dexec="docker exec"
alias dexport="docker export"
alias dhistory="docker history"
alias dimages="docker images"
alias dimport="docker import"
alias dinfo="docker info"
alias dinspect="docker inspect"
alias dkill="docker kill"
alias dload="docker load"
alias dlogin="docker login"
alias dlogout="docker logout"
alias dlogs="docker logs"
alias dport="docker port"
alias dpause="docker pause"
alias dps="docker ps"
alias dpull="docker pull"
alias dpush="docker push"
alias drename="docker rename"
alias drestart="docker restart"
alias drm="docker rm"
alias drmi="docker rmi"
alias drun="docker run"
alias dsave="docker save"
alias dsearch="docker search"
alias dstart="docker start"
alias dstats="docker stats"
alias dstop="docker stop"
alias dtag="docker tag"
alias dtop="docker top"
alias dunpause="docker unpause"
alias dversion="docker version"
alias dwait="docker wait"
alias drun="docker run"

# Convert docker-machine commands to aliases directly
alias dmactive="docker-machine active"
alias dmcreate="docker-machine create"
alias dmconfig="docker-machine config"
alias dminspect="docker-machine inspect"
alias dmip="docker-machine ip"
alias dmkill="docker-machine kill"
alias dmls="docker-machine ls"
alias dmregenerate-certs="docker-machine regenerate-certs"
alias dmrestart="docker-machine restart"
alias dmrm="docker-machine rm"
alias dmenv="docker-machine env"
alias dmssh="docker-machine ssh"
alias dmstart="docker-machine start"
alias dmstop="docker-machine stop"
alias dmupgrade="docker-machine upgrade"
alias dmurl="docker-machine url"
alias dmhelp="docker-machine help"

# customized aliases
# list all docker processes included stop containers.
alias dpa="docker ps -a"
# list all untagged images (dangling)
alias dangline="docker images -f "dangling=true" -q"
# get dockerfile from image 
# Usages: dfimage <image> [-f], example: dfimage nginx
alias dfimage="docker run -v /var/run/docker.sock:/var/run/docker.sock --rm centurylink/dockerfile-from-image"
# list images and merge with tags
alias dit="docker images |awk 'NR==1{l=length(\$0)}{printf \"%-20s %-20s %-20s\t%s:%s\n\",substr(\$0,l-51,20),substr(\$0,l-31,20),substr(\$0,l-11),\$1,\$2}'"
# run jq via container. So you can run all commands in http://stedolan.github.io/jq/tutorial/ as normal, just replace jq with djq
# example: curl 'https://api.github.com/repos/stedolan/jq/commits?per_page=5' |djq '.[0] | {message: .commit.message, name: .commit.committer.name}'
alias djq='docker run --rm ryfow/jq'
# list the last container id
alias dl='docker ps -l -q'

# http://lucapette.me/a-couple-of-useful-aliases-for-docker/
docker() {
  if command -v "docker-$1" > /dev/null 2>&1; then
    subcommand=$1
    shift
    docker-$subcommand $@
  else
    /usr/local/bin/docker $@
  fi
}
