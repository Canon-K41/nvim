inoremap jk <Esc>
vnoremap jk <Esc>

inoremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>

inoremap ( ()<LEFT>
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>
inoremap < <><LEFT>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap H 0
nnoremap K 10k
nnoremap J 10j 
nnoremap L $
vnoremap H 0
vnoremap K 10k
vnoremap J 10j 
vnoremap L $

xnoremap J :m '>+1<CR>gv=gv
xnoremap K :m '<-2<CR>gv=gv

nnoremap ; "_xh
vnoremap ; "_xh
nnoremap YY ggVGy

nnoremap <space><space> :w<CR>

nnoremap <space>k <C-w>w
nnoremap <CR> $a<CR><Esc>
nnoremap <space><CR> a<CR><Esc>
nnoremap <Backspace> 0i<Backspace><Esc>
nnoremap <tab> i<tab><Esc>
nnoremap <space>wd :close<CR>
nnoremap <space>wh <C-w><
nnoremap <space>wl <C-w>>
nnoremap <space>ww :only<CR>
nnoremap <space>wm :vsplit<CR>
nnoremap <silent> <space>wt :belowright split <bar> resize -6 <bar> terminal<CR>:set modifiable<CR>i
nnoremap <silent> <Space>tt :tabnew <Bar> terminal<CR>:set modifiable<CR>i
tnoremap jk <C-\><C-n>
nnoremap <space>j :BufferPrevious<CR>
nnoremap <Esc> :BufferClose<CR>
nnoremap <space>tr :NvimTreeFindFileToggle<CR>
" nnoremap <space>tt :ToggleTerm<CR> 
nnoremap <space>ff :Telescope find_files<CR><Esc>
nnoremap <space>fg :Telescope live_grep<CR>
nnoremap <space>fb :Telescope buffers<CR><Esc>
nnoremap <F5> :w<CR>:source %<CR>  
tnoremap <Esc> exit<CR>

let g:user_emmet_leader_key='<C-e>'  " Emmetのデフォルトショートカット
let g:user_emmet_expandabbr_key='<C-e>'
