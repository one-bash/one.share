# one.share

[one.bash][] + one.share = an awesome shell.

one.share is the one.bash official repo, which provides common aliases, completions, plugins, configs, bin, sub for [one.bash][].

## Features

- Collections of shell commands, which locates in [`bin/`](./bin/).
- My best practices with shell (bash).
  - Responsive and pretty prompt. Refer to [Preview](#preview).
  - Extended keyboard bindings. See [./plugins/keymap.bash](./plugins/keymap.bash).
  - Flexible completion. Tab and Shift+Tab to make completion in circle. Compatible with [bash-completion][] (for bash 3.x) and [bash-completion2][bash-completion] (for bash 4.x). See [./plugins/completion.bash](./plugins/completion.bash)
  - Extended Bash history settings. See [./plugins/history.bash](./plugins/history.bash).
  - Extended Bash manpage. See [./plugins/manpage.bash](./plugins/manpage.bash).
  - Patch shell for macos. See [./plugins/macos.bash](./plugins/macos.bash).
  - Pretty ls command. See [./plugins/ls.bash](./plugins/ls.bash).
  - Pretty less command. See [./plugins/lesspipe.bash](./plugins/lesspipe.bash).
  - Safe rm command. See [./aliases/avoid-mistakes.bash](./aliases/avoid-mistakes.bash).
- Many third integrations
  - [z.lua][]. See [./plugins/zl.bash](./plugins/zl.bash).
  - [fzf][]. See [the configuration](https://github.com/adoyle-h/dotfiles/blob/master/bash-custom/fzf.plugin.bash) and [./plugins/fzf.bash](./plugins/fzf.bash).
  - [taskbook](https://github.com/klaussinani/taskbook).
  - [cheat](https://github.com/cheat/cheat). See [./plugins/cheat.bash](./plugins/cheat.bash)
  - My best practices with [tmux][]. See [./plugins/tmux.bash](./plugins/tmux.bash) and [./configs/tmux.conf](./configs/tmux.conf).
  - My best practices with git. See [./plugins/git.bash](./plugins/git.bash) and [./configs/gitconfig](./configs/gitconfig).
  - My cheat sheets based on [chrisallenlane/cheat](https://github.com/chrisallenlane/cheat).
  - Support [bash-preexec][]. It provides preexec and precmd functions for Bash just like Zsh. See [./plugins/preexec.bash](./plugins/preexec.bash).
  - Support vscode. See [./plugins/vscode.bash](./plugins/vscode.bash).
  - Support GNU utilities for mac. See [./plugins/gnutools-for-mac.bash](./plugins/gnutools-for-mac.bash) and [./plugins/sed-for-mac.bash](./plugins/sed-for-mac.bash).
  - Support programming language related like nvm, rust, gvm.

## Preview

<details open>
<summary>Click to expend/collapse</summary>

![preview.png](https://media.githubusercontent.com/media/adoyle-h/_imgs/master/github/dotfiles/preview.png)

**The prompt line is implemented by [a-bash-prompt][]. See [./plugins/prompt.bash](./plugins/prompt.bash).**

Responsive prompt. Press Enter to auto adjust with window width.

![responsive-prompt.png](https://media.githubusercontent.com/media/adoyle-h/_imgs/master/github/a-bash-prompt/responsive-prompt.png)

Show last command exit status

![exit-status.png](https://media.githubusercontent.com/media/adoyle-h/_imgs/master/github/a-bash-prompt/exit-status.png)

Highlight Backgound jobs:

![jobs-labels.png](https://media.githubusercontent.com/media/adoyle-h/_imgs/master/github/a-bash-prompt/jobs-labels.png)

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
- gawk: required by [ble.sh][]
- [Nerd Font](https://github.com/ryanoasis/nerd-fonts): I recommend [DejaVuSansMonoForPowerline Nerd Font][font-DejaVu].

### Optional Dependencies

These dependencies are not required for the project. It will improve the experience of terminal. Install them as your requirement.

- [Color Scheme][]: I recommend [Deep][scheme-deep].
- [ag](https://github.com/ggreer/the_silver_searcher)
- [cheat](https://github.com/cheat/cheat)
- [exa](https://github.com/ogham/exa)
- [fzf][]
- [git-prompt][]: If omitted, PS1 will not show git prompt.
- [tmux][]: An awesome terminal multiplexer!
- [trash](https://github.com/sindresorhus/trash-cli)
- [z.lua][]

### Git Submodules

Git submodules required in one.bash.

- [dotbot][]: To create symbolic links and manage them by [config](./one.links.example.yaml).
- [lobash](https://github.com/adoyle-h/lobash): A modern, safe, powerful utility/library for Bash script development.
- [a-bash-prompt][]: A Bash prompt written by pure Bash script.
- [bash-preexec][]: Add `preexec_functions`, `precmd_functions` arrays, and `precmd`, `preexec` functions for bash.

## Installation

Just invoke `one dep install` to install.

`one dep update one.share` to update codes.

## Usage

Read [one.bash documents][one.bash]

## File Structure

```
.
├── aliases/                        # Available aliases
├── bin/                            # Executables. The directory path is added to PATH by one.bash.
├── completions/                    # Available completions
├── configs/                        # dotfiles, configs
├── deps/                           # the dependencies for modules
│   ├── a-bash-prompt/              # https://github.com/adoyle-h/a-bash-prompt
│   ├── bash-preexec/               # https://github.com/rcaloras/bash-preexec
│   ├── cheatsheets-community/      # https://github.com/cheat/cheat
│   └── z.lua/                      # https://github.com/skywind3000/z.lua
├── docs/                           # The documents of this project
├── plugins/                        # Available plugins
│   ├── completions.bash            # Enable general completions and tab complete keymap
│   ├── preexec.bash                # Enable bash-preexec
│   └── prompt.bash                 # Enable a-bash-prompt
└── sub/                            # The commands for ONE_SUB
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

Any comments and suggestions are always welcome.

**Before open an issue/discussion/PR, You should search related issues/discussions/PRs first** for avoiding to create duplicated links.

- For new feature request, open a [discussion][], describe your demand concisely and clearly.
- For new feature submit, open a [PR][], describe your demand and design concisely and clearly.
- For bug report, open an [issue][], describe the bug concisely and clearly.
- For bug fix, open a [PR][], concisely and clearly describe what you fixed.
- For question and suggestion, open a [discussion][].
- For anything not mentioned above, open a [discussion][].

Do not post duplicated and useless contents like `+1`, `LOL`. React to comments with emoji instead of.

你可以使用中文反馈意见。但希望你尽可能使用英文，不要中英文混杂，而是完全的英文语句。
因为我们处于国际社区，英文更通用，方便外国人阅读理解你的意见。
(Please communicate in English as much as possible)

## Versions

See [tags][].
The versions follows the rules of [SemVer 2.0.0](http://semver.org/).

## Copyright and License

Copyright 2022 ADoyle (adoyle.h@gmail.com) Some Rights Reserved.
The project is licensed under the **Apache License Version 2.0**.

Read the [LICENSE][] file for the specific language governing permissions and limitations under the License.

Read the [NOTICE][] file distributed with this work for additional information regarding copyright ownership.


<!-- links -->

[LICENSE]: ./LICENSE
[NOTICE]: ./NOTICE
[tags]: https://github.com/one-bash/one.bash/tags
[issue]: https://github.com/one-bash/one.bash/issues
[discussion]: https://github.com/one-bash/one.bash/discussions
[PR]: https://github.com/one-bash/one.bash/pulls

<!-- links -->

[one.bash]: https://github.com/one-bash/one.bash
[dotbot]: https://github.com/anishathalye/dotbot/
[bash-it]: https://github.com/Bash-it/bash-it
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
