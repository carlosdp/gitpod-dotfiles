FROM gitpod/workspace-postgres
                    
USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/

RUN sudo curl https://gist.githubusercontent.com/carlosdp/e6d6a1c1de71a94e2604465720e92f0f/raw/init-dotfiles -o /.init-dotfiles
RUN sudo chmod +x /.init-dotfiles
