@echo off
echo ========================================
echo EasyPerfo GitHub Pages Deployment
echo ========================================
echo.

REM Ellenorizzuk a Git telepiteset
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo HIBA: A Git nincs telepitve vagy nincs a PATH-ban!
    echo Kerem telepitse a Git-et: https://git-scm.com/download/win
    pause
    exit /b 1
)

REM Ellenorizzuk a szukseges fajlokat
if not exist "EasyPerfo_Setup.exe" (
    echo HIBA: Az EasyPerfo_Setup.exe fajl nem talalhato!
    echo Kerem futtassa elobb a build_secure_installer.bat fajlt!
    pause
    exit /b 1
)

if not exist "aircraft_PA28A.zip" (
    echo HIBA: Az aircraft_PA28A.zip fajl nem talalhato!
    echo Letrehozom...
    powershell -Command "Compress-Archive -Path '..\aircraft\PA28A\*' -DestinationPath 'aircraft_PA28A.zip' -Force"
)

if not exist "aircraft_PA34A.zip" (
    echo HIBA: Az aircraft_PA34A.zip fajl nem talalhato!
    echo Letrehozom...
    powershell -Command "Compress-Archive -Path '..\aircraft\PA34A\*' -DestinationPath 'aircraft_PA34A.zip' -Force"
)

echo.
echo Fajlok ellenorzese...
echo - EasyPerfo_Setup.exe: OK
echo - aircraft_PA28A.zip: OK
echo - aircraft_PA34A.zip: OK
echo - index.html: OK
echo - _config.yml: OK
echo.

REM Git repository inicializalasa (ha meg nincs)
if not exist ".git" (
    echo Git repository inicializalasa...
    git init
    git branch -M main
    echo.
)

REM Fajlok hozzaadasa
echo Fajlok hozzaadasa a Git repository-hoz...
git add index.html
git add _config.yml
git add EasyPerfo_Setup.exe
git add aircraft_PA28A.zip
git add aircraft_PA34A.zip
git add icon.ico
git add WINDOWS_DEFENDER_UTMUTATO.md
git add README_GITHUB.md
git add .gitignore

REM Commit
echo.
set /p commit_message="Commit uzenet (Enter = 'Update files'): "
if "%commit_message%"=="" set commit_message=Update files

git commit -m "%commit_message%"

echo.
echo ========================================
echo KOVETKEZO LEPESEK:
echo ========================================
echo.
echo 1. Hozzon letre egy uj GitHub repository-t:
echo    https://github.com/new
echo.
echo 2. Repository neve: easyperfo
echo.
echo 3. Futtassa ezeket a parancsokat:
echo    git remote add origin https://github.com/FELHASZNALONEV/easyperfo.git
echo    git push -u origin main
echo.
echo 4. GitHub Pages bekapcsolasa:
echo    - Menjen a repository Settings oldalara
echo    - Keresse meg a "Pages" szekciót
echo    - Source: "Deploy from a branch"
echo    - Branch: "main" / "(root)"
echo    - Kattintson "Save"
echo.
echo 5. A weblap elerheto lesz:
echo    https://FELHASZNALONEV.github.io/easyperfo
echo.
echo ========================================

pause
