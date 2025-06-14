# ---------------------------------------------------------------------------- #
#                                   config.nu                                  #
# ---------------------------------------------------------------------------- #

# See https://www.nushell.sh/book/configuration.html

# ---------------------------------- modules --------------------------------- #

use modules/ansi.nu *
use modules/applications.nu *
use modules/banner.nu *
use modules/container.nu *
use modules/core.nu *
use modules/debug.nu *
use modules/git.nu *
use modules/list-commands.nu *
use modules/monitor.nu *
use modules/print-utils.nu *
use modules/rgb.nu *
use modules/round.nu *
use modules/status.nu *
use modules/system.nu *
use modules/tools.nu *
use modules/splash.nu *
use modules/version.nu *

use bios/bfm.nu *
use bios/siofw.nu *

use completions/cargo-completions.nu *
use completions/git-completions.nu *
use completions/rg-completions.nu *
use completions/rustup-completions.nu *
use completions/vscode-completions.nu *
use completions/winget-completions.nu *

# ---------------------------- environment config ---------------------------- #

$env.EDITOR = 'code'
$env.PROMPT_COMMAND_RIGHT = { || date now | format date "%a-%d %r" }
# $env.PROMPT_COMMAND_RIGHT = { || } # no right prompt
$env.PROMPT_INDICATOR_VI_NORMAL = '> '
$env.PROMPT_INDICATOR_VI_INSERT = '> '

$env.config.buffer_editor = 'nvim'
$env.config.edit_mode = 'vi'
$env.config.history.isolation = true
$env.config.show_banner = false
$env.config.float_precision = 3
$env.config.hooks.env_change = { HOMEPATH: [{|| print (banner stack | container print)}] }
$env.config.cursor_shape.vi_insert = "blink_line"
$env.config.cursor_shape.vi_normal = "blink_block"

# ---------------------------------------------------------------------------- #

# def `config alacritty` [] {
#     cd ([$env.APPDATA 'alacritty'] | path join)
#     code alacritty.toml
# }

alias scripts = cd ~/Projects/nushell-scripts

alias r = nu ./run.nu
alias c = clear

# if $nu.is-interactive {
#     banner
# }
