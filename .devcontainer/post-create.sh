#!/usr/bin/env bash

# Fetch the chirpy-static-assets submodule (Font Awesome, web fonts, JS libs)
# — without it, icons and other theme assets are missing from the served site.
git submodule update --init --depth 1

# Install site gems so `bundle exec jekyll serve` works right away
bundle install

# Image optimization tools (used to keep assets/images small)
sudo apt-get update -qq
sudo apt-get install -y -qq imagemagick pngquant jpegoptim

if [ -f package.json ]; then
  bash -i -c "nvm install --lts && nvm install-latest-npm"
  npm i
  npm run build
fi

# Install dependencies for shfmt extension
curl -sS https://webi.sh/shfmt | sh &>/dev/null

# Add OMZ plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sed -i -E "s/^(plugins=\()(git)(\))/\1\2 zsh-syntax-highlighting zsh-autosuggestions\3/" ~/.zshrc

# Avoid git log use less
echo -e "\nunset LESS" >>~/.zshrc
