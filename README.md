# alias-for-docker
Build the useful aliases from docker commands

# Usage for Bash
    $ curl -fsSL https://raw.githubusercontent.com/SydOps/alias-for-docker/master/profile >> ~/.bashrc && source ~/.bashrc

# Usage for ksh
    $ curl -fsSL https://raw.githubusercontent.com/SydOps/alias-for-docker/master/profile >> ~/.profile && source ~/.profile

# Usage for zsh
    $ curl -fsSL https://raw.githubusercontent.com/SydOps/alias-for-docker/master/profile >> ~/.zshrc && source ~/.zshrc

# If you'd like to use your own docker command, which are in bin folder, you need add it in path

    git clone git@github.com:SydOps/alias-for-docker.git ~/alias
    # add the path to your shell profile
    export PATH=$PATH:~/alias/bin
