# ⚽ Prode Mundial 2026

Sistema de prode con panel de participantes y admin, desplegado en Vercel con base de datos KV.

## Estructura
```
/api/data.js       → API backend (Vercel KV)
/public/index.html → Panel jugador (se comparte por WhatsApp)
/public/admin.html → Panel administrador
/vercel.json       → Configuración de rutas
/package.json      → Dependencias
```

## URLs
- `/jugar` → Pantalla de participantes (compartir por WhatsApp)
- `/admin` → Panel del administrador

## Códigos de acceso
- Participantes: `2026`
- Admin: `admin2026`
- Alias de cobro: `emigal.sj`

---

## 🚀 Cómo deployar en Vercel (paso a paso)

### Paso 1 – Crear el repositorio en GitHub
1. Andá a https://github.com/new
2. Nombre del repo: `prode-mundial-2026`
3. Dejalo en **privado**
4. Click en **Create repository**

### Paso 2 – Subir los archivos
En tu Mac, abrí la Terminal y ejecutá:

```bash
cd ~/Desktop
mkdir prode-mundial-2026
cd prode-mundial-2026
# Copiá todos los archivos descargados acá
git init
git add .
git commit -m "Prode Mundial 2026 inicial"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/prode-mundial-2026.git
git push -u origin main
```

### Paso 3 – Conectar con Vercel
1. Andá a https://vercel.com/dashboard
2. Click en **Add New → Project**
3. Importá el repo `prode-mundial-2026`
4. En **Root Directory** escribí: `public` → NO, dejalo vacío
5. Click en **Deploy**

### Paso 4 – Configurar la base de datos KV
1. En el dashboard de Vercel, entrá al proyecto
2. Click en **Storage** (menú superior)
3. Click en **Create Database → KV**
4. Nombre: `prode-db` → **Create**
5. En la pantalla siguiente, click en **Connect to Project**
6. Seleccioná tu proyecto `prode-mundial-2026` → **Connect**
7. Hacé un nuevo deploy: en el proyecto, click en **Deployments → Redeploy**

### Paso 5 – ¡Listo!
Tu prode estará en: `https://prode-mundial-2026.vercel.app`

- Compartí por WhatsApp: `https://prode-mundial-2026.vercel.app/jugar`
- Código de acceso: **2026**
- Tu panel admin: `https://prode-mundial-2026.vercel.app/admin`
- Contraseña admin: **admin2026**

---

## 💰 Sistema de apuestas
| Fase | Apuesta |
|------|---------|
| Grupos (3 fechas) | $10.000 c/u |
| 16avos (3 fechas) | $15.000 c/u |
| Octavos | $20.000 |
| Cuartos | $40.000 |
| Semifinal | $50.000 |
| Final | $100.000 |

El ganador de cada fecha cobra todo el pozo. Empate = se divide.
Las transferencias van al alias **emigal.sj**.
