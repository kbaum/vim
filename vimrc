execute pathogen#infect()
syntax on
filetype plugin indent on

set rtp+=/usr/local/opt/fzf
set nu

nnoremap <c-p> :FZF<cr>
nnoremap <c-t> :GitFiles<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>a0 :let g:ale_fix_on_save = 0<cr>
nnoremap <leader>a1 :let g:ale_fix_on_save = 1<cr>
nnoremap <leader>ts :set smartindent tabstop=2 shiftwidth=2 expandtab<cr>
nnoremap <silent> <leader>ev :tabe $MYVIMRC<cr>



"nmap <silent> f 1GvG=
nmap <silent> f mzgg=G`z
nmap <silent> <c-n> :NERDTreeToggle<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!bundle exec spring rspec {spec}"

set smartindent tabstop=2 shiftwidth=2 expandtab

" Case insensitive matching unless one capital letter
set ignorecase
set smartcase

let g:gist_post_private = 1

let g:ale_set_highlights = 1
let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'ruby': ['rubocop']
\}
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'ruby': ['rubocop'],
\   'javascript': ['eslint']
\}

if has("clipboard")
  "set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

let g:ag_working_path_mode="r"


let g:github_user = 'karl.baum@gmail.com'
