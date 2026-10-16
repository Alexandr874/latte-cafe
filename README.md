# Latte Cafe — вёрстка из Figma

## Запуск
1. Скачай картинки из Figma (ссылки временные, ~7 дней):
   - macOS / Linux: `bash download-assets.sh`
   - Windows: `powershell -ExecutionPolicy Bypass -File download-assets.ps1`
2. Открой `index.html` или запусти локальный сервер: `npx serve .`

## Структура
```
index.html
css/style.css     — шрифты, токены, reset, блоки (БЭМ), адаптив
js/main.js        — бургер-меню
fonts/            — Inter, Azeret Mono (woff2, локально)
img/              — появится после download-assets
```

## Что учтено
- Семантика: header / nav / main / section / address / dl / time / footer, заголовки в секциях.
- БЭМ, цвета и размеры из макета вынесены в CSS-переменные.
- Сетка на Grid/Flex, без абсолютного позиционирования.
- Fluid-типографика через clamp(), брейкпоинты 1200 / 1024 / 768 / 480.
- Бургер с aria-expanded, закрытие по Esc; видимый :focus-visible; prefers-reduced-motion.
- width/height и aspect-ratio у картинок (без CLS), lazy loading ниже первого экрана.

## Можно доделать
- Сконвертировать PNG в WebP/AVIF (`npx @squoosh/cli` или squoosh.app) и обернуть в `<picture>`.
- Подставить реальные ссылки на соцсети, почту и меню.
