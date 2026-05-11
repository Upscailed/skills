---
type: website-analytics
bedrijf: "{Bedrijfsnaam}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: C5
tool-primair: "{Plausible | GA4 | Fathom | Vercel Analytics | Cloudflare Web Analytics | Umami | Matomo}"
pad: "{privacy-first | ga4-met-consent}"
aantal-events: 0
utm-conventie: ja
---

# Website Analytics, {Bedrijfsnaam}

> **SCALE-stap:** C5 (Collect). **Datum:** YYYY-MM-DD. **Versie:** 1.0.
> **Cross-link:** [C1 Marketing Data](../Collect/Marketing-Data.md) deelt het UTM-schema. [J4 Privacyverklaring](../Juridisch/Privacyverklaring.md) noemt de gekozen tool expliciet. [A2 Mission Control](../Analyze/Mission-Control.md) consumeert deze events.
> **Privacy-pad:** {privacy-first / ga4-met-consent}.

## Samenvatting

- **Site-URL:** {voorbeeld.nl}
- **Gekozen tool:** {Plausible / GA4 / ...}
- **Aantal events:** N (3 conversies, 4 engagement, 1 funnel-keten)
- **UTM-conventie:** ja, vastgelegd (zie sectie 4)
- **Cookie-banner nodig:** {nee / ja, via {Cookiebot/Iubenda/...}}
- **AVG-checklist:** {N van N items afgevinkt}
- **Installatie:** {Vercel-SDK / GTM-snippet / WordPress-plugin / native pixel}
- **Eigenaar:** {Rol uit HR/Team.md of persoon}

---

## 1. Site-inventaris

| Veld | Waarde |
|---|---|
| Primair domein | voorbeeld.nl |
| Sub-domeinen | app.voorbeeld.nl (alleen pageviews), docs.voorbeeld.nl |
| CMS / framework | Next.js |
| Hosting-platform | Vercel |
| Tag-manager | Geen (events direct via SDK) |
| Conversie-definities (max 5) | demo-aanvraag, contactformulier, nieuwsbrief-signup, pricing-bekeken, telefoon-tap |

---

## 2. Tool-keuze

### Beslissing

| Veld | Waarde |
|---|---|
| Primaire tool | Plausible |
| Plan | Growth, 10k pageviews | EUR 9/mnd |
| Reden | Privacy-first, geen cookie-banner, geen GA-investering, hosting is Vercel maar Vercel Analytics dekt geen events |
| Status | 🟡 in-test (live binnen 1 week) |

### Afgewezen alternatieven (en waarom)

- **GA4:** geen Google Ads attributie nodig, cookie-banner-overhead niet gewenst.
- **Vercel Analytics:** prima voor pageviews maar geen scherpe event-tracking, dimensions beperkt.
- **Cloudflare Web Analytics:** prima alternatief, alleen als hosting naar Cloudflare verhuist een keuze.
- **Fathom:** functioneel gelijkwaardig aan Plausible, iets duurder; geen doorslaggevende reden.
- **Umami / Matomo (self-hosted):** lagere TCO op lange termijn, maar onderhoud is werk.

---

## 3. Event-set

### Pageviews (laag 1, automatisch)

Wat sowieso meekomt bij de gekozen tool. Geen werk.

### Engagement (laag 2)

| Event | Trigger | Dimensies | Status |
|---|---|---|---|
| `scroll_75_percent` | 75% van de pagina-hoogte gescrold | `page_path` | 🟡 in-test |
| `time_on_page_60s` | 60 seconden actief op pagina | `page_path` | 🟡 in-test |
| `return_visit` | Tweede sessie binnen 30 dagen | (cookie-loos pseudoniem) | 🟢 actief |

### Conversies (laag 3)

| Event | Trigger | Dimensies | Status |
|---|---|---|---|
| `form_submit_contact` | Submit op `#contact-form` | `form_id`, `referrer_path` | 🟢 actief |
| `form_submit_demo` | Submit op `#demo-form` | `demo_slot`, `referrer_path` | 🟡 in-test |
| `click_pricing_cta` | Klik op CTA op `/pricing` | `cta_label`, `pricing_tier` | 🟡 in-test |
| `mailto_click` | Klik op `mailto:` link | `link_target` | 🟢 actief |
| `tel_click` | Klik op `tel:` link (mobiel) | `link_target` | 🟢 actief |
| `newsletter_signup` | Submit op `#newsletter-form` | `placement` | 🟢 actief |

### Funnels (laag 4)

| Funnel | Stappen |
|---|---|
| Demo-funnel | landing → pricing → demo-form → form_submit_demo |
| Mail-funnel | landing → blog-post → newsletter_signup |
| Lead-funnel | landing → about → contact-form → form_submit_contact |

---

## 4. UTM-schema (gedeeld met C1)

### Conventie

- Lowercase, geen spaties, koppelteken als scheidingsteken.
- Campagne-naam: `{maand}-{thema}`, bv. `mei-webinar-cybersec`.

### Vaste UTM-bouwstenen per kanaal

| Kanaal | utm_source | utm_medium | Voorbeeld utm_campaign |
|---|---|---|---|
| LinkedIn organic posts | linkedin | social | mei-thoughtleader-week18 |
| LinkedIn Ads | linkedin | cpc | q2-launch |
| Google Ads | google | cpc | q2-launch-brand |
| Nieuwsbrief Beehiiv | beehiiv | email | mei-update |
| Partner-referral | partner-{naam} | referral | partner-{naam}-q2 |
| YouTube-bio | youtube | social | algemeen-bio |

### Custom dimensions (optioneel, alleen bij GA4 of Plausible-Pro)

| Dimensie | Doel | Waarden |
|---|---|---|
| `icp_segment` | Welk ICP-segment past bij landingspagina | `solopreneur`, `mkb-10`, `mkb-50` |
| `content_category` | Type pagina | `blog`, `case`, `product`, `pricing`, `legal` |
| `ab_variant` | Lopende A/B-test-variant | `a`, `b` (leeg buiten test) |

---

## 5. AVG-checklist

| Item | Status | Toelichting |
|---|---|---|
| Tool is privacy-first of GA4 met consent | ✅ | Plausible: geen cookies, geen consent-banner nodig |
| Privacyverklaring noemt gekozen tool expliciet | ⚪ | TODO: J4 updaten met Plausible-paragraaf |
| Cookie-banner aanwezig (alleen GA4-pad) | n.v.t. | Privacy-first, geen banner nodig |
| IP-anonimisering aan (alleen GA4-pad) | n.v.t. | |
| Retentie max 14 maanden (GA4) / passend (overig) | ✅ | Plausible: ongelimiteerd geanonimiseerd |
| Geen PII in event-properties | ✅ | Bevestigd in event-set: alleen `page_path`, `form_id`, `cta_label` |
| Verwerkersovereenkomst getekend | ⚪ | TODO: Plausible-DPA downloaden en archiveren in `Juridisch/DPAs/` |
| EU-region of EU-SCC's | ✅ | Plausible draait in Duitsland (EU) |

---

## 6. Installatie

### Stap-voor-stap

1. **Account aanmaken** bij {Plausible/...} en site toevoegen (`voorbeeld.nl`).
2. **Snippet of SDK plaatsen.** Voor Next.js: `next-plausible`-package + `<PlausibleProvider domain="voorbeeld.nl" />` in `_app.tsx`. Voor WordPress: officiële plugin. Voor anders: snippet in `<head>`.
3. **Custom events instellen.** Per event uit sectie 3 een trigger configureren — bij Plausible via de `plausible()`-functie, bij GA4 via `gtag('event', ...)`.
4. **UTM-validatie.** Open elke campagne-URL uit sectie 4 in incognito-tab en check of bron en medium correct doorkomen in het dashboard.
5. **Privacyverklaring updaten.** Voeg de paragraaf over de gekozen tool toe (zie J4-skill).
6. **Cross-link met C1 leggen.** Voeg in `Collect/Marketing-Data.md` (als die bestaat) een verwijzing toe naar dit UTM-schema, of plan C1 als volgende stap.

### Validatie

| Check | Status |
|---|---|
| Pageview verschijnt in realtime-view binnen 30s | ⚪ TODO |
| Conversie-event verschijnt na test-submit | ⚪ TODO |
| UTM-parameters komen door naar de tool | ⚪ TODO |
| Cookie-banner blokkeert tracking bij opt-out (alleen GA4) | n.v.t. |
| Privacyverklaring noemt gekozen tool expliciet | ⚪ TODO |

---

## 7. Review-ritme

| Frequentie | Wat | Eigenaar |
|---|---|---|
| Wekelijks | Sanity-check op realtime + 7-dagen-trend | {Eigenaar} |
| Maandelijks | UTM-naamgeving check, top-bronnen, conversie-trend | {Eigenaar} |
| Per kwartaal | Tool-evaluatie, event-set herzien, dimensies opschonen | {Eigenaar} |

---

## 8. Cross-links

- **C1 Marketing Data:** [`Collect/Marketing-Data.md`](../Collect/Marketing-Data.md) — UTM-schema gedeeld.
- **J4 Privacyverklaring:** [`Juridisch/Privacyverklaring.md`](../Juridisch/Privacyverklaring.md) — tracking-paragraaf bevat de gekozen tool.
- **A2 Mission Control:** [`Analyze/Mission-Control.md`](../Analyze/Mission-Control.md) — site-tegel leest uit deze events.
- **S12 Toolstack:** [`IT/Toolstack.md`](../IT/Toolstack.md) — gekozen tool toegevoegd in categorie 7 (Data en Analytics).

---

## Open punten (na oplevering)

- [ ] Installatie afronden (sectie 6 stap 2-3)
- [ ] Validatie-checklist afvinken (sectie 6)
- [ ] J4 updaten met Plausible-paragraaf
- [ ] DPA archiveren in `Juridisch/DPAs/`
- [ ] C1 (Marketing Data) als vervolgstap inplannen
