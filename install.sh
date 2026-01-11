#Starship
brew install starship

#Zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting

#Neo Vim
mkdir -p ~/.config/nvim/pack/plugins/start

git clone --depth=1 https://github.com/stevearc/conform.nvim.git \
  ~/.config/nvim/pack/plugins/start/conform.nvim
git clone --depth=1 https://github.com/stevearc/oil.nvim.git \
  ~/.config/nvim/pack/plugins/start/oil.nvim
git clone --depth=1 https://github.com/catppuccin/nvim \
  ~/.config/nvim/pack/plugins/start/catppuccin
git clone --depth=1 https://github.com/echasnovski/mini.nvim \
  ~/.config/nvim/pack/plugins/start/mini.nvim

# Mason
git clone --depth=1 https://github.com/williamboman/mason.nvim \
  ~/.config/nvim/pack/plugins/start/mason.nvim
git clone --depth=1 https://github.com/williamboman/mason-lspconfig.nvim \
  ~/.config/nvim/pack/plugins/start/mason-lspconfig.nvim
git clone --depth=1 https://github.com/neovim/nvim-lspconfig \
  ~/.config/nvim/pack/plugins/start/nvim-lspconfig

git clone --depth=1 https://github.com/nvim-treesitter/nvim-treesitter \
  ~/.config/nvim/pack/plugins/start/nvim-treesitter

#SymLink
ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc 
ln -sf $HOME/dotfiles/nvim/init.lua $HOME/.config/nvim/init.lua

. ~/zshrc

# Python Formatter
pip install --break-system-packages black isort
