user=$1
## Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Pathogen
mkdir -p /home/$user/.vim/autoload ~/.vim/bundle && \
curl -LSso /home/$user/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cp -r .vim/* /home/$user/.vim/
cp .vimrc /home/$user/


