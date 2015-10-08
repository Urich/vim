syntax on                               "включаем подсветку синтаксиса
filetype indent on
filetype plugin on
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" repos on github
"Bundle 'Rip-Rip/clang_complete'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
"Bundle 'xolox/vim-session'
Bundle 'MattesGroeger/vim-bookmarks'
Bundle 'xolox/vim-misc'
Bundle 'vim-scripts/Gundo'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'bruno-/vim-man'
Bundle 'sukima/xmledit'
Bundle 'powerman/vim-plugin-ruscmd'
Bundle 'klen/python-mode'
"Bundle 'mhinz/vim-signify'
"Plugin 'jeaye/color_coded'
"Bundle 'rdnetto/YCM-Generator'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/MatchTagAlways'
Bundle 'actionshrimp/vim-xpath'

"Bundle 'rhysd/vim-clang-format'
"Bundle 'tomtom/quickfixsigns_vim'
"Bundle 'scrooloose/syntastic'
"Bundle 'mbbill/undotree'
"Bundle 'SkidanovAlex/CtrlK'
"
" vim.org
Bundle 'c.vim'
Bundle 'FSwitch'
Bundle 'Mark'
Bundle 'Tagbar'
Bundle 'SuperTab'
"Bundle 'xmledit'
Bundle 'TagHighlight'
Bundle 'indexer.tar.gz'
Bundle 'project.tar.gz'
Bundle 'vimprj'
Bundle 'DfrankUtil'
Bundle 'grep.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'

"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype on
filetype plugin indent on

set nobackup                            "не создавать файлы с резервной копией (filename.txt~)"
set history=50                          "сохранять 50 строк в истории командной строки
set ruler                               "постоянно показывать позицию курсора
set incsearch                           "показывать первое совпадение при наборе шаблона
set nohlsearch                          "подсветка найденного
set mouse=a                             "используем мышку
"set autoindent                          "включаем умные отступы
"set smartindent
"set ai                                  "при начале новой строки, отступ копируется из предыдущей
set ignorecase                          "игнорируем регистр символов при поиске
set background=dark                     "фон терминала - темный
set ttyfast                             "коннект с терминалом быстрый
set visualbell                          "мигаем вместо пищания
set showmatch                           "показываем открывающие и закрывающие скобки
set shortmess+=tToOI                    "убираем заставку при старте
"set rulerformat=%(%l,%c\ %p%%%)         "формат строки состояния строка х столбец, сколько прочитано файла в %
set nowrap                                "не разрывать строку при подходе к краю экрана
set linebreak                           "переносы между видимыми на экране строками только между словами
set tabstop=4                           "размер табуляции
set shiftwidth=4                        "число пробелов, используемых при автоотступе
"set expandtab                           "Заменяем табуляции пробелами (use :retab dude)
set t_Co=256                            "включаем поддержку 256 цветов
set wildmenu                            "красивое автодополнение
"set wcm=<Tab>                           "WTF? but all work
"set whichwrap=<,>,[,],h,l               "не останавливаться курсору на конце строки
set autowrite                           "автоматом записывать изменения в файл при переходе к другому файлу
set encoding=utf8                       "кодировка по дефолту
set termencoding=utf8                   "Кодировка вывода на терминал
set fileencodings=utf8,cp1251,koi8r,cp866     "Возможные кодировки файлов (автоматическая перекодировка)
set showcmd showmode                    "показывать незавершенные команды и текущий режим
set splitbelow                          "новое окно появляется снизу
set autochdir                           "текущий каталог всегда совпадает с содержимым активного окна
set stal=2                              "постоянно выводим строку с табами
set tpm=100                             "максимальное количество открытых табов
set wak=yes                             "используем ALT как обычно, а не для вызова пункта мени
"set dir=~/.vim/swapfiles                "каталог для сохранения своп-файлов
set noex                                "не читаем файл конфигурации из текущей директории
set ssop+=resize                        "сохраняем в сессии размер окон Vim'а
set clipboard=unnamedplus
set tabpagemax=20
set nocompatible
set nu                                   "отображать номера строк"

set foldenable
set foldmethod=syntax
set foldcolumn=10
set foldnestmax=5 						"вложеность фолдеров
set foldlevelstart=1
":let c_no_comment_fold=0
:let c_comment_strings=1
:let ch_syntax_for_h=1

set ch=1
set laststatus=1
set nocp
set ft=bash
set completeopt=menuone
"set completeopt=menu,preview
"set wildmode=longest,list:longest
"set completeopt=menuone,menu,longest
set autoread
"let mapleader = ","
set cmdheight=2
set laststatus=2
set lazyredraw
set magic
set nowb
set noswapfile
set pumheight=20
set cursorline
set pumheight=20
set conceallevel=2
set concealcursor=inv
set noguipty
colorscheme darkspectrum
set guifont=Terminus\ 12

if has ("gui_running")
	set list
"		set listchars=tab:→→,trail:⋅
	set listchars=tab:\ \ ,trail:⋅
	"убираем меню и тулбар
"	set guioptions-=m
	set guioptions-=T
	"убираем скроллбары
	set guioptions-=r
	set guioptions-=l
	"используем консольные диалоги вместо графических
	set guioptions+=c
	"антиалиасинг для шревтоф
	set antialias
	
endif


if has("cscope")
	"set csprg=/usr/local/bin/cscope
	set cscopetag
	set cscopeverbose
	set csto=0
	set cst
	set nocsverb
"	cs add ~/.cscope.vim/usc/cscope.out
"	cs add ~/.cscope.vim/usr/cscope.out
"	set cscopequickfix=s-,c-,d-,i-,t-,e-

endif

"set tags+=~/.tags/usc.tags
"set tags+=~/.tags/other.tags
"set tags+=~/.tags/stl.tags
"set tags+=~/.tags/gcc_4.5.0.tags
"set tags+=~/.tags/stl_2002.tags

hi User1 guifg=Orange
hi User2 guifg=Red

" для переключение между h & cpp
augroup fswitch-autocommands
	au BufEnter *.cpp let b:fswitchdst  = 'h,hpp'
	au BufEnter *.cpp let b:fswitchlocs = './,./include/,../include'
    au BufEnter *.h let b:fswitchdst  = 'c,cpp'
	au BufEnter *.h let b:fswitchlocs = '../src,../,./'
augroup END

au BufRead,BufNewFile *.cpp,*.h set filetype=cpp

"folding xml
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
"format xml
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
au FileType html exe ":silent %!xmllint --format --html --recover - 2>/dev/null"

" save folding state
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
"

"set cursorcolumn
hi CursorLine term=bold cterm=bold guibg=Grey40
"hi CursorColumn term=bold cterm=bold guibg=Grey40

"autocmd FileType text setlocal textwidth=80 "устанавливаем ширину в 80 знаков для текстовых файлов
"au FileType c,cc,cpp,h,sh au BufWinEnter * let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1) "Подсвечиваем 81 символ и т.д.

" Close buffer without saving
map <Esc><Esc> :q!<CR>
" Auto adding by Tab (use Shift-TAB unstead)
" imap <Tab> <C-N>
" сохранит:tabp
imap <F2> <Esc>:w<CR><Insert>
nmap <F2> :w<CR>

" List of errors
imap <C-c>e <Esc>:copen<CR>
nmap <C-c>e :copen<CR>

" Открытие\закрытие новой вкладки
inoremap <C-t>t <Esc>:tabnew<CR>a
nnoremap <C-t>t :tabnew<CR>
"переключение на следующую вкалдку
"noremap <C-t> :tabn<CR>
vnoremap <C-t>n <ESC>:tabn<CR>
inoremap <C-t>p <ESC>:tabp<CR>
" перемещение окон
map <kPlus> <C-W>+
map <kMinus> <C-W>-
map <kDivide> <c-w><
map <kMultiply> <c-w>>
"
map <C-c>1 :FSHere<CR>
imap <C-c>1 <ESC>:FSHere<CR><Insert>

map <C-c>2 :FSSplitRight<CR>
imap <C-c>2 <ESC>:FSSplitRight<CR><Insert>

map <C-c>3 :FSLeft<CR>
imap <C-c>3 <ESC>:FSLeft<CR><Insert>

map <C-c>4 :FSSplitBelow<CR>
imap <C-c>4 <ESC>:FSSplitBelow<CR><Insert>

nmap <silent> <F3> :TagbarToggle<CR>
imap <silent> <F3> <ESC>:TagbarToggle<CR>

map <F4> :CtrlPBuffer<cr>
vmap <F4> <esc>:CtrlPBuffer<cr>
imap <F4> <esc>:CtrlPBuffer<cr>

nnoremap <C-h> :GundoToggle<CR>

"imap <C-Space> <c-x><c-u>

map <F10> :NERDTreeToggle<cr>
vmap <F10> <esc>:NERDTreeToggle<cr>
imap <F10> <esc>:NERDTreeToggle<cr>

"map <F11> :Project<cr>
"vmap <F11> <esc>:Project<cr>
"imap <F11> <esc>:Project<cr>
nmap <F11> <Plug>ToggleProject
map <F11> <Plug>ToggleProject

map <silent> <F7> <Esc>:cprevious<CR>
map <silent> <F8> <Esc>:cnext<CR>

map <C-c>m :Mark <C-R>=expand("<cword>")<CR><CR>
map <C-c>mc :MarkClear <CR>

map <C-c>f :FufTag <CR>
map <C-c>ff :FufTag <C-R>=expand("<cword>")<CR><CR>

vnoremap > >gv
vnoremap < <gv

nnoremap d "_d
vnoremap d "_d
nnoremap dd "_dd
vnoremap dd "_dd
nnoremap <Del> "_x
vnoremap <Del> "_x
"nnoremap c "0c
"vnoremap c "0c
"nnoremap p "0p
"vnoremap p "0p

"inoremap <F5> :call g:ClangUpdateQuickFix()<CR>
"noremap <F5> :call g:ClangUpdateQuickFix()<CR>

"nnoremap <Tab> >>_
"nnoremap <S-Tab> <<_
"inoremap <S-Tab> <C-D>
"vnoremap <Tab> >gv
"vnoremap <S-Tab> <gv

nmap <C-b>b <Plug>BookmarkToggle
nmap <Leader>i <Plug>BookmarkAnnotate
nmap <C-b>a <Plug>BookmarkShowAll
nmap <Leader>j <Plug>BookmarkNext
nmap <Leader>k <Plug>BookmarkPrev
nmap <Leader>c <Plug>BookmarkClear
nmap <Leader>x <Plug>BookmarkClearAll

" for plugin nerdtree
"autocmd vimenter * if !argc() | NERDTree | endif
let g:NERDTreeWinSize = 35
" Set the window position
let g:NERDTreeWinPos = "right"
" Auto centre
let g:NERDTreeAutoCenter = 0
" Not Highlight the cursor line
let g:NERDTreeHighlightCursorline = 0
let NERDTreeIgnore=['.*\.o$']
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.out$']
let NERDTreeIgnore+=['.*\.so$', '.*\.a$']

" auto reload config 
augroup myvimrc
	au!
	au BufWritePost .vimrc so $MYVIMRC
augroup END

" поиск файлов по gf
set path=.,**,/usr/inlcude,../include,../src,./include,/usr/local/include
set foldopen-=search
"set include=^\\s*#\\s*include\ \\(<boost/\\)\\@!

let g:tagbar_left = 1
let g:tagbar_sort = 0
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_compact = 0
let g:tagbar_expand = 0
let g:tagbar_autoshowtag = 1
let g:tagbar_show_visibility = 1
let g:tagbar_show_linenumbers = 1
let g:tagbar_autopreview = 0
let g:tagbar_indent = 1
let g:tagbar_show_linenumbers = 2
let g:tagbar_foldlevel = 2

let g:bufExplorerFindActive=1
let g:bufExplorerShowDirectories=0
let g:bufExplorerShowTabBuffer=1
let g:bufExplorerShowUnlisted=0
let g:bufExplorerSortBy='mru'
let g:bufExplorerSplitBelow=1
let g:bufExplorerSplitOutPathName=0
let g:bufExplorerSplitRight=0

let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 0

"imap <F6>:call ClangUpdateQuickFix()<CR>

let g:clang_user_options='-std=c++x11'
""let g:clang_user_options = '-std=c++0x -x c++ 2> NUL || exit 0"
"let g:clang_user_options = '-x c++ || exit 0'
let g:clang_debug=0
let g:clang_auto_user_options="path,.clang_complete"
let g:clang_auto_select=0
let g:clang_complete_auto=0
let g:clang_complete_copen=1
let g:clang_hl_errors=1
let g:clang_snippets=1
let g:clang_snippets_engine="ultisnips"
let g:clang_conceal_snippets=1
let g:clang_exec="clang++"
let g:clang_use_library=1
let g:clang_library_path="/usr/lib/"
let g:clang_sort_algo="priority"
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
let g:clang_periodic_quickfix=0
let g:clang_close_preview=0
let g:clang_trailing_placeholder=1
let g:clang_jumpto_declaration_key="<C-[>"
"let g:clang_jumpto_back_key="<M-b>"

highlight YcmErrorLine guibg=#3f0000
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gdd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gde :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gdt :YcmCompleter GetType<CR>
nnoremap <leader>gdp :YcmCompleter GetParent<CR>

let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'qf' : 1,
        \ 'notes' : 1,
        \ 'markdown' : 1,
        \ 'unite' : 1,
        \ 'text' : 1,
        \ 'vimwiki' : 1,
        \ 'pandoc' : 1,
        \ 'infolog' : 1,
        \ 'project' : 1
        \}

let g:ycm_auto_trigger = 0
let g:ycm_warning_symbol = '!!'
let g:ycm_confirm_extra_conf = 0
"let g:ycm_complete_in_comments = 0
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_completion = 0
"let g:ycm_autoclose_preview_window_after_insertion = 0
"let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=['<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
""let g:ycm_key_list_select_completion = [‘<c-tab>’, ‘<Down>’]
""let g:ycm_key_list_previous_completion = [‘<c-s-tab>’, ‘<Up>’]
"let g:ycm_use_ultisnips_completer = 0
"let g:ycm_always_populate_location_list = 1
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_detailed_diagnostics = '<leader>d'

let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger = "<s-tab>"
let g:UltiSnipsListSnippets = "<c-l>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
"let g:UltiSnipsSnippetDirectories=['~/.vim/bundle/ultisnips']
"let g:UltiSnipsSnippetsDir=['~/.vim/bundle/vim-snippets/UltiSnips']
set runtimepath+=~/.vim/bundle/ultisnips

let g:manpageview_winopen   = "tab"
let g:manpageview_pgm_i     = "info"
let g:manpageview_options_i = "--output=-"
let g:manpageview_syntax_i  = "info"
let g:manpageview_K_i       = "<sid>ManPageInfo(0)"
let g:manpageview_init_i    = "call ManPageInfoInit()"

let g:session_autosave = 'no'

"--c++-kinds=+p+l --fields=+iaS --extra=+q"
"let g:indexer_ctagsCommandLineOptions = "--c++-kinds=+p+l --fields=+iaSl --extra=+q"
let g:indexer_disableCtagsWarning=1
"let g:indexer_debugLogFilename="~/index_debug"
"let g:indexer_debugLogLevel=3


autocmd BufRead,BufNewFile  *.cpp  set filetype=cpp

let g:C_Ctrl_j     = 'no'
let g:C_CplusCFlags = '-Wall -std=c++0x -g -O0 -c'
let g:C_CFlags = '-Wall -g -std=c++0x -c'
let g:C_LFlags = '-Wall -g'
"let g:C_CFlags = '-Wall -g -O0 -c'
"let g:C_LFlags = '-Wall -g -O0'

let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_use_default_mapping=1
let g:multi_cursor_exit_from_visual_mode=1
let g:multi_cursor_exit_from_insert_mode=1

let g:proj_window_width = 50
let g:proj_flags="imstcF"

let g:bookmark_manage_per_buffer = 1
let g:bookmark_auto_save_file = '~/.vim/bookmarks'
let g:bookmark_highlight_lines = 1
let g:bookmark_no_default_key_mappings = 0
let g:bookmark_auto_save = 1

"highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
"highlight link multiple_cursors_visual Visual

"let g:signify_vcs_list = [ 'git' ]
"let g:signify_disable_by_default = 1

"let g:cpp_class_scope_highlight = 0
"let g:cpp_experimental_template_highlight = 1
"let g:color_coded_enabled = 1
"let g:color_coded_filetypes = ['c', 'cpp']

if filereadable("/etc/papersize")
    let s:papersize = matchstr(system('/bin/cat /etc/papersize'), '\p*')
    if strlen(s:papersize)
        let &printoptions = "paper:" . s:papersize
   endif
  unlet! s:papersize
endif

set printdevice="HP_LaserJet_Professional_P1102"


let g:pymode_python = 'python3'
let g:pymode_warnings = 1
let g:pymode_folding = 1

