" ===============================================
" Neovim configurations

" Note: Indentation purely with hard tabs.
set shiftwidth=3
set tabstop=3

" Note: Set color scheme to molokai
colorscheme molokai

" Enable line number
set number

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" ===============================================

" ===============================================
" Plugin configurations

" github.com/luochen1990/rainbow: rainbow brackets
" Can be set to 0 and toggle later via :RainbowToggle
let g:rainbow_active = 1

" https://github.com/mhinz/vim-startify: Fancy start screen
"

" Autoclose
" Fix ESC behavior bug
let g:AutoClosePumvisible = {"ENTER": "\<C-y>", "ESC": "\<ESC>"}

" CoC

" Set diagnostic message 
set updatetime=300

" Always show signcolumn
set signcolumn=yes

" Airline
" Enable smarter tabline
let g:airline#extensions#tabline#enabled=1
" Theme
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1


" Floating terminals
let g:floaterm_wintype = 'float'

" ===============================================
