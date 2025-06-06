# ---------------------------------------------------------------------------- #
#                                   config.nu                                  #
# ---------------------------------------------------------------------------- #

# See https://www.nushell.sh/book/configuration.html

# ---------------------------------- modules --------------------------------- #

use modules/applications.nu *
use modules/banner.nu *
use modules/cursor.nu *
use modules/git.nu *
use modules/monitor.nu *
use modules/print-utils.nu *
use modules/round.nu *
use modules/status.nu *
use modules/system.nu *
use modules/tools.nu *

source bios/bfm.nu
source bios/siofw.nu
source completions/winget.nu

# ---------------------------- environment config ---------------------------- #

$env.EDITOR = 'code'
$env.PROMPT_COMMAND_RIGHT = { || date now | format date "%a-%d %r" }
# $env.PROMPT_COMMAND_RIGHT = { || } # no right prompt

$env.config.buffer_editor = 'code'
$env.config.history.isolation = true
$env.config.show_banner = false
$env.config.float_precision = 3
$env.config.hooks.env_change = { HOMEPATH: [{|| banner}] }

# ---------------------------------------------------------------------------- #

def "config nu" [] {
    code ~/Projects/nushell-scripts/config.nu
}

alias scripts = cd ~/Projects/nushell-scripts

alias ll = ls -l
alias r = nu ./run.nu
alias c = clear

# if $nu.is-interactive {
#     banner
# }
