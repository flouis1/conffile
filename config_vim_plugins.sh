#bin/bash
echo "install vim"
git clone https://github.com/vim/vim
mv vim .vim
echo "install pathogen"
mkdir -p .vim/autoload
curl -LSso .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "yeahhh cloning your vim pugins"
echo "enter in ~/conffile/.vim/bundle folder"
mkdir -p .vim/bundle
cd .vim/bundle
LINK=https://github.com/junegunn/vader.vim.git
EXTEN=$(basename ${LINK##*/} .git)
if [ -e "$EXTEN" ]; then cd $EXTEN && git pull origin master && cd - ; else git clone --depth=1 $LINK; fi &&\

LINK=https://github.com/vim-airline/vim-airline-themes
EXTEN=${LINK##*/}
if [ -e "$EXTEN" ]; then cd $EXTEN && git pull origin master && cd - ; else git clone --depth=1 $LINK; fi &&\

LINK=https://github.com/LaTeX-Box-Team/LaTeX-Box.git
EXTEN=$(basename ${LINK##*/} .git)
if [ -e "$EXTEN" ]; then cd $EXTEN && git pull origin master && cd - ; else git clone --depth=1 $LINK; fi &&\

LINK=https://github.com/scrooloose/nerdtree.git
EXTEN=$(basename ${LINK##*/} .git)
if [ -e "$EXTEN" ]; then cd $EXTEN && git pull origin master && cd - ; else git clone --depth=1 $LINK; fi &&\

LINK=https://github.com/vim-airline/vim-airline
EXTEN=${LINK##*/}
if [ -e "$EXTEN" ]; then cd $EXTEN && git pull origin master && cd - ; else git clone --depth=1 $LINK; fi &&\

LINK=https://github.com/edkolev/tmuxline.vim
EXTEN=${LINK##*/}
if [ -e "$EXTEN" ]; then cd $EXTEN && git pull origin master && cd - ; else git clone --depth=1 $LINK; fi &&\

LINK=https://github.com/vim-syntastic/syntastic.git
EXTEN=$(basename ${LINK##*/} .git)
if [ -e "$EXTEN" ]; then cd $EXTEN && git pull origin master && cd - ; else git clone --depth=1 $LINK; fi &&\

LINK=https://github.com/tpope/vim-sensible.git
EXTEN=$(basename ${LINK##*/} .git)
if [ -e "$EXTEN" ]; then cd $EXTEN && git pull origin master && cd - ; else git clone --depth=1 $LINK; fi &&\

LINK=https://github.com/xuhdev/vim-latex-live-preview.git
EXTEN=$(basename ${LINK##*/} .git)
if [ -e "$EXTEN" ]; then cd $EXTEN && git pull origin master && cd - ; else git clone --depth=1 $LINK; fi &&\

echo "clone done"
echo "Add helptages"
find . -name 'doc' -exec vim -u NONE -c 'helptags '{} -c q \; 
echo "done"

cd ~/conffile
