vim-colemak
===========

This project takes is a an adaptation of the BEPO keymap from http://bepo.fr/wiki/Vim to colemaak pluggins from : 

Colemak key mappings for Vim. Heavily trimmed and modified version of [Shai Coleman's configuration](http://colemak.com/pub/vim/colemak.vim).

Installation
------------

It is recommended to load `dvorak-bepo.vim` after all other Vim scripts. If you use Vundle or Pathogen, I suggest adding a line to reload the script at the bottom of your Vim configuration file.

    " Reload colemak.vim to remap any overridden keys
    silent! source "$HOME/.vim/bundle/vim-colemak/plugin/dvorak-bepo.vim"

### [Vundle](https://github.com/gmarik/vundle)

1. Add `Bundle 'clemaitre58/dvorak-bepo.vim'` to `~/.vim/bundles.vim`.
2. Run `vim +BundleInstall` or `:BundleInstall` within Vim.

### [Pathogen](https://github.com/tpope/vim-pathogen)

    git clone https://github.com/clemaitre58/dvorak-bepo.git $HOME/.vim/bundle/dvorak-bepo


Key mappings
------------

    BÉPO layout:                  |                 QWERTY layout:
    `12345 67890-=     Move around:  |  (instead of)   `12345 67890-=
     qwfpg jluy;[]\         s        |       k          qwert yuiop[]\
     arstd HNEIo'         c   r      |     h   l        asdfg HJKL;'
     zxcvb km,./            t        |       j          zxcvb nm,./
 
 Details of the mapping
 ----------------------
    " {W} -> [É]
    " ——————————
    " O remap W sur É :
    noremap é w
    noremap É W
    
    " remap clear and replace
    onoremap aé aw
    onoremap aÉ aW
    onoremap ié iw
    onoremap iÉ iW
    
    " {W} as Ctrl+W :
    noremap w <C-w>
    noremap W <C-w><C-w>
    
    " [HJKL] -> {CTSR}
    " ————————————————
    " {cr} = « left / right »
    noremap c h
    noremap r l
    " {ts} = « top / bottom »
    noremap t j
    noremap s k
    " {CR} = « Top / Bottom of screnn »
    noremap C H
    noremap R L
    " {TS} = « join / help »
    noremap T J
    noremap S K
    " Previous / Next
    noremap zs zj
    noremap zt zk
    
    " {HJKL} <- [CTSR]
    " ————————————————
    " {J} = « Jusqu'à »            (j = suivant, J = précédant)
    noremap j t
    noremap J T
    " {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
    noremap l c
    noremap L C
    " {H} = « Replace »           (h = un caractère slt, H = reste en « Remplace »)
    noremap h r
    noremap H R
    " {K} = « Substitue »          (k = caractère, K = ligne)
    noremap k s
    noremap K S
    " spellchecking
    noremap ]k ]s
    noremap [k [s
    
    " Désambiguation de {g}
    " —————————————————————
    " line previous / next screen
    noremap gs gk
    noremap gt gj
    " previous / next tab
    noremap gb gT
    noremap gé gt
    " {gB} / {gÉ} to go first / last tab
    noremap gB :exe "silent! tabfirst"<CR>
    noremap gÉ :exe "silent! tablast"<CR>
    " {g"} to go beginning of line
    noremap g" g0
    
    " to have <> directly
    " ————————————
    noremap « <
    noremap » >
    
    " Remap windows management
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
