# 🛩️ EasyPerfo - Letöltési Oldal

Ez a repository tartalmazza az EasyPerfo szoftver letöltési oldalát, amely GitHub Pages-en fut.

## 📋 Tartalom

- **EasyPerfo_Setup.exe** - A fő telepítő fájl
- **aircraft_PA28A.zip** - PA28A (Piper Cherokee) repülőgép adatok
- **aircraft_PA34A.zip** - PA34A (Piper Seneca) repülőgép adatok
- **index.html** - A letöltési weblap
- **WINDOWS_DEFENDER_UTMUTATO.md** - Telepítési útmutató

## 🌐 Weblap elérése

A letöltési oldal elérhető itt: [https://yourusername.github.io/easyperfo](https://yourusername.github.io/easyperfo)

## 🚀 GitHub Pages beállítása

1. **Repository létrehozása:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/yourusername/easyperfo.git
   git push -u origin main
   ```

2. **GitHub Pages aktiválása:**
   - Menj a GitHub repository Settings oldalára
   - Görgess le a "Pages" szekcióhoz
   - Source: "Deploy from a branch"
   - Branch: "main" / "(root)"
   - Kattints "Save"

3. **Fájlok feltöltése:**
   - Másold fel az összes fájlt a repository-ba
   - Különösen fontos: `EasyPerfo_Setup.exe`, `aircraft_*.zip` fájlok

## 📁 Fájl struktúra

```
/
├── index.html                    # Fő weblap
├── _config.yml                   # GitHub Pages konfiguráció
├── EasyPerfo_Setup.exe          # Telepítő fájl (~56MB)
├── aircraft_PA28A.zip           # PA28A adatok
├── aircraft_PA34A.zip           # PA34A adatok
├── icon.ico                     # Favicon
├── WINDOWS_DEFENDER_UTMUTATO.md # Telepítési útmutató
└── README.md                    # Ez a fájl
```

## ⚠️ Fontos megjegyzések

### Fájlméret korlátok
- GitHub maximum 100MB/fájl
- Repository maximum 1GB
- Az EasyPerfo_Setup.exe (~56MB) belefér

### Fájl típusok
- `.exe` fájlok: Engedélyezve a `_config.yml`-ben
- `.zip` fájlok: Statikus fájlként szolgáltatva
- Minden fájl közvetlenül letölthető

### Biztonság
- A telepítő nincs digitálisan aláírva
- Windows Defender figyelmeztetést jeleníthet meg
- Részletes útmutató a `WINDOWS_DEFENDER_UTMUTATO.md`-ben

## 🔧 Karbantartás

### Új verzió feltöltése:
1. Cseréld ki az `EasyPerfo_Setup.exe` fájlt
2. Frissítsd a verziószámot az `index.html`-ben
3. Commit és push

### Aircraft adatok frissítése:
1. Frissítsd az `aircraft/` mappákat
2. Hozz létre új ZIP fájlokat:
   ```bash
   powershell -Command "Compress-Archive -Path 'aircraft\PA28A\*' -DestinationPath 'aircraft_PA28A.zip' -Force"
   powershell -Command "Compress-Archive -Path 'aircraft\PA34A\*' -DestinationPath 'aircraft_PA34A.zip' -Force"
   ```
3. Commit és push

## 📊 Statisztikák

GitHub Pages automatikusan nyomon követi:
- Letöltések száma
- Látogatók száma
- Népszerű fájlok

## 🆘 Hibaelhárítás

### "404 Not Found" hiba:
- Ellenőrizd, hogy a GitHub Pages be van-e kapcsolva
- Várj 5-10 percet a változások érvénybe lépéséhez

### Fájl nem tölthető le:
- Ellenőrizd a fájl méretét (max 100MB)
- Ellenőrizd a fájl nevét (case-sensitive)

### Weblap nem frissül:
- GitHub Pages cache: 5-10 perc
- Böngésző cache: Ctrl+F5 (hard refresh)

## 📞 Támogatás

Ha problémába ütközöl, ellenőrizd:
1. GitHub Pages státusz
2. Repository beállítások
3. Fájl engedélyek

---

**Készítette:** KIBOVIT  
**Verzió:** 1.0  
**Utolsó frissítés:** 2024
