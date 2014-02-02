set nocompatible            " get rid of Vi compatibility mode. SET FIRST!
execute pathogen#infect()
syntax enable               " enable syntax highlighting
set t_Co=256                " enable 256-color mode.
colorscheme molokai         " set colorscheme
set cul                     " highlight current line
set ruler                   " Always show info along bottom.
set encoding=utf8           " Set utf8 as standard encoding and en_US as the standard language
set ffs=unix,dos,mac        " Use Unix as the standard file type 
set expandtab               " Use spaces instead of tabs
set shiftwidth=2            " Indent/outdent by 2 spaces
set shiftround              " Always indent/outdent to the nearest tabstop
set tabstop=2               " 1 tab == 2 spaces
set listchars=tab:▸\ ,eol:¬ " Use the same symbols as TextMate for tabstops and EOLs
set number                  " show line numbers
set list
filetype plugin on          " Enable filetype plugins
filetype indent on          " filetype detection[ON] plugin[ON] indent[ON]
set omnifunc=syntaxcomplete#Complete " Enable omnicompletion (to use, hold Ctrl+X then Ctrl+O while in Insert mode.)

augroup quotable            " Enable typographic quotes in markdown and txt
autocmd!
autocmd FileType markdown call quotable#init()
autocmd FileType textile call quotable#init()
autocmd FileType python call quotable#init({ 'educate': 0 })
augroup END

" Timestamp on <F4>
:nnoremap <F4> "=strftime("%Y/%m/%d %H:%M")<CR>P
:inoremap <F4> * <C-R>=strftime("%Y/%m/%d %H:%M")<CR>

"set listchars=tab:\|\<Space> "It was a vertical line showing the Tab characters.
"set smarttab                 " Use tabs at the start of a line, spaces elsewhere
