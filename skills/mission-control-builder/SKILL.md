---
name: mission-control-builder
title: "Mission Control Builder"
description: "Helpt een ondernemer in 35 tot 60 minuten een centraal CEO-dashboard te ontwerpen: één plek die in 30 seconden laat zien hoe het bedrijf draait. Dit is SCALE-stap A2 (Analyze) en de directe opvolger van rapportages per afdeling (A1). Een Mission Control is geen kerstboom aan tegels, maar een doelgerichte selectie van 5 tot 9 hero-KPI's, 4 tot 6 mini-trendgrafieken, een alerts-strook voor afwijkingen, goal-progress per jaardoel en een recent-activity-feed. Bedoeld als ochtendscherm of vrijdagcheck, niet als operationeel battle-station. De skill levert geen werkende build op, maar een ontwerp-document met de exacte KPI-keuze, bron per metric, refresh-frequentie, alert-regels en tool-keuze. Vóór het ontwerp begint, scant de skill diep wat al beschikbaar is: C1 (Marketing data), C2 (CRM), C3 (Financiele data), C4 (Klantfeedback), C5 (Website-analytics), C6 (Concurrentie), C7 (Operationele KPI's) voor data-bronnen, S5 Goals voor jaardoelen, S11 Team voor wie wat ziet. Tool-keuze wordt expliciet gemaakt: Notion-dashboard, custom HTML/Astro/React, Looker Studio, Metabase, Grafana, Retool of Cursor-build, met een MKB-default richting simpel custom dashboard. De skill werkt vault-onafhankelijk: geen aannames over een specifieke mapnaam of vault-eigenaar, alleen de SCALE-Analyze-conventie (`Analyze/`, `Collect/` of `IT/AI-Tools/`). Triggert wanneer iemand zegt: 'mission control', 'CEO-dashboard', 'KPIs op één plek', 'overview-dashboard', 'mijn bedrijf in oogopslag', 'wat moet ik 's ochtends zien', 'centraal scherm voor mijn cijfers', 'A2 dichten in SCALE-audit', 'gap A2', 'dashboard-ontwerp voor de CEO', 'Mission-Control-Ontwerp.md aanmaken'. Triggert NIET wanneer iemand een operationeel dashboard wil bouwen voor een team (gebruik E1 Dashboard Bouwer) of een dagelijkse briefing wil opzetten (gebruik A3 Daily Briefing) of een afdelingsrapport wil maken (gebruik A1 Rapportage Builder)."
category: operations
tags: [mission-control, dashboard, ceo, kpi, scale-framework, a2, analyze, overview]
estimatedTime: "35 tot 60 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Mission Control Builder

## Doel

Helpt een ondernemer om in 35 tot 60 minuten een **centraal CEO-dashboard** te ontwerpen: één scherm dat in 30 seconden laat zien hoe het bedrijf draait. Dit is SCALE-stap A2 (Analyze) en het overzicht-aanvulling op afdelingsrapporten uit A1.

*Designprincipe.* De vraag die elke tegel moet doorstaan: *"Wat zou je in 30 seconden willen zien als je de zaak in oogopslag wilt checken?"* Niet alles wat meetbaar is, hoort op een Mission Control. Een dashboard met 30 KPI's is geen Mission Control, dat is een controlekamer waar niemand 's ochtends naar kijkt. Mik op 5 tot 9 hero-KPI's, niet meer.

*Waarom dit fundamenteel is voor de Analyze-fase.* Een Mission Control is geen mooie tegelwand, het is een **beslissingstool**:

- **Anomalie-detectie** - afwijkingen vallen op omdat er weinig getallen op het scherm staan. Op een dashboard met 40 KPI's verdwijnt elke rode tegel in het geheel.
- **Goal-discipline** - jaardoelen uit S5 staan op het hoofdscherm. Als een doel niet op het scherm past, is het waarschijnlijk geen jaardoel.
- **Ritueel-fundering** - A3 Daily Briefing en de wekelijkse review draaien op dezelfde tegels. Een goede Mission Control betekent dat de ondernemer dezelfde getallen ziet, week na week.
- **Hand-off-readiness** - als de ondernemer ooit een operations-manager aanneemt, is dit het scherm dat overgaat. Niet zijn hele hoofd, niet zijn 12 spreadsheets, maar één scherm.

*Wat je verliest zonder dit document.* Drie concrete pijnpunten die deze skill voorkomt:

1. **Onmeetbare drukte.** De ondernemer voelt "het loopt" of "het loopt niet" zonder concrete signalen. Beslissingen op gevoel in plaats van op cijfers.
2. **KPI-spreiding.** Cijfers staan verspreid over Pipedrive, Moneybird, Google Analytics, een eigen sheet, Slack-meldingen. Niemand kijkt elke ochtend in 6 systemen.
3. **Dashboard-rouw.** Eerder zelf iets gebouwd dat te druk werd, te traag laadde, of geen onderhoud kreeg. Mission Control sneuvelt zodra het te veel wil zijn.

*Waarom dit een ontwerp is, geen build.* Deze skill levert geen werkend dashboard op. Hij levert een **ontwerp-document** op met de exacte KPI-keuze, bron per metric, refresh-frequentie, alert-regels en tool-keuze. De eigenlijke implementatie loopt via E1 (Dashboard Bouwer) of L2 (Auto Rapportage Setup, als de data via scheduled-tasks gevuld wordt). Zo blijft de strategische keuze (wat wil je zien) gescheiden van de bouw-keuze (hoe ga je het renderen).

Resultaat: SCALE-audit A2 springt van ❌ of ⚠️ naar ✅ en het document is direct herbruikbaar voor A3 Daily Briefing, E1 Dashboard Bouwer, en L2 Auto Rapportage Setup.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  MISSION CONTROL BUILDER - SCALE-stap A2 (Analyze)        │
│  ~35-60 minuten · 5 ontwerpblokken                        │
└──────────────────────────────────────────────────────────┘

  In 35 tot 60 minuten ontwerpen we je Mission Control: één
  scherm dat in 30 seconden laat zien hoe je bedrijf draait.
  Geen kerstboom aan tegels, geen 40 KPI's, maar 5 tot 9
  hero-getallen die ertoe doen.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 5 ontwerpblokken (één per beurt, niet alles tegelijk)│
  │  • Per blok: keuzes maken, geen open vraag-vlakte       │
  │  • Vooraf scan ik C1-C7 (data-bronnen), S5 (jaardoelen),│
  │    S11 (team-zichtbaarheid) zodat ik veel al weet       │
  │  • Daarna lever ik Analyze/Mission-Control-Ontwerp.md   │
  │    op met KPI-lijst, bron per metric, alert-regels,     │
  │    tool-keuze en bouwplan-richting (E1 of L2)           │
  └────────────────────────────────────────────────────────┘

  De 5 ontwerpblokken:
  [1] Hero-KPI's      (5-9 tegels - wat zie je in 30 sec)
  [2] Trend-grafieken (4-6 mini-charts - richting over tijd)
  [3] Alerts          (auto-flag-regels bij afwijkingen)
  [4] Goal-progress   (per jaardoel uit S5 - voortgangsbalk)
  [5] Recent-activity (laatste 5-10 events - pulse-feed)

  Plus afsluitend: tool-keuze (Notion / Looker / Metabase /
  custom HTML / Retool / etc.) en doorkijk naar E1 of L2 voor
  de eigenlijke bouw.

  Heb je al eerdere dashboard-pogingen of een idee van wat je
  per ochtend wilt zien? Dan kun je dat nu noemen - hoe meer
  context, hoe minder ik hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst zijn eigen wensen-lijst wil neerzetten.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  MISSION CONTROL BUILDER - A2 · 35-60 min · 5 blokken     │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  C1-C7 (data),
   │    (auto-discover)   │  S5 (Goals),
   │                      │  S11 (Team),
   │                      │  bestaand ontwerp?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Eigen wensen      │  "Wat zou je 's
   │    + dashboard-rouw  │   ochtends willen
   │                      │   zien?"
   │                      │  + welke pogingen
   │                      │  zijn al gestrand?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Ontwerp, per      │  5 blokken:
   │    blok              │  [1] Hero-KPI's
   │                      │  [2] Trends
   │                      │  [3] Alerts
   │                      │  [4] Goals
   │                      │  [5] Activity
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Tool-keuze        │  Notion / Looker /
   │                      │  Metabase /
   │                      │  custom / Retool /
   │                      │  Cursor-build
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Refresh-ritme +   │  Per tegel:
   │    bron per tegel    │  realtime / hourly /
   │                      │  daily / weekly +
   │                      │  bron-tool
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Schrijven +       │  Analyze/
   │    opslaan           │  Mission-Control-
   │                      │  Ontwerp.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Logging +         │  Changelog +
   │    vervolg           │  hint richting
   │    suggesties        │  A3, E1 of L2
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Mission Control" / "Mission-Control-Ontwerp"
- "CEO-dashboard" / "CEO-overzicht" / "ondernemers-dashboard"
- "KPI's op één plek" / "alle cijfers op één scherm"
- "Mijn bedrijf in oogopslag" / "bedrijf in 30 seconden"
- "Wat moet ik 's ochtends zien" / "ochtend-dashboard" / "vrijdagcheck"
- "Centraal scherm voor mijn cijfers" / "één plek voor alle metrics"
- "A2 dichten in SCALE-audit" / "gap A2"
- "Dashboard-ontwerp voor de CEO" / "overview-dashboard ondernemer"
- "Mission-Control-Ontwerp.md aanmaken"

Triggert NIET wanneer:
- De gebruiker een **operationeel team-dashboard** wil bouwen met live data (gebruik `dashboard-bouwer` - E1, andere doelgroep)
- De gebruiker een **dagelijkse briefing of e-mail** wil opzetten (gebruik `daily-briefing` - A3)
- De gebruiker een **afdelingsrapport** wil maken (gebruik `rapportage-builder` - A1)
- De gebruiker een **dashboard wil automatiseren** met scheduled-tasks (gebruik `auto-rapportage-setup` - L2 voor de auto-fill, deze skill blijft eerst voor ontwerp)
- De gebruiker een **specifieke KPI wil definieren** (gebruik `operationele-kpis` - C7 voor de KPI-bibliotheek)
- De gebruiker een **business-beslissing wil analyseren** (gebruik `beslissingshulp` - A4)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad het Mission-Control-ontwerp gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Analyze/`, `Collect/`, `Directie/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Analyze/`, etc.)
- Een **vault zonder Analyze-map** waar Mission Control nog niet eerder is gebouwd

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze Mission Control voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Analyze/`- of `Collect/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Analyze/Mission-Control-Ontwerp.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen op basis van wat er staat) of **nieuwe iteratie** (oude archiveren als `Mission-Control-Ontwerp - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

Maak de `Analyze/`-map aan als die nog niet bestaat.

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard SCALE-paden om te controleren (de Collect-fase is hier kritisch - zonder data-bronnen kan er niets op een dashboard staan):

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Analyze/Mission-Control-Ontwerp.md` (huidige versie als die bestaat) | Eerdere KPI-keuzes, eerder gemaakte tegels, oude tool-keuze |
| `Analyze/` (overige bestanden) | Eerdere rapportages, dashboards-pogingen, gemaakte keuzes |
| `Collect/Marketing-Data.md` of equivalent (C1) | Marketing-bronnen die op het dashboard kunnen: nieuwsbrief-stats, social-bereik |
| `Collect/CRM-Setup.md` of equivalent (C2) | Pipeline-waarde, deals-per-stage, conversie, win-rate |
| `Collect/Financiele-Data-Setup.md` (C3) | Omzet MTD, marge, cashflow-saldo, openstaande facturen |
| `Collect/Klantfeedback.md` (C4) | NPS, CSAT, recent-reviews, klachten |
| `Collect/Website-Analytics.md` (C5) | Verkeer, conversie-rate, top-pagina's |
| `Collect/Concurrentie-Research.md` (C6) | Optioneel: markt-positie-indicator |
| `Collect/Operationele-KPIs.md` (C7) | **Belangrijkste bron** - KPI-bibliotheek per afdeling, hier staat al wat gemeten wordt |
| `Directie/01 - Goals.md` (S5) | **Verplichte check** - jaardoelen voor de Goal-progress-sectie van het dashboard |
| `Directie/00 - Overzicht.md` (S1) | Bedrijfsmodel: wat is de kerncyclus? (services vs products vs marketplace) |
| `HR/Team.md` (S11) | **Verplichte check** - wie ziet welk dashboard, wie heeft toegang tot welke data |
| `IT/Toolstack.md` (S12) | Welke tools bestaan al voor dashboarding (Notion, Looker, Metabase, etc.) - voorkom dubbele aanschaf |
| `IT/AI-Tools/` (mappen of `.md`-cards) | Eigen AI-tools die een data-bron kunnen zijn (bv. een eigen sales-flow-tool) |

Maak per gevonden bron een korte interne aantekening: welke metrics zijn beschikbaar, in welke tool/sheet, en hoe vaak ze ververst worden.

**Belangrijk:** als een bron niet bestaat, skip stilletjes - niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is. **Maar:** als minder dan drie van C1, C2, C3, C5, C7 bestaan, waarschuw de gebruiker actief: *"Ik zie dat de Collect-fase nog grotendeels open is. Een Mission Control zonder data-bronnen wordt een lijst aspiraties. Wil je eerst minimaal C3 (Financiele data) en C7 (Operationele KPI's) dichten, of doorgaan met een ontwerp dat we later vullen?"*

### Stap 3: Eigen wensen + dashboard-rouw uitvragen

Voordat we naar de KPI-keuze gaan, twee gerichte vragen die het ontwerp meteen scherp zetten:

**Vraag 3a - Wat wil je 's ochtends zien?**
> "Stel je opent maandagochtend dit dashboard, en je hebt 30 seconden voordat de eerste vergadering begint. Welke 5 getallen wil je dan zien? Niet wat zou kunnen, maar wat je écht wil."

Doel: dwing een keuze. Als de gebruiker 12 dingen noemt, vraag: *"Welke 5 zijn de echte? Welke 7 mogen op een tweede scherm of in een wekelijks rapport?"*

**Vraag 3b - Dashboard-rouw**
> "Heb je eerder zelf een dashboard of overzicht gebouwd dat het niet gehaald heeft? Een Notion-pagina die je niet meer opent, een spreadsheet die niet meer up-to-date is, een Looker Studio waar je geen URL meer van weet? Wat ging er mis?"

Doel: voorkom dat de skill een ontwerp oplevert dat dezelfde val ingaat. Patronen die vaak naar boven komen:
- *Te druk* → minder tegels.
- *Te traag* → bron-keuze die niet leunt op vier API's.
- *Geen onderhoud* → kies een tool die manueel snel bij te werken is, of automatiseer direct via L2.
- *Geen ritueel* → koppel het dashboard aan A3 Daily Briefing of een vaste vrijdagcheck.

Noteer deze antwoorden - ze zijn cruciaal voor het ontwerp en voor de tool-keuze in stap 6.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, gegroepeerd per van de 5 ontwerpblokken. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] HERO-KPI'S - kandidaten uit C1-C7
      • Omzet MTD (bron: C3, Moneybird) - kandidaat
      • Pipeline-waarde (bron: C2, Pipedrive) - kandidaat
      • NPS laatste 30 dagen (bron: C4) - kandidaat
      • Team-bezetting % (bron: C7) - kandidaat
      • Cashflow-saldo (bron: C3) - kandidaat
      Beeld: 5 kandidaten, je hebt ruimte voor maximaal 9.

  [2] TRENDS - beschikbare tijdreeksen
      • Omzet over tijd (12 maanden, uit C3)
      • Nieuwsbrief-groei (uit C1)
      • Verkeer per week (uit C5)
      Beeld: 3 sterke trends gevonden, ruimte voor 1-3 extra.

  [3] ALERTS - geen bestaande regels gevonden
      Beeld: nog in te vullen, vragen volgen.

  [4] GOAL-PROGRESS - uit S5 Goals
      • Doel 1: EUR 250k omzet (status 🟡)
      • Doel 2: 15 nieuwe klanten (status 🟢)
      • Doel 3: 1.000 nieuwsbrief-abonnees (status 🔴)
      Beeld: 3 jaardoelen, alle drie tracken.

  [5] RECENT-ACTIVITY - bronnen voor de pulse-feed
      • Nieuwe deals (uit C2)
      • Nieuwe nieuwsbrief-aanmelders (uit C1)
      • Klantfeedback-events (uit C4)
      Beeld: voldoende bronnen voor een feed van 5-10 events.

  GATEN waar ik nog vragen voor heb:
  - Cashflow-saldo (bron mogelijk in Moneybird, te bevestigen)
  - Klanttevredenheid: NPS of CSAT als hoofd-metric?
  - Alerts: welke afwijkingen wil je gevlagd zien?
  - Tool-keuze: Notion-pagina, custom build, of Looker?

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we het ontwerp gaan finaliseren?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Ontwerp, blok voor blok

**Kernregel:** loop **één blok per beurt** af. Niet alle 5 tegelijk neerzetten. Per blok: kandidaten valideren, keuze maken, eventueel ontbrekende velden uitvragen, en pas dán door naar het volgende blok.

#### Blok 1 - Hero-KPI's (5 tot 9 tegels)

De tegels die in 30 seconden alles zeggen. Maximaal 9, mik op 7.

**Per hero-KPI vier velden:**
1. **Naam van de KPI** - bv. "Omzet MTD", "Pipeline-waarde", "NPS 30d"
2. **Huidige waarde + eenheid** - placeholder als nog niet beschikbaar (bv. `EUR ___`)
3. **Bron** - uit welke tool of welk vault-document komt deze waarde (bv. Moneybird, Pipedrive, `Collect/Operationele-KPIs.md`)
4. **Refresh-frequentie** - realtime, hourly, daily, weekly. Default: daily, tenzij de bron live-API levert.

Plus per tegel optioneel:
- **Target** - wat is groen, wat is geel, wat is rood (bv. omzet 🟢 > EUR 25k MTD, 🟡 EUR 15-25k, 🔴 < EUR 15k)
- **Vergelijking** - vs. vorige maand, vs. zelfde maand vorig jaar, vs. target

**Categorieen om uit te kiezen** (voor service-MKB):

| Categorie | Veelvoorkomende hero-KPI's |
|---|---|
| Omzet | Omzet MTD, omzet YTD, MRR, nieuwe omzet, recurring vs. one-off |
| Marge | Bruto-marge %, marge per dienst, marge per klant-segment |
| Pipeline | Pipeline-waarde, deals per stage, win-rate, gemiddelde deal-grootte |
| Klant | Aantal actieve klanten, churn %, NPS, klantretentie |
| Cashflow | Cash op de rekening, openstaande facturen, dagen tot kritiek |
| Team | Bezetting %, billable hours, uren per klant, werkdruk-indicator |

**Designregel:** kies maximaal 2 KPI's per categorie. Anders is het geen Mission Control, het is een afdelingsrapport.

Vraag aan de gebruiker per kandidaat: *"Deze KPI: in (mijn top 5), erbij (positie 6-9), of weg (eruit)?"* Forceer keuzes.

#### Blok 2 - Trend-grafieken (4 tot 6 mini-charts)

Mini-charts die de richting laten zien, niet het absolute getal. Sparkline-stijl of kleine lijngrafiek van 50-150 pixels hoog.

**Per trend drie velden:**
1. **Wat wordt geplot** - bv. "Omzet over tijd (12 maanden)", "MRR-groei (24 maanden)", "Nieuwe klanten per maand"
2. **Periode** - 30d, 90d, 12mnd, 24mnd. Hangt af van bedrijfscyclus.
3. **Bron** - zelfde patroon als hero-KPI's

**Veelvoorkomende trends voor service-MKB:**
- Omzet over tijd (12 maanden, met vorige-jaar-overlay)
- MRR-groei (24 maanden, kumulatief)
- Klant-aantal per maand
- Pipeline-waarde week-op-week (12 weken)
- Nieuwsbrief-groei (90 dagen)
- Bezetting % per week (12 weken)

**Designregel:** trends zijn ondersteunend, niet hoofdzaak. Mik op 4-5, niet meer. Als een trend net zoveel zegt als een hero-KPI, sneuvelt de trend (verspilling van schermruimte).

#### Blok 3 - Alerts en anomalieen

Auto-flagged afwijkingen die op het dashboard verschijnen zodra een regel triggert. Mik op 5-8 alert-regels.

**Per alert vier velden:**
1. **Naam** - bv. "Omzet onder maandtarget halverwege de maand", "Geen nieuwe deal in 14 dagen", "Cashflow onder 30-dagen-runway"
2. **Conditie** - concrete regel die geevalueerd kan worden (bv. `omzet_mtd < target_mtd * 0.5 EN dag_in_maand > 15`)
3. **Severity** - info (🔵), warning (🟡), critical (🔴)
4. **Actie** - wat moet de ondernemer doen als deze alert verschijnt (bv. "review pipeline op zelfde dag", "bel klant X")

**Veelvoorkomende alerts voor service-MKB:**
- Omzet-pacing onder target (mid-month)
- Stille pipeline (geen activiteit op een deal > 14 dagen)
- Cashflow-runway onder X dagen
- NPS-drop boven 10 punten week-op-week
- Klantklacht ontvangen (binaire alert: ja/nee)
- Factuur > 30 dagen open
- Website-verkeer -25% week-op-week

**Designregel:** alerts moeten **actionable** zijn. Als er geen concrete actie aan vasthangt, is het ruis. Wees streng: liever 4 echt belangrijke alerts dan 12 "leuk om te weten".

#### Blok 4 - Goal-progress (per jaardoel uit S5)

Voor elke jaardoel uit `Directie/01 - Goals.md` een voortgangsbalk op de Mission Control.

**Per goal vijf velden:**
1. **Doel-titel** - overnemen uit S5
2. **Target** - wat is de eindwaarde (bv. EUR 250k omzet, 15 nieuwe klanten)
3. **Huidige waarde** - placeholder die door bron wordt gevuld
4. **Status-emoji** - 🟢 op koers, 🟡 lichte achterstand, 🔴 echt achter, ✅ behaald
5. **Bron** - waar de huidige waarde vandaan komt (vaak uit C3 of C7)

**Designregel:** maximaal 5 jaardoelen tonen. Heeft de S5 meer dan 5 doelen, kies de **top-5 strategisch**. Doelen die niet op de Mission Control passen, gaan naar een apart Goals-dashboard (uit `doelen-coach`).

Vraag aan de gebruiker: *"Welke 5 jaardoelen wil je dagelijks zien? De rest gaat naar de S5-dashboard zonder dat ze van het Mission Control afgaan."*

#### Blok 5 - Recent-activity (5 tot 10 events)

Een pulse-feed van wat er net is gebeurd. Geen statistiek, gewoon ruwe events. Doel: het dashboard ademt.

**Per event-type drie velden:**
1. **Event-naam** - bv. "Nieuwe deal", "Nieuwsbrief-aanmelding", "Klantfeedback ontvangen"
2. **Bron** - uit welke tool of welk vault-pad
3. **Format** - bv. "EUR X - Klant-naam - datum"

**Veelvoorkomende event-types:**
- Nieuwe deal (uit CRM)
- Nieuwe klant (uit CRM-conversie)
- Nieuwsbrief-aanmelder
- Klantfeedback (NPS-respons of review)
- Factuur verstuurd / betaald
- Nieuwe lead binnen
- Mijlpaal-event (bv. "1.000 abonnees", "10e klant deze maand")

**Designregel:** max 10 events, gesorteerd op tijd (nieuwste boven). Geen volledige geschiedenis - alleen "wat er nu net gebeurt".

### Stap 6: Tool-keuze

Hier wordt expliciet gekozen welke tool de Mission Control rendert. Dit beïnvloedt de hele bouw, refresh-discipline en levensduur van het dashboard.

**Opties voor MKB-context:**

| Tool | Sterk in | Zwak in | Wanneer kiezen |
|---|---|---|---|
| **Notion-dashboard** (handmatig + databases) | Snel opzetten, makkelijk aan te passen, lage drempel | Geen live data, handmatig bijwerken | Solopreneur die kort cyclisch wil starten, niet meer dan 5-10 min/dag aan onderhoud |
| **Custom HTML / Astro / React** (zelf gebouwd) | Volledig op maat, koppelt aan elke API, kosten beperkt na bouw | Bouwtijd, ontwikkelaar nodig (of Cursor-build), onderhoud bij API-wijzigingen | Ondernemer met code-affiniteit of Cursor-vaardigheid, MKB-default voor wie het meer dan 6 maanden gaat gebruiken |
| **Looker Studio** (Google, gratis) | Goede koppeling met Google-stack (Analytics, Sheets, Ads), gratis, snel | Beperkt voor non-Google bronnen, beperkte visuele controle | Webshop of marketing-zwaar bedrijf met Google Analytics + Ads |
| **Metabase** (open-source, self-host of cloud) | Krachtige queries op databases, mooie defaults, SQL-vriendelijk | Vereist database-toegang of ETL, hosting nodig (Metabase Cloud is betaald) | Bedrijf met eigen database of Postgres-bron (bv. via Hex of Supabase) |
| **Grafana** | Real-time metrics, time-series, alerts ingebouwd | Steile leercurve, overkill voor MKB | Tech-bedrijf met server-infra, niet relevant voor klassiek MKB |
| **Retool** | Goede koppeling met meerdere bronnen (CRM, DB, API), drag-and-drop | Betaald boven gratis-tier, lock-in | MKB met meerdere SaaS-bronnen, mid-size team |
| **Cursor-build** (eigen HTML/Astro met Cursor als bouw-partner) | Maximaal flexibel, betaalbaar, lokaal te draaien | Vraagt enige technische vaardigheid van de ondernemer | Ondernemer die met Upscailed-methodiek werkt en al een `~/AI - Projecten/`-folder heeft |

**MKB-default (zonder andere context):** simpel custom dashboard, gebouwd in HTML/Astro via Cursor. Reden: geen vendor-lock-in, eigenaarschap van de code, eenvoudig uit te breiden met L2-scheduled-tasks die de data periodiek vullen, en het past binnen het Upscailed-ecosysteem (`IT/AI-Tools/Mission-Control/`).

**Vraag aan de gebruiker:**
> *"Welke richting heeft jouw voorkeur? Een eerste check: heb je al een Notion-dashboard dat het niet maakt, een Google-stack met veel Analytics-data, of een eigen code-folder waar je al andere AI-tools in hebt? Dat duwt de keuze richting Notion, Looker of custom. Als je geen sterke voorkeur hebt, default is custom HTML via Cursor."*

Vervolgvragen afhankelijk van de keuze:
- **Notion** → vraag of er al een Notion-workspace is, en in welke pagina-structuur het ingebed wordt
- **Custom** → vraag of er al een `~/AI - Projecten/`-folder is voor dit bedrijf, of een eerdere mission-control-poging die hergebruikt kan worden
- **Looker** → vraag welke Google-bronnen er al gekoppeld zijn (Analytics, Sheets, Ads)
- **Metabase / Retool** → vraag welke database of welke API's de bronnen zijn

Leg vast in het ontwerp-document.

### Stap 7: Refresh-ritme + bron per tegel

Voor elke hero-KPI, trend, alert, goal en activity-event leg vast:

**Refresh-matrix:**

| Tegel-type | Default refresh | Bron-vorm | Bouw-opmerking |
|---|---|---|---|
| Hero-KPI met live-API (bv. Moneybird) | hourly | API-call | L2-scheduled-task elk uur |
| Hero-KPI uit manueel sheet | daily | Read CSV / Google Sheet | Manueel bijwerken of via Sheets-API |
| Trend-grafiek | daily | Database / CSV | Cache rebuild 1x per dag, 's nachts |
| Alert | hourly tot daily | Compute on refresh | Eval-regel uit definitie, geen aparte data-fetch |
| Goal-progress | daily | Lezen uit `01 - Goals.md` (markdown-parse) of API | Hangt af van waar voortgangslog leeft |
| Recent-activity | realtime indien mogelijk, anders 15min | Webhook of API-poll | Bij Notion / handmatig: skip realtime |

**Belangrijk:** als de gebruiker handmatig bijwerken kiest (vooral Notion-route), spreek af **welke dag** het bijwerken gebeurt. Anders sterft het dashboard. Default: vrijdagmiddag 30 minuten voor week-afsluit-check.

### Stap 8: Schrijven en opslaan

Gebruik het template uit `references/template-mission-control.md` als skelet. Vul het met de uitkomsten uit pre-fill plus de 5 ontwerpblokken plus tool-keuze plus refresh-matrix.

Sla op als:
```
{scope}/Analyze/Mission-Control-Ontwerp.md
```

Maak de `Analyze/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: mission-control-ontwerp
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: A2
aantal-hero-kpis: <getal>
aantal-trends: <getal>
aantal-alerts: <getal>
aantal-goals: <getal>
tool-keuze: <Notion | Custom HTML | Looker Studio | Metabase | Retool | Grafana | Cursor-build>
bouw-route: <E1 | L2 | beide | handmatig>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "essentieel dashboard", "perfect afgestemd overzicht", "next-level CEO-tool". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Omzet MTD uit Moneybird, hourly refresh via API" is sterker dan "een omzet-overzicht".
- **Geen em-dashes** (zoals "-" in lange-streep-vorm). Gebruik komma's, haakjes of losse zinnen.
- **Tabelvorm waar mogelijk** - de KPI-lijst, trends, alerts en goals zijn lijsten, geen essays.
- **Status-emoji's mogen** voor alerts en goals - 🟢 op koers, 🟡 attentie, 🔴 actie-nodig, ✅ behaald, 🔵 info.
- **Geen aannames over bedragen of doelen** - als een waarde niet bekend is, gebruik `___` als placeholder en laat een opmerking in de cel staan.

### Stap 9: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):

1. **Changelog bedrijf** - `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Analyze/Mission-Control-Ontwerp.md` - v1.0, N hero-KPI's, M trends, K alerts, tool-keuze: {keuze}, bouwroute: {route}"*.
2. **Daily** - als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md`), log een eenregelige melding plus link naar het nieuwe bestand. Skip als die conventie niet bestaat.
3. **Goals-bestand** - als `{scope}/Directie/01 - Goals.md` een A2-doel of analyze-doel heeft: status bijwerken (✅), regel toevoegen aan het voortgangslog.
4. **Scale-audit-suggestie** - als `{scope}/Directie/Research/` een audit-rapport bevat waar A2 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link met A3 (Daily Briefing)** - de hero-KPI's en alerts uit dit ontwerp zijn de directe input voor de dagelijkse briefing. Stel voor A3 op te pakken zodra dit ontwerp af is.
- **Cross-link met E1 (Dashboard Bouwer)** - de eigenlijke build. Geef het ontwerp-document mee aan E1 als bouw-brief.
- **Cross-link met L2 (Auto Rapportage Setup)** - als de data periodiek ververst moet worden via scheduled-tasks. Maakt het verschil tussen "dashboard dat staat" en "dashboard dat leeft".
- **Cross-link met C7 (Operationele KPI's)** - als nog niet alle hero-KPI's gedefinieerd zijn met formule en bron, eerst C7 dichten.
- **Review-ritme** - een Mission Control veroudert door bedrijfs-evolutie (nieuwe diensten, andere fase, ander team). Stel voor: kwartaalreview van het ontwerp, herzien wat nog ertoe doet.

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

- **Eén blok per beurt** in het ontwerp. Niet alle 5 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in C1-C7 of S5 staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Hard plafond op 9 hero-KPI's.** Als de ondernemer er 12 wil, dwing een keuze: top-9 voor Mission Control, de rest gaat naar afdelingsdashboards. Geen Mission Control die naar beneden moet scrollen.
- **30-seconden-test.** Bij elk ontwerp-keuze: kan een ondernemer in 30 seconden alles zien wat ertoe doet? Als nee, snijden.
- **Dashboard-rouw expliciet uitvragen.** Eerdere mislukte pogingen zijn de meest waardevolle input voor wat dit dashboard níet moet doen.
- **Tool-keuze is een beslissing, geen optie.** Forceer een keuze. "Ik weet het nog niet" is geen acceptabel eindpunt - bied de MKB-default (custom HTML via Cursor) aan als gebruiker geen sterke voorkeur heeft.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **A2 is ontwerp, niet build.** Deze skill levert geen werkende Mission Control op. Wel een ontwerp dat E1 of L2 direct kan bouwen. Wees streng over wat in dit document hoort (strategische keuzes) en wat in E1/L2 hoort (implementatie, code, scheduled-tasks).
- **Mik op rijke diepte, niet op het audit-minimum.** Het document moet aan E1, L2, A3 alle context geven die nodig is. Halve antwoorden voldoen niet - een KPI zonder bron en zonder refresh-ritme is niet bruikbaar.
- **Goal-progress is verplicht.** Als S5 niet bestaat of leeg is, waarschuw expliciet: *"Een Mission Control zonder jaardoelen is een operationeel dashboard. Wil je eerst S5 invullen met `doelen-coach`?"*
- **Geen marketing-trucjes.** Geen "imagine if...", geen rhetorische vragen aan het begin van een sectie. Recht voor zijn raap.

## Voorbeeld-output

Zie [`references/template-mission-control.md`](references/template-mission-control.md) voor de exacte structuur die de skill oplevert: hero-KPI-tabel, trend-overzicht, alert-regels, goal-progress, recent-activity, tool-keuze met motivatie, refresh-matrix en bouw-route naar E1 of L2.
