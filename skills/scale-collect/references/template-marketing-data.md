---
type: marketing-data-setup
bedrijf: <Bedrijfsnaam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: C1
aantal-kanalen-actief: <getal>
aantal-datasets: <getal>
aantal-gaps: <getal>
---

# Marketing Data Setup — <Bedrijfsnaam>

Dit document beschrijft welke marketing-cijfers structureel worden verzameld, uit welke bron, met welke frequentie, via welke methode en waar ze landen. Het is de bron-kaart voor SCALE-stappen A1 (Rapportage), A3 (Daily Briefing), L2 (Auto-Rapportage) en E1 (Dashboard).

> Cross-links: [[Toolstack]] (S12), [[Website-Analytics]] (C5), [[Social-Presence]] (M2), [[Content-Roadmap]] (M3), [[Rapportage]] (A1)

## Samenvatting

| | Aantal |
|---|---:|
| Actieve kanalen | <getal> |
| Vastgelegde datasets | <getal> |
| Geïdentificeerde gaps | <getal> |
| Datasets met API of automatisering | <getal> |
| Datasets nog handmatig | <getal> |

Kort beeld in twee zinnen: wat is de hoofdrichting van de marketing-data-stroom, welke kanalen krijgen de meeste aandacht, welke gap is het meest urgent. Bv. *"Drie kanalen actief (LinkedIn, nieuwsbrief, eigen website), zes datasets, twee gaps. Hoofd-gap: paid-ads-cijfers worden niet structureel weggeschreven; nieuwsbrief-archief mist."*

## Kanaal 1 — Website

Status: 🟢 Actief / 🟡 Op te starten / ⚪ Niet van toepassing

| Dataset | Tool | Kern-metrics | Frequentie | Methode | Bestemming | Eigenaar | Review-ritme |
|---|---|---|---|---|---|---|---|
| Plausible maand-overzicht | Plausible | Unieke bezoekers, pageviews, top-pagina's, bounce | Maandelijks | Native dashboard + handmatig export | `Marketing/Data/YYYY-MM/plausible.csv` | <Naam of rol> | Maandelijks (1e van de maand) |
| ... | ... | ... | ... | ... | ... | ... | ... |

> Diepere event- en goal-tracking voor de website hoort in `website-analytics-setup` (C5). Dit document blijft op kanaal-niveau.

## Kanaal 2 — Social media

Status: 🟢 Actief / 🟡 Op te starten / ⚪ Niet van toepassing

| Platform | Dataset | Tool | Kern-metrics | Frequentie | Methode | Bestemming | Eigenaar | Review-ritme |
|---|---|---|---|---|---|---|---|---|
| LinkedIn | Organisch bereik wekelijks | LinkedIn Company Page | Impressions, engagements, follower-growth, CTR | Wekelijks | Handmatig export | `Marketing/Data/YYYY-MM/linkedin-week.csv` | <Naam> | Maandelijks |
| Instagram | <Dataset> | <Tool> | ... | ... | ... | ... | ... | ... |
| ... | ... | ... | ... | ... | ... | ... | ... | ... |

## Kanaal 3 — E-mail en nieuwsbrief

Status: 🟢 Actief / 🟡 Op te starten / ⚪ Niet van toepassing

| Dataset | Tool | Kern-metrics | Frequentie | Methode | Bestemming | Eigenaar | Review-ritme |
|---|---|---|---|---|---|---|---|
| Beehiiv per uitgave | Beehiiv Pro | Open rate, click rate, abonnee-groei, churn | Per uitgave + maandelijks | Native dashboard, handmatig export | Beehiiv dashboard + `Marketing/Nieuwsbrief/YYYY-MM-DD - <Titel>/metrics.md` | <Naam> | Per uitgave (binnen 48u) + maandelijks |
| ... | ... | ... | ... | ... | ... | ... | ... |

## Kanaal 4 — Paid Ads

Status: 🟢 Actief / 🟡 Op te starten / ⚪ Niet van toepassing

> Bij ⚪: noteer kort waarom, bv. *"Niet van toepassing per YYYY-MM-DD; geen actieve betaalde campagnes."*

| Platform | Dataset | Tool | Kern-metrics | Frequentie | Methode | Bestemming | Eigenaar | Review-ritme |
|---|---|---|---|---|---|---|---|---|
| Google Ads | Campagne-dashboard | Google Ads native | Impressions, CTR, CPC, conversies, kosten/conversie, ROAS | Dagelijks tijdens campagne, anders wekelijks | Native dashboard + Looker Studio | Looker Studio dashboard `<URL>` | <Naam> | Wekelijks tijdens campagne |
| Meta Ads | ... | ... | ... | ... | ... | ... | ... | ... |
| ... | ... | ... | ... | ... | ... | ... | ... | ... |

## Kanaal 5 — Content (blog, podcast, video)

Status: 🟢 Actief / 🟡 Op te starten / ⚪ Niet van toepassing

| Content-type | Dataset | Tool | Kern-metrics | Frequentie | Methode | Bestemming | Eigenaar | Review-ritme |
|---|---|---|---|---|---|---|---|---|
| Blog | Top-artikelen + zoekverkeer | Google Search Console + Plausible | Klicks, impressies, gem. positie, views per artikel | Maandelijks | Handmatig export | `Marketing/Data/YYYY-MM/blog.csv` | <Naam> | Maandelijks |
| Podcast | Downloads per aflevering | Spotify for Podcasters | Downloads, listen-through-rate, abonnees, platform-spread | Per aflevering + maandelijks | Native dashboard | `Marketing/Podcast/YYYY-MM/metrics.md` | <Naam> | Per aflevering (binnen week) |
| Video | YouTube-kanaal | YouTube Studio | Views, watch-time, average view duration, subscribers | Wekelijks | Native dashboard | YouTube Studio | <Naam> | Maandelijks |
| ... | ... | ... | ... | ... | ... | ... | ... | ... |

## Kanaal 6 — Overige (events, partnerships, PR)

Status: 🟢 Actief / 🟡 Op te starten / ⚪ Niet van toepassing

| Type | Dataset | Tool | Kern-metrics | Frequentie | Methode | Bestemming | Eigenaar | Review-ritme |
|---|---|---|---|---|---|---|---|---|
| Event | Post-event-leads | Eventbrite + handmatig | Aanwezigen, leads, post-event opt-ins | Per event | Handmatig | `Marketing/Events/YYYY-MM-DD - <Naam>/leads.md` | <Naam> | Direct na event |
| Partnership | Affiliate-cijfers | <Tool> | Leads via partner, gezamenlijke campagne-kosten | Maandelijks | API of handmatig | <Bestemming> | <Naam> | Maandelijks |
| PR | Mentions en reach | Mention.com of handmatig | Mentions, share of voice, reach | Maandelijks | Handmatig + tool | `Marketing/PR/YYYY-MM.md` | <Naam> | Maandelijks |
| ... | ... | ... | ... | ... | ... | ... | ... | ... |

## Gaps

Kanalen die wel actief zijn maar nog geen structurele data-stroom hebben, of datasets waar de huidige opzet niet volstaat.

| Kanaal | Activiteit zichtbaar | Wat ontbreekt | Voorgestelde actie | Prioriteit |
|---|---|---|---|---|
| Social: LinkedIn | Wekelijkse posts | Geen wekelijkse export-routine | Buffer-connectie of handmatige weekexport instellen | Hoog |
| Nieuwsbrief | Drie uitgaven verzonden | Archief van open/click-cijfers ontbreekt | Per uitgave een `metrics.md` opslaan in mapje van uitgave | Middel |
| Paid Ads | Geen actieve campagne | Niet van toepassing tot eerste campagne | Bij start eerste campagne: dataset-rij activeren | n.v.t. |
| ... | ... | ... | ... | ... |

## Credentials-locatie

Verwijzingen, **nooit waarden**. Houd dit veld synchroon met de password-manager.

| Tool | Credentials-locatie | Wie heeft toegang |
|---|---|---|
| Plausible | 1Password / Marketing / Plausible | <Naam> |
| LinkedIn Company Page | 1Password / Marketing / LinkedIn | <Naam>, <Naam> |
| Beehiiv | 1Password / Marketing / Beehiiv | <Naam> |
| Google Ads | 1Password / Marketing / Google Ads | <Naam> |
| Meta Business | 1Password / Marketing / Meta | <Naam> |
| Spotify for Podcasters | 1Password / Marketing / Spotify | <Naam> |
| YouTube Studio | 1Password / Marketing / YouTube | <Naam> |
| ... | ... | ... |

## Review-ritme document

| Wanneer | Wat | Eigenaar |
|---|---|---|
| Kwartaal | Volledige doorloop alle 6 kanalen | <Naam> |
| Bij elke nieuwe marketing-tool | Dataset-rij toevoegen + credentials-rij bijwerken | <Naam> |
| Bij elke kanaal-keuze (start of stop) | Status-emoji bijwerken + actie loggen | <Naam> |

## Cross-links

- **S12 Toolstack** — `IT/Toolstack.md` — marketing-tools moeten consistent staan in beide bestanden
- **C5 Website Analytics** — `Marketing/Website-Analytics.md` — diepere event- en goal-tracking voor het Website-kanaal
- **M2 Social Presence** — `Marketing/Social-Presence.md` — kanaal-keuze en posting-frequentie per platform
- **M3 Content Roadmap** — `Marketing/Content-Roadmap.md` — wat wordt gepubliceerd, dat hier wordt gemeten
- **A1 Rapportage Builder** — `Analyze/Rapportage.md` — consumer-laag bovenop deze data-stromen
- **A3 Daily Briefing** — `Analyze/Daily-Briefing.md` — dagelijkse marketing-signalen uit deze datasets
- **L2 Auto-Rapportage Setup** — `Leverage/Auto-Rapportage.md` — automatisering van rapportages op deze bronnen
- **E1 Dashboard Bouwer** — `Engineer/Dashboard.md` — visualisatie-laag bovenop deze data-stromen

## Wijzigingen

| Datum | Wijziging | Door |
|---|---|---|
| YYYY-MM-DD | v1.0 aangemaakt via skill `marketing-data-setup` (C1) | <Naam> |
| ... | ... | ... |
