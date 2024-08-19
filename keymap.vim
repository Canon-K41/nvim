" Map 'jk' to escape in Insert, Visual, and Terminal modes
inoremap jk <Esc>
vnoremap jk <Esc>
tnoremap jk <C-\><C-n>

" Use Ctrl + h/j/k/l to move the cursor in Insert mode
inoremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>

" Auto-pair brackets, quotes, and backticks in Insert mode
inoremap ( ()<LEFT>
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>
inoremap < <><LEFT>

" Modify movement behavior for k, K, j, J, H, and L keys in Normal and Visual modes
nnoremap k gk
vnoremap k gk
nnoremap K 10k
vnoremap K 10k
nnoremap j gj
vnoremap j gj
nnoremap J 10j 
vnoremap J 10j 
nnoremap H 10h
vnoremap H 10h
nnoremap L 10l
vnoremap L 10l

" Move selected lines up or down in Visual mode
xnoremap J :m '>+1<CR>gv=gv
xnoremap K :m '<-2<CR>gv=gv

" Map ';' to delete characters in Normal and Visual modes, and copy all text with 'YY'
nnoremap ; "_xh
vnoremap ; "_xh
nnoremap YY ggVGy

" Save file with 'space + space' in Normal mode
nnoremap <space><space> :w<CR>

" Junpe to define
"ctags -R .
":set tags=./tags,tags;
nnoremap F <C-]> 
nnoremap T <C-t>

" Simplify line breaks and backspace behavior in Normal mode
nnoremap <CR> $a<CR><Esc>
nnoremap <space><CR> a<CR><Esc>
nnoremap <Backspace> 0i<Backspace><Esc>

" Window management mappings
nnoremap <space>wd :close<CR>       
nnoremap <space>wh <C-w><          
nnoremap <space>wl <C-w>>           
nnoremap <space>ww :only<CR>       
nnoremap <space>wm :vsplit<CR>    

" Terminal management mappings
nnoremap <silent> <space>wt :belowright split <bar> resize -6 <bar> terminal<CR>:set modifiable<CR>i
nnoremap <silent> <Space>tt :tabnew <Bar> terminal<CR>:set modifiable<CR>i
tnoremap <Esc> :bd!<CR>

" Switch between windows with 'space + l' in Normal mode
nnoremap <space>l <C-w>w

" Buffer management mappings
nnoremap <space>j :BufferPrevious<CR>
nnoremap <space>k :BufferNext<CR>
nnoremap <Esc> :BufferDelete<CR>

" Map zz to toggle fold
nnoremap zz za

"change colorscheme
nnoremap <F1> :colorscheme ayu-mirage<CR>
nnoremap <F2> :colorscheme retrobox<CR>
nnoremap <F3> :colorscheme sorbet<CR>

" Toggle NvimTree with 'space + tr' in Normal mode
nnoremap <space>tr :NvimTreeFindFileToggle<CR>

" Telescope mappings for file search
nnoremap <space>ff :Telescope find_files<CR><Esc>
nnoremap <space>fg :Telescope live_grep<CR>
nnoremap <space>fb :Telescope buffers<CR><Esc>

" Save and source the current file with F5 in Normal mode
nnoremap <F5> :w<CR>:source %<CR>  

" Exit terminal mode gracefully with Esc
tnoremap <Esc> exit<CR>

" Change Emmet shortcut to Ctrl + e
let g:user_emmet_leader_key='<C-Space>'
let g:user_emmet_expandabbr_key='<C-Space>'
