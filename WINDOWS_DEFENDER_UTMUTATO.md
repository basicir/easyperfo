# Windows Defender Telepítési Útmutató

## Miért jelenik meg figyelmeztetés?

A Windows Defender és más antivírus szoftverek gyakran figyelmeztetést jelenítenek meg ismeretlen telepítőknél, még akkor is, ha azok teljesen biztonságosak. Ez azért történik, mert:

- A telepítő nincs digitálisan aláírva (code signing tanúsítvány nélkül)
- A szoftver még nem építette fel a "hírnevet" a Microsoft rendszerében
- Az antivírus óvatos az új, ismeretlen fájlokkal

## Hogyan telepítsem biztonságosan?

### 1. Windows Defender SmartScreen megkerülése

Ha ezt a figyelmeztetést látja:
```
"A Windows megvédte a számítógépét"
"Ismeretlen alkalmazás"
```

**Lépések:**
1. Kattintson a **"További információ"** linkre
2. Kattintson a **"Futtatás mindenképpen"** gombra
3. A telepítés folytatódik

### 2. Windows Defender kivétel hozzáadása

**Előzetes kivétel hozzáadása:**
1. Nyissa meg a **Windows Biztonsági központot**
2. Válassza a **"Vírus- és fenyegetésvédelem"** menüt
3. Kattintson a **"Kivételek kezelése"** linkre
4. Kattintson a **"Kivétel hozzáadása"** gombra
5. Válassza a **"Fájl"** opciót
6. Tallózza ki és válassza ki az `EasyPerfo_Setup.exe` fájlt

### 3. Átmeneti valós idejű védelem kikapcsolása

**Csak telepítés idejére:**
1. Nyissa meg a **Windows Biztonsági központot**
2. Válassza a **"Vírus- és fenyegetésvédelem"** menüt
3. Kattintson a **"Valós idejű védelem"** alatt a **"Beállítások kezelése"** linkre
4. Kapcsolja **KI** a "Valós idejű védelmet"
5. Telepítse az alkalmazást
6. **FONTOS:** Kapcsolja vissza **BE** a védelmet a telepítés után!

## Miért biztonságos ez a telepítő?

- **Nyílt forráskód**: A teljes forráskód elérhető és ellenőrizhető
- **Helyi telepítés**: Nem kommunikál külső szerverekkel
- **Nincs adatgyűjtés**: Nem gyűjt személyes adatokat
- **Tiszta telepítés**: Csak a szükséges fájlokat telepíti

## Alternatív telepítési módok

### 1. Manuális telepítés
Ha nem szeretné használni a telepítőt:
1. Hozzon létre egy mappát: `C:\Program Files\EasyPerfo\`
2. Másolja be a `EasyPerfo.exe` fájlt
3. Másolja be az `aircraft` mappát
4. Hozzon létre parancsikonokat kézzel

### 2. Hordozható verzió
A szoftver futtatható telepítés nélkül is:
1. Hozzon létre egy mappát bárhol
2. Másolja be az összes fájlt
3. Futtassa közvetlenül az `EasyPerfo.exe` fájlt

## Gyakori kérdések

**K: Biztos, hogy biztonságos?**
V: Igen, a teljes forráskód nyílt és ellenőrizhető. Nem tartalmaz kártékony kódot.

**K: Miért nem vásárolnak code signing tanúsítványt?**
V: A tanúsítványok évente $100-400 dollárba kerülnek, ami egy ingyenes szoftvernél nem rentáble.

**K: Más antivírus szoftverek is jelezhetnek?**
V: Igen, hasonló okokból. Ugyanezek a lépések alkalmazhatók más antivírus szoftverekre is.

**K: Biztonságos-e a kivétel hozzáadása?**
V: Igen, de csak akkor, ha biztos abban, hogy a fájl megbízható forrásból származik.

## Támogatás

Ha problémába ütközik a telepítés során, kérjük vegye fel a kapcsolatot a fejlesztővel vagy használja a manuális telepítési módot.
