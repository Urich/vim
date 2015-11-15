syntax on                               "включаем подсветку синтаксиса
filetype indent on
filetype plugin on
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Rip-Rip/clang_complete'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'MattesGroeger/vim-bookmarks'
Bundle 'xolox/vim-misc'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'bruno-/vim-man'
Bundle 'sukima/xmledit'
Bundle 'powerman/vim-plugin-ruscmd'
Bundle 'edkolev/promptline.vim'
Bundle 'itchyny/lightline.vim'
Bundle 'actionshrimp/vim-xpath'
Bundle 'terryma/vim-multiple-cursors'
Plugin 'lyuts/vim-rtags'
Bundle 'klen/python-mode'

" vim.org
Bundle 'project.tar.gz'
Bundle 'vimprj'
Bundle 'DfrankUtil'
Bundle 'indexer.tar.gz'

Bundle 'c.vim'
Bundle 'FSwitch'
Bundle 'Mark'
Bundle 'Tagbar'
"Bundle 'SuperTab'
Bundle 'TagHighlight'
Bundle 'grep.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'

filetype on
filetype plugin indent on

colorscheme darkspectrum
set guifont=Terminus\ 12

"set ruler                               "постоянно показывать позицию курсора
set incsearch                           "показывать первое совпадение при наборе шаблона
set nohlsearch                          "подсветка найденного
set mouse=a                             "используем мышку
"set autoindent                          "включаем умные отступы
"set smartindent
"set ai                                  "при начале новой строки, отступ копируется из предыдущей
set ignorecase                          "игнорируем регистр символов при поиске
set background=dark                     "фон терминала - темный
set encoding=utf8                       "кодировка по дефолту
set termencoding=utf8                   "Кодировка вывода на терминал
set fileencodings=utf8,cp1251,koi8r,cp866     "Возможные кодировки файлов (автоматическая перекодировка)
set showcmd showmode                    "показывать незавершенные команды и текущий режим
set splitbelow                          "новое окно появляется снизу
set autochdir                           "текущий каталог всегда совпадает с содержимым активного окна
set stal=2                              "постоянно выводим строку с табами
set tpm=100                             "максимальное количество открытых табов
set wak=yes                             "используем ALT как обычно, а не для вызова пункта мени
set dir=/tmp			                "каталог для сохранения своп-файлов
set visualbell                          "мигаем вместо пищания
set tabstop=4                           "размер табуляции
"set showmatch                           "показываем открывающие и закрывающие скобки
set clipboard=unnamedplus
set tabpagemax=20
set nocompatible
set nu                                   "отображать номера строк"
set ch=1
set laststatus=1
set nocp
set autoread
"let mapleader = ","
set cmdheight=2
set laststatus=2
set lazyredraw
set magic
set nowb
set pumheight=20
set cursorline
set pumheight=20
set noguipty
set shiftwidth=4                        "число пробелов, используемых при автоотступе
set foldenable
set foldmethod=syntax
set autowrite                           "автоматом записывать изменения в файл при переходе к другому файлу
"set foldcolumn=10
"set foldnestmax=5 						"вложеность фолдеров
"set foldlevelstart=1

if has ("gui_running")
	set list
"	set listchars=tab:→→,trail:⋅
	set listchars=tab:\ \ ,trail:⋅
	"убираем меню и тулбар
"	set guioptions-=m
	set guioptions-=T
	"убираем скроллбары
"	set guioptions-=r
"	set guioptions-=l
	"используем консольные диалоги вместо графических
"	set guioptions+=c
	"антиалиасинг для шревтоф
"	set antialias
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

" для переключение между h & cpp
augroup fswitch-autocommands
	au BufEnter *.cpp let b:fswitchdst  = 'h,hpp'
	au BufEnter *.cpp let b:fswitchlocs = './,./include/,../include'
    au BufEnter *.h let b:fswitchdst  = 'c,cpp'
	au BufEnter *.h let b:fswitchlocs = '../src,../,./'
augroup END

" поиск файлов по gf
set path=.,**,/usr/include,../include,../src,./include,/usr/local/include,/usr/include/c++/4.9
set foldopen-=search

"folding xml
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
"format xml
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
au FileType html exe ":silent %!xmllint --format --html --recover - 2>/dev/null"

augroup myvimrc
	au!
	au BufWritePost .vimrc so $MYVIMRC
augroup END

map <Esc><Esc> :q!<CR>
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

imap <C-Space> <c-x><c-u>

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

inoremap <F5> :call g:ClangUpdateQuickFix()<CR>
noremap <F5> :call g:ClangUpdateQuickFix()<CR>

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

"clang_complete
set wildmode=longest,list:longest
set completeopt=menuone,menu,longest
set concealcursor=inv
set conceallevel=2
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
let g:clang_library_path="/usr/lib/llvm-3.5/lib"
let g:clang_sort_algo="priority"
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
let g:clang_periodic_quickfix=0
let g:clang_close_preview=0
let g:clang_trailing_placeholder=1
let g:clang_jumpto_declaration_key="<C-[>"


"NERTree
"autocmd vimenter * if !argc() | NERDTree | endif
let g:NERDTreeWinSize = 35
" Set the window position
"let g:NERDTreeWinPos = "right"
" Auto centre
let g:NERDTreeAutoCenter = 0
" Not Highlight the cursor line
let g:NERDTreeHighlightCursorline = 0
let NERDTreeIgnore=['.*\.o$']
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.out$']
let NERDTreeIgnore+=['.*\.so$', '.*\.a$']

"tagbar
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

"UltiSpips
"let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger = "<s-tab>"
let g:UltiSnipsListSnippets = "<c-l>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
"let g:UltiSnipsSnippetDirectories=['~/.vim/bundle/ultisnips']
"let g:UltiSnipsSnippetsDir=['~/.vim/bundle/vim-snippets/UltiSnips']
set runtimepath+=~/.vim/bundle/ultisnips

"Indexer
"--c++-kinds=+p+l --fields=+iaS --extra=+q"
"let g:indexer_ctagsCommandLineOptions = "--c++-kinds=+p+l --fields=+iaSl --extra=+q"
let g:indexer_disableCtagsWarning=1
au BufRead,BufNewFile *.cpp,*.h set filetype=cpp
"let g:indexer_debugLogFilename="~/index_debug"
"let g:indexer_debugLogLevel=3

"c.vim
let g:C_Ctrl_j     = 'no'
let g:C_CplusCFlags = '-Wall -std=c++0x -g -O0 -c'
let g:C_CFlags = '-Wall -g -std=c++0x -c'
let g:C_LFlags = '-Wall -g'
"let g:C_CFlags = '-Wall -g -O0 -c'
"let g:C_LFlags = '-Wall -g -O0'
:let c_comment_strings=1
:let ch_syntax_for_h=1

"Multicursor
let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_use_default_mapping=1
let g:multi_cursor_exit_from_visual_mode=1
let g:multi_cursor_exit_from_insert_mode=1

"Project
let g:proj_window_width = 40
let g:proj_flags="imstcF"

"Bookmark
let g:bookmark_manage_per_buffer = 1
let g:bookmark_auto_save_file = '~/.vim/bookmarks'
let g:bookmark_highlight_lines = 1
let g:bookmark_no_default_key_mappings = 0
let g:bookmark_auto_save = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"rtags
let g:rtagsUseDefaultMappings = 0
noremap <Leader>gi :call rtags#SymbolInfo()<CR>
noremap <Leader>gj :call rtags#JumpTo()<CR>
noremap <Leader>gS :call rtags#JumpTo(" ")<CR>
noremap <Leader>gV :call rtags#JumpTo("vert")<CR>
noremap <Leader>gT :call rtags#JumpTo("tab")<CR>
noremap <Leader>gp :call rtags#JumpToParent()<CR>
noremap <Leader>gf :call rtags#FindRefs()<CR>
noremap <Leader>gn :call rtags#FindRefsByName(input("Pattern? ", "", "customlist,rtags#CompleteSymbols")<CR>
noremap <Leader>gs :call rtags#FindSymbols(input("Pattern? ", "", "customlist,rtags#CompleteSymbols"))<CR>
noremap <Leader>gr :call rtags#ReindexFile()<CR>
noremap <Leader>gl :call rtags#ProjectList()<CR>
noremap <Leader>gw :call rtags#RenameSymbolUnderCursor()<CR>
noremap <Leader>gv :call rtags#FindVirtuals()<CR>
"noremap 6 :call rtags#CompleteAtCursor()<CR>

"PrinterHome
if filereadable("/etc/papersize")
    let s:papersize = matchstr(system('/bin/cat /etc/papersize'), '\p*')
    if strlen(s:papersize)
        let &printoptions = "paper:" . s:papersize
   endif
  unlet! s:papersize
endif

set printdevice="HP_LaserJet_Professional_P1102"

"python
let g:pymode_python = 'python3'
let g:pymode_warnings = 1
let g:pymode_folding = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 255
let g:pymode_options_colorcolumn = 0
let g:pymode_indent = 1
let g:pymode_run_bind = '<leader>r'

