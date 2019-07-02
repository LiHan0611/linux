apt update
if [ ! -n zsh ];then
	apt install zsh -y
else
  printf "zsh is alread installed! \n"
fi

if [ ! -n curl ];then
	apt install curl -y
else
  printf "curl is already installed! \n"
fi

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "
# custom prompt
PROMPT='%F{green}%n:${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
" >> ~/.zshrc
PROMPT='%F{green}%n${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
