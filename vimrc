set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

color dracula
hi Normal guibg=NONE ctermbg=NONE

set list
set listchars=eol:$,space:·,trail:-,tab:>-

set number
set foldmethod=syntax
set foldcolumn=1
"set textwidth=80

highlight Overlength ctermbg=darkgrey ctermfg=white guibg=NONE
match OverLength /\%81v.\+/

let NERDTreeShowHidden=1

let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle
call insert(s:palette.normal.right, s:palette.normal.left[1], 0)
