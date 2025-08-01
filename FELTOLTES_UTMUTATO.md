# 🚀 GitHub Pages Feltöltési Útmutató (Nagy fájlokkal)

## ⚠️ Probléma: EasyPerfo_Setup.exe túl nagy (56MB > 25MB limit)

## 🎯 Megoldás: GitHub Releases + GitHub Pages kombináció

### **1. lépés: Repository létrehozása**

1. **GitHub:** https://github.com/new
2. **Név:** `easyperfo`
3. **Public** repository
4. **Create repository**

### **2. lépés: Kis fájlok feltöltése GitHub Pages-re**

**Töltsd fel ezeket a fájlokat a repository gyökerébe:**

✅ **Kis fájlok (webes feltöltéssel):**
- `index.html` (módosított verzió)
- `aircraft_PA28A.zip` (~1-2MB)
- `aircraft_PA34A.zip` (~1-2MB)  
- `icon.ico`
- `WINDOWS_DEFENDER_UTMUTATO.md`
- `_config.yml`
- `README.md`

❌ **NE töltsd fel:**
- `EasyPerfo_Setup.exe` (túl nagy)

### **3. lépés: Nagy fájl feltöltése GitHub Releases-re**

1. **Repository-ban menj:** Releases → "Create a new release"
2. **Tag version:** `v1.0`
3. **Release title:** `EasyPerfo v1.0`
4. **Description:**
   ```
   EasyPerfo Automata Teljesítményszámító v1.0
   
   📦 Telepítő fájl:
   - EasyPerfo_Setup.exe (56MB)
   
   ⚠️ Windows Defender figyelmeztetés várható
   📋 Telepítési útmutató: https://username.github.io/easyperfo
   ```
5. **Attach files:** Húzd be az `EasyPerfo_Setup.exe` fájlt
6. **Publish release**

### **4. lépés: index.html módosítása**

A telepítő link módosítása a Release URL-re:

```html
<!-- Régi: -->
<a href="EasyPerfo_Setup.exe" class="download-btn" download>

<!-- Új: -->
<a href="https://github.com/USERNAME/easyperfo/releases/download/v1.0/EasyPerfo_Setup.exe" class="download-btn">
```

### **5. lépés: GitHub Pages bekapcsolása**

1. **Settings** → **Pages**
2. **Source:** "Deploy from a branch"
3. **Branch:** "main" / "(root)"
4. **Save**

## 📝 Módosított index.html

Itt a frissített link:

```html
<a href="https://github.com/USERNAME/easyperfo/releases/download/v1.0/EasyPerfo_Setup.exe" class="download-btn" download>
    ⬇️ EasyPerfo Telepítő letöltése
</a>
```

**Cseréld ki az `USERNAME`-t a saját GitHub felhasználóneveddel!**

## 🎯 Előnyök:

✅ **Nincs fájlméret korlát** (Releases: 2GB limit)
✅ **Letöltési statisztikák** (hányan töltötték le)
✅ **Verziókezelés** (könnyű frissíteni)
✅ **Gyors feltöltés** (nincs szükség Git LFS-re)
✅ **Professzionális** megjelenés

## 🔄 Frissítés új verzióra:

1. **Új release létrehozása:** v1.1, v1.2, stb.
2. **Új EasyPerfo_Setup.exe feltöltése**
3. **index.html frissítése** az új verzió linkjével

## 📊 Statisztikák:

A GitHub Releases oldalán láthatod:
- Hányan töltötték le
- Mikor töltötték le
- Melyik fájlt töltötték le

## 🆘 Ha problémába ütközöl:

1. **Fájl túl nagy Releases-ben is:** Tömörítsd ZIP-be
2. **Link nem működik:** Ellenőrizd a felhasználónevet és tag-et
3. **GitHub Pages nem frissül:** Várj 5-10 percet

---

**Következő lépés:** Módosítsd az index.html fájlt a Release linkkel, majd töltsd fel!
