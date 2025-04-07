" colemak.vim
" A Vim plugin to toggle Colemak → QWERTY remappings.
" Place this file in your plugin/ directory (or install via your plugin manager).
" Usage: Press <leader>\ (with your leader set to space) to toggle the mappings.
" Author: EpicBrainUser
" License: MIT

" Guard to avoid multiple loads
if exists("g:loaded_colemak_plugin")
  finish
endif
let g:loaded_colemak_plugin = 1

" Global flag to track whether the remappings are enabled
if !exists("g:colemak_mappings_enabled")
  let g:colemak_mappings_enabled = 0
endif

" Toggle function for Colemak mappings in all modes
function! ColemakToggleMappings() abort
  if g:colemak_mappings_enabled
    " --- Disable mappings ---
    " Normal mode
    nunmap f | nunmap t | nunmap g | nunmap d | nunmap s | nunmap r | nunmap p | nunmap ; | nunmap o | nunmap y | nunmap j | nunmap n | nunmap k | nunmap e | nunmap l | nunmap u | nunmap i | nunmap K
    " Visual mode
    vunmap f | vunmap t | vunmap g | vunmap d | vunmap s | vunmap r | vunmap p | vunmap ; | vunmap o | vunmap y | vunmap j | vunmap n | vunmap k | vunmap e | vunmap l | vunmap u | vunmap i | vunmap K
    " Operator-pending mode
    ounmap f | ounmap t | ounmap g | ounmap d | ounmap s | ounmap r | ounmap p | ounmap ; | ounmap o | ounmap y | ounmap j | ounmap n | ounmap k | ounmap e | ounmap l | ounmap u | ounmap i | ounmap K
    " Insert mode
    iunmap f | iunmap t | iunmap g | iunmap d | iunmap s | iunmap r | iunmap p | iunmap ; | iunmap o | iunmap y | iunmap j | iunmap n | iunmap k | iunmap e | iunmap l | iunmap u | iunmap i | iunmap K

    let g:colemak_mappings_enabled = 0
    echo "Colemak mappings disabled"
  else
    " --- Enable mappings ---
    " The remapping cycle (Colemak key → QWERTY command):
    "   f → e, t → f, g → t, d → g, s → d, r → s, p → r, ; → p, o → ;, y → o, j → y, n → j, k → n, e → k
    " Additional remappings: l → u, u → i, i → l, and K → n (bottom row)

    " Normal mode mappings
    nnoremap f e
    nnoremap t f
    nnoremap g t
    nnoremap d g
    nnoremap s d
    nnoremap r s
    nnoremap p r
    nnoremap ; p
    nnoremap o ;
    nnoremap y o
    nnoremap j y
    nnoremap n j
    nnoremap k n
    nnoremap e k
    nnoremap l u
    nnoremap u i
    nnoremap i l
    nnoremap K n

    " Visual mode mappings
    vnoremap f e
    vnoremap t f
    vnoremap g t
    vnoremap d g
    vnoremap s d
    vnoremap r s
    vnoremap p r
    vnoremap ; p
    vnoremap o ;
    vnoremap y o
    vnoremap j y
    vnoremap n j
    vnoremap k n
    vnoremap e k
    vnoremap l u
    vnoremap u i
    vnoremap i l
    vnoremap K n

    " Operator-pending mode mappings
    onoremap f e
    onoremap t f
    onoremap g t
    onoremap d g
    onoremap s d
    onoremap r s
    onoremap p r
    onoremap ; p
    onoremap o ;
    onoremap y o
    onoremap j y
    onoremap n j
    onoremap k n
    onoremap e k
    onoremap l u
    onoremap u i
    onoremap i l
    onoremap K n

    " Insert mode mappings (using <C-o> for one normal command execution)
    inoremap f <C-o>e
    inoremap t <C-o>f
    inoremap g <C-o>t
    inoremap d <C-o>g
    inoremap s <C-o>d
    inoremap r <C-o>s
    inoremap p <C-o>r
    inoremap ; <C-o>p
    inoremap o <C-o>;
    inoremap y <C-o>o
    inoremap j <C-o>y
    inoremap n <C-o>j
    inoremap k <C-o>n
    inoremap e <C-o>k
    inoremap l <C-o>u
    inoremap u <C-o>i
    inoremap i <C-o>l
    inoremap K <C-o>n

    let g:colemak_mappings_enabled = 1
    echo "Colemak mappings enabled"
  endif
endfunction

" --- Toggle key binding ---
" Map the toggle function to <leader>\ in all modes.
" nnoremap <silent> <leader>\ :call ColemakToggleMappings()<CR>
" vnoremap <silent> <leader>\ <Esc>:call ColemakToggleMappings()<CR>
" ounoremap <silent> <leader>\ <Esc>:call ColemakToggleMappings()<CR>
" inoremap <silent> <leader>\ <Esc>:call ColemakToggleMappings()<CR>

" Map the toggle function to <leader>\ in all modes.
nnoremap <silent> <leader>\ :call ColemakToggleMappings()<CR>
vnoremap <silent> <leader>\ <Esc>:call ColemakToggleMappings()<CR>
onoremap <silent> <leader>\ <Esc>:call ColemakToggleMappings()<CR>
inoremap <silent> <leader>\ <Esc>:call ColemakToggleMappings()<CR>
