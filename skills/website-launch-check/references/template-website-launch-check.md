---
type: website-launch-check
bedrijf: <Bedrijfsnaam>
website-url: <https://example.nl>
launch-status: <go | go-met-voorbehoud | no-go>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: M1
---

# Website Launch Check — <Bedrijfsnaam>

> Cross-links: [[Directie/Playbook/Brand Guidelines]] (S2) · [[Directie/Playbook/Tone of Voice]] (S3) · [[Juridisch/Privacyverklaring]] (J4) · [[Collect/Website-Analytics]] (C5)

## Samenvatting

- **URL gecheckt**: <https://example.nl>
- **Staging-URL** (indien apart): <https://staging.example.nl>
- **Launch-datum**: <YYYY-MM-DD>
- **Hosting / platform**: <Vercel | Netlify | Cloudflare Pages | WordPress | Squarespace | Webflow | eigen>
- **Check uitgevoerd op**: YYYY-MM-DD
- **Status**: <GO | GO MET VOORBEHOUD | NO-GO>
- **Aantal blockers**: <0>
- **Aantal aandachtspunten**: <0>

### Eindoordeel

<Korte motivatie van 2 tot 4 zinnen waarom de status GO, GO MET VOORBEHOUD of NO-GO is. Concrete blockers benoemen indien NO-GO. Concrete fix-deadlines indien GO MET VOORBEHOUD.>

## Blockers (NO-GO indien aanwezig)

| # | Item | Categorie | Fix-actie | Owner | Deadline |
|---|---|---|---|---|---|
| 1 | <Bijv. Cookiebanner ontbreekt> | Privacy en AVG | <Concrete fix> | <Naam> | <YYYY-MM-DD> |

_Indien geen blockers: "Geen blockers."_

## Aandachtspunten (post-launch acties)

| # | Item | Categorie | Fix-actie | Owner | Deadline |
|---|---|---|---|---|---|
| 1 | <Bijv. og:image ontbreekt> | SEO | <Voeg 1200x630 og-image toe op homepage> | <Naam> | <YYYY-MM-DD> |

_Indien geen aandachtspunten: "Geen aandachtspunten."_

---

## 1. Content

> Toets: alle teksten Brand Guidelines- en Tone of Voice-proof, geen lorem ipsum, contactinfo klopt.

| Item | Status | Toelichting / fix-actie |
|---|:---:|---|
| Alle teksten Brand Guidelines-proof | ⚪ | Toets stijl tegen `Directie/Playbook/Brand Guidelines.md`. |
| Alle teksten Tone of Voice-proof | ⚪ | Toets toon tegen `Directie/Playbook/Tone of Voice.md`. |
| Geen lorem ipsum of placeholder-tekst | ⚪ | Spider de site, scan op "lorem", "ipsum", "TODO", "TK". |
| Contact-info klopt met `Directie/00 - Overzicht.md` | ⚪ | Telefoon, e-mail, adres, openingstijden gelijk. |
| Geen broken images of `alt`-tekst-gaten | ⚪ | Audit met devtools-network-tab of `axe`. |
| Geen interne TODO's in zichtbare copy | ⚪ | View-source-scan. |
| Date-stamps en copyright actueel | ⚪ | Footer-jaartal = huidig jaar. |

## 2. SEO

> Toets: meta-titles en descriptions per pagina, og-image, sitemap.xml, robots.txt.

| Item | Status | Toelichting / fix-actie |
|---|:---:|---|
| Meta-title per pagina uniek, 50-60 tekens | ⚪ | Bevat bedrijfsnaam en kernzoekwoord. |
| Meta-description per pagina uniek, 140-160 tekens | ⚪ | |
| og:image aanwezig, 1200x630 px, < 1 MB | ⚪ | |
| og:title en og:description ingevuld | ⚪ | |
| Twitter card-tags aanwezig | ⚪ | `twitter:card`, `twitter:title`, `twitter:image`. |
| sitemap.xml aanwezig en bereikbaar | ⚪ | `GET /sitemap.xml` → 200. |
| robots.txt aanwezig en correct | ⚪ | Geen onbedoelde `Disallow: /`. |
| Canonical-tag per pagina (zelf-referentie) | ⚪ | `<link rel="canonical" href="...">`. |
| HTML-lang attribuut correct (`<html lang="nl">`) | ⚪ | |
| Schema.org-markup (LocalBusiness of Organization) | ⚪ | Optioneel maar aanbevolen. |

## 3. Privacy en AVG

> Toets: cookiebanner, privacyverklaring (J4-link), AVG-checks.

| Item | Status | Toelichting / fix-actie |
|---|:---:|---|
| Cookiebanner aanwezig met echte keuze-optie | ⚪ | "Weigeren" net zo zichtbaar als "Accepteren". Of: privacy-first analytics zonder banner. |
| Privacyverklaring online, link in footer | ⚪ | Cross-link `Juridisch/Privacyverklaring.md` (J4). |
| Algemene Voorwaarden linken (indien commercieel) | ⚪ | Cross-link `Juridisch/Algemene Voorwaarden.md` (J3). |
| AVG-compliance contactformulier | ⚪ | Privacy-link in formulier, geen verborgen tracking. |
| Tracking-pixels gemarkeerd in privacyverklaring | ⚪ | Meta-pixel, LinkedIn Insight, Google Ads. |
| IP-anonimisering bij GA4 | ⚪ | Niet van toepassing bij privacy-first stack. |
| Geen PII in URL's | ⚪ | Geen e-mail of telefoon in query-strings. |

## 4. Performance

> Toets: Lighthouse-score > 80, images < 200 KB, lazy-loading, Core Web Vitals groen.

| Item | Status | Toelichting / fix-actie |
|---|:---:|---|
| Lighthouse-performance mobile > 80 | ⚪ | Score: <38>. PageSpeed-rapport: <link>. |
| Lighthouse-accessibility > 90 | ⚪ | Score: <>. |
| Lighthouse-best-practices > 90 | ⚪ | Score: <>. |
| Lighthouse-SEO > 90 | ⚪ | Score: <>. |
| Core Web Vitals groen (LCP < 2.5s, INP < 200ms, CLS < 0.1) | ⚪ | |
| Images onder 200 KB, WebP of AVIF | ⚪ | |
| Lazy-loading op below-the-fold images | ⚪ | `loading="lazy"`. |
| Fonts: max 2 families, `font-display: swap` | ⚪ | |
| Third-party JS async of defer | ⚪ | |
| Cache-headers op statische assets | ⚪ | Lange TTL, fingerprinted filenames. |

## 5. Security

> Toets: HTTPS-only, security headers, geen exposed `.env`.

| Item | Status | Toelichting / fix-actie |
|---|:---:|---|
| HTTPS-only (HTTP → HTTPS 301-redirect) | ⚪ | |
| HSTS-header (`Strict-Transport-Security`) | ⚪ | `max-age=31536000`. |
| X-Content-Type-Options: nosniff | ⚪ | |
| X-Frame-Options: DENY of SAMEORIGIN | ⚪ | Of CSP `frame-ancestors`. |
| Content-Security-Policy gezet | ⚪ | Mag soepel, mits aanwezig. |
| Referrer-Policy gezet | ⚪ | `strict-origin-when-cross-origin`. |
| Permissions-Policy gezet | ⚪ | Camera, microfoon, geolocation expliciet uit. |
| Geen exposed `.env` of `.git/` | ⚪ | `GET /.env` → 404. |
| Admin-paden afgeschermd | ⚪ | `/admin`, `/wp-admin`, `/login`. |
| Geen API-keys in client-side JS | ⚪ | Spot-check view-source. |
| TLS-versie minimaal 1.2, bij voorkeur 1.3 | ⚪ | |

## 6. Functioneel

> Toets: alle CTA's werken, forms versturen, 404 + 500 pages.

| Item | Status | Toelichting / fix-actie |
|---|:---:|---|
| Alle CTA-knoppen werken | ⚪ | |
| Forms versturen daadwerkelijk | ⚪ | Test-submit, mail aangekomen, thank-you-state. |
| 404-pagina aanwezig met navigatie terug | ⚪ | |
| 500-pagina aanwezig | ⚪ | Statisch mag, met contact-info. |
| Geen broken links (intern en uitgaand) | ⚪ | Broken-link-scan. |
| Anchor-links werken | ⚪ | Alle `#anchor`-targets bestaan. |
| Footer-links werken | ⚪ | Privacy, voorwaarden, contact, social. |
| Social-share-knoppen werken | ⚪ | Indien aanwezig. |
| Cookie-banner-keuzes werken | ⚪ | Accepteren én weigeren-pad getest. |

## 7. Analytics

> Toets: C5 events live, UTM-discipline, conversie-tracking.

| Item | Status | Toelichting / fix-actie |
|---|:---:|---|
| C5-event-set actief | ⚪ | Cross-link `Collect/Website-Analytics.md`. |
| Conversie-events gedefinieerd en getest | ⚪ | Form-submit, download, contact-klik. |
| UTM-discipline op alle campagnes | ⚪ | Consistente conventie. |
| Marketing-attributie-pad werkt | ⚪ | UTM landt traceerbaar in analytics. |
| DNT- of consent-respect | ⚪ | |
| Analytics-dashboard bereikbaar | ⚪ | Toegang voor juiste personen. |
| Privacy-conformiteit analytics-tool | ⚪ | Cross-link J4. |
| A/B-test-tooling in privacyverklaring | ⚪ | Indien actief. |

## 8. Pre-launch test

> Toets: mobile, tablet, desktop, alle browsers, alle links, formulier-test, backup van vorige versie.

| Item | Status | Toelichting / fix-actie |
|---|:---:|---|
| Mobile getest (iOS Safari + Android Chrome) | ⚪ | |
| Tablet getest (iPad portrait + landscape) | ⚪ | |
| Desktop getest (Chrome, Firefox, Safari, Edge) | ⚪ | |
| Alle pagina's bezocht (gebruik sitemap als checklist) | ⚪ | |
| Alle links gecontroleerd | ⚪ | |
| Alle formulieren getest in elke browser | ⚪ | |
| Backup van vorige versie minimaal 30 dagen bewaard | ⚪ | |
| Rollback-plan klaar | ⚪ | Eén-klik-terug. |
| Performance-test onder belasting | ⚪ | Optioneel. |

## 9. Domain en DNS

> Toets: HTTPS-certificaat, redirect www, SPF/DKIM voor mail.

| Item | Status | Toelichting / fix-actie |
|---|:---:|---|
| HTTPS-certificaat geldig, niet binnen 30d verlopend | ⚪ | Auto-renewal actief. |
| Redirect www naar non-www (of omgekeerd) 301 | ⚪ | Consistent kiezen. |
| Apex (`@`) en `www` beide bereikbaar | ⚪ | |
| DNS-records gedocumenteerd | ⚪ | A, AAAA, CNAME, MX, TXT. |
| SPF-record correct | ⚪ | `v=spf1 ...`. |
| DKIM-record correct | ⚪ | |
| DMARC-record minimaal `p=none` met `rua=` | ⚪ | Bij voorkeur `p=quarantine` na monitoring. |
| MTA-STS en TLS-RPT overwogen | ⚪ | |
| DNS-TTL verlaagd rond launch | ⚪ | 24-48u voor rollback-snelheid. |
| Domain-locking actief bij registrar | ⚪ | |
| WHOIS-privacy indien gewenst | ⚪ | |

---

## Acties post-launch

| # | Actie | Categorie | Owner | Deadline | Status |
|---|---|---|---|---|---|
| 1 | <Bijv. og:image toevoegen> | SEO | <Naam> | <YYYY-MM-DD> | Open |
| 2 | <Bijv. Cookiebanner-tekst verfijnen> | Privacy en AVG | <Naam> | <YYYY-MM-DD> | Open |

## Volgende check

- **Volgende launch-check gepland**: <YYYY-MM-DD> (zes-maandelijks of bij majeure release)
- **Monitoring actief**: <Better Stack | UptimeRobot | Cronitor | nee>
- **Performance-budget vastgelegd**: <ja, Lighthouse-mobile > 80> / <nee>

## Wijzigingen

| Datum | Versie | Wijziging |
|---|---|---|
| YYYY-MM-DD | 1.0 | Eerste launch-check uitgevoerd. |
