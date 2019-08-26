# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mcipri/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/mcipri/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mcipri/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/mcipri/.fzf/shell/key-bindings.zsh"
