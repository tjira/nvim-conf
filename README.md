# Neovim Configuration

This is a repository with my personal Neovim configuration.

## Requirements

For all components of the configuration to work you will need some packages installed. This is due to the fact that some plugins use external tools. For git integration, configuration uses [lazygit](https://github.com/jesseduffield/lazygit) binary, that can be downloaded from the official repository. For code highlighting you will need to download Node.js with the following command.
```bash
curl -sL install-node.vercel.app/lts | bash -s -- --prefix=$HOME/nodejs -y
```
You also need to add the *nodejs* binary to your PATH variable. Code completion is done with LSP servers. To install bash, python and vimscript server execute the following command.
```bash
npm install -g bash-language-server pyright vim-language-server
```
For C++ server you will need clang. You can install it with the following command.
```bash
sudo apt install clangd
```
Clangd binary can also be downloaded from the official [llvm-project](https://github.com/llvm/llvm-project) repository.
