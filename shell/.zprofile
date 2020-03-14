echo "zprofile"

# 以下zplug---------------------------------------------
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

# Additional completion definitions for Zsh
zplug "zsh-users/zsh-completions"
# compinit 以降に読み込むようにロードの優先度を変更する
zplug "zsh-users/zsh-syntax-highlighting", defer:2
# 入力補完
zplug "zsh-users/zsh-autosuggestions", defer:2

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# バージョンチェックを行う ターミナルの起動が遅くなっているので一旦コメントアウト
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
