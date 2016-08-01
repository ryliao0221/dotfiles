#################
# CORE SETTINGS #
#################

#
# Zim settings
#

# Select what modules you would like enabled.
# The second line of modules may depend on options set by modules in the first line.
# These dependencies are noted on the respective module's README.md.
zmodules=(\
          directory \
          environment \
          git \
          history \
          input \
          utility \
          custom \
          syntax-highlighting \
          history-substring-search \
          prompt \
          completion)

###################
# MODULE SETTINGS #
###################

#
# Prompt
#

# Set your desired prompt here
zprompt_theme='mingit' # custom prompt theme

#
# Completion
#

# set an optional host-specific filename for the completion cache file
# if none is provided, the default '.zcompdump' is used.
zcompdump_file=".zcompdump-${HOST}-${ZSH_VERSION}"

#
# Utility
#

# Uncomment to enable command correction prompts; 'setopt CORRECT'
# See: http://zsh.sourceforge.net/Doc/Release/Options.html#Input_002fOutput
zcorrection='true'

#
# Input
#

# Uncomment to enable double-dot expansion.
# This appends '../' to your input for each '.' you type after an initial '..'
zdouble_dot_expand='true'

#
# Syntax-Highlighting
#

# This determines what highlighters will be used with the syntax-highlighting module.
# Documentation of the highlighters can be found here:
#   https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
# For (u)rxvt and gnome-terminal users,
# removing the 'cursor' highlighter will fix the disappearing cursor problem
zhighlighters=(main brackets cursor)

#
# SSH
#

# Load these ssh identities with the ssh module
zssh_ids=(id_rsa)


#
# Pacman
#

# Set (optional) pacman front-end.
zpacman_frontend='helper_here'

# Load any helper scripts as defined here
zpacman_helper=(aur)

