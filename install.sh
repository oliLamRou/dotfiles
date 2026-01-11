#Install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/stevearc/conform.nvim.git ~/.config/nvim/pack/plugins/start/conform.nvim
git clone --depth=1 https://github.com/stevearc/oil.nvim.git ~/.config/nvim/pack/plugins/start/oil.nvim
git clone https://github.com/catppuccin/nvim ~/.config/nvim/pack/plugins/start/catppuccin
git clone https://github.com/echasnovski/mini.nvim ~/.config/nvim/pack/plugins/start/mini.nvim

#SymLink
ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc 
ln -sf $HOME/dotfiles/nvim/init.lua $HOME/.config/nvim/init.lua
