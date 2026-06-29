# Cấu hình cơ bản cho NeoVim

---

## Prerequisites
Chạy lệnh `brew install nvim` để cài neovim
Chạy lệnh `brew install ripgrep` để có thể tìm kiếm nội dung file bằng telescope
Cần có java để chạy coc-xml chạy `brew install openjdk@17  `
Cần có nodejs để chạy coc.nvim chạy `brew install node, cần thiết thì thêm vào zshrc hoặc bash_profile
```bash
export PATH="/opt/homebrew/opt/node/bin:$PATH"
```
Cài vim-plug để quản lý extension
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Để dễ dàng cho thao tác, nên có thêm cả ohmyzsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Cài thêm cả extension
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```
Cấu hình cơ bản
```bash
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git dotnet zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
```
Có 1 vài extension hoặc tool cần đến python, nên cài thêm vitrual env
```bash
sudo apt update && sudo apt install -y python3-pip python3-venv
python3 -m venv venv
```

## Các tiện ích của coc.nvim
Thêm `\'coc-explorer',` vào coc_global_extensions trong coc.vim để có file explorer

---

## C# development
Thêm đoạn  `\'coc-omnisharp',` vào coc_global_extensions trong coc.vim
Thêm đoạn này vào coc-settings.json
```json
       "languageserver": {
               "csharp-ls": {
                       "command": "csharp-ls",
                       "filetypes": [
                               "cs"
                       ],
                       "rootPatterns": [
                               "*.csproj",
                               ".vim/",
                               ".git/",
                               ".hg/"
                       ]
               }
       },
```

Chạy lệnh `dotnet tool install --global csharp-ls` để dùng omnisharp cho cocnvim
Dotnet thường dùng là 8.0, nên chạy dotnet `tool install --global csharp-ls --version 0.16.0`
Nhớ set:
```bash
export DOTNET_ROOT="/opt/homebrew/opt/dotnet@8/libexec"
export PATH="$PATH:$DOTNET_ROOT:$HOME/.dotnet/tools"
ở .zshrc hoặc .bash_profile để có thể chạy csharp-ls
```
---

## Python development
Thêm đoạn `\'coc-pyright',` vào coc_global_extensions trong coc.vim
Chạy lệnh `pip install black` để cài formatter

---

## XML/HTML development
Thêm đoạn `\'coc-xml',` vào coc_global_extensions trong coc.vim để hỗ trợ xml
Nhớ cần khai báo JAVA_HOME cho coc-xml trong file .zshrc hoặc .bash_profile
```bash
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export PATH="$JAVA_HOME/bin:$PATH"
```
Thêm `\'coc-html',` vào coc_global_extensions trong coc.vim để hỗ trợ html
Thêm `\'coc-json',` vào coc_global_extensions trong coc.vim để hỗ trợ json

---

### Java development
Thêm đoạn `\'coc-java',` vào coc_global_extensions trong coc.vim
Set JAVA_HOME trong .zshrc hoặc .bash_profile
```bash
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export PATH="$JAVA_HOME/bin:$PATH"
```

---

### JS/TS development
Thêm đoạn `\'coc-tsserver',` vào coc_global_extensions trong coc.vim để hỗ trợ JS/TS
Thêm đoạn `\'coc-eslint',` vào coc_global_extensions trong coc.vim để cài eslint giúp tự động sửa lỗi
Nhớ thêm config cho eslint trong coc-settings.json
```json
	"eslint.format.enable": true,
	"editor.codeActionsOnSave": {
		"source.fixAll.eslint": true
	}
```

---

### Rust development
Thêm đoạn `\'coc-rust-analyzer',` vào coc_global_extensions trong coc.vim để hỗ trợ rust
Chạy lệnh `rustup component add rustfmt` để cài formatter cho rust
