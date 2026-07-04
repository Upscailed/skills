---
name: scale-analyze
title: "SCALE Analyze"
description: "De Analyze-laag van het SCALE-framework van Upscailed: de stap van data naar inzicht. Waar de Collect-laag (C1 t/m C7) data verzamelt, maakt Analyze die data bruikbaar om op te sturen: periodieke rapportages per stakeholder, een Mission Control CEO-dashboard dat in 30 seconden laat zien hoe het bedrijf draait, een dagelijkse ochtend-briefing, herbruikbare data-gedreven beslissings-frameworks en benchmarking tegen branchecijfers en concurrenten. Deze skill bundelt 5 modules: A1 Rapportage Builder (set rapportage-templates in Analyze/Rapportage-Templates.md), A2 Mission Control Builder (ontwerp-document voor een centraal CEO-dashboard), A3 Daily Business Briefing (geautomatiseerde ochtend-samenvatting via mail, Telegram, Slack of app), A4 Beslissings-analyse (beslis-playbooks met criteria, weging en go/no-go-drempels) en A5 Benchmarking (vergelijking met branche en concurrenten op minimaal 3 metrics). Activeer wanneer iemand zegt: 'rapportage opzetten', 'maandrapport opzetten', 'rapportage-template', 'terugkerend rapport', 'weekrapportage', 'kwartaal-rapport', 'directie-rapport', 'sales-rapportage', 'wie krijgt welke cijfers', 'mission control', 'CEO-dashboard', 'KPIs op één plek', 'overview-dashboard', 'mijn bedrijf in oogopslag', 'wat moet ik 's ochtends zien', 'centraal scherm voor mijn cijfers', 'daily briefing', 'ochtendrapport', 'dagelijkse cijfers', 'morning brief opzetten', 'elke ochtend een dashboard in mijn inbox', 'dagrapport per mail', 'Telegram-bot voor dagcijfers', 'beslissings-framework', 'beslis-playbook', 'wanneer accepteer ik een klant', 'wanneer doe ik een prijsverhoging', 'investerings-criteria opzetten', 'go no-go drempel', 'data-gedreven beslissen', 'benchmark', 'benchmarking', 'vergelijking met concurrenten', 'branchecijfers', 'sector-vergelijking', 'hoe presteren wij ten opzichte van', 'gap-analyse t.o.v. branche', 'A1 t/m A5 dichten in SCALE-audit', 'gap A1', 'gap A2', 'gap A3', 'gap A4', 'gap A5', of bij iedere expliciete verwijzing naar de Analyze-laag, Rapportage-Templates.md, Mission-Control-Ontwerp.md, Daily-Briefing-Setup.md, Beslissings-Frameworks.md of Benchmarking.md."
category: operations
tags: [scale-framework, analyze, rapportage, kpi, dashboard, mission-control, ceo, daily-briefing, automation, beslissingen, data-gedreven, benchmarking, branchecijfers, gap-analyse, concurrentie]
estimatedTime: "10-45 minuten per module"
version: "1.0.0"
author: Upscailed
license: MIT
---

# SCALE Analyze

## Doel

Analyze is de derde laag van het SCALE-framework van Upscailed en zet verzamelde data om in inzicht en stuurinformatie. De Collect-laag levert de ruwe data (marketing, CRM, financieel, klantfeedback, analytics, concurrentie, operationele KPI's); Analyze bepaalt wie welke cijfers ziet, in welke vorm, op welk moment, en hoe daar beslissingen uit volgen. Het resultaat: een ondernemer die niet reactief op losse dashboards stuurt, maar met vaste rapportages, één centraal overzichtsscherm, een dagelijkse briefing, beslis-playbooks en een periodieke benchmark tegen de markt.

Dit is de gebundelde versie van 5 eerdere losse skills: `rapportage-builder`, `mission-control-builder`, `daily-briefing`, `beslissings-analyse` en `benchmarking`. De volledige workflows van die skills leven ongewijzigd verder als modules in deze skill.

## Modules

De volgorde hieronder is de aanbevolen doorloop-volgorde:

| Code | Module | Wat het oplevert | Bestand |
|------|--------|------------------|---------|
| A1 | Rapportage Builder | Set rapportage-templates per stakeholder (Directie, Sales, Marketing, Operations, Finance, Klant/Board) in `Analyze/Rapportage-Templates.md` | `modules/rapportage-builder.md` |
| A2 | Mission Control Builder | Ontwerp-document voor een centraal CEO-dashboard: 5-9 hero-KPI's, trends, alerts, goal-progress en tool-keuze | `modules/mission-control-builder.md` |
| A3 | Daily Business Briefing | Werkende setup voor een dagelijkse ochtend-briefing (mail, Telegram, Slack, app of print) in `Analyze/Daily-Briefing-Setup.md` | `modules/daily-briefing.md` |
| A4 | Beslissings-analyse | Herbruikbare beslis-playbooks met data-bronnen, gewogen criteria en go/no-go-drempels in `Analyze/Beslissings-Frameworks.md` | `modules/beslissings-analyse.md` |
| A5 | Benchmarking | Vergelijking met branchecijfers en concurrenten op minimaal 3 metrics in `Directie/Research/Benchmarking.md` | `modules/benchmarking.md` |

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  SCALE ANALYZE · router over 5 modules (A1 t/m A5)       │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Intake of menu    │  Vraag duidelijk? Direct door.
   │                      │  Twijfel? Toon het menu met
   │                      │  de aanbevolen volgorde.
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Module kiezen     │  [A1] Rapportage Builder
   │                      │  [A2] Mission Control Builder
   │                      │  [A3] Daily Business Briefing
   │                      │  [A4] Beslissings-analyse
   │                      │  [A5] Benchmarking
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Module-workflow   │  Lees ALLEEN het gekozen
   │    volgen            │  modules/<naam>.md en volg
   │                      │  die workflow exact
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Opslaan +         │  Resultaat opslaan waar de
   │    vervolg-module    │  module dat voorschrijft,
   │    voorstellen       │  daarna logische vervolg-
   │                      │  module of Leverage-laag
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer iemand zegt:

- **A1 Rapportage**: 'rapportage opzetten', 'maandrapport opzetten', 'rapportage-template', 'terugkerend rapport', 'weekrapportage', 'kwartaal-rapport', 'directie-rapport', 'sales-rapportage', 'wie krijgt welke cijfers', 'rapportage-vorm samenstellen', 'Rapportage-Templates.md aanmaken', 'gap A1'
- **A2 Mission Control**: 'mission control', 'CEO-dashboard', 'KPIs op één plek', 'overview-dashboard', 'mijn bedrijf in oogopslag', 'wat moet ik 's ochtends zien', 'centraal scherm voor mijn cijfers', 'dashboard-ontwerp voor de CEO', 'Mission-Control-Ontwerp.md aanmaken', 'gap A2'
- **A3 Daily Briefing**: 'daily briefing', 'ochtendrapport', 'dagelijkse cijfers', 'morning brief opzetten', 'elke ochtend een dashboard in mijn inbox', 'cijfers per dag in mijn mailbox', 'ochtend-cijfers automatiseren', 'dagrapport per mail', 'Telegram-bot voor dagcijfers', 'Slack-bot ochtendcijfers', 'Daily-Briefing-Setup.md aanmaken', 'gap A3'
- **A4 Beslissings-analyse**: 'beslissings-framework', 'beslis-playbook', 'wanneer accepteer ik een klant', 'wanneer doe ik een prijsverhoging', 'investerings-criteria opzetten', 'aanname-checklist', 'go no-go drempel', 'data-gedreven beslissen', 'beslis-criteria definiëren', 'strategische keuze-template', 'Beslissings-Frameworks.md aanvullen', 'gap A4'
- **A5 Benchmarking**: 'benchmark', 'benchmarking', 'vergelijking met concurrenten', 'branchecijfers', 'sector-vergelijking', 'hoe presteren wij ten opzichte van', 'benchmark-meting', 'periodieke vergelijking', 'gap-analyse t.o.v. branche', 'industry benchmark', 'Benchmarking.md aanmaken', 'gap A5'
- **Algemeen**: iedere expliciete verwijzing naar de Analyze-laag, naar A1 t/m A5, of naar 'Analyze dichten in de SCALE-audit'

**Triggert NIET** wanneer iemand:

- het fundament of de bedrijfsstructuur wil vastleggen (missie, doelen, team, processen): gebruik `scale-structure`
- data-bronnen wil aansluiten of inrichten (CRM, financiële data, analytics, feedback, KPI-metingen): gebruik `scale-collect`
- inzichten wil omzetten in automatisering, SOP's of workflows: gebruik `scale-leverage`
- een dashboard, app of integratie daadwerkelijk wil bouwen (waaronder een operationeel team-dashboard): gebruik `scale-engineer`
- marketing-content, campagnes of online zichtbaarheid wil opzetten: gebruik `scale-marketing`
- het salesproces, opvolging of CRM-flows wil inrichten: gebruik `scale-verkoop`
- contracten, privacy of algemene voorwaarden wil regelen: gebruik `scale-juridisch`
- een volledige nulmeting over alle SCALE-lagen wil: gebruik `scale-audit`
- eenmalig wil sparren over één losse persoonlijke of zakelijke keuze zonder herbruikbaar framework: dat is geen A4, verwijs naar een losse beslissingshulp-sessie

## Werkwijze (router)

1. **Bepaal de module.** Leid uit de vraag af welke module (A1 t/m A5) van toepassing is. Bij twijfel of een brede vraag ('help me met Analyze', 'ik wil sturen op cijfers'): toon het menu uit de Modules-tabel en licht de aanbevolen volgorde toe (A1 rapportages als basis, dan A2 Mission Control, A3 Daily Briefing, A4 beslis-frameworks, A5 benchmark). Laat de gebruiker kiezen.
2. **Lees alleen de gekozen module.** Open uitsluitend het bijbehorende `modules/<naam>.md` en volg die workflow exact, inclusief de daar beschreven stappen, vragen en templates (in `references/`). Laad niet alle modules tegelijk: dat vervuilt de context en de workflows zijn zelfstandig ontworpen.
3. **Huisregels per module.** Ongeacht welke module draait:
   - Start met de run-time introductie: wat gaat er gebeuren, hoeveel vragen en de geschatte tijd.
   - Pre-fill eerst uit bestaande documenten (vault-scan zoals de module voorschrijft) voordat je vragen stelt.
   - Stel check-vragen om gevonden informatie te valideren in plaats van opnieuw uit te vragen.
   - Sla het resultaat op precies waar de module dat voorschrijft en log de wijziging.
4. **Stel het vervolg voor.** Na afronding: stel de logische vervolg-module voor (bijvoorbeeld na A1 door naar A2 of A3, na A5 terug naar de doelen). Zijn alle relevante modules gedaan, stel dan de volgende SCALE-laag voor: Leverage (`scale-leverage`).

## Samenhang

- **Analyze bouwt op Collect en voedt Leverage**: zonder data uit `scale-collect` valt er niets te analyseren; de inzichten uit deze laag zijn de brandstof voor automatisering in `scale-leverage`.
- `scale-structure`: levert de doelen (S5) en het team (S11) waar rapportages, dashboards en beslis-frameworks aan gekoppeld worden.
- `scale-collect`: levert de bron-data (C1 t/m C7) waar elke module in deze skill naar cross-linkt.
- `scale-leverage`: pakt de terugkerende rapportages en briefings uit deze laag op voor automatisering.
- `scale-engineer`: bouwt wat hier ontworpen is (Mission Control, daily-briefing-pipeline, dashboards) daadwerkelijk als werkende tool.
- `scale-marketing` en `scale-verkoop`: leveren respectievelijk de marketing- en salescijfers die in A1-rapportages en de A2/A3-schermen terugkomen.
- `scale-juridisch`: relevant zodra rapportages of briefings klantdata bevatten (AVG, verwerking, bewaartermijnen).
- `scale-audit`: de nulmeting die bepaalt welke A-gaps (A1 t/m A5) open staan; deze skill is de plek waar die gaps gedicht worden.
