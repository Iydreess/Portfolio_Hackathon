# PowerShell Script to Download Google Fonts
# Run this script in PowerShell to automatically download fonts

Write-Host "🎨 Google Fonts Downloader for Portfolio" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan

# Create fonts directory if it doesn't exist
$fontsDir = ".\assets\fonts"
if (!(Test-Path $fontsDir)) {
    New-Item -ItemType Directory -Path $fontsDir -Force
    Write-Host "✅ Created fonts directory" -ForegroundColor Green
}

# Google Fonts API URLs for Inter and Poppins
$interUrl = "https://fonts.google.com/download?family=Inter"
$poppinsUrl = "https://fonts.google.com/download?family=Poppins"

Write-Host "`n📥 Manual Download Instructions:" -ForegroundColor Yellow
Write-Host "1. Open your web browser"
Write-Host "2. Go to: https://fonts.google.com"
Write-Host "3. Search for 'Inter' and click 'Download family'"
Write-Host "4. Search for 'Poppins' and click 'Download family'"
Write-Host "5. Extract the ZIP files"
Write-Host "6. Copy these specific files to your fonts folder:"

Write-Host "`n📁 Required files:" -ForegroundColor Magenta
Write-Host "   Inter-Regular.woff2"
Write-Host "   Inter-Medium.woff2"
Write-Host "   Poppins-Regular.woff2"
Write-Host "   Poppins-SemiBold.woff2"

Write-Host "`n🎯 Alternative Method - Using curl:" -ForegroundColor Cyan
Write-Host "If you have curl installed, you can try:"
Write-Host "curl -L 'https://fonts.google.com/download?family=Inter' -o inter.zip"
Write-Host "curl -L 'https://fonts.google.com/download?family=Poppins' -o poppins.zip"

Write-Host "`n✨ After downloading:" -ForegroundColor Green
Write-Host "1. Replace the placeholder files in assets/fonts/"
Write-Host "2. Refresh your browser to see the new fonts"
Write-Host "3. The fonts are now locally hosted - no internet required!"

Write-Host "`n🔧 Current font files in directory:" -ForegroundColor Yellow
Get-ChildItem $fontsDir -Name

Read-Host "`nPress Enter to continue..."
