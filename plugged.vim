 call plug#begin()
 Plug 'cespare/vim-toml'
 Plug 'morhetz/gruvbox'
 Plug 'lifepillar/vim-gruvbox8'
 Plug 'liuchengxu/vista.vim'
 Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary'}
 Plug 'vim-scripts/indentpython.vim'
 Plug 'lervag/vimtex', {'for': 'tex'}
 Plug 'chaoren/vim-wordmotion'
 Plug 'junegunn/goyo.vim'
 Plug 'tpope/vim-fugitive'
 Plug 'mhinz/vim-signify'
 Plug 'tpope/vim-repeat'
 Plug 'tpope/vim-surround'
 Plug 'tmhedberg/SimpylFold'
 Plug 'ap/vim-css-color'
 Plug 'reedes/vim-pencil'
 Plug 'reedes/vim-wordy'
 Plug 'ajmwagar/vim-deus'
 Plug 'dbmrq/vim-ditto'
 Plug 'chrisbra/csv.vim'
 Plug 'jupyter-vim/jupyter-vim'
 if has('nvim')
   Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
 else
 endif
 Plug 'Shougo/defx.nvim'
 Plug 'roxma/nvim-yarp'
 Plug 'roxma/vim-hug-neovim-rpc'
 Plug 'enricobacis/vim-airline-clock'
 Plug 'honza/vim-snippets'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'majutsushi/tagbar' 
 Plug 'Yggdroot/indentLine'
 Plug 'kristijanhusak/defx-icons'
 Plug 'ryanoasis/vim-devicons'
 Plug 'scrooloose/nerdcommenter'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'jiangmiao/auto-pairs'
 Plug 'gabrielelana/vim-markdown'
 Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
 Plug 'luochen1990/rainbow'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'sirver/ultisnips'
 Plug 'dense-analysis/ale'
 Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
 Plug 'godlygeek/tabular'
 Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'} " for VimPlug
 Plug 'ncm2/float-preview.nvim'
 Plug 'dag/vim-fish'
 Plug 'sansyrox/vim-python-virtualenv'
 Plug 'pedrohdz/vim-yaml-folds'
 Plug 'jalvesaq/zotcite'
 Plug 'mityu/vim-applescript'
 if has('nvim')
   Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
 else
   Plug 'gelguy/wilder.nvim'
 endif
 Plug 'jackguo380/vim-lsp-cxx-highlight'
 Plug 'voldikss/vim-floaterm'
 call plug#end()
