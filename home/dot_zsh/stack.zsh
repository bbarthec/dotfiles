DIRSTACKSIZE=8

# from: https://github.com/sorin-ionescu/prezto/blob/0a405494cae54e208ff550c1ba83380ed115410a/modules/directory/init.zsh
setopt PUSHD_MINUS          # Exchanges the meanings of ‘+’ and ‘-’ when used with a number to specify a directory in the stack.
setopt AUTO_CD              # Auto changes to a directory without typing cd.
setopt AUTO_PUSHD           # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt PUSHD_TO_HOME        # Push to home directory when no argument is given.
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt MULTIOS              # Write to multiple descriptors.
setopt EXTENDED_GLOB        # Use extended globbing syntax.
unsetopt CLOBBER            # Do not overwrite existing files with > and >>.
                            # Use >! and >>! to bypass.

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index
