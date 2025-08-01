# 🚀 GitHub Pages Telepítési Útmutató

Ez a mappa tartalmazza az EasyPerfo letöltési weboldalának összes fájlját.

## 📁 Mappa tartalma

```
github-pages/
├── index.html                    # Fő weblap
├── _config.yml                   # GitHub Pages konfiguráció
├── .gitignore                    # Git kizárások
├── README.md                     # GitHub repository dokumentáció
├── EasyPerfo_Setup.exe          # Telepítő fájl (~56MB)
├── aircraft_PA28A.zip           # PA28A repülőgép adatok
├── aircraft_PA34A.zip           # PA34A repülőgép adatok
├── icon.ico                     # Favicon
├── WINDOWS_DEFENDER_UTMUTATO.md # Telepítési útmutató
├── deploy_github_pages.bat      # Deployment script
└── TELEPITES_UTMUTATO.md        # Ez a fájl
```

## 🌐 GitHub Pages beállítása

### 1. Lépés: GitHub Repository létrehozása

1. Menj a GitHub-ra: https://github.com/new
2. Repository neve: `easyperfo`
3. Állítsd **Public**-ra (GitHub Pages ingyenes csak public repo-knál)
4. **NE** pipáld be a "Add a README file" opciót
5. Kattints "Create repository"

### 2. Lépés: Fájlok feltöltése

**Opció A: Webes feltöltés (egyszerűbb)**
1. A GitHub repository oldalán kattints "uploading an existing file"
2. Húzd be az összes fájlt a `github-pages/` mappából
3. Commit message: "Initial commit"
4. Kattints "Commit changes"

**Opció B: Git parancssor (haladó)**
```bash
# Navigálj a github-pages mappába
cd github-pages

# Git inicializálás
git init
git branch -M main

# Fájlok hozzáadása
git add .
git commit -m "Initial commit"

# Remote hozzáadása (cseréld ki a FELHASZNALONEV-et!)
git remote add origin https://github.com/FELHASZNALONEV/easyperfo.git

# Feltöltés
git push -u origin main
```

### 3. Lépés: GitHub Pages aktiválása

1. Menj a repository **Settings** oldalára
2. Görgess le a **"Pages"** szekcióhoz (bal oldali menüben)
3. **Source**: "Deploy from a branch"
4. **Branch**: "main"
5. **Folder**: "/ (root)"
6. Kattints **"Save"**

### 4. Lépés: Weblap elérése

- A weblap elérhető lesz: `https://FELHASZNALONEV.github.io/easyperfo`
- Az első build 5-10 percet vehet igénybe
- A GitHub jelzi, amikor kész: zöld pipa a repository tetején

## 🔧 Frissítések

### Új EasyPerfo verzió feltöltése:

1. **Új telepítő készítése:**
   ```bash
   # A fő projektmappában
   build_secure_installer.bat
   ```

2. **Fájlok másolása:**
   ```bash
   copy EasyPerfo_Setup.exe github-pages\
   ```

3. **Verzió frissítése az index.html-ben:**
   - Nyisd meg `github-pages/index.html`
   - Keresd meg: `Verzió: 1.0`
   - Módosítsd az új verziószámra

4. **Feltöltés GitHub-ra:**
   ```bash
   cd github-pages
   git add .
   git commit -m "Update to version X.X"
   git push
   ```

### Aircraft adatok frissítése:

1. **ZIP fájlok újragenerálása:**
   ```bash
   # A fő projektmappában
   powershell -Command "Compress-Archive -Path 'aircraft\PA28A\*' -DestinationPath 'github-pages\aircraft_PA28A.zip' -Force"
   powershell -Command "Compress-Archive -Path 'aircraft\PA34A\*' -DestinationPath 'github-pages\aircraft_PA34A.zip' -Force"
   ```

2. **Feltöltés:**
   ```bash
   cd github-pages
   git add aircraft_*.zip
   git commit -m "Update aircraft data"
   git push
   ```

## ⚠️ Fontos tudnivalók

### Fájlméret korlátok:
- **Maximum fájlméret**: 100MB (az EasyPerfo_Setup.exe ~56MB, OK)
- **Repository méret**: Maximum 1GB
- **Bandwidth**: 100GB/hónap (ingyenes)

### Támogatott fájltípusok:
- ✅ `.html`, `.css`, `.js` - Weboldalak
- ✅ `.exe` - Telepítő fájlok (statikus kiszolgálás)
- ✅ `.zip` - Archívumok
- ✅ `.ico`, `.png`, `.jpg` - Képek
- ✅ `.md` - Markdown dokumentumok

### Biztonság:
- ❌ A telepítő **nincs** digitálisan aláírva
- ⚠️ Windows Defender figyelmeztetést jeleníthet meg
- ✅ Részletes útmutató: `WINDOWS_DEFENDER_UTMUTATO.md`

## 🆘 Hibaelhárítás

### "404 Not Found" hiba:
- Várj 5-10 percet a GitHub Pages build befejezéséhez
- Ellenőrizd a Settings → Pages beállításokat
- Ellenőrizd, hogy az `index.html` a repository gyökerében van

### Fájl nem tölthető le:
- Ellenőrizd a fájl méretét (max 100MB)
- Ellenőrizd a fájl nevét (case-sensitive!)
- Próbáld meg direct linkkel: `https://FELHASZNALONEV.github.io/easyperfo/EasyPerfo_Setup.exe`

### Weblap nem frissül:
- GitHub Pages cache: 5-10 perc
- Böngésző cache: Ctrl+F5 (hard refresh)
- Ellenőrizd a commit státuszt a repository Actions fülön

### Git problémák:
- Ellenőrizd a Git telepítését: `git --version`
- Ellenőrizd a remote URL-t: `git remote -v`
- Authentication: Használj Personal Access Token-t jelszó helyett

## 📞 Támogatás

Ha problémába ütközöl:

1. **Ellenőrizd a GitHub Status-t**: https://www.githubstatus.com/
2. **GitHub Pages dokumentáció**: https://docs.github.com/en/pages
3. **Community fórum**: https://github.community/

---

**Készítette:** KIBOVIT  
**Verzió:** 1.0  
**Utolsó frissítés:** 2024-08-01
