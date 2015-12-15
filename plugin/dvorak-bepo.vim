" Description {{{
"   Original by Shai Coleman, 2008-04-21.  http://colemak.com/
"   Modified by Joel Esko, 2012-09-14.
"
"   Load colemak.vim after all other Vim scripts.
"
"   Refer to ../README.md for keymap explanations.
" }}}
" Require Vim >=7.0 {{{
    if v:version < 700 | echohl WarningMsg | echo "colemak.vim: You need Vim version 7.0 or later." | echohl None | finish | endif
" }}}
" " Up/down/left/right {{{
"     " Always go down/up one line regardless of "set wrap". Is that a sane default?
"     nnoremap h h|xnoremap h h|onoremap h h|
"     nnoremap n gj|xnoremap n gj|onoremap n gj|
"     nnoremap e gk|xnoremap e gk|onoremap e gk|
"     nnoremap i l|xnoremap i l|onoremap i l|
" " }}}
" " Turbo navigation {{{
"     " Works with counts, see ":help complex-repeat"
"     nnoremap <silent> H @='5h'<CR>|xnoremap <silent> H @='5h'<CR>|onoremap <silent> H @='5h'<CR>|
"     nnoremap <silent> N @='5gj'<CR>|xnoremap <silent> N @='5gj'<CR>|onoremap <silent> N @='5gj'<CR>|
"     nnoremap <silent> E @='5gk'<CR>|xnoremap <silent> E @='5gk'<CR>|onoremap <silent> E @='5gk'<CR>|
"     nnoremap <silent> I @='5l'<CR>|xnoremap <silent> I @='5l'<CR>|onoremap <silent> I @='5l'<CR>|
" " }}}





" {W} -> [É]
" ——————————
" On remappe W sur É :
noremap é w
noremap É W
" Corollaire: on remplace les text objects aw, aW, iw et iW
" pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
onoremap aé aw
onoremap aÉ aW
onoremap ié iw
onoremap iÉ iW
" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un
Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>

" [HJKL] -> {CTSR}
" ————————————————
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
noremap t j
noremap s k
" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" {TS} = « joindre / aide »
noremap T J
noremap S K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk

" {HJKL} <- [CTSR]
" ————————————————
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap j t
noremap J T
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de
ligne)
noremap l c
noremap L C
" {H} = « Remplace »           (h = un caractère slt, H = reste en
« Remplace »)
noremap h r
noremap H R
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k s
noremap K S
" Corollaire : correction orthographique
noremap ]k ]s
noremap [k [s

" Désambiguation de {g}
" —————————————————————
" ligne écran précédente / suivante (à l'intérieur d'une phrase)
noremap gs gk
noremap gt gj
" onglet précédant / suivant
noremap gb gT
noremap gé gt
" optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
noremap gB :exe "silent! tabfirst"<CR>
noremap gÉ :exe "silent! tablast"<CR>
" optionnel : {g"} pour aller au début de la ligne écran
noremap g" g0

" <> en direct
" ————————————
noremap « <
noremap » >

" Remaper la gestion des fenêtres
" ———————————————————————————————
noremap wt <C-w>j
noremap ws <C-w>k
noremap wc <C-w>h
noremap wr <C-w>l
noremap wd <C-w>c
noremap wo <C-w>s
noremap wp <C-w>o
noremap w<SPACE> :split<CR>
noremap w<CR> :vsplit<CR>}]]"
