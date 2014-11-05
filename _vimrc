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
Bundle 'Rip-Rip/clang_complete'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'actionshrimp/vim-xpath'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'xolox/vim-session'
Bundle 'MattesGroeger/vim-bookmarks'
Bundle 'xolox/vim-misc'
Bundle 'vim-scripts/Gundo'

" vim.org
Bundle 'c.vim'
Bundle 'FSwitch'
"Bundle 'bufexplorer.zip'
Bundle 'Mark'
Bundle 'Tagbar'
Bundle 'SuperTab'
Bundle 'xmledit'
"Bundle 'ManPageView'
Bundle 'TagHighlight'


Bundle 'indexer.tar.gz'
"все зависимоти для indexer
Bundle 'project.tar.gz'
Bundle 'vimprj'
Bundle 'DfrankUtil'

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
set wcm=<Tab>                           "WTF? but all work
"set whichwrap=<,>,[,],h,l               "не останавливаться курсору на конце строки
"set autowrite                           "автоматом записывать изменения в файл при переходе к другому файлу
set encoding=utf8                       "кодировка по дефолту
set termencoding=utf8                   "Кодировка вывода на терминал
set fileencodings=utf8,cp1251,koi8r,cp866     "Возможные кодировки файлов (автоматическая перекодировка)
set showcmd showmode                    "показывать незавершенные команды и текущий режим
" set splitbelow                          "новое окно появляется снизу
" set autochdir                           "текущий каталог всегда совпадает с содержимым активного окна
set stal=2                              "постоянно выводим строку с табами
set tpm=100                             "максимальное количество открытых табов
set wak=yes                             "используем ALT как обычно, а не для вызова пункта мени
set dir=~/.vim/swapfiles                "каталог для сохранения своп-файлов
set noex                                "не читаем файл конфигурации из текущей директории
set ssop+=resize                        "сохраняем в сессии размер окон Vim'а
set clipboard=unnamedplus
set tabpagemax=20
set nocompatible
set nu                                   "отображать номера строк"
set foldenable
set foldmethod=syntax
set foldcolumn=10
"set foldlevelstart=1
set ch=1
set laststatus=2
set nocp
set ft=bash
set completeopt=menu,longest
"set completeopt=menuone,menu,longest,preview
set autoread
let mapleader = ","
set cmdheight=2
set laststatus=2
set lazyredraw
set magic
set nowb
set noswapfile
set pumheight=20

"set noequalalways
"set winheight=9999
" настраиваю для работы с русскими словами (чтобы w, b, * понимали" русские слова)
set iskeyword=@,48-57,_,192-255

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set statusline=%<%1*%f%h%m%r%*\ %b\ %2*%{&encoding}%*\ \ %l,%c\ %P
"set statusline=%{tagbar#currenttag('[%s]','notfound','s')}

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
	"прячем курсор
"	set mousehide
	"Так не выводятся ненужные escape последовательности в :shell
	set noguipty
	"подсветка текущей строки
	set cursorline
	colorscheme darkspectrum
"	colorscheme slate
	set guifont=Terminus\ 12
endif


if has("cscope")
	"set csprg=/usr/local/bin/cscope
	set cscopetag
	set cscopeverbose
	set csto=0
	set cst
	set nocsverb
	cs add ~/.cscope.vim/usc/cscope.out
"	cs add ~/.cscope.vim/usr/cscope.out
	set cscopequickfix=s-,c-,d-,i-,t-,e-

	nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

	nmap <C-g>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-g>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-g>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-g>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-g>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-g>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-g>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-g>d :cs find d <C-R>=expand("<cword>")<CR><CR>
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

"let g:xml_syntax_folding=1
"au FileType xml setlocal foldmethod=syntax
" save folding state
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
"
set cursorline
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
imap <C-t>t <Esc>:tabnew<CR>a
nmap <C-t>t :tabnew<CR>
"переключение на следующую вкалдку
map <C-Tab> :tabn<CR>
vmap <C-Tab> <ESC>:tabn<CR>
imap <C-Tab> <ESC>:tabn<CR>
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

map <C-c>3 :FSSplitLeft<CR>
imap <C-c>3 <ESC>:FSSplitLeft<CR><Insert>

map <C-c>4 :FSSplitBelow<CR>
imap <C-c>4 <ESC>:FSSplitBelow<CR><Insert>

nmap <silent> <F3> :TagbarOpen fj<CR>
imap <silent> <F3> <ESC>:TagbarOpen fj<CR>

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
nmap <silent> <F11> <Plug>ToggleProject
map <silent> <F11> <Plug>ToggleProject

map <silent> <F7> <Esc>:cprevious<CR>
map <silent> <F8> <Esc>:cnext<CR>

map <C-c>m :Mark <C-R>=expand("<cword>")<CR><CR>
map <C-c>mc :MarkClear <CR>

vnoremap > >gv
vnoremap < <gv

inoremap <F5> :call g:ClangUpdateQuickFix()<CR>
noremap <F5> :call g:ClangUpdateQuickFix()<CR>


"nnoremap <Tab> >>_
"nnoremap <S-Tab> <<_
"inoremap <S-Tab> <C-D>
"vnoremap <Tab> >gv
"vnoremap <S-Tab> <gv

" for plugin nerdtree
autocmd vimenter * if !argc() | NERDTree | endif
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

"hi link MBEVisibleChanged Error
"hi MBEChanged guibg=darkblue ctermbg=darkblue

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

" формат строки с ошибкой для gcc и sdcc, это нужно для errormarker
"let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat

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

" conceal in insert (i), normal (n) and visual (v) modes
"set concealcursor=inv
" hide concealed text completely unless replacement character is defined
"set conceallevel=0

let g:clang_user_options='-std=c++x11'
""let g:clang_user_options = '-std=c++0x -x c++ 2> NUL || exit 0"
"let g:clang_user_options = '-x c++ || exit 0'
let g:clang_debug=0
"let g:clang_auto_user_options=""
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

"let g:clang_compilation_database="~/.vim/db"

set conceallevel=2
set concealcursor=inv
let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"
let g:manpageview_winopen   = "tab"
let g:manpageview_pgm_i     = "info"
let g:manpageview_options_i = "--output=-"
let g:manpageview_syntax_i  = "info"
let g:manpageview_K_i       = "<sid>ManPageInfo(0)"
let g:manpageview_init_i    = "call ManPageInfoInit()"

let g:session_autosave = 'no'

autocmd BufRead,BufNewFile  *.cpp  set filetype=cpp

let g:C_Ctrl_j     = 'no'
let g:C_CplusCFlags = '-Wall -std=c++0x -g -O0 -c'
let g:C_CFlags = '-Wall -g -O0 -c'
let g:C_LFlags = '-Wall -g -O0'

let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_use_default_mapping=1
let g:multi_cursor_exit_from_visual_mode=1
let g:multi_cursor_exit_from_insert_mode=1

highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

function! UpdateUsrcscope()
	!find /usr/include -name '*.cpp' -o -name '*.h'>~/.cscope.vim/usr/cscope.files
	execute "!cscope -Rbqk -i ~/.cscope.vim/usr/cscope.files -f ~/.cscope.vim/usr/cscope.out"
	cs reset
"	execute "!ctags -L ~/.cscope.vim/usr/cscope.files -f ~/.tags/usctag --c++-kinds=+p --fields=+iaS --extra=+q --sort=foldcase"

	"	execute "!ctags -f - --format=2 --excmd=pattern --extra= --fields=nksaSmt ~/.cscope.vim/usr/cscope.files"
endfunction

function! UpdateUsccscope()
	!find ~/develop/project/usc -name '*.cpp' -o -name '*.h'>~/.cscope.vim/usc/cscope.files
	execute "!cscope -bqk -i ~/.cscope.vim/usc/cscope.files -f ~/.cscope.vim/usc/cscope.out"
	cs reset
	execute "!ctags -L ~/.cscope.vim/usc/cscope.files -f ~/.tags/usc.tags --c++-kinds=+p --fields=+iaS --extra=+q --sort=foldcase"
endfunction

function! CreatecUscscope()
	!find ~/develop/project/usc -name '*.cpp' -o -name '*.h'>~/.cscope.vim/usc/cscope.files
	execute "!cscope -Rbqk -i ~/.cscope.vim/usc/cscope.files -f ~/.cscope.vim/usc/cscope.out"
endfunction

"map <S-F5> :call UpdateUsccscope()<CR>

function! Test()
	echo 'test'
	return expand('%:p')
endfunction


" Set &printoptions to include papersize

" Set &printoptions to include papersize
if filereadable("/etc/papersize")
    let s:papersize = matchstr(system('/bin/cat /etc/papersize'), '\p*')
    if strlen(s:papersize)
        let &printoptions = "paper:" . s:papersize
   endif
  unlet! s:papersize
endif

" Set printexpr to allow command options

" Function to enable command options for :hardcopy
"function! PrintFile(fname,fcmdarg)
"	echo 'test'
"	echo fcmdarg
"    call system('lpr' . ' ' . (&printdevice == '' ? '' : ' -P' . &printdevice) . ' ' . a:fname)
"    call delete(a:fname)
"    return v:shell_error
"endfunc

set printdevice="HP_LaserJet_Professional_P1102"
"set printexpr=system('lpr' . (&printdevice == '' ? '' : ' -P' . &printdevice) . ' ' . v:fname_in) . delete(v:fname_in) + v:shell_error
"set printexpr=system('lpr'.&printdevice.''.v:fname_in)

"let &printoptions = &printoptions . ",syntax:n"

" Set printexpr to allow command options
"set pdev="HP_LaserJet_Professional_P1102"
"set printexpr=PrintFile(v:fname_in,v:cmdarg)

"map <F6> :call Test()<CR>
"set wildmenu
"set wcm=<Tab>
"menu Exec.GForth  :!gforth % <CR>
"menu Exec.Perl    :!perl % <CR>
"menu Exec.Python  :!python % <CR>
"menu Exec.Ruby    :!ruby % <CR>
"menu Exec.bash      :!/bin/bash<CR>
"menu Exec.xterm     :!xterm<CR>
"menu Exec.mc        :!mc<CR>
"menu Exec.xterm_mc  :!xterm -e mc<CR>
"map <F11> :emenu Exec.<Tab>

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

