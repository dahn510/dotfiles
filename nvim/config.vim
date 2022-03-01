" ===============================================
" Neovim configurations
"

" Set mapleader for custom keybindings
let mapleader=";"

" Note: Indentation purely with hard tabs.
set shiftwidth=3
set tabstop=4

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
" I'm using floaterm to quickly test something.
let g:floaterm_wintype = 'float'
let g:floaterm_position = 'center'
let g:foaterm_autoclose = 2

" Custom keybindings

" Launch new terminal
nnoremap <silent> <F7> :FloatermNew<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <F8> :FloatermPrev<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <F9> :FloatermNext<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <F10> :FloatermKill<CR>
tnoremap <silent> <F10> <C-\><C-n>:FloatermKill<CR>
nnoremap <silent> <F11> :FloatermToggle<CR>
tnoremap <silent> <F11> <C-\><C-n>:FloatermToggle<CR>
" ===============================================
