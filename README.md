# view markdown (html) with Google Chrome in vim on Mac
---
## Usage
Input '.v' in vim when you are editing a markdown (or html) file, to refresh (or open) a Google Chrome tag of this file on Mac.

---
## Install
Put refreshChromeTab.sh in your $PATH/ .  
Install a markdown extension for Google Chrome.  
Add the following line into your .vimrc
```
autocmd BufNewFile,BufRead *.md nnoremap <buffer> .v :exec '!refreshChromeTab.sh 'shellescape(expand('%:p'), 1)<CR>
```
