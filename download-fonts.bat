@echo off
title Font Download Helper for Portfolio
color 0A

echo.
echo ================================
echo   GOOGLE FONTS DOWNLOAD GUIDE
echo ================================
echo.

echo 📁 Current folder structure:
dir assets\fonts /b
echo.

echo 🌐 STEP 1: Open your web browser
echo.
echo 🔍 STEP 2: Go to https://fonts.google.com
echo.
echo 📥 STEP 3: Download these fonts:
echo    • Search "Inter" → Download family
echo    • Search "Poppins" → Download family
echo.
echo 📂 STEP 4: Extract ZIP files and copy these files:
echo    • Inter-Regular.woff2
echo    • Inter-Medium.woff2  
echo    • Poppins-Regular.woff2
echo    • Poppins-SemiBold.woff2
echo.
echo 📋 STEP 5: Place files in: assets\fonts\
echo.
echo ✅ STEP 6: Replace the placeholder files
echo.
echo 🎉 Your fonts will then be locally hosted!
echo.

echo Press any key to open Google Fonts in your browser...
pause >nul

start https://fonts.google.com

echo.
echo 💡 TIP: Look for .woff2 files in the downloaded ZIP
echo    These are the best format for web use!
echo.
pause
