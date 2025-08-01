@echo off
echo ========================================
echo Git LFS Beallitas es Feltoltes
echo ========================================
echo.

REM Ellenorizzuk a Git telepiteset
git --version >nul 2>nul
if %errorlevel% neq 0 (
    echo HIBA: A Git nincs telepitve vagy nincs a PATH-ban!
    echo Kerem indítsa újra a Command Prompt-ot vagy PowerShell-t
    echo Vagy telepítse a Git-et: https://git-scm.com/download/win
    pause
    exit /b 1
)

REM Ellenorizzuk a Git LFS telepiteset
git lfs version >nul 2>nul
if %errorlevel% neq 0 (
    echo HIBA: A Git LFS nincs telepitve!
    echo Kerem telepítse: https://git-lfs.github.io/
    pause
    exit /b 1
)

echo Git verzio:
git --version
echo.
echo Git LFS verzio:
git lfs version
echo.

echo ========================================
echo Git LFS Inicializalas
echo ========================================

REM Git LFS globalis beallitas
echo Git LFS globalis beallitas...
git lfs install

REM Git repository inicializalas
echo Git repository inicializalas...
git init
git branch -M main

REM Git LFS tracking beallitas
echo Nagy fajlok nyomon kovetese...
git lfs track "*.exe"
git lfs track "*.zip"

echo.
echo ========================================
echo Fajlok hozzaadasa
echo ========================================

REM .gitattributes fajl hozzaadasa eloszor
git add .gitattributes

REM Osszes fajl hozzaadasa
git add .

echo.
echo ========================================
echo Commit
echo ========================================

git commit -m "Initial commit with Git LFS"

echo.
echo ========================================
echo KOVETKEZO LEPESEK:
echo ========================================
echo.
echo 1. Hozzon letre GitHub repository-t:
echo    https://github.com/new
echo    Nev: easyperfo
echo    Public repository
echo.
echo 2. Remote hozzaadasa es push:
echo    git remote add origin https://github.com/FELHASZNALONEV/easyperfo.git
echo    git push -u origin main
echo.
echo 3. GitHub Pages bekapcsolasa:
echo    Settings → Pages → Deploy from branch → main
echo.
echo 4. index.html modositasa:
echo    Csereld ki "USERNAME"-t a GitHub felhasznalonevedre
echo.
echo ========================================

pause
