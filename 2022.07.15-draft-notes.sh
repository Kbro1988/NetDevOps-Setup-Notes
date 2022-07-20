
# MAC ENV SETUP


# INSTALL XCODE VIA APP STORE


# GET INTO CLI ! YOU CAN USE SECURE CRT (LOCAL HOST)  :))




#install brew
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ke782760/.profile
 eval "$(/opt/homebrew/bin/brew shellenv)"
 brew update
 brew install openssl readline sqlite3 xz zlib tcl-tk
 #verify
 brew list
!!

# IF MAC w/ M1 chip
 # https://stackoverflow.com/questions/64963370/error-cannot-install-in-homebrew-on-arm-processor-in-intel-default-prefix-usr
 #For what it's worth, before installing Homebrew you will need to install Rosetta2 emulator for the new ARM silicon (M1 chip). I just installed Rosetta2 via terminal using:
 /usr/sbin/softwareupdate --install-rosetta --agree-to-license
 !
 #This will install rosetta2 with no extra button clicks.
 !
 #After installing Rosetta2 above you can then use the Homebrew cmd and install Homebrew for ARM M1 chip:  
 arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
 !
 #Once Homebrew for M1 ARM is installed use this Homebrew command to install packages: 
 arch -x86_64 brew install <package>


# (OPTIONAL) install tldr man for commands:
brew install tldr




#Check for zshell or bash
 echo $SHELL
 env
 !



 #if running bash add this to profile
 echo 'export LC_CTYPE="en_US.UTF-8"' >> ~/.profile
 #comit
 source .bashrc




# Install and Set Up PythonEnv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
 
 #Verify Install
 cd ~
 echo ~
 ls -la
 !
 #Check for zshell or bash
 echo $SHELL
 env
 !
 #create bash shell
 echo 'export LANG="en_US.UTF-8"' >> ~/.bashrc
 echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
 echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
 echo 'eval "$(pyenv init -)"' >> ~/.bashrc
 #verify
 cat .bashrc
 # ^ commands in here will always run when you enter bash
 !
 # commit
 source .bashrc
 !
 #check ver
 pyenv --version
 !
 pyenv global 3.9.4
!!


#install python with pyenv (https://github.com/pyenv/pyenv) (https://github.com/pyenv/pyenv/wiki_)
#check what is avil:
 pyenv install --list
 !
 #install 3.9.4
 pyenv install 3.9.4
 !
 #see what version can be run
 pyenv versions
 !
 #set it as global
 pyenv global 3.9.4
 !
 #verify global instance
 python -V



#install Git
brew install git

