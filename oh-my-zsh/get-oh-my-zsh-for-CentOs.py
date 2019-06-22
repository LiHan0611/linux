#! /usr/bin/python
import os
import sys

def print_green(s):
    print('\033[0;32m{}\033[0;30m'.format(s))
    
def print_red(s):
    print('\033[0;31m{}\033[0;30m'.format(s))

if not os.path.exists('/usr/bin/zsh'):
    if not os.system('yum install zsh -y'):
        print_green('zsh installed!')
    else:
        print_red('cannot install zsh!')
        sys.exit()
else:
    print_green('you already have zsh installed!')

if not os.path.exists('/usr/bin/curl'):
    if not os.system('yum install curl -y'):
        print_green('curl installed!')
    else:
        print_red('connot install curl!')
        sys.exit()
else:
    print_green('you already have curl installed!')
        
if os.system('sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'):
    print_green('oh-my-zsh installed!')
   
os.system('sh prompt_zsh')
 
