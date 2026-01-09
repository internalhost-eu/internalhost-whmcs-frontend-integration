# INTERNALHOST WHMCS Template

> For the crazy ones.

Custom WHMCS template met TailwindCSS voor Internalhost. Gebouwd volgens de brand guide met Slate 700 primair, Orange 600 accent, en Inter typography.

## Quick Start

```bash
# Clone de repo
git clone git@github.com:internalhost/whmcs-template.git
cd whmcs-template

# Install dependencies
npm install

# Start development (watch mode)
npm run dev

# Build voor productie
npm run build
```

## Structuur

```
├── .github/workflows/
│   └── deploy.yml          # Automatische deploy naar server
├── src/
│   └── input.css           # Tailwind source + custom components
├── templates/internalhost/
│   ├── css/
│   │   └── styles.css      # Gecompileerde Tailwind output
│   ├── images/             # Logo, favicons, etc.
│   ├── js/                 # Custom JavaScript
│   ├── header.tpl          # Header + navigatie
│   ├── footer.tpl          # Footer
│   ├── homepage.tpl        # Homepage
│   └── theme.yaml          # WHMCS template config
├── package.json
├── tailwind.config.js      # Internalhost kleuren & fonts
└── README.md
```

## Branding

### Kleuren

| Naam | Hex | Tailwind Class |
|------|-----|----------------|
| Primair (Slate 700) | `#334155` | `text-ih-primary` / `bg-ih-primary` |
| Accent (Orange 600) | `#EA580C` | `text-ih-accent` / `bg-ih-accent` |
| Body tekst (Gray 800) | `#1F2937` | `text-ih-body` |
| Secundair (Gray 500) | `#6B7280` | `text-ih-secondary` |
| Achtergrond (Gray 100) | `#F3F4F6` | `bg-ih-light` |
| Success (Emerald 600) | `#059669` | `text-ih-success` |
| Error (Red 600) | `#DC2626` | `text-ih-error` |

### Typography

- **Font:** Inter (Google Fonts)
- **Code:** JetBrains Mono
- Classes: `text-display`, `text-h1`, `text-h2`, `text-h3`, `text-body`, `text-small`

### Components

```html
<!-- Buttons -->
<a href="#" class="btn-primary">Primaire actie</a>
<a href="#" class="btn-secondary">Secundaire actie</a>

<!-- Cards -->
<div class="card">Content</div>
<div class="product-card">Product info</div>

<!-- Alerts -->
<div class="alert-info">Info bericht</div>
<div class="alert-success">Success!</div>
<div class="alert-error">Fout</div>

<!-- Terminal -->
<div class="terminal">
    <span class="terminal-prompt">whoami</span>
</div>

<!-- Forms -->
<label class="input-label">Email</label>
<input type="email" class="input" />
```

## Development

### Lokaal testen

1. Kopieer `templates/internalhost/` naar je WHMCS installatie
2. Activeer de template in WHMCS Admin → Setup → General Settings → Template
3. Run `npm run dev` om wijzigingen te watchen

### Nieuwe templates toevoegen

WHMCS gebruikt Smarty templates. Elk `.tpl` bestand moet:

1. Header includen: `{include file="$template/header.tpl"}`
2. Footer includen: `{include file="$template/footer.tpl"}`
3. Tailwind classes gebruiken voor styling

Voorbeeld clientarea.tpl:

```smarty
{include file="$template/header.tpl"}

<section class="py-12 px-4 sm:px-6 lg:px-8">
    <div class="max-w-7xl mx-auto">
        <h1 class="text-h1 mb-6">Welkom, {$clientname}</h1>
        <!-- Content -->
    </div>
</section>

{include file="$template/footer.tpl"}
```

## Deployment

### GitHub Actions (automatisch)

De workflow deployt automatisch bij push naar `main`. Configureer deze secrets in je GitHub repo:

| Secret | Beschrijving |
|--------|-------------|
| `DEPLOY_HOST` | Server hostname/IP |
| `DEPLOY_USER` | SSH username |
| `DEPLOY_KEY` | SSH private key |
| `DEPLOY_PATH` | WHMCS installatie pad (bijv. `/var/www/whmcs`) |

### Handmatig

```bash
# Build
npm run build

# Upload via rsync
rsync -avz templates/internalhost/ user@server:/var/www/whmcs/templates/internalhost/
```

## Overige templates

Dit zijn de belangrijkste WHMCS templates die je nog moet maken:

- [ ] `clientarea.tpl` - Dashboard
- [ ] `clientareaproducts.tpl` - Mijn diensten
- [ ] `viewinvoice.tpl` - Factuur weergave
- [ ] `cart.tpl` - Winkelwagen
- [ ] `configureproduct.tpl` - Product configuratie
- [ ] `register.tpl` - Registratie
- [ ] `login.tpl` - Inloggen
- [ ] `knowledgebase.tpl` - Documentatie
- [ ] `submitticket.tpl` - Ticket aanmaken
- [ ] `viewticket.tpl` - Ticket weergave

Bekijk de originele WHMCS templates in `templates/twenty-one/` voor de benodigde Smarty variabelen.

## Links

- [WHMCS Template Docs](https://docs.whmcs.com/Client_Area_Template_Files)
- [Tailwind CSS](https://tailwindcss.com/docs)
- [Inter Font](https://fonts.google.com/specimen/Inter)
- [Internalhost Brand Guide](./docs/brand-guide.pdf)

---

**INTERNALHOST** · For the crazy ones.
