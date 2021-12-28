" Plugins will be downloaded under the specified directory.
call plug#begin('~/.nvim/plugins')

" Declare the list of plugins.
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Startify - Fancy start screen for vim
Plug 'mhinz/vim-startify'

" Rainbow brackets
Plug 'luochen1990/rainbow'

" File tree
Plug 'preservim/nerdtree'

" Verilog HDA plugin
Plug 'vhda/verilog_systemverilog.vim'

" Autoclose parenthesis and etc
Plug 'Townk/vim-autoclose'

" Git integration
Plug 'tpope/vim-fugitive'

" Airline for beautiful status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Floating terminals
Plug 'voldikss/vim-floaterm'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Syntax highlighting for kitty.conf
Plug 'fladson/vim-kitty'

" CoC Extentions
	" Clang looks for build flags for it to understand the source code.
	" It looks at compile_commands.json to get the information.
	" To generate this, use bear command: make clean; bear -- make
	" for projects using make
	" Others refer to Project setup section at
	" clangd.llvm.org/installation.html#project-setup
let g:coc_global_extensions =
			\[
			\ 'coc-clangd',
			\ 'coc-cmake',
			\ 'coc-htmldjango',
			\ 'coc-json',
			\ 'coc-markdown-preview-enhanced',
			\ 'coc-pyright',
			\ 'coc-rls',
			\ 'coc-rust-analyzer',
			\ 'coc-sh',
			\ 'coc-markdownlint'
			\]

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Import custom configurations and plugin configurations
if filereadable(expand("~/.config/nvim/myconfig.vim"))
	source ~/.config/nvim/myconfig.vim
endif
