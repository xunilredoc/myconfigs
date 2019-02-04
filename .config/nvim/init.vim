" config: voidified (josh.marcum@unixvz.com) 
" vim-plug: auto-installation
if empty(glob('~/.config/nvim/autoload/plug.vim')) 
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
" deoplete: start
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" deoplete: end 

" vim-airliner : settings 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"		> allow powerline fonts
let g:airline_powerline_fonts = 1
" vim-airliner : end settings

" color schemes
Plug 'fatih/molokai'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'semibran/vim-colors-synthetic'
Plug 'fcpg/vim-orbital'
Plug 'wesgibbs/vim-irblack'
Plug 'neutaaaaan/monosvkem'

" file management
Plug 'scrooloose/nerdtree'

" git plugins
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


" text manipulation
" 	> general editing
Plug 'editorconfig/editorconfig-vim'
"	>> Multiiple Cursors : Ctrl+N plus:
"	c) Change Text		Insert: before(I)/after(A) 
Plug 'terryma/vim-multiple-cursors'
"	> linting & completion
Plug 'w0rp/ale'
"	> short-hand type plugin for HTML
Plug 'mattn/emmet-vim'
"	> comment manipulation
Plug 'scrooloose/nerdcommenter'
"	> syntax: tag completion
Plug 'tpope/vim-surround'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme Monosvkem
