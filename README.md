# view markdown (html) with Chrome in vim on Mac
Put refreshChromeTab.sh in your $PATH/ .
Install a markdown extension for Google Chrome.
Add the following line in your .vimrc
```
autocmd BufNewFile,BufRead *.md nnoremap <buffer> .v :exec '!refreshChromeTab.sh 'shellescape(expand('%:p'), 1)<CR>
```
