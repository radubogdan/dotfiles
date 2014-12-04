"My.vimrc file
"First line to rule them all
set nocompatible

" Setting up Vundle
    let VundleDefault = 1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle"
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let VundleDefault = 0
    endif

" Bundles
    "Bundle Support
        filetype on
        filetype off
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()

    "Use my bundle config
        if filereadable(expand("~/.vimrc.bundles"))
        source ~/.vimrc.bundles
        endif

    "Install Vundles
    if VundleDefault == 0
        echo "Installing Bundles"
        echo ""
        :BundleInstall
    endif
"General
    filetype plugin indent on                          " Automatically detect file types.
    syntax enable                                      " Highlight
    set mouse=a                                        " Enable mouse usage
    set mousehide
    scriptencoding utf-8
    set history=1000                                   " Store history
    set spell                                          " Spell checking
    cmap w!! w !sudo tee % >/dev/null
    "autocmd BufWritePre * :%s/\s\+$//e                 " Delete unwanted spaces

"User Interface and Formatting
    set t_Co=256
    set background=dark
    color molokai
    let g:solarized_underline = 0
    highlight clear SignColumn

    set laststatus=2                                   " Show powerline

    set ruler                                          " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
    set showcmd                                        " Show partial commands in status line
    set backspace=indent,eol,start                     " Backspace work
    set linespace=0                                    " No spaces between rows
    set nu                                             " Line numbers ON
    set showmatch                                      " Show matching brackets or parenthesis
    set wildmenu                                       " Show list instead of just completing
    set wildmode=list:longest                          " Command <Tab> completion, list matches, then longest common part, then all.
    set scrolljump=9                                   " Scroll when cursur leaves screen
    set scrolloff=3                                    " Minimum lines above and below cursur
    set foldenable                                     " Auto fold code
    set nowrap                                         " Wrap long lines
    set autoindent                                     " Auto indent at same level
    set shiftwidth=4                                   " Use indents of 4 spaces
    set tabstop=4                                      " An indentation every four columns
    set softtabstop=4                                  " Backspace delete indent
    set incsearch                                      " Find as you type search
    set hlsearch                                       " Highlight search terms
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:.     " Highlight problematic whitespace
    set pastetoggle=<F12>                              " pastetoggle (sane indentation on pastes)

    autocmd FileType ruby,haml,javascript,eruby,yaml,html,sass,scss,cucumber,jade,styl set ai sw=2 sts=2 et
    autocmd FileType python set sw=4 sts=4 et

"Map
    "Grep
        nmap ,R :RecurGrep
        nmap ,r :RecurGrepFast
        nmap ,wR :RecurGrep <cword><CR>
        nmap ,wr :RecurGrepFast <cword><CR>

        command! -nargs=1 RecurGrep lvimgrep /<args>/gj ./**/*.* | lopen | set nowrap
        command! -nargs=1 RecurGrepFast silent exec 'lgrep! <q-args> ./**/*.*' | lopen

    " Leader
    let mapleader = "\<Space>"

    " Copy & Paste
    vmap <Leader>y "+y
    vmap <Leader>d "+d
    nmap <Leader>p "+p
    nmap <Leader>P "+P
    vmap <Leader>p "+p
    vmap <Leader>P "+P

    " Visual Mode
    nmap <Leader><Leader> V

    "Others
        nmap <leader>l :set list!<CR>
        nnoremap <F3> :NumbersToggle<CR>
        map <F4> <C-R>=<CR><LF>

"Plugins
    "NERDTree
        map <F2> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>

        let g:NERDTreeWinPos = "right"
        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0

    "GitGutter
        let g:gitgutter_eager = 0
        let g:gitgutter_realtime = 0

    "Tagbar
        map <F4> :TagbarToggle<CR>
        let g:tagbar_autofocus = 1

    "Vim-airline
        let g:airline_powerline_fonts = 0
        let g:airline_theme = 'wombat'
        let g:airline#extensions#whitespace#enabled = 0

    "Indent guide lines
        autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#212121 ctermbg=3
        autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#404040 ctermbg=4
        let g:indent_guides_start_level = 2
        let g:indent_guides_guide_size = 1
        set ts=4 sw=4 et
        let g:indent_guides_auto_colors = 0

    "Syntastic
        let g:syntastic_check_on_open=1

    "Neocomplcache
        let g:neocomplcache_enable_at_startup = 1
        let g:neocomplcache_enable_ignore_case = 1
        let g:neocomplcache_enable_smart_case = 1
        let g:neocomplcache_enable_auto_select = 1
        let g:neocomplcache_enable_fuzzy_completion = 1
        let g:neocomplcache_enable_camel_case_completion = 1
        let g:neocomplcache_enable_underbar_completion = 1
        let g:neocomplcache_fuzzy_completion_start_length = 1
        let g:neocomplcache_auto_completion_start_length = 1
        let g:neocomplcache_auto_completion_start_length = 1
        let g:neocomplcache_manual_completion_start_length = 1
        let g:neocomplcache_min_keyword_length = 1
        let g:neocomplcache_min_syntax_length = 1
        let g:neocomplcache_same_filetype_lists = {}
        let g:neocomplcache_same_filetype_lists._ = '_'"

    "Autoclose
        let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

    "Expand
        vmap v <Plug>(expand_region_expand)
        vmap <C-v> <Plug>(expand_region_shrink)

    "CtrlP faster in git
        let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
        let g:ctrlp_use_caching = 0
