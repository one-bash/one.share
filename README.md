# one.share

[one.bash][] + one.share = an awesome shell.

The one.share is the one.bash official repo, which provides common aliases/completions/plugins/configs/bin/sub for [one.bash][].

## Features

- Collections of shell commands, which locates in [`bin/`](./bin/).
- My best practices with shell (bash).
  - Responsive and pretty prompt. Refer to [Preview](#preview).
  - Extended keyboard bindings. See [./plugin/keymap.bash](./plugin/keymap.bash).
  - Flexible completion. Tab and Shift+Tab to make completion in circle. Compatible with [bash-completion][] (for bash 3.x) and [bash-completion2][bash-completion] (for bash 4.x). See [./plugin/completion.bash](./plugin/completion.bash)
  - Extended Bash history settings. See [./plugin/history.bash](./plugin/history.bash).
  - Extended Bash manpage. See [./plugin/manpage.bash](./plugin/manpage.bash).
  - Pretty ls command. See [./plugin/ls.bash](./plugin/ls.bash).
  - Pretty less command. See [./plugin/lesspipe.bash](./plugin/lesspipe.bash).
  - Safe rm command. See [./alias/avoid-mistakes.bash](./alias/avoid-mistakes.bash).
- Many third integrations
  - [z.lua][]. See [./plugin/zl.opt.bash](./plugin/zl.opt.bash).
  - [fzf][]. See [the configuration](https://github.com/adoyle-h/dotfiles/blob/master/bash-custom/fzf.plugin.bash) and [./plugin/fzf.bash](./plugin/fzf.bash) nad [./plugin/fzf-tab.opt.bash](./plugin/fzf-tab.opt.bash).
  - [taskbook](https://github.com/klaussinani/taskbook). See [./configs/taskbook.json](./configs/taskbook.json)
  - [taskfile]. See [./completion/taskfile.opt.bash](./completion/taskfile.opt.bash)
  - [cheat](https://github.com/cheat/cheat). See [./completion/cheat.opt.bash](./completion/cheat.opt.bash)
  - My best practices with [tmux][]. See [./configs/tmux](./configs/tmux).
  - Support [bash-preexec][]. It provides preexec and precmd functions for Bash just like Zsh. See [./plugin/preexec.opt.bash](./plugin/preexec.opt.bash).
  - Support GNU utilities for mac. See [./plugin/gnutools-for-mac.bash](./plugin/gnutools-for-mac.bash).
  - Support programming language related like nvm, rust, gvm.

## Preview

<details open>
<summary>Click to expend/collapse</summary>

![preview.png](https://media.githubusercontent.com/media/adoyle-h/_imgs/master/github/dotfiles/preview.png)

Use sub commands:

![sub-commands.jpeg](https://media.githubusercontent.com/media/adoyle-h/_imgs/master/github/dotfiles/sub-commands.jpeg)

Bubble Style and Block Style:

![bubble-and-block-styles.png](https://media.githubusercontent.com/media/adoyle-h/_imgs/master/github/a-bash-prompt/bubble-and-block-styles.png)

</details>

## Environments

- ✅ iTerm2 Build 3.0.14 (Terminal.app compatible)
- ✅ GNU Bash 4.4 or 5.0+
- ✅ Tmux 3.3+ (Not necessary. Tmux compatible)
- ✅ MacOS Intel Arch
- ✅ MacOS ARM Arch
- ✅ Linux/Unix system
- 🚫 Windows system
- 🚫 Zsh. This project is just for Bash players. Zsh players should use [Oh My Zsh][].

## Dependencies

### Required Dependencies

- [git][]
- [python][]: Make sure it available before installation. Python 2 and 3 are both supported.
- perl 5+
- [Nerd Font](https://github.com/ryanoasis/nerd-fonts): I recommend [DejaVuSansMonoForPowerline Nerd Font][font-DejaVu].

## Versions

See [tags][]. The versions follows the rules of [SemVer 2.0.0](http://semver.org/).

## Installation

`one repo add https://github.com/one-bash/one.share`

## Update

`one repo update one.share` to update codes.

## Usage

```sh
one c enable aliases.completion
one p enable ls grep
one a enable avoid-mistakes cd
```

Read [one.bash documents][one.bash] for usage.

## File Structure

```
.
├── alias/                        # Available aliases
├── bin/                          # Executables. The directory path is added to PATH by one.bash.
├── completion/                   # Available completions
├── config/                       # dotfiles, configs
├── docs/                         # The documents of this project
├── plugin/                       # Available plugins
└── sub/                          # The commands for ONE_SUB
```

## Notice

### Slow Loading

Some modules are slow. Set `ONE_DEBUG=true` in ONE_CONF file, you will see the logs showing slow loading time.

- With `ONE_NO_MODS=true`, `[one.bash|00:00:00|entry.bash] loaded success (Total 112ms)`
- With `ONE_NO_MODS=false` and `one plugin enable fuck nvm npm`,  `[one.bash|00:00:00|entry.bash] loaded success (Total 2200ms)`

### UI

If using tmux, `$TERM` should be `xterm-256color` or `screen-256color` for best appearance.

## Usage

### prompt

Use [`one_prompt_append`](https://github.com/one-bash/one.bash/blob/develop/docs/one-functions.md#one_prompt_append) add function to PROMPT_COMMAND.

### plugin:completion

When `one plugin enable completion`,

The completion files loaded in order:

- bash_completion will load files in order:
  - ${BASH_COMPLETION_COMPAT_DIR:-/usr/local/etc/bash_completion.d}
  - ${BASH_COMPLETION_USER_FILE:-~/.bash_completion}
- this plugin will load
  - $HOME/.bash_completions

## Suggestion, Bug Reporting, Contributing

**Before opening new Issue/Discussion/PR and posting any comments**, please read [Contributing Guidelines](https://gcg.adoyle.me/CONTRIBUTING).

## Copyright and License

Copyright 2022-2024 ADoyle (adoyle.h@gmail.com). Some Rights Reserved.
The project is licensed under the **Apache License Version 2.0**.

Read the [LICENSE][] file for the specific language governing permissions and limitations under the License.

Read the [NOTICE][] file distributed with this work for additional information regarding copyright ownership.


<!-- links -->

[LICENSE]: ./LICENSE
[NOTICE]: ./NOTICE
[tags]: https://github.com/one-bash/one.share/tags

<!-- links -->

[one.bash]: https://github.com/one-bash/one.bash
[dotbot]: https://github.com/anishathalye/dotbot/
[tmux]: https://github.com/tmux/tmux
[fzf]: https://github.com/junegunn/fzf
[font-DejaVu]: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/DejaVuSansMono
[Color Scheme]: https://github.com/mbadolato/iTerm2-Color-Schemes
[scheme-deep]: https://github.com/mbadolato/iTerm2-Color-Schemes#deep
[gnu-sed]: https://www.gnu.org/software/sed/
[git]: https://github.com/git/git
[git-prompt]: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
[bash-completion]: https://github.com/scop/bash-completion
[Oh My Zsh]: https://github.com/robbyrussell/oh-my-zsh
[bash-preexec]: https://github.com/rcaloras/bash-preexec
[a-bash-prompt]: https://github.com/adoyle-h/a-bash-prompt
[python]: https://www.python.org/
[z.lua]: https://github.com/skywind3000/z.lua
[ble.sh]: https://github.com/akinomyoga/ble.sh
[Fig]: https://github.com/withfig/fig
