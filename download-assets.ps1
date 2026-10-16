# Скачивает картинки и иконки из Figma в папку img\ (Windows PowerShell).
# Запуск из папки проекта:  powershell -ExecutionPolicy Bypass -File download-assets.ps1
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
New-Item -ItemType Directory -Force -Path "img\icons" | Out-Null

$base = "https://www.figma.com/api/mcp/asset/af24c66e-c203-49e9-a4cb-fd83d56a4507"
$files = [ordered]@{
  "88848.png" = "img\hero.png"
  "9d39a.png" = "img\menu.png"
  "38cf6.png" = "img\gallery-1.png"
  "07b73.png" = "img\gallery-2.png"
  "1a418.png" = "img\gallery-3.png"
  "b0afc.svg" = "img\logo.svg"
  "450db.svg" = "img\icons\mail.svg"
  "6d4ab.svg" = "img\icons\facebook.svg"
  "4e170.svg" = "img\icons\instagram-frame.svg"
  "552b4.svg" = "img\icons\instagram-lens.svg"
  "55a8b.svg" = "img\icons\instagram-dot.svg"
}

foreach ($k in $files.Keys) {
  Write-Host "-> $($files[$k])"
  Invoke-WebRequest -Uri "$base/$k" -OutFile $files[$k]
}
Write-Host "Done."
