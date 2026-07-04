# Website Analytics Setup (module van scale-collect)

> Bron-skill: `website-analytics-setup` | SCALE-code: C5 | Versie: 1.0.0 | Geschatte tijd: 30 tot 60 minuten

---

# Website Analytics Setup

## Doel

Helpt een ondernemer in 30 tot 60 minuten een **werkende website-analytics-opzet** te kiezen, in te bouwen en te documenteren in één canoniek bestand: `{scope}/Collect/Website-Analytics.md` (of `{scope}/Marketing/Analytics-Setup.md` als die conventie binnen de vault al loopt). Dit is SCALE-stap C5 (Collect) en het kantelpunt waarop website-traffic van een black box verandert in een meetbare bron van campagne-, conversie- en funnel-data.

*Waarom dit fundamenteel is.* Een werkende analytics-opzet is de bron-data voor minstens vier latere SCALE-stappen:

- **A1 tot A5 (Analyze)** — Rapportage, Mission Control, Daily Briefing, Beslissings-analyse en Benchmarking lezen allemaal uit deze data. Zonder C5 zijn die dashboards gevuld met aannames.
- **C1 (Marketing Data)** — Kanaal-attributie heeft UTM-discipline en pageview-data nodig. C5 levert die laag.
- **L2 (Auto Rapportage)** — Maandelijkse automatische rapportages over website-prestaties hebben events nodig die met opzet zijn ingericht.
- **E1 (Dashboard Bouwer)** — Een dashboard met website-KPI's is leeg zolang de events niet kloppen.

*Wat je verliest zonder dit document.* Drie concrete pijnpunten die deze skill voorkomt:

1. **Black-box-website.** Je weet niet welke campagne traffic oplevert, welke pagina converteert, of welke knop wordt geklikt.
2. **AVG-risico.** GA4 zonder cookie-consent is een boetekandidaat. Niet weten welke tool je gebruikt, is een groter risico dan niet meten.
3. **Geen funnels, geen lessen.** Zonder event-set en UTM-discipline weet je niet waar bezoekers afhaken en welk kanaal het lekkerst converteert.

*Privacy-first als default-advies.* Plausible, Fathom, Vercel Analytics, Cloudflare Web Analytics, Umami en Matomo (self-hosted of in-EU gehost) zijn voor het Nederlandse MKB de pragmatische standaardkeuze: geen cookies, geen consent-banner, geen PII, AVG-compliant out-of-the-box. GA4 is alleen de juiste keuze als het bedrijf actieve Google Ads-attributie nodig heeft, of als er een team is dat de cookie-consent-laag wil onderhouden.

Resultaat: SCALE-audit C5 springt van ❌ of ⚠️ naar ✅ en het document is direct herbruikbaar voor C1, A1 tot A5, L2 en E1.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  WEBSITE ANALYTICS SETUP — SCALE-stap C5 (Collect)        │
│  ~30-60 minuten · 6 blokken                               │
└──────────────────────────────────────────────────────────┘

  In 30 tot 60 minuten zetten we je website-analytics zo op
  dat je per kanaal, per pagina en per knop weet wat er
  gebeurt. Geen black-box-traffic meer, geen aannames in je
  dashboards.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 6 blokken (een per beurt, niet alles tegelijk)       │
  │  • Per blok 3 tot 8 vragen — gemiddeld 5 min per blok   │
  │  • Vooraf scan ik bestaande bronnen (Toolstack,         │
  │    Marketing-campagnes, Privacyverklaring, propositie)  │
  │    zodat ik veel al weet                                │
  │  • Daarna lever ik Collect/Website-Analytics.md op met  │
  │    tool-keuze, event-set, UTM-conventie, installatie-   │
  │    stappen en AVG-checklist                             │
  └────────────────────────────────────────────────────────┘

  De 6 blokken:
  [1] Scope + site-inventaris
  [2] Tool-keuze (privacy-first default)
  [3] Event-set op maat van bedrijfstype
  [4] UTM-discipline + custom dimensions
  [5] AVG en cookie-consent
  [6] Installatie, validatie en documentatie

  Heb je input klaar die helpt? Bijvoorbeeld:
  • URL van de website
  • Welke analytics-tool je vandaag (al) gebruikt
  • Welke campagnes lopen (Google Ads, LinkedIn, mailings)
  • Of er al een cookie-banner of privacyverklaring staat
  • Welke pagina's je belangrijkste conversiepunten zijn
  • Of de site op Vercel, Netlify of Cloudflare draait

  Dan kun je dat nu noemen — hoe meer context vooraf, hoe
  minder ik hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst input wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  WEBSITE ANALYTICS SETUP — C5 · 30-60 min · 6 blokken     │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope + site      │  Welk bedrijf?
   │    (1 blok, 3-5 v.)  │  Welke URL?
   │                      │  Welke pagina's?
   │                      │  Wat is conversie?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Toolstack.md,
   │    (auto-discover)   │  Marketing/,
   │                      │  Juridisch/Privacy,
   │                      │  00-Overzicht
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Pre-fill tonen    │  Wat al bekend is,
   │                      │  ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Blokken-interview │  6 blokken:
   │                      │  [1] Scope + site
   │                      │  [2] Tool-keuze
   │                      │  [3] Event-set
   │                      │  [4] UTM + dimensions
   │                      │  [5] AVG + cookies
   │                      │  [6] Installatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Schrijven +       │  Collect/
   │    opslaan           │  Website-Analytics.md
   │                      │  (of Marketing/
   │                      │   Analytics-Setup.md)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Cross-links       │  C1 Marketing Data,
   │                      │  J4 Privacy,
   │                      │  A2 Mission Control,
   │                      │  Toolstack.md update
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Logging +         │  Changelog +
   │    vervolg           │  hint richting
   │                      │  C1, A1-A5, L2, E1
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Website analytics opzetten" / "analytics inrichten" / "metrics opzetten voor de site"
- "GA4 opzetten" / "Google Analytics installeren" / "Plausible installeren" / "Fathom opzetten"
- "Vercel Analytics aanzetten" / "Cloudflare Web Analytics" / "Umami" / "Matomo"
- "Events tracken op website" / "scroll-depth meten" / "time-on-page" / "click-tracking"
- "Conversie-tracking website" / "funnel meten" / "form-submits tellen"
- "UTM-tagging" / "kanaal-attributie van traffic" / "wat brengt welk kanaal op"
- "Analytics privacy-vriendelijk" / "GDPR website tracking" / "cookies en tracking compliant"
- "Wat gebeurt er op mijn site" / "website-data verzamelen"
- "C5 dichten in SCALE-audit" / "gap C5"
- "Collect/Website-Analytics.md aanmaken" / "Marketing/Analytics-Setup.md schrijven"

Triggert NIET wanneer:
- De gebruiker een **privacyverklaring** wil opstellen (gebruik `privacyverklaring` — J4)
- De gebruiker een **kanaal-attributie-rapport** wil bouwen op data die al binnenkomt (gebruik `marketing-data-setup` — C1)
- De gebruiker een **Mission Control of dashboard** wil ontwerpen op basis van analytics-data (gebruik `mission-control-builder` — A2, of `dashboard-bouwer` — E1)
- De gebruiker zijn **Toolstack** wil inventariseren (gebruik `toolstack-inventarisatie` — S12)
- De gebruiker een **website wil lanceren** (gebruik `website-launch-check` — M1)
- De gebruiker een **CRM** wil opzetten (gebruik `crm-setup` — C2)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de analytics-setup gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Collect/`, `Marketing/`, `IT/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft
- Een **versgemaakte SCALE-skelet** waarin `Collect/` of `Marketing/` nog leeg is

Vraag de gebruiker:
1. Voor welk bedrijf zetten we de website-analytics op?
2. Wat is het pad naar de bedrijfs-root? (Huidige werkmap, specifiek pad, of "help me zoeken")
3. Wat is de URL van de site die we gaan meten?

Als er meerdere sites zijn (corporate site plus e-commerce, of marketing-site plus app-domein), vraag of we per site een eigen Analytics-bestand maken of één gecombineerd document.

Controleer of het output-bestand al bestaat:
- Standaard-pad: `{scope}/Collect/Website-Analytics.md`
- Alternatief-pad (als `Collect/` niet bestaat maar `Marketing/` wel): `{scope}/Marketing/Analytics-Setup.md`
- Bestaat al → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `... - archief YYYY-MM-DD.md`) is.

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: alleen relatieve paden binnen de bedrijfs-root.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `IT/Toolstack.md` | Bestaande analytics-tool (Plausible, GA4, Fathom, etc.), hosting (Vercel, Cloudflare, Netlify), tag-manager, mailtool voor mail-click-tracking |
| `Directie/00 - Overzicht.md` | Propositie, B2B-vs-B2C-signaal, conversie-definitie ("demo aanvragen", "checkout afronden", "nieuwsbrief-inschrijving") |
| `Directie/Playbook/ICP.md` of `S4-ICP.md` | ICP-segmenten — input voor custom dimensions |
| `Marketing/Content Roadmap.md` of `Marketing/` (subfolders) | Lopende campagnes (LinkedIn, Google Ads, mailings) — input voor UTM-conventie |
| `Marketing/Nieuwsbrief/` | Mail-platform (Beehiiv, Mailchimp, ConvertKit) — input voor mail-click-tracking |
| `Juridisch/Privacyverklaring.md` | Bestaande tracking-declaratie, cookie-tekst, verantwoordelijke voor verwerking |
| `Juridisch/Cookie-banner.md` | Eventuele bestaande consent-conventie |
| `Operations/Processen/` | Conversie-stappen die al gedocumenteerd zijn als proces |
| `Producten en Pricing.md` of `S8-Producten.md` | Pricing-pagina-conversie — input voor event "view_pricing" en "click_checkout" |

Maak per gevonden item een korte interne aantekening. Skip stilletjes wat niet bestaat — niet alarmeren, niet doorvragen.

### Stap 3: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, voordat het interview begint. Doel: niet vragen wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  SITE
      URL: voorbeeld.nl (uit 00-Overzicht.md)
      Hosting: Vercel (uit Toolstack.md)

  ANALYTICS NU
      Vermelding van Google Analytics in Toolstack.md (status: actief)
      Geen cookie-banner gezien in Juridisch/

  CAMPAGNES (input voor UTM-conventie)
      LinkedIn-posts (in Marketing/LinkedIn/)
      Mailings via Beehiiv (in Marketing/Nieuwsbrief/)
      Google Ads: niet genoemd

  CONVERSIE-SIGNALEN
      "Demo aanvragen" wordt genoemd in 00-Overzicht.md
      Pricing-pagina vermeld in S8-Producten.md

  GATEN waar ik nog vragen voor heb:
  - Wil je bij GA4 blijven of overstappen naar privacy-first?
  - Heb je een tag-manager (GTM, Stape, Vercel)?
  - Wat zijn de 3-5 belangrijkste conversies om te meten?

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 4 gaat.

### Stap 4: Blokken-interview

**Kernregel:** loop **één blok per beurt** af. Niet alle 6 tegelijk neerzetten. Per blok eerst de bekende info terugkoppelen, dan de open vragen, dan pas door naar het volgende blok.

#### Blok 1 — Scope en site-inventaris (3 tot 5 vragen)

Doel: vastleggen wat we eigenlijk meten.

1. **Site-URL en sub-domeinen.** Eén domein, of meerdere? (bv. `voorbeeld.nl` plus `app.voorbeeld.nl`)
2. **CMS / framework.** WordPress, Webflow, Squarespace, Next.js, Astro, custom? Bepaalt installatie-route.
3. **Hosting-platform.** Vercel, Netlify, Cloudflare Pages, eigen server? Bepaalt of native analytics gratis meekomt.
4. **Tag-manager aanwezig?** Google Tag Manager, Stape, Vercel-edge-config, of geen. Bepaalt of events via één laag worden ingeschoten.
5. **Conversie-definities.** Wat is een "win" op deze site? Voorbeelden: contactformulier, demo-aanvraag, checkout, nieuwsbrief-inschrijving, telefoon-tap (mobiel), e-mail-click, download. Vraag om er **maximaal 5** te kiezen — meer dan dat verwatert het beeld.

#### Blok 2 — Tool-keuze met privacy-first als default (4 tot 6 vragen)

Doel: kiezen welke analytics-tool de hoofdrol krijgt, met privacy-first als default-advies.

Toon eerst de beslisboom:

```
┌─ Heeft het bedrijf Google Ads-attributie nodig? ─────────┐
│                                                           │
│  JA → GA4 is de pragmatische keuze, met cookie-consent.  │
│       Plan extra werk in voor banner, consent-mode,       │
│       privacyverklaring-update en retentie-config.        │
│                                                           │
│  NEE → Privacy-first default. Kies op basis van hosting:  │
│                                                           │
│       • Site op Vercel ........... Vercel Analytics       │
│         (gratis tot 2.500 events/maand)                   │
│       • Site op Cloudflare ....... Cloudflare Web         │
│         Analytics (gratis, ongelimiteerd)                 │
│       • Anders, betaald .......... Plausible (~9 EUR/mnd  │
│         voor 10k pageviews) of Fathom (~14 EUR/mnd)       │
│       • Anders, self-hosted ...... Umami of Matomo        │
│         (gratis maar eigen hosting + onderhoud)           │
└───────────────────────────────────────────────────────────┘
```

Vragen:

1. **Welke kanalen leveren vandaag traffic?** Organic Google, Google Ads, LinkedIn organic, LinkedIn Ads, mailings, direct, referral, anders.
2. **Is Google Ads actief of gepland?** Zo ja → GA4 wint. Zo nee → privacy-first.
3. **Welke tool draait er nu op de site?** (Pre-fill al ingevuld uit Toolstack.md.) Vraag of die blijft of vervangen wordt.
4. **Hoeveel pageviews per maand schat je in?** Bepaalt of een gratis-tier (Vercel, Cloudflare, Plausible-trial) volstaat.
5. **Wie gaat de data uiteindelijk lezen?** Solopreneur, marketingmens, extern bureau? Bepaalt of een eenvoudige privacy-first dashboard (Plausible-stijl) volstaat of dat er een rijker UI nodig is (Matomo, GA4).
6. **Vertrouwen in self-hosted?** Alleen relevant als Umami of Matomo in beeld is. Self-hosted = goedkoper én volledig in eigen hand, maar onderhoud is werk.

Bevestig de tool-keuze expliciet voordat je doorgaat. Noteer alternatieven die zijn afgewezen plus reden.

#### Blok 3 — Event-set op maat van bedrijfstype (5 tot 8 vragen)

Doel: precies bepalen welke events worden getrackt, afgestemd op het type bedrijf.

Toon eerst de event-laag-structuur:

```
LAAG 1 — Pageviews (automatisch)
  Wat sowieso meekomt bij elke tool. Geen werk.

LAAG 2 — Engagement (handmatig instellen)
  scroll-depth (25%, 50%, 75%, 100%)
  time-on-page (drempels: 30s, 60s, 180s)
  return-visits (cookie-loos of pseudoniem)

LAAG 3 — Conversies (de winsignalen)
  form-submit (contact, demo, nieuwsbrief)
  button-click (checkout, login, download)
  telefoon-tap (alleen mobiel)
  e-mail-click (mailto:-links)
  outbound-link-click (naar partner of social)

LAAG 4 — Funnels (sequenties van events)
  landing → product → contact
  landing → blog → mail-signup
  pricing → checkout → confirmation
```

Vraag dan, afhankelijk van bedrijfstype, de event-set in:

**Voor B2B-leadgen** (typisch Upscailed-klant):
- form-submit op contactformulier
- form-submit op demo-aanvraag
- click op telefoon-tap
- click op e-mail-link
- view_pricing-pagina
- scroll-depth op cornerstone-content (whitepaper, case-pagina)
- mail-signup nieuwsbrief

**Voor e-commerce**:
- add_to_cart
- begin_checkout
- purchase (met transactie-ID, zonder PII)
- view_item
- view_collection
- coupon_use

**Voor content-publisher / blog**:
- article_read (na 30 of 60s)
- scroll_75_percent
- mail-signup
- share-click (LinkedIn, X)
- comment_submit

**Voor SaaS / app-marketing-site**:
- sign_up_start
- sign_up_complete (zonder PII)
- pricing_view
- demo_book
- log_in_redirect

Vraag de gebruiker per event of het echt nodig is. Liever **5 tot 10 scherp gedefinieerde events** dan 30 ruis-events. Noteer per event:
- Naam (snake_case, bv. `form_submit_contact`)
- Trigger (selector, route of conditie)
- Eventuele dimensies (bv. `form_id`, `cta_label`)

#### Blok 4 — UTM-discipline en custom dimensions (3 tot 4 vragen)

Doel: kanaal-attributie betrouwbaar maken via consistente UTM-tags en optionele custom dimensions.

**UTM-conventie** (verplicht voor C1 Marketing Data — kanaal-attributie):

| Parameter | Doel | Voorbeeld | Conventie |
|---|---|---|---|
| `utm_source` | Welk kanaal | `linkedin`, `google`, `newsletter`, `partner-x` | Lowercase, geen spaties |
| `utm_medium` | Type kanaal | `social`, `cpc`, `email`, `referral` | Vaste lijst van 6 tot 8 mediums |
| `utm_campaign` | Specifieke campagne | `q2-launch`, `webinar-mei`, `linkedin-iwan-week18` | Maand of week-suffix |
| `utm_content` | Variant binnen campagne (optioneel) | `cta-blauw`, `headline-a` | Voor A/B-test-tracking |
| `utm_term` | Keyword (optioneel) | Alleen voor paid search | Meestal niet handmatig |

Vragen:
1. **Welke kanalen krijgen vaste UTM-tags?** Lijst uit blok 2 nemen en per kanaal de `utm_source` plus `utm_medium` vastleggen.
2. **Wie zet de tags?** Solopreneur handmatig, of via een UTM-builder (bv. `utm.io`, een eigen Notion-template, Google's Campaign URL Builder).
3. **Naamgevingsregel voor campagnes.** Voorstel: `{maand}-{thema}`, bv. `mei-webinar-cybersec`.
4. **Custom dimensions?** Optioneel, alleen als de tool het ondersteunt (GA4 en Plausible-Pro doen dit). Voorbeelden:
   - `icp_segment` (welk ICP-segment past bij deze landingspagina)
   - `content_category` (blog, case, product, pricing)
   - `ab_variant` (A of B voor lopende A/B-test)

Sla het UTM-schema op als een aparte tabel in het output-bestand. Dit is direct herbruikbaar voor C1.

#### Blok 5 — AVG-compliance en cookie-consent (3 tot 5 vragen)

Doel: zorgen dat de gekozen setup aan de AVG voldoet en dat de privacyverklaring klopt.

Toon eerst de twee paden:

```
PAD A — Privacy-first tools (Plausible, Fathom, Vercel,
        Cloudflare, Umami, Matomo zonder cookies)

  • Geen cookies → geen consent-banner verplicht
  • Anoniem / pseudoniem → geen PII
  • Retentie: meestal onbeperkt geanonimiseerd, geen probleem
  • Privacyverklaring: één paragraaf "We gebruiken X
    privacy-first analytics, geen cookies, geen persoonlijke
    gegevens" volstaat
  • AVG-risico: laag

PAD B — GA4 (met cookies)

  • Cookie-consent verplicht (consent-banner met
    granulaire opt-in voor analytics-cookies)
  • Google Consent Mode v2 aanzetten zodat anonieme
    signalen wel binnenkomen bij opt-out
  • IP-anonimisering verplicht (anonymize_ip: true)
  • Data-retentie max 14 maanden (default in GA4 is 2 mnd,
    aanrader: 14 maanden zetten voor jaarvergelijkingen)
  • GA4-account in een EU-region zetten of Google's EU SCC's
    accepteren
  • Privacyverklaring: uitgebreide cookie-paragraaf met
    Google-policy-link, retentie-termijn en opt-out-instructie
  • AVG-risico: middel tot hoog, hangt af van uitvoering
```

Vragen:
1. **Welk pad volg je?** A (privacy-first) of B (GA4 met consent).
2. **Is er al een cookie-banner?** Zo ja, welke tool? (Cookiebot, Iubenda, Termly, Osano, Borlabs, eigen banner.) Past die bij de gekozen analytics-tool?
3. **Is de Privacyverklaring up-to-date?** Cross-link met J4 — als de privacyverklaring de gekozen tool niet noemt, moet die worden aangepast. Voorstel: open `privacyverklaring`-skill als die nog niet is gedraaid, of update de bestaande tekst.
4. **Retentie-instelling.** Voor GA4: 14 maanden zetten (default 2). Voor Plausible / Fathom: niet relevant. Voor Matomo / Umami self-hosted: zelf instelling kiezen.
5. **PII-discipline.** Bevestig expliciet: geen e-mailadres, geen volledige naam, geen IP, geen device-ID's in event-properties. Alleen pseudonieme IDs en aggregaten.

Sla de gemaakte keuzes op in een AVG-checklist binnen het output-document.

#### Blok 6 — Installatie, validatie en documentatie (3 tot 5 vragen)

Doel: vastleggen wat er installateur-technisch nog moet gebeuren en hoe we valideren dat het werkt.

Vragen:
1. **Wie voert de installatie uit?** Iwan zelf, een ontwikkelaar, een bureau? Bepaalt detailniveau van de installatie-stappen.
2. **Welke installatie-route?** Direct snippet, via tag-manager, via plugin (WordPress), via SDK (Next.js, Astro).
3. **Validatie-checklist** (de skill biedt vaste set):
   - Pageview verschijnt in realtime-view binnen 30 seconden
   - Conversie-event verschijnt na test-submit
   - UTM-parameters komen door naar de tool
   - Cookie-banner blokkeert tracking bij opt-out (alleen pad B)
   - Privacyverklaring noemt de gekozen tool expliciet
4. **Review-ritme.** Aanrader: maandelijkse 15-min sanity-check, kwartaal-update bij wijziging van tool of campagne-structuur.
5. **Eigenaar.** Wie kijkt vanaf nu naar deze data? Cross-link met HR/Team.md indien aanwezig.

### Stap 5: Schrijven en opslaan

Gebruik het template uit `references/template-website-analytics.md` als skelet. Vul het met de uitkomsten uit pre-fill plus blokken 1 tot 6.

Sla op als:
```
{scope}/Collect/Website-Analytics.md
```

Als de vault de conventie `{scope}/Marketing/` gebruikt voor analytics-bestanden en `Collect/` niet bestaat, gebruik dan:
```
{scope}/Marketing/Analytics-Setup.md
```

Maak de doelmap aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: website-analytics
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: C5
tool-primair: <Plausible/GA4/Fathom/Vercel/Cloudflare/Umami/Matomo>
pad: <privacy-first | ga4-met-consent>
aantal-events: <getal>
utm-conventie: <ja | nee>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "ultieme analytics-opzet", "perfect afgestelde funnels", "next-level inzicht". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Plausible Pro plan, EUR 19/mnd, retentie ongelimiteerd, geen cookies" is sterker dan "een privacy-vriendelijke tool".
- **Geen em-dashes.** Gebruik komma's, haakjes of losse zinnen.
- **Tabelvorm waar mogelijk** voor events, UTM-schema en AVG-checklist.
- **Status-emoji's mogen** — actief 🟢, in-test 🟡, gepland 🟠, niet-gebruikt ⚪. Maakt scannen snel.

### Stap 6: Cross-links en Toolstack-update

Werk de aangrenzende documenten bij in dezelfde tool-call-ronde:

1. **Cross-link naar C1 (Marketing Data)** — Voeg in het Analytics-document een verwijzing toe naar `Collect/Marketing-Data.md` (als die bestaat) en omgekeerd. Het UTM-schema is gedeeld eigendom van beide skills.
2. **Cross-link naar J4 (Privacyverklaring)** — Voeg in `Juridisch/Privacyverklaring.md` (of `Juridisch/Privacy.md` afhankelijk van vault-conventie) de gekozen tool toe in de cookie-paragraaf. Als de privacyverklaring nog niet bestaat, geef de hint: "Open `privacyverklaring`-skill om J4 te dichten."
3. **Cross-link naar A2 (Mission Control)** — Noteer dat de events uit dit document de bron zijn voor de site-tegel in Mission Control. Als A2 nog niet is gedraaid: noteer als toekomstige stap.
4. **Update `IT/Toolstack.md`** — Voeg de gekozen analytics-tool toe (of update bestaande regel). Categorie 7 (Data en Analytics). Zet status 🟢 actief zodra installatie is gevalideerd.

### Stap 7: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):

1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Collect/Website-Analytics.md` — v1.0, tool: {Plausible/GA4/...}, N events, UTM-conventie, AVG-checklist"*.
2. **Daily** — als de vault een daily-logging conventie heeft, log dan een eenregelige melding plus link naar het nieuwe bestand. Skip als die conventie niet bestaat.
3. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een C5-doel of analytics-doel heeft: status bijwerken (✅), regel toevoegen aan voortgangslog.
4. **Scale-audit-suggestie** — als `{scope}/Directie/Research/` een audit-rapport bevat waar C5 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:

- **Cross-link met C1 (Marketing Data)** — Volgende logische stap: kanaal-attributie inrichten op basis van het UTM-schema dat nu klaarstaat.
- **Cross-link met J4 (Privacyverklaring)** — Als de privacyverklaring nog ontbreekt of niet de nieuwe tool noemt, open dan `privacyverklaring`-skill.
- **Doorgroei naar Analyze-fase** — A1 (Rapportage Builder), A2 (Mission Control Builder), A3 (Daily Briefing) hebben deze data nodig en kunnen er nu op gebouwd worden.
- **Leverage-kandidaat L2** — Auto-rapportage maandelijks op basis van deze events.
- **Review-ritme** — Maandelijkse 15-min sanity-check op de gekozen tool, kwartaal-update bij wijziging van campagne-structuur of tool-keuze.
- **A/B-test-discipline** — Als custom dimensions met `ab_variant` zijn ingericht: noteer dat de organisatie het experiment-ritme moet vastleggen.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle 6 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Privacy-first als default-advies.** Bij twijfel: Plausible, Fathom, Vercel Analytics, Cloudflare Web Analytics, Umami of Matomo. GA4 alleen kiezen als er een concrete reden is (Google Ads-attributie, bestaande GA4-investering met dashboards in Looker Studio).
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in Toolstack.md, Marketing/, Juridisch/ of 00-Overzicht.md staat. Pre-fill-validatie in stap 3 voorkomt dat.
- **AVG is geen optie maar een eis.** Bij GA4: cookie-consent verplicht, IP-anonimisering verplicht, retentie max 14 maanden, geen PII in events. Geen uitzonderingen.
- **Cross-link J4 (Privacyverklaring) is verplicht.** Een analytics-document zonder bijbehorende privacyverklaring-update is niet af.
- **Cross-link C1 (Marketing Data) is sterk aanbevolen.** Het UTM-schema is gedeeld eigendom. Inconsistente naamgeving tussen C5 en C1 maakt kanaal-attributie kapot.
- **Cross-link A2 (Mission Control) als consumer.** Noteer expliciet dat de events bron zijn voor de site-tegel in Mission Control, ook als A2 nog niet is gebouwd.
- **Maximaal 10 events.** Liever 5 tot 10 scherp gedefinieerde events dan 30 ruis-events. Een dashboard met 30 events leest niemand.
- **Snake_case voor event-namen.** Consistent met GA4-conventie en met Plausible/Fathom-praktijk. Bv. `form_submit_contact`, niet `FormSubmitContact` of `form-submit-contact`.
- **Lowercase UTM-waarden, geen spaties.** `utm_source=linkedin` werkt, `utm_source=LinkedIn Ads` breekt attributie.
- **Geen PII in events of dimensions.** Geen e-mail, geen volledige naam, geen IP, geen device-ID. Wel: pseudonieme IDs, ICP-segment, content-categorie, A/B-variant.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden — alleen relatief binnen `{scope}`.
- **Geen marketing-trucjes.** Geen "stel je voor dat je elke campagne kon meten", geen rhetorische vragen aan het begin van een blok. Recht voor zijn raap.
- **Validatie hoort bij oplevering.** Het document is niet af zolang de checklist uit blok 6 niet is afgewerkt. Markeer expliciet welke items zijn gevalideerd en welke nog open staan.
- **Mik op rijke diepte, niet op het audit-minimum.** C5-audit vraagt minimaal "welke tool en welke metrics". Deze skill levert tool, events, UTM-schema, AVG-checklist, installatie-stappen en cross-links zodat A-fase en L2 er direct op kunnen bouwen.

## Voorbeeld-output

Zie [`references/template-website-analytics.md`](references/template-website-analytics.md) voor de exacte structuur die de skill oplevert: tool-keuze met onderbouwing, event-tabel, UTM-schema, AVG-checklist, installatie-stappen, validatie-status en cross-links naar C1, J4 en A2.
