" Create by Jeremy Barascut
" v0.1 - 18/10/2014

" Active la numérotation des lignes
set number

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
