@echo off
echo ========================================
echo GitHub Pages Feltoltes Elokeszites
echo ========================================
echo.

echo Ellenorzom a fajlokat...

REM Ellenorizzuk a kis fajlokat
if not exist "index.html" (
    echo HIBA: index.html nem talalhato!
    pause
    exit /b 1
)

if not exist "aircraft_PA28A.zip" (
    echo HIBA: aircraft_PA28A.zip nem talalhato!
    pause
    exit /b 1
)

if not exist "aircraft_PA34A.zip" (
    echo HIBA: aircraft_PA34A.zip nem talalhato!
    pause
    exit /b 1
)

echo.
echo ========================================
echo FELTOLTENDO FAJLOK (kis meretu):
echo ========================================
echo.
echo ✅ index.html
echo ✅ aircraft_PA28A.zip
echo ✅ aircraft_PA34A.zip
echo ✅ icon.ico
echo ✅ WINDOWS_DEFENDER_UTMUTATO.md
echo ✅ _config.yml
echo ✅ README.md
echo ✅ FELTOLTES_UTMUTATO.md
echo.

echo ========================================
echo NEM FELTOLTENDO FAJLOK (nagy meretu):
echo ========================================
echo.
echo ❌ EasyPerfo_Setup.exe (56MB - GitHub Releases-re kell!)
echo.

REM Nagy fajl eltavolitasa a feltoltes elott
if exist "EasyPerfo_Setup.exe" (
    echo Eltavolitom az EasyPerfo_Setup.exe fajlt a mappából...
    echo (Ez csak a github-pages mappából törlődik, az eredeti megmarad!)
    del "EasyPerfo_Setup.exe"
    echo ✅ EasyPerfo_Setup.exe eltavolitva
    echo.
)

echo ========================================
echo KOVETKEZO LEPESEK:
echo ========================================
echo.
echo 1. GitHub repository letrehozasa:
echo    https://github.com/new
echo    Nev: easyperfo
echo    Public repository
echo.
echo 2. Kis fajlok feltoltese (webes feluleten):
echo    - Huzd be az osszes fajlt a mappából
echo    - KIVEVE az EasyPerfo_Setup.exe-t!
echo.
echo 3. GitHub Releases letrehozasa:
echo    - Repository → Releases → Create new release
echo    - Tag: v1.0
echo    - Title: EasyPerfo v1.0
echo    - Attach: EasyPerfo_Setup.exe (az eredeti mappából!)
echo.
echo 4. index.html modositasa:
echo    - Csereld ki "USERNAME"-t a GitHub felhasznalonevedre
echo    - Commit a valtozast
echo.
echo 5. GitHub Pages bekapcsolasa:
echo    - Settings → Pages → Deploy from branch → main
echo.
echo ========================================
echo.
echo A mappa most kesz a feltoltesre!
echo Olvasd el a FELTOLTES_UTMUTATO.md fajlt a reszletes lepesekert.
echo.

pause
