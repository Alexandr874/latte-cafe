#!/usr/bin/env bash
# Скачивает картинки и иконки из Figma в папку img/.
# Ссылки Figma временные (живут ~7 дней с 16.10.2026).
# Запуск: из папки проекта выполнить  bash download-assets.sh
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p img/icons

BASE="https://www.figma.com/api/mcp/asset/af24c66e-c203-49e9-a4cb-fd83d56a4507"

get() {
  echo "→ $2"
  curl -fsSL "$BASE/$1" -o "$2"
}

get 88848.png img/hero.png
get 9d39a.png img/menu.png
get 38cf6.png img/gallery-1.png
get 07b73.png img/gallery-2.png
get 1a418.png img/gallery-3.png
get b0afc.svg img/logo.svg
get 450db.svg img/icons/mail.svg
get 6d4ab.svg img/icons/facebook.svg
get 4e170.svg img/icons/instagram-frame.svg
get 552b4.svg img/icons/instagram-lens.svg
get 55a8b.svg img/icons/instagram-dot.svg

echo "Готово."
