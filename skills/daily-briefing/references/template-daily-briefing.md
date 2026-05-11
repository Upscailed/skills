---
type: daily-briefing-setup
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: A3
kanaal: <email|telegram|slack|app|print>
frequentie: <werkdagen|alle-dagen|custom>
tijdstip: HH:MM
tijdzone: <IANA-string>
eerste-editie: YYYY-MM-DD
secties: [datum, summary, gisteren, trend, radar, aandachtspunten, actie]
---

# Daily Business Briefing — Setup voor <Bedrijfsnaam>

> SCALE-stap A3 (Analyze). Dit document legt vast hoe de Daily Brief wordt gegenereerd, in welk kanaal hij landt, op welk tijdstip, met welke data-bronnen en met welke fallback bij falen. Het document is de overdraagbare spec waarmee een implementatie-engineer (of automation-tool) de brief kan bouwen.

## Hoe dit document werkt

- Sectie **Setup-overzicht** vat alle keuzes samen in één tabel.
- Sectie **Content-spec per sectie** beschrijft per editie-onderdeel de exacte template-string en de data-bron.
- Sectie **Voorbeeld-editie** toont een complete brief voor "gisteren" zoals de ondernemer hem gaat ontvangen.
- Sectie **Scheduled-task-spec** is de technische bouw-instructie.
- Sectie **Anomalie-regels** legt vast wanneer iets gevlagd wordt.
- Sectie **Cross-links en gaps** vermeldt afhankelijkheden van andere skills.

---

## Setup-overzicht

| Veld | Waarde |
|---|---|
| **Bedrijf** | <Naam> |
| **Doelgroep** | <Hoofd-ontvanger + eventuele cc> |
| **Kanaal** | <e-mail / Telegram / Slack / app / print> |
| **Account** | <e-mailadres of bot-handle of channel-naam> |
| **Backup-kanaal** | <Optioneel, bv. e-mail als secondary> |
| **Frequentie** | <Werkdagen ma-vr / ma-za / alle 7 / custom> |
| **Vakantie-regel** | <Default geen pauze / specifieke pauze-perioden> |
| **Tijdstip** | <HH:MM lokale tijd> |
| **Tijdzone** | <IANA-string, bv. Europe/Amsterdam> |
| **Cron** | <Cron-expressie, bv. `0 7 * * 1-5`> |
| **Orchestrator** | <Make.com / n8n / Zapier / Pipedream / Node-script / Python-cron / Claude Code scheduled-task> |
| **Tone** | <Zakelijk-direct / Coachend-stevig / Persoonlijk-warm> |
| **Eerste editie** | <YYYY-MM-DD, default dag 5 na intake> |
| **Implementatie door** | <Klant / Upscailed-engineer / Third party> |

---

## Content-spec per sectie

### Sectie 1: Datum + dag

| Veld | Inhoud |
|---|---|
| **Template** | `<Weekdag> <DD> <maand-NL> <YYYY> · week <WW> · dag <DDD> van het jaar` |
| **Voorbeeld** | `Maandag 12 mei 2026 · week 20 · dag 132 van het jaar` |
| **Bron** | Systeemtijd op de orchestrator |
| **Format** | Nederlands, kleine letters voor weekdag in begin als onderwerp-regel |

### Sectie 2: Executive summary

| Veld | Inhoud |
|---|---|
| **Template** | LLM-gegenereerd, 3 tot 5 zinnen, op basis van data uit secties 3, 4 en 5. |
| **LLM-model** | <Claude Sonnet / Claude Haiku / GPT-4 / etc.> |
| **Prompt** | Zie sectie "LLM-prompts" verderop |
| **Max tokens** | 250 |
| **Fallback bij LLM-falen** | Sla deze sectie over, voeg in sectie 6 een regel toe: "Executive summary niet gegenereerd, LLM faalde." |
| **Bron** | Aggregatie van secties 3 + 4 + 5 |

### Sectie 3: Gisteren in 1 oogopslag

| Veld | Inhoud |
|---|---|
| **Template** | Tabel met 4-6 rijen, kolommen: Metric, Gisteren, 7-daags gemiddelde, Trend-pijl |
| **Metrics (vul aan)** | Omzet, Nieuwe leads, Deals gesloten, First response time, Foutpercentage facturatie, Klantcontacten — kies wat past |
| **Bron per metric** | Zie sectie "Data-bronnen per metric" verderop |
| **Format** | Euro met 0 decimalen, percentages 0 decimalen, doorlooptijden in <werkdagen / kalenderdagen — kies>, response-times in uren:minuten |
| **Fallback bij data-falen** | Toon "data nog niet beschikbaar" in de rij, ga door |

### Sectie 4: Trend afgelopen 7 dagen

| Veld | Inhoud |
|---|---|
| **Template** | Per metric uit sectie 3: pijl ▲ ▼ ▶ plus percentage of absoluut verschil vs 7-daags gemiddelde |
| **Berekening** | (gisteren - 7-daags gemiddelde) / 7-daags gemiddelde × 100% |
| **Drempels** | ≥ +5% → ▲, ≤ -5% → ▼, anders ▶ |
| **Bron** | Historie uit A1 (Analyze/Rapportage.md) of directe tool-query met datum-range |

### Sectie 5: Op de radar vandaag

| Veld | Inhoud |
|---|---|
| **Template** | Bullet-lijst: tijd — onderwerp — type |
| **Bronnen** | (1) Calendar voor vandaag; (2) CRM voor deals met sluitdatum vandaag of binnen 3 dagen; (3) Klant-milestones (jubileum, contract-verloop, leverdatum) |
| **Max items** | 6, daarna "+N meer" |
| **Fallback** | "Geen afspraken vandaag" als calendar leeg is |

### Sectie 6: Aandachtspunten en blockers

| Veld | Inhoud |
|---|---|
| **Template** | Bullet-lijst van zaken die op rood staan, plus anomalie-vlaggen, plus openstaande vragen |
| **Bronnen** | (1) KPIs op rood uit C7; (2) Anomalie-vlaggen uit sectie 4; (3) Vragen uit `Persoonlijk/Inbox.md` of `Directie/02 - Tasks.md` met tag #blocker |
| **Format** | "<Wat staat op rood>: <huidige waarde> (norm: <norm>)" |
| **Fallback** | "Geen aandachtspunten vandaag" als alles groen is |

### Sectie 7: 1 actie voor vandaag

| Veld | Inhoud |
|---|---|
| **Template** | Eén zin, concreet, met werkwoord vooraan. Bv. "Bel Acme BV voor 12:00 om de offerte te bespreken voordat hij verloopt." |
| **LLM-prompt** | Zie sectie "LLM-prompts" verderop |
| **Max tokens** | 80 |
| **Fallback bij LLM-falen** | Toon de meest urgente bullet uit sectie 6, als die er is. Anders sectie overslaan. |

---

## Voorbeeld-editie

> Dit is hoe de brief er gisteren-recap-stijl uit zou zien voor <Bedrijfsnaam>. Cijfers zijn dummy tot de eerste echte editie draait.

```
Onderwerp: Daily Brief <Bedrijfsnaam> — <weekdag DD maand YYYY>

<Weekdag DD maand YYYY> · week <WW> · dag <DDD> van het jaar

Executive summary
<3 tot 5 zinnen LLM-output. Voorbeeld:>
Gisteren 2 nieuwe leads (boven gemiddelde van 1.3 per dag) en
1 deal gesloten op 4.500 euro. First response time zat op 6 uur,
oranje. Trend afgelopen 7 dagen: omzet stijgt (+18% versus
vorige week), leads stabiel, response-time loopt op (+1.5 uur).
Vandaag: 3 afspraken, en een offerte die om 17:00 afloopt.

Gisteren in 1 oogopslag
| Metric            | Gisteren  | 7-daags gem | Trend  |
| Omzet             | 4.500     | 3.200       | ▲ +41% |
| Nieuwe leads      | 2         | 1.3         | ▲ +54% |
| Deals gesloten    | 1         | 0.4         | ▲      |
| First response    | 6:12 uur  | 4:30 uur    | ▼      |
| Foutpercentage    | 0%        | 1.2%        | ▲      |
| Klantcontacten    | 8         | 6.5         | ▲      |

Op de radar vandaag
- 10:00 — Klantgesprek Acme BV (consultatieve verkoop)
- 14:00 — Onboarding-call Bakker BV
- 16:00 — Demo nieuwe lead Janssen Holding
- 17:00 — Offerte Acme BV verloopt

Aandachtspunten
- First response time op oranje (6:12 uur, norm groen ≤4 uur)
- Offerte Acme BV verloopt 17:00 vandaag, nog niet geaccepteerd

Actie voor vandaag
Bel Acme BV voor 12:00 om de offerte te bespreken voordat hij
verloopt.

---
Daily Brief gegenereerd door <Orchestrator> op <YYYY-MM-DD HH:MM>.
Vragen of feedback? Reply op deze mail.
```

---

## Data-bronnen per metric

Vul deze tabel exact in. Eén primaire bron per metric. Geen middelen tussen bronnen.

| Metric | Primaire bron | Endpoint of query | Eenheid | Fallback bij faal |
|---|---|---|---|---|
| Omzet gisteren | <Moneybird / Stripe / e-Boekhouden / Exact / handmatig> | <API-endpoint of view-naam> | Euro, 0 decimalen | "Data nog niet beschikbaar" |
| Nieuwe leads | <CRM-tool, view-naam> | <Endpoint> | Aantal | "Data nog niet beschikbaar" |
| Deals gesloten | <CRM-tool, view-naam> | <Endpoint> | Aantal | "Data nog niet beschikbaar" |
| First response time | <Helpdesk-tool, view-naam> | <Endpoint> | Uren:minuten | "Data nog niet beschikbaar" |
| Foutpercentage facturatie | <Tool of handmatig> | <Bron> | Percentage, 0 decimalen | "Data nog niet beschikbaar" |
| Klantcontacten | <CRM + Helpdesk samengevoegd> | <Endpoints> | Aantal | "Data nog niet beschikbaar" |

---

## Scheduled-task-spec

### Trigger

- **Cron**: `<cron-expressie>` (bv. `0 7 * * 1-5` voor 07:00 ma-vr)
- **Tijdzone**: `<IANA-string>` (bv. `Europe/Amsterdam`)
- **Orchestrator**: `<naam + versie>`

### Stappen

1. **Data ophalen** — voor elke metric in tabel "Data-bronnen": call endpoint, time-out 60s, retry 1x bij time-out
2. **Trend berekenen** — voor elke metric: query 7-daags-historie, bereken gemiddelde, bereken trend-percentage
3. **Anomalie-detectie** — pas regels uit sectie "Anomalie-regels" toe, mark welke metrics een flag krijgen
4. **LLM-call executive summary** — model `<model-keuze>`, prompt zie sectie "LLM-prompts", max 250 tokens, retry 1x bij faal
5. **LLM-call 1-actie** — model `<model-keuze>`, prompt zie sectie "LLM-prompts", max 80 tokens, retry 1x bij faal
6. **Template invullen** — vul alle secties met data + LLM-output
7. **Versturen via kanaal** — `<API-call of SMTP-config>`, time-out 30s, retry 1x

### Failure-fallbacks

| Stap faalt | Wat dan |
|---|---|
| Eén data-bron time-out | Toon "data nog niet beschikbaar" in die rij, ga door met andere bronnen |
| Alle data-bronnen falen | Verstuur brief met alleen datum-regel en alert: "Alle data-bronnen onbereikbaar — engineer is gewaarschuwd". Stuur paralel alert naar <engineer-mailadres>. |
| LLM-call executive summary faalt | Sla sectie 2 over, voeg in sectie 6 toe: "Executive summary niet gegenereerd, LLM faalde." |
| LLM-call 1-actie faalt | Toon meest urgente bullet uit sectie 6 als fallback-actie |
| Versturing faalt | Retry na 5 min. Bij tweede falen: log error en alert engineer. |

### Logging en monitoring

- **Logs landen in**: `<tool of folder>` (bv. Sentry, Logtail, eigen `logs/`-folder)
- **Welk veld per log**: timestamp, latency per stap, status (success/fail/partial), eventuele error-message
- **Wie checkt**: `<naam>` — frequentie `<wekelijks/maandelijks>`
- **Patronen om op te letten**: vaak falende bron, vaak triggerende anomalie-regel, dag-van-de-week-patronen, time-out-clusters

---

## Anomalie-regels

| Regel | Drempel | Wat gebeurt er |
|---|---|---|
| Omzet wijkt af van 7-daags gemiddelde | ±<percentage>% | Vermeld in executive summary + flag in sectie 6 |
| Leads-aantal wijkt af | ±<percentage>% | Idem |
| Response-time wijkt af | ±<percentage>% | Idem |
| Foutpercentage wijkt af | ±<percentage>% | Idem |
| KPI op rood (uit C7) | n.v.t. (binaire status) | Auto in sectie 6 |
| Deal-verval vandaag | datum=vandaag | Auto in sectie 5 (radar) en sectie 6 (aandacht) |

---

## LLM-prompts

### Prompt voor sectie 2 (Executive summary)

```
Je bent een feitelijke business-briefing-schrijver voor <Bedrijfsnaam>.
Schrijf een executive summary van 3 tot 5 zinnen op basis van
onderstaande data. Tone: <gekozen tone>.

Regels:
- Nederlands
- Geen em-dashes (gebruik komma's of haakjes)
- Geen marketing-superlatieven ("geweldig", "fantastisch")
- Concrete cijfers en bedragen
- Begin met gisteren, eindig met vandaag

Data:
{paste data uit secties 3, 4, 5 hier}

Schrijf nu de summary.
```

### Prompt voor sectie 7 (1 actie)

```
Je bent een Chief of Staff voor <Bedrijfsnaam>.
Op basis van onderstaande data: kies de ENIGE meest urgente
actie voor de ondernemer vandaag. Eén zin, concreet,
werkwoord vooraan.

Regels:
- Nederlands
- Geen em-dashes
- Eén zin, max 25 woorden
- Werkwoord vooraan (bv. "Bel...", "Stuur...", "Bevestig...")
- Specifiek: noem naam, tijdstip of bedrag waar van toepassing

Data:
{paste sectie 5 + 6 hier}

Kies de actie.
```

---

## Cross-links en gaps

### Verplichte cross-links

- [[Analyze/Rapportage]] (A1) — wekelijkse en maandelijkse versie, met meer diepte
- [[Operations/KPIs]] (C7) — operationele KPIs leveren dagelijkse data
- [[Collect/CRM-setup]] (C2) — pipeline-data voor leads en deals
- [[Collect/Financiele-data]] (C3) — omzet en cashflow
- [[Collect/Klantfeedback]] (C4) — NPS en CSAT voor optionele tevredenheid-regel
- [[Collect/Marketing-data]] (C1) — lead-bronnen voor leads-regel
- [[IT/Toolstack]] (S12) — welke tools data leveren

### Optionele cross-links

- [[Analyze/Mission-Control]] (A2) — realtime dashboard als aanvulling
- [[Leverage/Auto-rapportage]] (L2) — automatisering van A1
- [[Directie/Playbook/Brand-guidelines]] (S2) — tone-of-voice voor brief-template

### Bekende gaps

> Vul aan welke C- of A-skills nog niet zijn ingevuld op het moment van setup. Een Daily Brief draait op data uit deze bronnen. Lege bronnen worden in de brief getoond als "data nog niet beschikbaar".

- [ ] <Bron X niet beschikbaar — wordt opgelost door eerst skill Y te draaien>
- [ ] <Bron Z onvolledig — wordt aangevuld na eerste 2 weken edities>

### Vervolgsuggesties

- **Eerste editie meten** — verifieer of de brief op dag 5 daadwerkelijk landt. Dat is de Upscailed Time-to-Value-belofte.
- **Tweak-ronde na 2 weken** — welke secties worden altijd geskipt, welke worden elke dag gelezen
- **Herijking na 3 maanden** — anomalie-drempels bijstellen, secties toevoegen of laten vallen, tone-of-voice verfijnen
- **Bij groei: A2 Mission Control toevoegen** — als de brief niet meer volstaat omdat er tussendoor gekeken wordt
- **Bij groei: L2 Auto Rapportage** — voor de wekelijkse en maandelijkse cijfer-stroom

---

## Notities

<!-- Plek voor de ondernemer of Upscailed-engineer om observaties bij te houden: welke secties werken, welke niet, welke bronnen vaak falen, welke ideeen voor versie 2. -->
