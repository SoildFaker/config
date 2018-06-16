"set nocompatible  "It should be first line

" vim-plug {
    call plug#begin('~/.vim/plugged')

    " colorscheme
    Plug 'morhetz/gruvbox'

    " status line
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " completion and syntax check
    Plug 'Valloric/YouCompleteMe'
    Plug 'neomake/neomake'

    " function parameter completion
    Plug 'Shougo/echodoc.vim'

    " function list / search
    Plug 'Yggdroot/LeaderF'

    Plug 'scrooloose/nerdtree'
    Plug 'tomtom/tlib_vim'
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'easymotion/vim-easymotion'
    Plug 'godlygeek/tabular'
    Plug 'SirVer/ultisnips'
    Plug 'mbbill/undotree'
    Plug 'honza/vim-snippets'
    Plug 'tpope/vim-surround'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'scrooloose/nerdcommenter'

    Plug 'Konfekt/FastFold'
    Plug 'vim-scripts/fcitx.vim'
    Plug 'davidhalter/jedi-vim'
    Plug 'Shougo/vimproc'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-latex/vim-latex'

    " Initialize plugin system
    call plug#end()
" }

" General {
    syntax enable               "Syntax highlighting
    set background=dark         "Assume a dark background
    colorscheme gruvbox         "Load a colorscheme

    set mouse=a                 "Automatically enable mouse usage
    set mousehide               "Hide mouse cursor while typing
    scriptencoding utf-8
    
    set cc=80                   "show a refence line
    set so=999                  " let the cursor always at middle screen
    "set autochdir              "Automatically change the directory
    "autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h |endif
    "Always switch to the current file directory

    "set autowrite               " Automatically write a file when leaving a modified buffer
    set shortmess+=filmnrxoOtT   " Abbrev. of messages (avoids 'hit enter')
    set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
    set virtualedit=onemore      " Allow for cursor beyond last character
    set history=1000             " Store a ton of history (default is 20)
    "set spell                   " Spell checking on
    set hidden                   " Allow buffer switching without saving
    set iskeyword-=.             " '.' is an end of word designator
    set iskeyword-=#             " '#' is an end of word designator
    set iskeyword-=-             " '-' is an end of word designator  set encoding=utf-8  
    set winaltkeys=no            " alt key
    set fillchars+=vert:\|       " no split symbol
  " }

" Lang & Encoding {
    set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
    set encoding=utf-8
    set langmenu=zh_CN
    let $LANG = 'en_US.UTF-8'
    "language messages zh_CN.UTF-8
" }

" Vim UI {
    set laststatus=2
    set nu                      "Line numbers on
    set cursorline              "Highlight current line
    set cursorcolumn
    set conceallevel=0
    "set relativenumber
    set tabpagemax=15           "Only show 15 tabs
    set showmatch               "Show matching brackets/parenthesis
    set noshowmode
" }

" Formating {
    set wrap                    "wrap long lines
    set softtabstop=4           "Let backspace delete indent
    set tabstop=4               "An indentation every four columns
    set shiftwidth=4            "Use indents of 4 spaces
    set expandtab               "Tabs are spaces, not tabs
    set autoindent              "Indent at the same level of the previous line
    set smarttab
    set smartindent
    set nojoinspaces            "Prevents inserting two spaces after punctuation on a join
    set splitright              " Puts new vsplit windows to the right of the current
    set splitbelow              " Puts new split windows to the bottom of the current
    "set cindent
    "set foldmethod=syntax       "Automatically fold
    "Close swap files
    set nobackup
    set nowb
    set noswapfile
    set t_Co=256

    if has("gui_running")
        set guioptions-=T
        " Hide scroll bar
        set guioptions-=l
        set guioptions-=L
        set guioptions-=r

        set guitablabel=%M\ %t
    endif
" }

" Key Mappings & Settings{
    let mapleader=","
    "Select all
    "map <c-a> ggVG
    nnoremap 0 g0
    vnoremap 0 g0
    nnoremap ^ g^
    vnoremap ^ g^
    nnoremap $ g$
    vnoremap $ g$
    nnoremap j gj
    vnoremap j gj
    nnoremap k gk
    vnoremap k gk
    "Ctrl+s to save
    map <c-s> :w<CR>

    " 移动分割窗口
    nmap <C-j> <C-W>j
    nmap <C-k> <C-W>k
    nmap <C-h> <C-W>h
    nmap <C-l> <C-W>l
    
    " 正常模式下 alt+j,k,h,l 调整分割窗口大小
    "nnoremap <M-j> :resize +3<cr>
    "nnoremap <M-k> :resize -3<cr>
    "nnoremap <M-h> :vertical resize -3<cr>
    "nnoremap <M-l> :vertical resize +3<cr>
    
    nnoremap <leader>ss :source ~/.vimrc<cr>

    nnoremap <leader>tn :tabnew<cr>
    nnoremap <leader>tc :tabclose<cr>
    nnoremap <leader>th :tabp<cr>
    nnoremap <leader>tl :tabn<cr>
    "nmap <leader>f= :resize -3<CR>
    "nmap <leader>f- :resize +3<CR>
    "nmap <leader>f, :vertical resize +3<CR>
    "nmap <leader>f. :vertical resize -3<CR>
    "nnoremap j jzz
    "nnoremap k kzz
    "nnoremap <leader>bg :call ToggleBG()<CR>
    nmap <leader>w :w<CR>
    "Open NerdTree window
    nnoremap <leader>ff :NERDTreeToggle<CR>
    ""Open tagbar window
    "nnoremap <leader>fg :TagbarToggle<CR>
    "nnoremap <leader>bb :bp<CR> 
    "nnoremap <leader>nn :bn<CR> 
    " call shell
    nmap <leader>fs :terminal<CR>
    " 命令模式下的行首尾
    "cnoremap <C-a> <home>
    "cnoremap <C-e> <end>
    tnoremap <Esc> <C-W>N:bd!<CR>

    " 插入模式移动光标 alt + 方向键
    inoremap <m-j> <Down>
    inoremap <m-k> <Up>
    inoremap <m-h> <left>
    inoremap <m-l> <Right>
    
    " Auto make file head
    "nmap <leader>mk :call SetTitle()<CR>
    " IDE like delete
    "inoremap <C-BS> <Esc>bdei
    
    nnoremap vv ^vg_
    " 转换当前行为大写
    "inoremap <C-u> <esc>mzgUiw`za
    "Switch buffers
    nmap <m-j> :bn<CR>
    nmap <m-k> :bp<CR>
    " Open Undo Tree
    nnoremap <c-z> :UndotreeToggle<CR>
    
    " YouCompleteMe {
        " Enter to select
        inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
        "上下左右键的行为 会显示其他信息
        inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
        inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
        inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
        inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
        nnoremap <F8> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
        "nnoremap <leader>lo :lopen<CR>	"open locationlist
        "nnoremap <leader>lc :lclose<CR>	"close locationlist
        inoremap <leader><leader> <C-x><C-o>
        nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
    " }

    " IndentGuides {
        "this help you see indent clearly 
        nmap <silent> <Leader>ig :IndentLinesToggle<cr>
    " }

    " easymotion {
        " Search File
        nmap  / <Plug>(easymotion-sn)
        omap / <Plug>(easymotion-tn)
        " go next match
        nmap  n <Plug>(easymotion-next)
        " go previous match
        nmap  N <Plug>(easymotion-prev)
        " Search 2 chars
        nmap s <Plug>(easymotion-s2)
        " JK motions: Line motions
        map <Leader>j <Plug>(easymotion-j)
        map <Leader>k <Plug>(easymotion-k)
    " }

    " Tabularize {
        nmap <Leader>a& :Tabularize /&<CR>
        vmap <Leader>a& :Tabularize /&<CR>
        nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
        vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
        nmap <Leader>a=> :Tabularize /=><CR>
        vmap <Leader>a=> :Tabularize /=><CR>
        nmap <Leader>a: :Tabularize /:<CR>
        vmap <Leader>a: :Tabularize /:<CR>
        nmap <Leader>a:: :Tabularize /:\zs<CR>
        vmap <Leader>a:: :Tabularize /:\zs<CR>
        nmap <Leader>a, :Tabularize /,<CR>
        vmap <Leader>a, :Tabularize /,<CR>
        nmap <Leader>a,, :Tabularize /,\zs<CR>
        vmap <Leader>a,, :Tabularize /,\zs<CR>
        nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
        vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    " }

    
" }

" Plugin{
    
    " VimShell {
        let g:vimshell_environment_term="zsh"
        let g:vimshell_split_command="nicely" 
    " }

    " FastFold{
        let g:tex_fold_enabled=1
        let g:vimsyn_folding='af'
        let g:xml_syntax_folding = 1
        let g:php_folding = 1
        let g:perl_fold = 1
    " }
    
    " NerdTree {
        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '\.o$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    " }

    " easymotion {
        let g:EasyMotion_do_mapping = 0 " Disable default mappings
        " Turn on case insensitive feature
        let g:EasyMotion_smartcase = 1

    " }
    
    "" ale {
        "let g:ale_echo_msg_format = '[%linter%] %code: %%s'
        "let g:ale_lint_on_text_changed = 'normal'
        "let g:ale_lint_on_insert_leave = 1
        "let g:airline#extensions#ale#enabled = 1
        "let g:ale_c_gcc_options = '-std=c++11 -Wall -I ./ -I ./include/'
        "let g:ale_c_clang_options = '-std=c++11 -Wall -I ./ -I ./include/'
        "let g:ale_c_clangtidy_options = '-I ./include/'
   
        ""let g:ale_sign_column_always = 1
        "let g:ale_sign_error = '>>'
        "let g:ale_sign_warning = '--'
    "" }
    
    " Ultisnips {
        " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
        let g:UltiSnipsExpandTrigger="<c-l>"
        let g:UltiSnipsJumpForwardTrigger="<c-n>"
        let g:UltiSnipsJumpBackwardTrigger="<c-b>"

        " If you want :UltiSnipsEdit to split your window.
        let g:UltiSnipsEditSplit="vertical"
    " }
    
    " UndoTree {
        " If undotree is opened, it is likely one wants to interact with it.
        let g:undotree_SetFocusWhenToggle=1
        if has("persistent_undo")
            set undodir='~/.undodir/'
            set undofile
        endif
    " }

    "" Ctrlp {
        "let g:ctrlp_map = '<c-p>'
        "let g:ctrlp_cmd = 'CtrlP'
        "let g:ctrlp_show_hidden=1
        "let g:ctrlp_working_path_mode = 'ra'
        "let g:ctrlp_custom_ignore = {
            "\ 'dir':  '\.git$\|\.hg$\|\.svn$',
            "\ 'file': '\.exe$\|\.so$\|\.o$\|\.dll$\|\.pyc$' }
    "" }

    " ariline {
        let g:airline_powerline_fonts=1
        let g:airline#extensions#tabline#enabled = 1
        set guifont=DejaVu\ Sans\ Mono\ for\ Powerline,Source\ Han,FontAwesome

    " }
    
    " indent guides {
        "let g:indent_guides_guide_size=1
        let g:indent_guides_enable_on_vim_startup = 0
        hi IndentGuidesOdd  ctermbg=black
        hi IndentGuidesEven ctermbg=darkgrey
    " }
    

    "" indent line {
        "" Vim
        "let g:indentLine_color_term = 239
        ""GVim
        "let g:indentLine_color_gui = '#A4E57E'
        "let g:indentLine_char = '┆ '
        "let g:indentLine_enabled = 1
        "let g:indentLine_noConcealCursor=2
    "" }

    " YouCompleteMe {
        " 自动补全配置
        set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
        autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
        let g:ycm_server_python_interpreter='/usr/bin/python'
        let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

        "let g:ycm_key_list_select_completion = ['<Down>']
        "let g:ycm_key_list_previous_completion = ['<Up>']
        let g:ycm_confirm_extra_conf = 0 "关闭加载.ycm_extra_conf.py提示
        "let g:syntastic_c_checkers=['make']
        let g:ycm_add_preview_to_completeopt = 0
        let g:ycm_show_diagnostics_ui = 0
        "let g:syntastic_always_populate_loc_list = 1
        "let g:syntastic_check_on_open=1
        "let g:syntastic_enable_signs=1
        "let g:syntastic_error_symbol = '✗'
        "let g:syntastic_warning_symbol = '⚠'
        "set statusline+=%#warningmsg#
        "set statusline+=%{SyntasticStatuslineFlag()}
        "set statusline+=%*gbar

        let g:ycm_collect_identifiers_from_tags_files = 1	" 开启 YCM 基于标签引擎
        let g:ycm_min_num_of_chars_for_completion = 2	" 从第2个键入字符就开始罗列匹配项
        let g:ycm_cache_omnifunc = 0	"是否禁止缓存匹配项,每次都重新生成匹配项
        let g:ycm_seed_identifiers_with_syntax = 1	" 语法关键字补全
        "在注释输入中也能补全
        let g:ycm_complete_in_comments = 1
        "在字符串输入中也能补全
        let g:ycm_complete_in_strings = 1
        "注释和字符串中的文字也会被收入补全
        let g:ycm_collect_identifiers_from_comments_and_strings = 0


     "}

    " vim-latex{
        "autocmd BufNewFile,BufRead *.tex IndentLinesDisable
        "autocmd BufEnter*.tex
        "let g:Tex_Indent_Items = 0
        let g:Tex_Flavor = 'xelatex'
        let g:Tex_ViewRule_pdf = 'zathura'
        let g:Tex_MultipleCompileFormats = 'pdf'
	    let g:Tex_DefaultTargetFormat = 'pdf'
        let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 -interaction=nonstopmode $*'
        set grepprg=grep\ -nH\ $*
        set iskeyword+=:
    
    " }

    " leaderF{
        let g:Lf_ShortcutF = '<c-p>'
        let g:Lf_ShortcutB = '<c-b>'
        noremap <leader>fh :LeaderfMru<cr>
        noremap <leader>fg :LeaderfFunction<cr>
        noremap <leader>fb :LeaderfBuffer<cr>
        noremap <leader>ft :LeaderfTag<cr>
        let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
        
        let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
        let g:Lf_WorkingDirectoryMode = 'Ac'
        let g:Lf_WindowHeight = 0.30
        let g:Lf_CacheDirectory = expand('~/.vim/cache')
        let g:Lf_ShowRelativePath = 0
        let g:Lf_HideHelp = 1
        let g:Lf_StlColorscheme = 'powerline'
        let g:Lf_PreviewResult = {'Function':0}
         
        let g:Lf_NormalMap = {
            \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
            \ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']],
            \ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
            \ "Tag":    [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
            \ "Function":    [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
            \ "Colorscheme":    [["<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>']],
            \ }
    " }
    
    " echodoc {
        let g:echodoc#enable_at_startup = 1
    " }
    
" }

" neomake {
    " Full config: when writing or reading a buffer, and on changes in insert and
    " normal mode (after 1s; no delay when writing).
    call neomake#configure#automake('nrwi', 500)
    let g:neomake_c_enabled_makers = ['clang']
    let g:neomake_c_clang_maker = {
        \ 'exe': 'clang',
        \ 'args': ['-fsyntax-only','-Wall', '-Iinclude', '-I./','-Wextra'],
    \ }

" }

" Command {
    "let g:input_toggle=1
    "if !has("gui_running")
      "for ch in range(char2nr('a'), char2nr('z'))
        "let char = nr2char(ch)
        "exec "set <M-".char.">=\<Esc>".char
        "exec "inoremap \<Esc>".char." <M-".char.">"
      "endfor
    "endif

    " Switch IME mode to ENGLISH
"    function! Fcitx2en()
      "let s:input_status=system("fcitx-remote")
      "if s:input_status==2
        "let g:input_toggle=1
        "let l:a=system("fcitx-remote -c")
      "endif
    "endfunction

    "" Switch IME mode to CHINESE
    "function! Fcitx2zh()
      "let s:input_status=system("fcitx-remote")
      "if s:input_status!=2&&g:input_toggle==1
        "let l:a=system("fcitx-remote -o")
        "let g:input_toggle=0
      "endif
    "endfunction

    "autocmd InsertLeave * call Fcitx2en()

" }
" Code Assist {
    "auto insert fileheader when codefile was created.
    "autocmd BufNewFile *.cpp,*.[ch],*.sh,*rb,*.py exec ":call SetTitle()" 
" }

