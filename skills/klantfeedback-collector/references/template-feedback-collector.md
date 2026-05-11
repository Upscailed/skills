---
type: feedback-systeem
bedrijf: "{Bedrijfsnaam}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: C4
output-locatie: "{Klantenservice/Feedback-Setup.md | Collect/Klantfeedback.md}"
---

# Klantfeedback Systeem — {Bedrijfsnaam}

> **Wat is dit document?** De kanonieke beschrijving van hoe {Bedrijfsnaam} klantfeedback structureel verzamelt, registreert, opvolgt en omzet in actie. Het bevat: vaste feedback-momenten in de klantreis, feedback-types per moment, de tools die elk moment dragen, het datavlak waarop alles wordt vastgelegd, opvolg-regels met SLA, en de eerste 3 voorbeeld-feedbacks die de audit-drempel halen. Dit document is een levende basis: bij elke nieuwe tool, nieuw moment of pattern-conclusie wordt het bijgewerkt.

---

## Huidige situatie

> Korte nulmeting: hoe komt feedback nu binnen, waar belandt het, wat ontbreekt nog. Eerlijk; geen wensbeeld.

| Aspect | Status |
|---|---|
| **Aantal feedback-momenten per maand (huidig)** | {Bv. "~3 spontane bedankjes per maand plus 1-2 Google Reviews per kwartaal"} |
| **Kanalen waar feedback nu binnenkomt** | {Bv. "E-mail (algemeen inbox), helpdesk Helpscout, Google Business, spontane WhatsApp-berichten"} |
| **Centrale verzamelplek** | {Bv. "Geen — verspreid over inbox, Helpscout en Google Business"} |
| **Gevoel van compleetheid** | {Bv. "Slechts deel van klanten geeft signaal; stille klanten onzichtbaar"} |
| **Belangrijkste tekort** | {Bv. "Geen NPS dus geen kwantitatieve relatie-gezondheid; geen vaste opvolging op patronen"} |

---

## De feedback-cyclus in één plaatje

```
┌────────────────┐     ┌────────────────┐     ┌────────────────┐     ┌────────────────┐
│  1. Triggeren  │     │  2. Verzamelen │     │  3. Registreren│     │  4. Opvolgen   │
│                │ ──▶ │                │ ──▶ │                │ ──▶ │                │
│  Vast moment   │     │  Tool stuurt   │     │  Datavlak op   │     │  Eigenaar + SLA│
│  in klantreis  │     │  vraag uit     │     │  centrale plek │     │  per type      │
└────────────────┘     └────────────────┘     └────────────────┘     └─────┬──────────┘
                                                                            │
                              ┌─────────────────────────────────────────────┘
                              ▼
                       ┌────────────────┐     ┌────────────────┐
                       │  5. Patroon    │     │  6. Actie op   │
                       │     review     │ ──▶ │     systeem    │
                       │                │     │                │
                       │  Maandelijks of│     │  SOP-aanpas-   │
                       │  per kwartaal  │     │  sing, product-│
                       └────────────────┘     │  fix, training │
                                              └────────────────┘
```

---

## Feedback-momenten

> De vaste momenten in de klantreis waarop feedback wordt opgehaald. Cross-link naar `Directie/Playbook/Klantreis.md` (S9): elke regel hier hoort aan een fase vast te zitten.

| # | Klantreis-fase | Moment | Type | Tool | Trigger | Eigenaar | SLA reactie |
|---|---|---|---|---|---|---|---|
| 1 | {Fase 5 — Onboarding} | {7-14 dagen na start} | {CSAT} | {Tally-formulier} | {Automatische mail dag 10 via ActiveCampaign-flow 'onboarding-v2'} | {Iwan} | {72 uur} |
| 2 | {Fase 6 — Service} | {Per kwartaal} | {NPS} | {Delighted} | {Automatisch per 90 dagen} | {Iwan} | {Promotor 72u, Passief 1 week, Detractor 48u} |
| 3 | {Fase 7 — Retention} | {60 dagen voor renewal} | {Open feedback + verleng-gesprek} | {Calendly + transcript-Fireflies} | {Handmatige Calendly-uitnodiging na datum-trigger in CRM} | {Iwan} | {1 week} |
| 4 | {Fase 7 — Opzegging} | {Bij elke opzegging} | {Win-loss-interview} | {Zoom-call 30 min} | {Direct na opzeg-bevestiging} | {Iwan} | {Binnen 2 weken} |
| 5 | {Fase 4-5-overgang} | {1e oplevering} | {Mini-review-vraag} | {E-mail-template} | {Handmatig na oplevering} | {Account-eigenaar} | {Bedankje binnen 72u} |
| 6 | {Klacht-resolutie} | {Direct na sluiten ticket} | {CSAT plus open} | {Helpscout-survey} | {Auto in Helpscout-workflow} | {Klantenservice} | {72u op resultaat reageren} |

> Drie tot zes momenten is realistisch voor een eerste versie. Voeg toe wanneer een nieuw moment zich aandient.

---

## Feedback-types in gebruik

| Type | Wanneer ingezet | Vraag-format | Wat we ermee doen |
|---|---|---|---|
| **NPS** | {Kwartaal-check moment 2} | {"Hoe waarschijnlijk dat je {Bedrijfsnaam} aanbeveelt aan een collega, 0-10?" + open vraag} | {Promotors → vraag om review/casestudy; Passieven → verbeter-vraag; Detractors → persoonlijk gesprek} |
| **CSAT** | {Na onboarding moment 1, na klacht moment 6} | {"Hoe tevreden ben je over {touchpoint}, 1-5?"} | {Onder 4: gesprek; 4-5: bedankje + casestudy-vraag bij positieve woorden} |
| **Open feedback** | {Verleng-gesprek moment 3} | {"Wat gaat goed? Wat had beter gekund?"} | {Quotes catalogiseren, naar S6 SWOT als terugkerend} |
| **Win-loss-interview** | {Bij opzegging moment 4} | {30 min gesprek: reden, alternatief, advies} | {Quotes naar Sales/Win-Loss.md, patronen naar productroadmap} |
| **Review-prompt** | {Promotor uit NPS} | {"Wil je een korte review op Google/Trustpilot?"} | {Reviews bewaren in publieke kanalen + hergebruik in marketing} |
| **Klachten-log** | {Continu, helpdesk} | {Gestructureerde ticket: probleem, ernst, status} | {Maandelijks patronen reviewen, escalatie bij 3x zelfde klacht} |

---

## Datavlak — wat we per feedback minimaal vastleggen

> Verzamelplek: {bv. "Notion-database 'Feedback' met webhooks vanuit Delighted, Helpscout en Tally"} of {bv. "Google Sheets 'Feedback 2026' bijgewerkt door eigenaar"}.

| Veld | Verplicht | Voorbeeld | Bron-tool |
|---|---|---|---|
| **Klant-ID** | Ja | `klant-0042` of `naam@bedrijf.nl` | {CRM-koppeling of handmatig} |
| **Datum** | Ja | `2026-05-11` | {Tool-veld of handmatig} |
| **Kanaal** | Ja | `Google Reviews` / `Helpscout-#1234` / `NPS-Q2-Delighted` | {Tool-veld} |
| **Type** | Ja | `NPS`, `CSAT`, `Review`, `Klacht`, `Open`, `Suggestie`, `Win-loss` | {Tool-veld} |
| **Score** | Ja indien NPS/CSAT/CES | `9` (NPS) of `4.5` (CSAT) | {Tool-veld} |
| **Open tekst** | Ja indien beschikbaar | `"De onboarding ging snel, eerste rapportage was helder."` | {Tool-veld of letterlijke quote} |
| **Segment** | Ja (cross-link S4 ICP) | `B2B - administratie 50-100 klanten` | {Handmatig of CRM} |
| **Klantreis-fase** | Aanbevolen (cross-link S9) | `Fase 5 — Onboarding` | {Handmatig} |
| **Product/pakket** | Aanbevolen (cross-link S8) | `Pakket A` | {Handmatig of CRM} |
| **Sentiment** | Optioneel | `positief` / `neutraal` / `negatief` | {Handmatig of auto via AI-tag} |
| **Tags** | Optioneel | `#offerte-proces`, `#reactietijd` | {Handmatig} |
| **Opvolg-actie** | Ja | `Review hergebruiken in casestudie` / `Terugbellen` / `Geen actie` | {Handmatig} |
| **Status** | Ja | `open` / `in behandeling` / `gesloten` | {Workflow-veld} |
| **Eigenaar** | Ja | `Iwan` / `Klantenservice-team` | {Handmatig of auto-toegewezen} |

---

## Opvolging en SLA

| Feedback-situatie | SLA eerste reactie | Eigenaar | Vervolg-actie |
|---|---|---|---|
| **Klacht (ernstig)** | {4 uur op werkdagen} | {Iwan} | {Telefonisch contact + binnen 24u oplossingsplan} |
| **Klacht (normaal)** | {24 uur} | {Klantenservice} | {Ticket-resolutie + post-resolutie CSAT} |
| **Negatieve publieke review (1-3 sterren)** | {24 uur} | {Iwan} | {Publiek reageren (rustig, oplossing-gericht), privé contact} |
| **Positieve publieke review (4-5 sterren)** | {72 uur} | {Marketing of Klantenservice} | {Publieke bedank-reactie, vraag om casestudie bij waardevolle quote} |
| **NPS-promotor (9-10)** | {72 uur} | {Marketing} | {Bedank + vraag om Google Review of casestudy-akkoord} |
| **NPS-passief (7-8)** | {1 week} | {Iwan} | {Mail of belletje: "wat zou een 9 of 10 maken?"} |
| **NPS-detractor (0-6)** | {48 uur} | {Iwan} | {Persoonlijk gesprek; intern noteren als win-back-kandidaat} |
| **Open feedback / suggestie** | {1 week} | {Iwan} | {Bedank + intern besluit (wel/niet implementeren met motivatie)} |
| **Win-loss-interview** | {Gepland binnen 2 weken na opzegging} | {Iwan} | {Transcript + samenvatting in Sales/Win-Loss.md} |

### Patronen-review (terugkerende signalen)

- **Cadens**: {bv. "Maandelijks, eerste maandag van de maand, 30 min review"}.
- **Trigger voor escalatie**: {bv. "Drie keer dezelfde klacht of pijnpunt in één maand → patroon-actie"}.
- **Patroon-actie kan zijn**:
  - SOP-aanpassing (S10)
  - Product- of pakket-aanpassing (S8)
  - Communicatie-aanpassing in een fase (S9 + S2/S3)
  - Tool-vervanging (S12)
  - Klacht-procedure herontwerp (Klantenservice/Klachten-Proces.md)
- **Notatie**: elke patroon-conclusie krijgt een regel in dit document onder `## Patronen en acties` en, indien relevant, een eigen ticket of taak.

---

## Eerste 3 feedbacks (audit-drempel)

> Letterlijke klant-quotes — niet geredigeerd. Namen anonimiseren als geen toestemming voor publieke vermelding. Datum, kanaal en sentiment toevoegen.

### Feedback 1 — {Klant A}

| Veld | Waarde |
|---|---|
| **Datum** | {YYYY-MM-DD} |
| **Kanaal** | {Bv. Google Reviews / NPS-mail / WhatsApp} |
| **Type** | {NPS / Review / Open / Klacht} |
| **Score** | {Indien van toepassing} |
| **Quote** | {Letterlijke tekst van de klant.} |
| **Segment** | {ICP-segment} |
| **Klantreis-fase** | {Fase X} |
| **Sentiment** | {Positief / Neutraal / Negatief} |
| **Opvolg-actie** | {Wat is/wordt ermee gedaan} |
| **Status** | {Open / Gesloten} |

### Feedback 2 — {Klant B}

| Veld | Waarde |
|---|---|
| **Datum** | {YYYY-MM-DD} |
| **Kanaal** | {...} |
| **Type** | {...} |
| **Score** | {...} |
| **Quote** | {Letterlijke tekst.} |
| **Segment** | {...} |
| **Klantreis-fase** | {...} |
| **Sentiment** | {...} |
| **Opvolg-actie** | {...} |
| **Status** | {...} |

### Feedback 3 — {Klant C}

| Veld | Waarde |
|---|---|
| **Datum** | {YYYY-MM-DD} |
| **Kanaal** | {...} |
| **Type** | {...} |
| **Score** | {...} |
| **Quote** | {Letterlijke tekst.} |
| **Segment** | {...} |
| **Klantreis-fase** | {...} |
| **Sentiment** | {...} |
| **Opvolg-actie** | {...} |
| **Status** | {...} |

> Als er nog geen 3 feedbacks beschikbaar zijn: noteer hier de geplande eerste mini-ronde (welke klanten, welk format, welke tool, welke verzenddatum) en vul dit blok binnen 2 weken na verzending.

---

## Patronen en acties

> Wordt gevuld bij elke patroon-review (maandelijks of kwartaal). Nieuwste bovenaan.

### YYYY-MM-DD — {Korte titel van het patroon}

- **Signaal**: {Wat zagen we, op basis van hoeveel feedback-stukken}
- **Conclusie**: {Wat dit ons vertelt}
- **Actie**: {Wat gaan we doen, wie, deadline}
- **Status**: {Open / In behandeling / Gesloten}

---

## Cross-links naar andere SCALE-checks

| SCALE-check | Document | Relatie tot dit feedback-systeem |
|---|---|---|
| S4 — ICP | `Directie/Playbook/ICP.md` | Segment-veld in datavlak is direct afgeleid van ICP-segmenten |
| S6 — SWOT | `Directie/Playbook/SWOT.md` | Terugkerende positieve feedback = Strength; terugkerende klachten = Weakness |
| S8 — Producten en Pricing | `Directie/Playbook/Producten.md` | Feedback per product wijst op kwaliteit per pakket |
| S9 — Klantreis | `Directie/Playbook/Klantreis.md` | Elk feedback-moment hoort aan een fase vast |
| S10 — SOPs | `Operations/Processen/` | Klacht-afhandeling, onboarding-CSAT en NPS-uitsturen krijgen elk een eigen SOP |
| S12 — Toolstack | `Directie/Playbook/Toolstack.md` | De gekozen feedback-tools worden in de toolstack opgenomen met owner en kosten |
| A4 — Beslissings-analyse | `Analyze/Beslissings-Analyse.md` | Patronen-review levert input voor strategische beslissingen |
| M3 — Content Roadmap | `Marketing/Content Roadmap.md` | Positieve reviews en NPS-promotor-quotes voeden mid-funnel content |
| V3 — Opvolg-flow | `Sales/Opvolg-flow.md` | Renewal-feedback-moment is direct input voor V3-flow |
| J4 — Privacyverklaring | `Juridisch/Privacyverklaring.md` | Feedback-data bevat persoonsgegevens; verwerking moet in privacyverklaring staan |
| K — Klantenservice | `Klantenservice/` | Klachten-log en SLA-afspraken sluiten aan op klantenservice-proces |

---

## Bijhouden

Dit is een **levend document**. Update bij:

- Elk nieuw feedback-moment dat wordt toegevoegd
- Elke wisseling van tool (bv. van Tally naar Typeform)
- Elke nieuwe eigenaar of SLA-aanpassing
- Elke patroon-review die actie oplevert (regel toevoegen aan `Patronen en acties`)
- Elke kwartaal: bijwerken van de eerste 3 voorbeeld-feedbacks naar recente exemplaren (de oude verhuizen naar een archief-sectie of `Klantenservice/Feedback-Archief.md`)
- Wisseling in volwassenheid (bv. van handmatig naar geautomatiseerd, of van Google Sheets naar Airtable)

**Versiebump-triggers:**
- Patch (1.0.0 → 1.0.1): kleine tekstuele aanpassingen, één eigenaar of SLA-regel aangepast
- Minor (1.0.x → 1.1.0): nieuw feedback-moment, nieuwe tool, nieuw type toegevoegd
- Major (1.x.y → 2.0.0): fundamentele herziening van het systeem (bv. wissel van verspreid naar centraal datavlak, of complete tool-stack-vervanging)
