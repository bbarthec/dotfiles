# General init file

unsetopt CORRECT            # Try to correct the spelling of commands. Note that, when the HASH_LIST_ALL option is not set or when some directories in the path are not readable, this may falsely report spelling errors the first time some commands are used.
setopt AUTO_LIST            # Automatically list choices on an ambiguous completion.
setopt AUTO_MENU            # Automatically use menu completion after the second consecutive request for completion, for example by pressing the tab key repeatedly. This option is overridden by MENU_COMPLETE.
setopt ALWAYS_TO_END        # If a completion is performed with the cursor within a word, and a full completion is inserted, the cursor is moved to the end of the word. That is, the cursor is moved to the end of the word if either a single match is inserted or menu completion is performed.
setopt PROMPT_CR            # Print a carriage return just before printing a prompt in the line editor. This is on by default as multi-line editing is only possible if the editor knows where the start of the line appears.
setopt PROMPT_SP            # Attempt to preserve a partial line (i.e. a line that did not end with a newline) that would otherwise be covered up by the command prompt due to the PROMPT_CR option.

unsetopt NOMATCH            # If a pattern for filename generation has no matches, print an error, instead of leaving it unchanged in the argument list. This also applies to file expansion of an initial ‘~’ or ‘=’.
unsetopt BEEP               # Beep on error in ZLE.
