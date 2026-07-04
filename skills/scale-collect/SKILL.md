---
name: scale-collect
title: "SCALE Collect"
description: "De Collect-laag van het SCALE-framework van Upscailed: alle datastromen van een bedrijf op orde brengen zodat de latere lagen (Analyze, Leverage, Engineer) iets concreets hebben om op te bouwen. Deze skill bundelt 7 modules in aanbevolen doorloop-volgorde: C1 Marketing Data Setup (welke marketing-cijfers meet je, uit welke tool, hoe vaak), C2 CRM Setup (contact-velden, deal-velden, pipeline-fases, tagging), C3 Financiële Data Setup (omzet, kosten, marge, cashflow, DSO op één plek), C4 Klantfeedback Collector (NPS, CSAT, reviews en klachten structureel ophalen), C5 Website Analytics Setup (privacy-first analytics, events, UTM-discipline, AVG), C6 Concurrentie Research (minimaal 3 directe concurrenten in kaart via webresearch) en C7 Operationele KPI's (doorlooptijd, OTIF, kwaliteit, capaciteit, service-niveau). Activeer wanneer iemand zegt: 'marketing data opzetten', 'welke marketing-cijfers meet ik', 'analytics inrichten voor marketing', 'CRM opzetten', 'pipeline inrichten', 'leads vastleggen', 'deal-stages definiëren', 'financiële data structureren', 'cijfers op één plek', 'kerncijfers vastleggen', 'cashflow-overzicht opzetten', 'klantfeedback verzamelen', 'reviews documenteren', 'NPS opzetten', 'klanttevredenheid meten', 'website analytics opzetten', 'GA4 opzetten', 'Plausible installeren', 'conversie-tracking website', 'UTM-tagging', 'concurrenten in kaart brengen', 'competitor analyse', 'marktscan', 'KPIs bepalen', 'operationele metrics', 'wat ga ik meten', 'doorlooptijd meten', 'datastromen op orde', 'Collect-laag dichten', of een gap C1, C2, C3, C4, C5, C6 of C7 uit een SCALE-audit wil dichten. Triggert ook bij iedere expliciete verwijzing naar de codes C1 t/m C7 of naar de Collect-laag."
category: operations
tags: [scale-framework, collect, marketing-data, analytics, crm, pipeline, leads, financiele-data, cashflow, klantfeedback, nps, reviews, website-analytics, concurrentie, kpi]
estimatedTime: "10-45 minuten per module"
version: "1.0.0"
author: Upscailed
license: MIT
---

# SCALE Collect

## Doel

Collect is de tweede laag van het SCALE-framework (Structure, Collect, Analyze, Leverage, Engineer). Deze laag zorgt dat alle datastromen van het bedrijf op orde zijn: marketing-data, CRM, financiële kerncijfers, klantfeedback, website-analytics, concurrentie-inzicht en operationele KPI's. Zonder Collect heeft de Analyze-laag niets betrouwbaars om mee te rekenen: rapportages, dashboards en briefings blijven dan gokwerk.

Dit is de gebundelde versie van 7 eerdere losse skills. Elke bron-skill leeft ongewijzigd verder als module in `modules/`, met bijbehorende templates in `references/`. De router in dit bestand bepaalt welke module van toepassing is en laadt alleen die ene module.

## Modules

Volgorde in de tabel = aanbevolen doorloop-volgorde.

| Code | Module | Wat het oplevert | Bestand |
|------|--------|------------------|---------|
| C1 | Marketing Data Setup | Marketing-data-opzetdocument: per kanaal de tool, metrics, ophaalfrequentie, methode en bestemming (`Marketing/Data-Setup.md`) | `modules/marketing-data-setup.md` |
| C2 | CRM Setup | Ingericht CRM met contact-velden, deal-velden, pipeline-fases, tagging en integraties (`Sales/CRM-Setup.md`) | `modules/crm-setup.md` |
| C3 | Financiële Data Setup | Financiële data-stroom: bronnen, kerncijfers (omzet, kosten, marge, cashflow, DSO) en ophaalfrequentie (`Collect/Financiele-Data.md`) | `modules/financiele-data-setup.md` |
| C4 | Klantfeedback Collector | Werkend feedback-systeem: feedback-momenten, NPS/CSAT, tools, opvolging en SLA (`Klantenservice/Feedback-Setup.md`) | `modules/klantfeedback-collector.md` |
| C5 | Website Analytics Setup | Website-analytics-opzet: tool-keuze (privacy-first), event-set, UTM-discipline, AVG-compliance (`Collect/Website-Analytics.md`) | `modules/website-analytics-setup.md` |
| C6 | Concurrentie Research | Minimaal 3 directe concurrenten in kaart via live webresearch (`Directie/Research/Concurrentie.md`) | `modules/concurrentie-research.md` |
| C7 | Operationele KPI's | Set operationele KPI's: doorlooptijd, OTIF, kwaliteit, capaciteit, service-niveau, team-gezondheid (`Operations/KPIs.md`) | `modules/operationele-kpis.md` |

Let op bij C6: die module vereist WebSearch en WebFetch voor de live webresearch-stap.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  SCALE COLLECT · router over 7 modules (C1 t/m C7)        │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Intake of menu    │  Concrete vraag herkend?
   │                      │  Zo niet: toon het menu
   │                      │  met aanbevolen volgorde
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Module kiezen     │  C1 t/m C7 bepalen op
   │                      │  basis van de vraag of
   │                      │  de keuze van de
   │                      │  gebruiker
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Module-workflow   │  Alleen dat ene
   │    volgen            │  modules/<naam>.md
   │                      │  laden en exact volgen
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Opslaan en        │  Resultaat opslaan waar
   │    vervolg-module    │  de module dat zegt,
   │    voorstellen       │  dan volgende module of
   │                      │  Analyze voorstellen
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer iemand:

- Marketing-data wil opzetten: "marketing data opzetten", "welke marketing-cijfers meet ik", "analytics inrichten voor marketing", "social-cijfers ophalen", "nieuwsbrief-data tracken", "gap C1"
- Een CRM wil inrichten: "CRM opzetten", "pipeline inrichten", "leads vastleggen", "deal-stages definiëren", "HubSpot opzetten", "Notion CRM bouwen", "gap C2"
- Financiële data wil structureren: "financiële data structureren", "cijfers op één plek", "kerncijfers vastleggen", "cashflow-overzicht opzetten", "DSO bijhouden", "gap C3"
- Klantfeedback wil verzamelen: "klantfeedback verzamelen", "reviews documenteren", "NPS opzetten", "CSAT meten", "klanttevredenheid meten", "review-flow bouwen", "gap C4"
- Website-analytics wil opzetten: "website analytics opzetten", "GA4 opzetten", "Plausible installeren", "conversie-tracking website", "UTM-tagging", "analytics privacy-vriendelijk", "gap C5"
- Concurrenten wil onderzoeken: "concurrenten in kaart brengen", "competitor analyse", "marktscan", "wie zijn mijn concurrenten", "gap C6"
- Operationele KPI's wil bepalen: "KPIs bepalen", "operationele metrics", "wat ga ik meten", "doorlooptijd meten", "gap C7"
- De hele laag wil aanpakken: "datastromen op orde", "Collect-laag dichten", "alle C-gaps uit de SCALE-audit wegwerken"
- Expliciet verwijst naar een code C1 t/m C7

Triggert NIET wanneer:

- De basis-structuur of strategie van het bedrijf nog moet worden opgezet (mappenstructuur, playbook, ICP, bedrijfsoverzicht): gebruik `scale-structure`
- De verzamelde data geanalyseerd of gerapporteerd moet worden (rapportages, dashboards, benchmarking, SWOT, daily briefing): gebruik `scale-analyze`
- Processen of workflows geautomatiseerd moeten worden op basis van de data: gebruik `scale-leverage`
- Er een app, tool of technische integratie gebouwd moet worden: gebruik `scale-engineer`
- Het om content, campagnes of merk-aanwezigheid gaat in plaats van meten (content-roadmap, nieuwsbrief, social presence): gebruik `scale-marketing`
- Het om het sales-proces zelf gaat (salesproces, opvolg-flow, producten en pricing) in plaats van het CRM-datasysteem: gebruik `scale-verkoop`
- Het om juridische documenten gaat (privacyverklaring, algemene voorwaarden, contracten): gebruik `scale-juridisch`. Grensgeval: C5 raakt AVG-compliance van tracking, maar de privacyverklaring zelf hoort bij `scale-juridisch`
- Iemand wil weten hoe compleet de vault of het bedrijf is over alle lagen heen: gebruik `scale-audit`

## Werkwijze (router)

1. **Bepaal de module.** Leid uit de vraag af welke module (C1 t/m C7) van toepassing is. Bij twijfel, of als de gebruiker de hele Collect-laag wil aanpakken: toon het menu uit de Modules-tabel en noem de aanbevolen volgorde (C1 naar C7). Vraag welke module de gebruiker wil starten.
2. **Laad alleen de gekozen module.** Lees uitsluitend het gekozen `modules/<naam>.md` en volg die workflow exact. Laad niet alle modules tegelijk: dat kost onnodig context en de modules zijn zelfstandig ontworpen.
3. **Huisregels per module.** Elke module volgt dezelfde discipline:
   - Start met een run-time intro: hoeveel vragen (of blokken) komen er en wat is de geschatte tijd.
   - Pre-fill uit bestaande documenten (vault-scan zoals de module voorschrijft) voordat je vragen stelt.
   - Stel check-vragen om gevonden informatie te valideren in plaats van opnieuw uit te vragen.
   - Sla het resultaat op waar de module dat voorschrijft (canoniek pad per module).
4. **Stel het vervolg voor.** Na afronding van een module: stel de logische vervolg-module voor volgens de aanbevolen volgorde (bijvoorbeeld na C1 door naar C2). Is de Collect-laag compleet, stel dan de volgende SCALE-laag voor: Analyze.

## Samenhang

- **Collect voedt Analyze:** rapportages, dashboards, benchmarking en daily briefings in `scale-analyze` rekenen op de datastromen die hier worden ingericht.
- **`scale-structure` gaat vooraf:** de modules pre-fillen uit documenten die de Structure-laag oplevert (Toolstack, ICP, Playbook, Team, Bedrijfsoverzicht).
- **`scale-leverage` en `scale-engineer` bouwen erop voort:** automatiseringen en apps hebben de hier vastgelegde bronnen, frequenties en eigenaren nodig.
- **`scale-marketing` en `scale-verkoop` gebruiken de output:** C1 en C5 leveren de cijfers voor marketing-beslissingen, C2 legt het datasysteem onder het sales-proces.
- **`scale-juridisch` raakt C4 en C5:** feedback-verzameling en website-tracking moeten AVG-proof zijn; de juridische documenten zelf leven daar.
- **`scale-audit` meet de voortgang:** de audit checkt per code (C1 t/m C7) of het canonieke document bestaat en gevuld is, en verwijst terug naar deze skill om gaps te dichten.
