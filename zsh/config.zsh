export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

# To see the key combo you want to use just do:
# cat > /dev/null
# And press it

bindkey "^K"      kill-whole-line                      # ctrl-k
bindkey "^R"      history-incremental-search-backward  # ctrl-r
bindkey "^A"      beginning-of-line                    # ctrl-a  
bindkey "^E"      end-of-line                          # ctrl-e

# Home and End keys
bindkey "^[[H"    beginning-of-line                    # Standard Home
bindkey "^[[F"    end-of-line                          # Standard End
bindkey "^[[1~"   beginning-of-line                    # Alternate Home
bindkey "^[[4~"   end-of-line                          # Alternate End
bindkey "^[OH"    beginning-of-line                    # Alternate Home (vt100/xterm)
bindkey "^[OF"    end-of-line                          # Alternate End (vt100/xterm)
bindkey "\e[H"    beginning-of-line                    # Home key
bindkey "\e[F"    end-of-line                          # End key

# Arrow keys for history search
bindkey "^[[B"      history-search-forward             # down arrow
bindkey "^[[A"      history-search-backward            # up arrow
bindkey "^[OB"      history-search-forward             # down arrow (alternate)
bindkey "^[OA"      history-search-backward            # up arrow (alternate)

bindkey "^D"      delete-char                          # ctrl-d
bindkey "^F"      forward-char                         # ctrl-f
bindkey "^B"      backward-char                        # ctrl-b
bindkey -e   # Default to standard emacs bindings, regardless of editor string
