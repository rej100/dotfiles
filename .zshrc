# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

# --- CUSTOM ALIASES ---
alias fixbrave='rm -rf ~/.config/BraveSoftware/Brave-Browser/Singleton*'
# ----------------------

# ---------- auto-attach / auto-create tmux ----------
# Only run if we're *not* already inside a tmux pane.
if [[ -z $TMUX ]]; then
  # Attach to the most-recent session if one exists,
  # otherwise create (or attach to) a session called "main".
  if tmux ls &>/dev/null; then
    exec tmux attach               # or: exec tmux attach -t main
  else
    exec tmux new -s main
  fi
fi
# ----------------------------------------------------