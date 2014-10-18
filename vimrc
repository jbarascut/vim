" Create by Jeremy Barascut
" v0.1 - 18/10/2014
    
" Active la numérotation des lignes
set number

" Transforme 1 tabulation en 4 espace
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Avoir des lignes de 120 caractères
set textwidth=120

"Active la souris
set mouse=a

" Active la coloration syntaxique
syntax on

" Montre les commandes incomplètes
set showcmd


" Active l'indentation automatique
filetype plugin indent on

" Un historique de 100 commandes
set history=100

" Une parenthèse perdue ?
set showmatch

" Améliorer la recherche
set hlsearch
set incsearch

" Surligner la ligne du curseur
set cursorline
hi Cursorline ctermbg=darkgrey guibg=#771clc cterm=none

" Détection automatique du type de fichier
filetype on
