set nocompatible

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
:color torte
:set nu!
:set ai!
"    general setting
set nocompatible
"    general preferences of mine
set visualbell t_vb=

noremap <silent> <F11> :cal VimCommanderToggle()<CR>          
"    C program formatting
set shiftwidth=4
set tabstop=4
set et
set sw=4
set sts=4
set smarttab
set smartindent
"  set cinoptions=>1e1n1:1=2l1g4h2t0+5(0m1)50
"    interaction with the C compiler
set shellslash
set makeprg=make
set shellpipe=>%s\ 2>&1
set diffexpr=MyDiff()
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
function MyDiff()
  
  let opt = ''
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  silent execute 'diff -a ' . opt . '"' . v:fname_in . '" "' . v:fname_new . '" > "' . v:fname_out . '"'
endfunction

" Add the cygwin dir to the $PATH so that cygwin dlls can be found.
let $PATH = $PATH . ";/bin"
let g:TagsParserTagsProgram = "/usr/bin/ctags"

"let g:TagsParserDebugTime = 1
"let g:TagsParserDebugFlag = 4

" Exclude all Lib and Withdrawn directories
let g:TagsParserDirExcludePattern = '+\|.\+/\%(\clib\)\|.\+/\%(\cwithdrawn\)'
" Exclude all ., elf, sr, sr1, map and gnat.adc files
let g:TagsParserFileExcludePattern = '+\|^\..*$\|^.*\.\%(\celf\)$\|^.*\.\%(\csr\)$\|^.*\.\%(\csr1\)$\|^.*\.\%(\cmap\)$\|^\%(\cgnat\.adc\)$'

let g:TagsParserLastPositionJump = 1
let g:TagsParserCurrentFileCWD = 1
let g:TagsParserFoldColumnDisabled = 1
let g:TagsParserWindowSize = 30
let g:TagsParserAutoOpenClose = 1
let g:TagsParserSingleClick = 1
let g:TagsParserHighlightCurrentTag = 1
let g:TagsParserSortType = "line"

let g:TagsParserCtagsOptions_ada = "--ada-kinds=+TUVEay"
let g:TagsParserCtagsOptions_c = "--c-kinds=+lpx"
let g:TagsParserCtagsOptions_cpp = "--c-kinds=+lpx"

"enable the Vim 7.0 options
if v:version >= 700
  let g:TagsParserCtrlTabUsage = 'tabs'
  let g:TagsParserCtagsOptionsTypeList = [ "c" ]

  "Configure the projects
  let g:TagsParserProjectConfig = {}
else
  "If this is not vim 7.0 then set C-Tab to manage buffers.
  let g:TagsParserCtrlTabUsage = 'buffers'
endif

"force the prototypes to be folded for c/cpp files
let g:TagsParserFoldHeading_c_p = 1
let g:TagsParserFoldHeading_cpp_p = 1

"force non-informative specifications to be folded for ada files
let g:TagsParserFoldHeading_ada_R = 1
let g:TagsParserFoldHeading_ada_E = 1
let g:TagsParserFoldHeading_ada_T = 1
let g:TagsParserFoldHeading_ada_U = 1
let g:TagsParserFoldHeading_ada_V = 1




" map omnicompletion to ctrl-space
":imap <C-space-tab> <C-x><C-o>


map <F3> <Esc>:Tlist<cr>

au BufRead,BufNewFile *.go set filetype=go

set nowrap

set backupdir=~/.vim/backups/
set directory=~/.vim/backups/

augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

