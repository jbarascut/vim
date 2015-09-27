set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Gundo
Plugin 'Gundo'

" Powerline
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

"Plugin for ntes"
Plugin 'genutils'
Plugin 'misc'
Plugin 'notes'

" Nerdtree
Plugin 'nerdtree'

"Restructured text 
Plugin 'Rykka/riv.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Basic configuration
set nu 				" Afficher les numéros de ligne
syntax enable 			" Coloration syntaxique
set ai 				" Activer l'indentation automatique
set si 				" Activer l'indentation intelligente
set showmatch 			" Afficher les brackets qui correspondent
set ignorecase 			" Recherche insensible à la casse
set incsearch 			" Recherche insensible à la casse
set mouse=a 			" Activer la souris pour tous les modes
set shiftwidth=4 		" Tabulation = 4 espaces
set tabstop=4 			" Tabulation = 4 espaces
set expandtab 			" Transformer les tabulation en espaces
set ruler 			" Afficher la position courante
set smarttab 			" Etre intelligent dans l'utilisation des tabulations
set fileencoding=utf-8 		" Encoder en UTF-8
set wildmenu                    " Complétion dans l'interface
set wildmode=list:longest       " Comportement de la complétion semblable à celui d'un shell
set wildignore=*.o,*~           " Ignorer les fichiers temporaires et objets
set foldmethod=indent           " Méthode pour cacher du code (donc selon l'indentation)
set nofoldenable                " Ne rien cacher par défaut

" Autocompletion intelligente
set omnifunc=syntaxcomplete#Complete

" Aller à l'onglet suivant
nnoremap <C-Left>  :tabprevious<CR>
" Aller à l'onglet précédent
nnoremap <C-Right>  :tabnext<CR>
" Fermer l'onglet courant
nnoremap <C-c> :tabclose<CR>
" Ouvrir un nouvel onglet
nnoremap <C-t> :tabnew<CR>

" Powerline configuration
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

" Note configuration
let g:notesRoot = '~/Documents/Notes'

"Correction orthographique
setlocal spell spelllang=fr                                   " Correcteur orthographique français
set nospell                                                   " Par défaut, pas de correction orthographique
autocmd BufEnter,BufNewFile,BufRead *.txt set spell           " Activation pour les .txt
autocmd BufEnter,BufNewFile,BufRead *.txt let g:spellactive=1 " Ajustement pour la fonction d’activation/desactivation de la correction orthographique

" Correction orthographique
map <F5> <Esc>:setlocal spell! spelllang=fr
