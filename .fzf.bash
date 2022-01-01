# Setup fzf
# ---------
if [[ ! "$PATH" == */home/alelizzt/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/alelizzt/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/alelizzt/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/alelizzt/.fzf/shell/key-bindings.bash"
