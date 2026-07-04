# Website Launch Check (module van scale-marketing)

> Bron-skill: `website-launch-check` | SCALE-code: M1 | Versie: 1.1.0 | Geschatte tijd: 45 tot 90 minuten

---

# Website Launch Check

## Doel

Helpt een ondernemer in 45 tot 90 minuten een website **veilig en compleet** live te zetten via een gestructureerde launch-checklist, opgeleverd in één canoniek bestand: `{scope}/Marketing/Website-Launch-Check.md`. Dit is SCALE-stap M1 (Marketing-aanwezigheid) en de fase waarin de meeste MKB-sites onnodig averij oplopen.

*Waarom dit fundamenteel is.* Een live website is voor M1 het bewijs dat een bedrijf marketingmatig bestaat. Maar "live" is niet hetzelfde als "klaar". Veel ondernemers drukken op publish met:

- Een Lighthouse-performance-score van 38, waardoor mobile bezoekers afhaken voordat de pagina laadt
- Geen cookiebanner of een banner zonder echte keuze-optie, waardoor AVG geschonden wordt
- Een exposed `.env` of een security-header-set met louter defaults
- Een contactformulier dat geen mail meer verstuurt sinds de DNS-wissel
- Een sitemap die ontbreekt of een robots.txt die Google blokkeert
- Een meta-title die op iedere pagina identiek is en geen og-image, waardoor LinkedIn-deelacties grijs blijven

*Wat deze skill voorkomt.* Drie concrete pijnpunten:

1. **AVG-boete-risico.** Cookies zonder consent, contactformulier zonder privacy-link, mail-tracking-pixels zonder uitleg, allemaal direct beboetbaar.
2. **Onzichtbaar in zoek- en deelresultaten.** Geen meta-tags, geen og-image, geen sitemap, geen robots.txt betekent dat de site niet wordt opgepakt door Google of LinkedIn.
3. **Reputatieschade op dag 1.** Een bezoeker die op een dode link klikt, een formulier invult dat niet verstuurt, of een pagina ziet die er op mobiel kapot uitziet, komt zelden terug.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit M1 vraagt alleen dat er een actieve URL in `00 - Overzicht.md` of `Toolstack.md` staat die bereikbaar is. Die drempel haal je met een lege Squarespace-pagina. Deze skill mikt op een **werkelijk launch-ready** site: een checklist van 9 categorieën die alle blinde vlekken afdekt voordat het marketing-budget op de site wordt losgelaten.

Resultaat: SCALE-audit M1 springt van ❌ of ⚠️ naar ✅ en de site staat live zonder verborgen technische, juridische of communicatieve schulden.

## Run-time introductie (toon aan gebruiker bij start)

Voordat de checklist start, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  WEBSITE LAUNCH CHECK — SCALE-stap M1 (Marketing)         │
│  ~45-90 minuten · 9 categorieen                           │
└──────────────────────────────────────────────────────────┘

  In 45 tot 90 minuten lopen we 9 categorieen door om je
  website veilig en compleet live te zetten. Geen kapotte
  links, geen AVG-lek, geen Lighthouse-score van 38.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 9 categorieen (een per beurt, niet alles tegelijk)   │
  │  • Per categorie 4 tot 10 check-items                   │
  │  • Vooraf scan ik je site live (meta-tags, HTTPS,       │
  │    sitemap, robots.txt) plus je vault (Brand            │
  │    Guidelines, Tone of Voice, Privacyverklaring,        │
  │    Website-Analytics, Toolstack) zodat ik veel al weet  │
  │  • Daarna lever ik Marketing/Website-Launch-Check.md    │
  │    op met status per item, blockers, fix-acties en      │
  │    go/no-go-oordeel                                     │
  └────────────────────────────────────────────────────────┘

  De 9 categorieen:
  [1] Content                  [2] SEO
  [3] Privacy en AVG           [4] Performance
  [5] Security                 [6] Functioneel
  [7] Analytics                [8] Pre-launch test
  [9] Domain en DNS

  Heb je input klaar die helpt? Bijvoorbeeld:
  • URL van de (staging- of productie-)website
  • Op welk platform de site draait (Vercel, Netlify,
    Cloudflare Pages, WordPress, Squarespace, Webflow)
  • Of er al een Lighthouse-rapport of PageSpeed-score is
  • Of de privacyverklaring al online staat
  • Of er al analytics actief is (Plausible, GA4, etc.)
  • Welke launch-datum je in gedachten hebt

  Dan kun je dat nu noemen. Hoe meer context vooraf, hoe
  minder ik hoef uit te vragen en hoe rijker de checklist.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst input wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  WEBSITE LAUNCH CHECK — M1 · 45-90 min · 9 categorieen    │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │    (1 blok, 2-3 v.)  │  Welke URL?
   │                      │  Welk pad?
   │                      │  Launch-datum?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault + site scan │  Brand, ToV, J4,
   │    (auto-discover)   │  C5, Toolstack +
   │                      │  live web-fetch
   │                      │  van de site zelf
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Pre-fill tonen    │  Wat al goed is,
   │    ter validatie     │  wat nog ontbreekt,
   │                      │  per categorie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Checklist, per    │  9 categorieen,
   │    categorie         │  4 tot 10 items
   │                      │  [1] Content
   │                      │  [2] SEO
   │                      │  [3] Privacy/AVG
   │                      │  [4] Performance
   │                      │  [5] Security
   │                      │  [6] Functioneel
   │                      │  [7] Analytics
   │                      │  [8] Pre-launch test
   │                      │  [9] Domain + DNS
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Go/no-go-oordeel  │  Blockers expliciet,
   │                      │  fix-acties + owner,
   │                      │  launch-datum check
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Schrijven +       │  Marketing/
   │    opslaan           │  Website-Launch-
   │                      │  Check.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Logging +         │  Changelog +
   │    vervolg-          │  cross-links naar
   │    suggesties        │  C5, J4, S2, S3
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Website launch check" / "pre-launch checklist"
- "Site live zetten" / "kunnen we de site online zetten"
- "Is mijn website klaar" / "staat alles goed op de site"
- "Check mijn website" / "website-check voor productie"
- "Go-live checklist website" / "launch readiness website"
- "Pre-launch audit" / "wat moet er nog voor de launch"
- "M1 dichten in SCALE-audit" / "gap M1"
- "Marketing/Website-Launch-Check.md aanmaken"
- Of bij een verwijzing naar M1, launch-readiness, of een aanstaande publish-actie

Triggert NIET wanneer:
- De gebruiker een **brand guideline** of **tone of voice** voor de site wil opstellen (gebruik `brand-guidelines` — S2 of `tone-of-voice` — S3)
- De gebruiker **website-analytics** wil opzetten van scratch (gebruik `website-analytics-setup` — C5; deze skill toetst alleen of C5 events live staan)
- De gebruiker een **privacyverklaring** wil schrijven (gebruik `privacyverklaring` — J4; deze skill toetst alleen of de J4-pagina linkt en bereikbaar is)
- De gebruiker een **SEO-strategie** of contentplan voor 6 maanden wil bouwen (uit scope, dit is launch-readiness niet content-marketing)
- De gebruiker een **complete website wil laten bouwen** (uit scope; deze skill checkt een al gebouwde site)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf de check uitgevoerd wordt, welke URL gecontroleerd moet worden, en in welk pad het resultaat-bestand landt. Maak **geen aannames** over de vault-structuur.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Directie/`, `Marketing/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Marketing/`)
- Een **versgemaakte SCALE-skelet** waar `Marketing/` nog leeg is

Vraag de gebruiker:
1. Welk bedrijf, welk pad?
2. Welke URL moet ik checken? (Productie of staging? Beide is ook prima.)
3. Is er een launch-datum waar we naartoe werken?

Als de gebruiker niet weet wat het pad is, zoek dan in de huidige werkmap naar een map met de bedrijfsnaam of naar een `Marketing/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Marketing/Website-Launch-Check.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe check-run** wordt (oude archiveren als `Website-Launch-Check - archief YYYY-MM-DD.md`)

### Stap 2: Vault + live site scannen

Lees systematisch wat er al beschikbaar is. Werk **vault-onafhankelijk** (relatieve paden binnen `{scope}`) en doe daarnaast een live web-fetch op de URL voor harde checks.

Standaard vault-bronnen om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Directie/00 - Overzicht.md` | Bedrijfsnaam, propositie, status-fase, contact-info |
| `Directie/Playbook/Brand Guidelines.md` | Logo, kleuren, typografie, beeldgebruik (voor consistentie-check) |
| `Directie/Playbook/Tone of Voice.md` | Toon-toets voor copy-categorie |
| `Marketing/` (alle bestanden) | Bestaande website-projecten, copy-archieven, content-roadmap |
| `Collect/Website-Analytics.md` | C5-event-set, tool-keuze, UTM-conventie |
| `Juridisch/Privacyverklaring.md` | J4-link, AVG-claims, cookie-policy |
| `Juridisch/Algemene Voorwaarden.md` | Juridische links die op de site horen |
| `IT/Toolstack.md` | Hosting (Vercel, Netlify, Cloudflare, WordPress), CDN, mail-stack |
| `IT/AI-Tools/` (eventueel) | Of er een website-tool eerder gebouwd is |

Live web-fetch op de URL (één of meer fetches afhankelijk van wat de gebruiker aanlevert):

| Check | Hoe |
|---|---|
| Bereikbaarheid + status-code | HTTP GET op productie + staging |
| HTTPS-only | Check of HTTP → HTTPS redirect 301 geeft |
| Meta-title + meta-description | Parse `<title>` en `<meta name="description">` op homepage + 2-3 sleutel-pagina's |
| Open Graph image + tags | Parse `<meta property="og:*">` |
| Sitemap | GET `/sitemap.xml` |
| Robots.txt | GET `/robots.txt` |
| Security headers | HEAD-request, controleer `Strict-Transport-Security`, `X-Content-Type-Options`, `X-Frame-Options`, `Content-Security-Policy`, `Referrer-Policy`, `Permissions-Policy` |
| Favicon | GET `/favicon.ico` |
| 404-pagina | GET `/random-non-existent-path` |
| Cookiebanner | Visuele inspectie van homepage HTML op cookie-consent-script |
| Privacy-link in footer | Zoek `href` naar privacy-pagina in HTML |
| HTML-lang | Parse `<html lang="...">` |
| Canonical-tag | Parse `<link rel="canonical">` |
| `.env`-exposure (informatieve check) | GET `/.env`, `/.git/config` (verwacht 404; iets anders = rood vlag) |

Belangrijk: als een vault-bron of een live-check niet beschikbaar is, ga stilletjes verder en markeer het als **gat** in de pre-fill — niet als blocker totdat de gebruiker bevestigt dat het relevant is.

### Stap 3: Externe input ophalen

Vraag actief of er externe materialen of toegangen zijn:

- **Lighthouse-rapport of PageSpeed-score** (PDF of URL naar pagespeed.web.dev)
- **Toegang tot het hosting-platform** (alleen vragen; nooit zelf inloggen)
- **DNS-records** (geplakte output van `dig` of `nslookup`, of een screenshot)
- **Bestaande launch-checklist of QA-document** (mag in vrij formaat)
- **Browserstack- of cross-device-test-resultaten** (mag in vrij formaat)

Concrete vraag aan gebruiker:
> "Heb je een Lighthouse- of PageSpeed-rapport, een DNS-overzicht, of een bestaande launch-checklist die we kunnen meenemen? Je mag een URL noemen, een bestand uploaden of tekst plakken. Geen probleem als je niets hebt, dan vraag ik per categorie wat ik moet weten."

### Stap 4: Pre-fill tonen ter validatie

Toon een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 9 categorieën**. Doel: voorkomen dat we vragen wat al ergens staat. Format:

```
Op basis van wat ik live op je site en in je vault zie:

  [1] CONTENT
      Brand Guidelines aanwezig, Tone of Voice aanwezig.
      Homepage-copy gecheckt: geen lorem ipsum gevonden.
      Contact-info op /contact: klopt met Directie/00 -
      Overzicht.md.

  [2] SEO
      Meta-title homepage: aanwezig (54 chars).
      Meta-description homepage: aanwezig (148 chars).
      og:image: ontbreekt.
      sitemap.xml: aanwezig (12 URLs).
      robots.txt: aanwezig, geen Disallow.

  [3] PRIVACY EN AVG
      Cookiebanner: niet gedetecteerd.
      Privacy-link in footer: aanwezig, verwijst naar /privacy.
      Privacyverklaring.md in Juridisch/: aanwezig (J4).

  ... (4-9)

  BLOCKERS die ik nu al zie:
  - [3] Geen cookiebanner detecteerbaar
  - [2] og:image ontbreekt
  - [5] HSTS-header ontbreekt

  GATEN waar ik nog input voor nodig heb:
  - [4] Geen Lighthouse-score beschikbaar
  - [8] Cross-device-test status onbekend
  - [9] SPF/DKIM voor uitgaande mail status onbekend

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we per categorie de check doen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Checklist, per categorie

**Kernregel:** behandel **één categorie per beurt**. Niet alle 9 categorieën tegelijk dumpen. Stel per categorie alleen vragen waar je het antwoord nog niet hebt; bevestig waar je het antwoord al hebt.

Per categorie levert de skill op: status per item (✅ klaar, ⚠️ aandacht, ❌ blocker, ⚪ niet van toepassing), korte toelichting per niet-✅ item, fix-actie + (optioneel) owner + deadline.

#### Categorie 1 — Content

Wat we toetsen:
- Alle teksten zijn **Brand Guidelines- en Tone of Voice-proof** (verwijs naar `Directie/Playbook/Brand Guidelines.md` en `Tone of Voice.md`)
- **Geen lorem ipsum** of placeholder-tekst op productie-pagina's
- **Contact-informatie klopt** (telefoon, e-mail, adres, openingstijden komen overeen met `Directie/00 - Overzicht.md`)
- **Geen broken images** of `alt`-tekst-gaten
- **Geen interne TODO's** of comments in zichtbare copy
- **Date-stamps actueel** (geen "© 2023" in de footer)

#### Categorie 2 — SEO

Wat we toetsen:
- **Meta-title per pagina** uniek, 50-60 tekens, bevat bedrijfsnaam en kernzoekwoord
- **Meta-description per pagina** uniek, 140-160 tekens
- **og:image** aanwezig, 1200×630 px, onder 1 MB
- **og:title** en **og:description** ingevuld
- **Twitter card-tags** (`twitter:card`, `twitter:title`, `twitter:image`) aanwezig
- **sitemap.xml** aanwezig en bereikbaar
- **robots.txt** aanwezig en correct (geen `Disallow: /` per ongeluk)
- **Canonical-tags** correct (zelf-referentie op elke pagina)
- **HTML-lang attribuut** correct gezet (`<html lang="nl">`)
- **Schema.org-markup** (LocalBusiness of Organization) bij voorkeur aanwezig

#### Categorie 3 — Privacy en AVG

Wat we toetsen:
- **Cookiebanner aanwezig** met echte keuze-optie (alleen "Accepteren" zonder "Weigeren" is in NL ontoelaatbaar) **of** een privacy-first analytics-stack waarbij geen banner nodig is (cross-link C5)
- **Privacyverklaring online** en linkt vanuit de footer (cross-link J4 → `Juridisch/Privacyverklaring.md`)
- **Algemene Voorwaarden** linken indien commerciële activiteit (cross-link J3)
- **AVG-compliance van het contactformulier**: privacy-link in het formulier zelf, geen verborgen tracking, opt-in-vinkje als nodig
- **Tracking-pixels gemarkeerd**: alle externe tracking (Meta-pixel, LinkedIn Insight, Google Ads) staat in privacyverklaring én wordt geblokkeerd tot consent
- **IP-anonimisering** als GA4 wordt gebruikt
- **Geen PII in URL's** (geen e-mail of telefoon in query-strings)

#### Categorie 4 — Performance

Wat we toetsen:
- **Lighthouse-performance-score** op mobile > 80 (op desktop > 90 als richtlijn)
- **Lighthouse-accessibility-score** > 90
- **Lighthouse-best-practices-score** > 90
- **Lighthouse-SEO-score** > 90
- **Core Web Vitals**: LCP < 2.5s, INP < 200ms, CLS < 0.1 (groene zone in PageSpeed)
- **Images onder 200 KB** waar mogelijk; gebruik WebP of AVIF
- **Lazy-loading** op below-the-fold images (`loading="lazy"`)
- **Fonts**: max 2 families, `font-display: swap`, gepreload als kritiek
- **No-blocking scripts**: third-party JS asynchroon of defer
- **Cache-headers**: statische assets met lange cache-TTL

Als geen Lighthouse-rapport beschikbaar, vraag de gebruiker om er één te draaien op pagespeed.web.dev voor zowel mobile als desktop, en de scores te delen.

#### Categorie 5 — Security

Wat we toetsen:
- **HTTPS-only** (HTTP redirect 301 naar HTTPS, HSTS-header gezet)
- **Strict-Transport-Security** (HSTS) header aanwezig, minimaal `max-age=31536000`
- **X-Content-Type-Options: nosniff**
- **X-Frame-Options: DENY** of **SAMEORIGIN** (of CSP `frame-ancestors`)
- **Content-Security-Policy** ingesteld (mag soepel zijn, mits aanwezig)
- **Referrer-Policy** ingesteld (`strict-origin-when-cross-origin` is een veilige default)
- **Permissions-Policy** ingesteld (camera, microfoon, geolocation expliciet uit)
- **Geen exposed `.env`** of `.git/`-folder (live-check)
- **Admin-paden niet publiek** (`/admin`, `/wp-admin`, `/login` afgeschermd of via VPN)
- **Geen API-keys in client-side JS** (handmatige spot-check op de homepage-source)
- **TLS-versie** minimaal 1.2, bij voorkeur 1.3

Voor security-header-check: securityheaders.com of `curl -I` op de productie-URL.

#### Categorie 6 — Functioneel

Wat we toetsen:
- **Alle CTA's werken** (knoppen, formulieren, downloads, kaart-links)
- **Forms versturen daadwerkelijk** (test-submit, controleer of mail aankomt op het juiste adres, controleer thank-you-state)
- **404-pagina aanwezig** met nuttige inhoud en navigatie terug
- **500-pagina aanwezig** (zo nodig statisch, met contact-info)
- **Geen broken links** (intern en uitgaand; spider de site)
- **Anchor-links werken** (alle `#anchor`-targets bestaan)
- **Footer-links werken** (privacy, voorwaarden, contact, social)
- **Social-share-knoppen** werken indien aanwezig
- **Cookie-banner-keuzes werken** (accepteren én weigeren-pad getest)

#### Categorie 7 — Analytics

Wat we toetsen:
- **C5-event-set actief** zoals gespecificeerd in `Collect/Website-Analytics.md`
- **Conversie-events gedefinieerd** en getest (form-submit, download, contact-klik)
- **UTM-discipline**: alle externe campagnes gebruiken consistente UTM-conventie (cross-link C5)
- **Marketing-attributie-pad** werkt (UTM landt in analytics, traceerbaar tot conversie)
- **No-tracking-respect**: DNT-header of consent-status wordt gerespecteerd
- **Analytics-dashboard bereikbaar** voor de juiste mensen
- **Privacy-conformiteit** van de gekozen tool (cross-link J4)
- **A/B-test-tooling** indien actief: gemarkeerd in privacyverklaring

Cross-link: `Collect/Website-Analytics.md` is de bron-of-truth voor de event-set. Deze skill toetst alleen of die set live staat.

#### Categorie 8 — Pre-launch test

Wat we toetsen:
- **Mobile** (iOS Safari + Android Chrome, minimaal): layout, knoppen, leesbaarheid
- **Tablet** (iPad portrait + landscape)
- **Desktop** (Chrome, Firefox, Safari, Edge)
- **Alle pagina's bezocht** (gebruik sitemap.xml als checklist)
- **Alle links gecontroleerd** (broken-link-scan zoals `linkchecker` of online tool)
- **Alle formulieren getest** (zie categorie 6, maar nu ook in elke browser)
- **Backup van de vorige versie** (snapshot van staging of productie vóór go-live; minimaal voor 30 dagen bewaard)
- **Rollback-plan klaar**: één-klik-terug naar vorige versie indien nodig
- **Performance-test onder belasting** (optioneel; alleen voor sites met campagne-launch-pieken)

#### Categorie 9 — Domain en DNS

Wat we toetsen:
- **HTTPS-certificaat geldig** (niet binnen 30 dagen verlopend; auto-renewal actief bij Let's Encrypt of vergelijkbaar)
- **Redirect van www naar non-www** (of omgekeerd, mits consistent) met 301
- **Apex-domein (`@`) en `www` beide bereikbaar**
- **DNS-records gedocumenteerd** (A, AAAA, CNAME, MX, TXT)
- **SPF-record** correct gezet voor uitgaande mail (`v=spf1 ...`)
- **DKIM-record** correct gezet voor uitgaande mail
- **DMARC-record** minimaal op `p=none` met `rua=` voor reporting (bij voorkeur `p=quarantine` na monitoring)
- **MTA-STS** en **TLS-RPT** records overwegen voor mail-stack
- **DNS-TTL** verlaagd voor 24-48u rond launch (snelle rollback)
- **Domain-locking** actief bij registrar (voorkomt onbedoelde transfer)
- **WHOIS-privacy** indien gewenst

### Stap 6: Go/no-go-oordeel

Op basis van de checklist: stel een **expliciet oordeel** op.

Mogelijke uitkomsten:
- **GO** — geen blockers, alles op ✅ of ⚠️ met fix-acties die de launch niet ophouden. Launch kan door op de geplande datum.
- **GO MET VOORBEHOUD** — 1 tot 3 ⚠️-items die binnen 24-48u na launch hersteld moeten worden, maar geen blocker zijn. Documenteer expliciet.
- **NO-GO** — 1 of meer ❌-blockers. Launch verschuiven tot blockers opgelost zijn. Concrete blockers altijd benoemen.

Per blocker: actie + owner + verwachte fix-tijd.

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-website-launch-check.md` als skelet. Vul het met de uitkomsten uit pre-fill + checklist.

Sla op als:
```
{scope}/Marketing/Website-Launch-Check.md
```

Maak de `Marketing/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: website-launch-check
bedrijf: <Naam>
website-url: <URL>
launch-status: <go | go-met-voorbehoud | no-go>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: M1
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "revolutionair", "wereldklasse", "next-level". Feitelijk en menselijk.
- **Concrete details boven abstracte beweringen.** "Lighthouse-mobile 78" zegt meer dan "performance is okay".
- **Geen em-dashes.** Gebruik komma's, haakjes of losse zinnen.
- **Status-iconen consistent**: ✅ klaar, ⚠️ aandacht, ❌ blocker, ⚪ niet van toepassing.
- **Per niet-✅ item een fix-actie.** Niet alleen het probleem benoemen.
- **Datum-stamps** op elke checklist-run, zodat opeenvolgende checks vergelijkbaar zijn.

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Marketing/Website-Launch-Check.md` — v1.0, status GO met 2 voorbehoud-items"*.
2. **Daily** — als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (conventie van Iwan's OS, niet alle vaults hebben hem), log dan onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie** — als M1 op ❌ of ⚠️ staat in een audit-rapport in `Directie/Research/`: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link** naar `Collect/Website-Analytics.md` (C5) om de event-set actueel te houden
- **Cross-link** naar `Juridisch/Privacyverklaring.md` (J4) en `Juridisch/Algemene Voorwaarden.md` (J3) voor de juridische voet onder de site
- **Cross-link** naar `Directie/Playbook/Brand Guidelines.md` (S2) en `Tone of Voice.md` (S3) zodat copy-toets-criteria expliciet zijn
- **Herhaal-cadans**: doe deze check opnieuw bij elke majeure release of zes-maandelijks, ook bij sites die al live staan
- **Monitoring**: stel een uptime-monitor in (Better Stack, UptimeRobot, Cronitor) zodat downtime direct zichtbaar is
- **Performance-budget**: leg een Lighthouse-drempel vast die niet ondervraagd mag worden bij toekomstige deploys

## Cold-start en fictieve-klant modus

De skill is ontworpen als beurtsgewijs gesprek met vault-pre-fill. Bij twee situaties werkt dat anders:

**Autonome / 1-shot run** (bijvoorbeeld voor evaluaties, bulk-bouw of als de gebruiker expliciet "doe alles in 1 keer" zegt):
- Sla het interview over en gebruik wat in het prompt staat als enige bron.
- Vul ontbrekende velden in met realistische defaults plus expliciete `[VERIFICEREN]`-marker.
- Lever de complete deliverable, niet alleen aanbevelingen.
- Voeg onderaan een sectie "Open punten" toe met alle [VERIFICEREN]-velden, zodat de gebruiker weet wat hij later moet bevestigen.

**Fictieve klant of cold-start (geen bestaande vault):**
- Vraag NIET naar bedrijfsgegevens die in een eerste gesprek logisch te achterhalen zijn; gebruik wat in het prompt staat plus defaults.
- Schrijf de deliverable in de gevraagde output-map, niet in `{scope}/...`-paden.
- Vermeld cross-links naar andere SCALE-stappen als `[VERIFICEREN]` zonder ze in te vullen.
- Skip changelog-updates en daily-log-updates die normaal aan het eind gebeuren.

## Belangrijke regels

- **Eén categorie per beurt** in de checklist. Niet alle 9 tegelijk dumpen.
- **Live web-fetch waar mogelijk.** Veel checks zijn objectief: meta-tags, sitemap, robots.txt, status-codes, security-headers. Doe die zelf, vraag niet aan de gebruiker.
- **Bestaande vault-bronnen eerst.** Vraag nooit naar iets dat al in Brand Guidelines, Tone of Voice, Privacyverklaring of Website-Analytics staat. Cross-link expliciet.
- **Geen aannames over hosting.** De stack kan Vercel, Netlify, Cloudflare Pages, WordPress, Squarespace, Webflow, eigen Node.js, of iets exotisch zijn. Houd de checklist platform-onafhankelijk en wijs de gebruiker naar de platform-specifieke route waar relevant.
- **Geen aannames over vault-structuur.** Werkt voor solopreneurs met een single-business vault, voor multi-business vaults, en voor verse SCALE-skeletten. Alleen relatieve paden binnen `{scope}`.
- **Schrijf nooit zomaar over een bestaand `Website-Launch-Check.md` heen.** Vraag bij een bestaand bestand of het een update of een nieuwe run wordt.
- **Geen mails namens de gebruiker.** Als een fix-actie inhoudt dat een leverancier of hoster gemaild moet worden, lever de tekst klaar maar druk niet zelf op verzenden.
- **Geen DNS-mutaties of hosting-acties zelf uitvoeren.** Documenteer wat er moet, geef de exacte stappen, maar laat de gebruiker de knop indrukken.
- **Pas op met "alles werkt".** Een groene checklist op één browser is geen groene checklist. Dwing de cross-device-test af voordat status op GO komt.
- **Privacy-first als richtlijn.** Als de keuze is tussen analytics-zwaar-met-banner of analytics-licht-zonder-banner: standaard adviseer licht. Verwijs naar C5 voor de inhoudelijke keuze.
- **Concreet boven abstract.** "Meta-description op /diensten ontbreekt" is bruikbaar; "SEO moet beter" is dat niet.

## Voorbeeld-output

Zie [`references/template-website-launch-check.md`](references/template-website-launch-check.md) voor de exacte structuur die de skill oplevert.

## Changelog

### 1.1.0 — 2026-05-11

- Nieuwe sectie "Cold-start en fictieve-klant modus".

### 1.0.0 — initiele release

- Eerste productie-versie.
