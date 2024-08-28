" Map 'jk' to escape in Insert, Visual, and Terminal modes
inoremap jk <Esc>
vnoremap jk <Esc>
tnoremap jk <C-\><C-n>

" Use Ctrl + h/j/k/l to move the cursor in Insert mode
inoremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>

"" Modify movement behavior for k, K, j, J, H, and L keys in Normal and Visual modes
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
"nnoremap DD ggVGx

" Map zz to toggle fold
nnoremap zz za

" Save file with 'space + space' in Normal mode
nnoremap <space><space> :w<CR>

" Junpe to define
"ctags -R .
":set tags=./tags,tags;
nnoremap ? <C-]> 

"cd workspace
"nnoremap ! :cd /Users/kaika/workplace<CR>

" Simplify line breaks and backspace behavior in Normal mode
nnoremap <CR> $a<CR><Esc>
nnoremap <space><CR> a<CR><Esc>
nnoremap <Backspace> 0i<Backspace><Esc>

" Buffer management mappings
nnoremap <C-j> :BufferPrevious<CR>
nnoremap <C-k> :BufferNext<CR>
nnoremap <Esc> :BufferDelete<CR>

" Switch between windows with 'space + l' in Normal mode
nnoremap <C-l> <C-w>w

" Window management mappings
nnoremap <C-c> :close<CR>       
nnoremap <C->> <C-w><          
nnoremap <C-<> <C-w>>           
nnoremap <C-o> :only<CR>       
nnoremap <C-w> :vsplit<CR>    

"change colorscheme
nnoremap <F1> :colorscheme ayu-dark<CR>
nnoremap <F2> :colorscheme ayu-mirage<CR>
nnoremap <F3> :colorscheme tokyonight-night<CR>
nnoremap <F4> :colorscheme tokyonight-moon<CR>
nnoremap <F5> :colorscheme tokyonight-storm<CR>
nnoremap <F6> :colorscheme retrobox<CR>
nnoremap <F7> :colorscheme habamax<CR>
nnoremap <F8> :colorscheme sorbet<CR>
nnoremap <F9> :colorscheme slate<CR>
nnoremap <F10> :colorscheme desert<CR>

" Terminal management mappings
"nnoremap <silent> <Space>tt :tabnew <Bar> terminal<CR>:set modifiable<CR>i
nnoremap <C-t><C-t> :ToggleTerm direction=tab<CR> 
nnoremap <C-t><C-f> :ToggleTerm direction=float<CR> 
nnoremap <C-t><C-h> :ToggleTerm direction=horizontal<CR>
tnoremap <Esc> exit<CR>


" Toggle NvimTree with 'space + tr' in Normal mode
nnoremap <C-t><C-r> :NvimTreeFindFileToggle<CR>

"ll Telescope mappings for file search
nnoremap <C-f><C-f> :Telescope find_files<CR><Esc>
nnoremap <C-f><C-b> :Telescope buffers<CR><Esc>
nnoremap <C-f><C-g> :Telescope live_grep<CR><Esc>
nnoremap <C-f><C-s> :Telescope grep_string<CR><Esc>
nnoremap <C-f><C-n> :Telescope notify<CR><Esc>
nnoremap <C-f><C-m> :Telescope marks<CR><Esc>
nnoremap <C-f><C-r> :Telescope lsp_references<CR><Esc>
nnoremap <C-g><C-s> :Telescope git_status<CR><Esc>
nnoremap <C-g><C-b> :Telescope git_branches<CR><Esc>
nnoremap <C-g><C-s> :Telescope git_stash<CR><Esc>

"hop mappings for jump
nnoremap <C-h><C-c> :HopChar2<CR>
nnoremap <C-h><C-p> :HopPattern<CR>
nnoremap <C-h><C-w> :HopWord<CR>
nnoremap <C-h><C-l> :HopLine<CR>


" Change Emmet shortcut to Ctrl + e
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_expandabbr_key='<C-e>'


"-- --    Old text                    Command         New text
"-- --------------------------------------------------------------------------------
"--     surr*ound_words             ysiw)           (surround_words)
"--     *make strings               ys$"            "make strings"
"--     [delete ar*ound me!]        ds]             delete around me!
"--     remove <b>HTML t*ags</b>    dst             remove HTML tags
"--     'change quot*es'            cs'"            "change quotes"
