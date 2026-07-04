---
name: scale-verkoop
title: "SCALE Verkoop"
description: "Het cross-cutting domein Sales-systeem binnen het SCALE-framework van Upscailed: een voorspelbaar verkoopproces neerzetten, van eerste lead tot getekende deal en verder. Deze skill bundelt 2 modules plus 1 kruisverwijzing: V1 Salesproces (sales-pipeline en salesproces per fase vastleggen: entry- en exit-criteria, kern-acties, doorlooptijd, kans-percentage, eigenaar, KPI's, sales-materiaal en een weighted-pipeline forecast-model), V3 Opvolg-flow (vijf opvolg- en nurture-flows voor warme leads: na demo of discovery, na voorstel, na 'denk er nog over', na verloren deal en na 'te vroeg', elk met trigger, tijdslijn, kanaal-mix, inhoud per touchpoint, exit-criterium en eigenaar) en V2 Producten en Pricing (leeft als module producten-en-pricing in scale-structure, deze router verwijst door). Activeer wanneer iemand zegt: 'salesproces uitwerken', 'verkoopproces vastleggen', 'sales-pipeline definiëren', 'lead-tot-deal proces', 'sales-flow uitwerken', 'discovery-gesprek script', 'voorstel-template kiezen', 'win-rate per fase', 'deal-velocity meten', 'forecast-model bouwen', 'sales-KPI's vastleggen', 'opvolg-flow', 'follow-up momenten', 'lead-nurturing', 'nurture-flow opzetten', 'wat doe ik na een demo', 'hoe volg ik op na een offerte', 'sales-cadence bouwen', 'sales-sequence', 'lead niet laten verdwijnen', 'win-back flow', 'verloren deal opnieuw benaderen', 'gap V1' of 'gap V3' uit een SCALE-audit wil dichten. Activeer ook bij pricing-vragen zoals 'leg mijn pricing vast', 'pricing-tabel opstellen', 'tarievenlijst maken', 'wat zijn mijn pakketten', 'V2 pricing helder' of 'gap V2': verwijs dan door naar scale-structure, module producten-en-pricing. Triggert ook bij iedere expliciete verwijzing naar de codes V1, V2 of V3, naar `Salesproces.md` of `Opvolg-flow.md`, of naar het Verkoop-domein van SCALE."
category: operations
tags: [scale-framework, verkoop, sales, v1, v3, pipeline, salesproces, discovery, forecast, deal-velocity, win-rate, opvolg-flow, follow-up, nurture, lead-nurturing]
estimatedTime: "10-45 minuten per module"
version: "1.0.0"
author: Upscailed
license: MIT
---

# SCALE Verkoop

## Doel

Verkoop is een van de drie cross-cutting domeinen van het SCALE-framework (naast Marketing en Juridisch): het loopt dwars door de lagen Structure, Collect, Analyze, Leverage en Engineer heen. Dit domein zorgt voor een voorspelbaar sales-systeem: een salesproces met heldere fases en bewijslast per fase (V1), helder vastgelegde producten en pricing (V2, leeft in `scale-structure`) en opvolg-flows die warme leads niet stilletjes laten verdwijnen (V3). Zonder dit domein blijft verkoop afhankelijk van geheugen en goede bedoelingen: deals blijven hangen, forecast wordt gokwerk en opvolging stopt na één of twee contactmomenten.

Dit is de gebundelde versie van de eerdere losse sales-skills. Elke bron-skill leeft ongewijzigd verder als module in `modules/`, met bijbehorende templates in `references/`. De router in dit bestand bepaalt welke module van toepassing is en laadt alleen die ene module.

## Modules

Volgorde in de tabel = aanbevolen doorloop-volgorde (V2 vóór V1 als pricing nog niet vastligt).

| Code | Module | Wat het oplevert | Bestand |
|------|--------|------------------|---------|
| V1 | Salesproces | Salesproces met 4 tot 7 pipeline-fases: per fase entry- en exit-criteria, kern-acties, doorlooptijd, kans-percentage, eigenaar en KPI, plus sales-materiaal-set en weighted-pipeline forecast-model (`Sales/Salesproces.md`) | `modules/salesproces-builder.md` |
| V2 | Producten en Pricing | Producten- en pricing-document: pakketten, prijzen, marges, positionering, upsells en out-of-scope (`Directie/Playbook/Producten.md`) | zie `scale-structure`, module `producten-en-pricing` |
| V3 | Opvolg-flow | Vijf opvolg- en nurture-flows (na demo, na voorstel, denk-er-nog-over, verloren deal, te vroeg) met trigger, tijdslijn, kanaal-mix, inhoud, exit-criterium en eigenaar, plus AVG-check en tool-keuze (`Sales/Opvolg-flow.md`) | `modules/opvolg-flow.md` |

Let op bij V2: die module hoort structureel bij de Structure-laag (S8) en wordt daar onderhouden. Deze router verwijst door, de rij staat hier voor volledigheid van het Verkoop-domein.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  SCALE VERKOOP · router over V1 en V3 (V2 via structure)  │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Intake of menu    │  Concrete vraag herkend?
   │                      │  Zo niet: toon het menu
   │                      │  met aanbevolen volgorde
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Module kiezen     │  V1 of V3 bepalen op
   │                      │  basis van de vraag;
   │                      │  pricing-vraag (V2) →
   │                      │  door naar scale-structure
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
   │    voorstellen       │  dan V3 (na V1) of een
   │                      │  aangrenzende laag
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer iemand:

- Een salesproces wil vastleggen: "salesproces uitwerken", "verkoopproces vastleggen", "sales-pipeline definiëren", "lead-tot-deal proces", "sales-flow uitwerken", "sales-stappen vastleggen", "gap V1"
- Sales-materiaal of -metrics wil uitwerken: "discovery-gesprek script", "voorstel-template kiezen", "offerte-flow inrichten", "win-rate per fase", "conversie per stap", "deal-velocity meten", "forecast-model bouwen", "weighted pipeline opzetten", "sales-KPI's vastleggen"
- Opvolging wil regelen: "opvolg-flow", "follow-up momenten", "lead-nurturing", "nurture-flow opzetten", "wat doe ik na een demo", "hoe volg ik op na een offerte", "sales-cadence bouwen", "sales-sequence", "opvolg-reeks na voorstel", "lead niet laten verdwijnen", "gap V3"
- Verloren of trage leads wil terughalen: "win-back flow", "verloren deal opnieuw benaderen", "re-engagement"
- Pricing-vragen stelt: "leg mijn pricing vast", "pricing-tabel opstellen", "tarievenlijst maken", "wat zijn mijn pakketten", "V2 pricing helder", "gap V2" (verwijs door naar `scale-structure`, module `producten-en-pricing`)
- Het hele domein wil aanpakken: "sales-systeem opzetten", "Verkoop-gaps uit de SCALE-audit wegwerken"
- Expliciet verwijst naar de codes V1, V2 of V3, naar `Salesproces.md` of naar `Opvolg-flow.md`

Triggert NIET wanneer:

- Het om het producten- en pricing-document zelf gaat: gebruik `scale-structure`, module `producten-en-pricing` (S8, dekt V2). Deze router verwijst alleen door
- De doelgroep of klantreis nog moet worden bepaald (ICP, klantreis-mapping): gebruik `scale-structure` (modules `icp` en `klantreis`); V1 en V3 bouwen daarop voort
- Een CRM-tool of pipeline-datamodel moet worden ingericht (velden, stages, tagging): gebruik `scale-collect` (module `crm-setup`, C2); V1 tekent de beweging op de pipeline die C2 oplevert
- Het om content, campagnes, nieuwsbrieven of merk-aanwezigheid gaat: gebruik `scale-marketing`; nurture-content uit de content-roadmap wordt wel hergebruikt in V3
- Iemand wil weten hoe compleet het bedrijf is over alle lagen en domeinen heen: gebruik `scale-audit`

## Werkwijze (router)

1. **Bepaal de module.** Leid uit de vraag af welke module van toepassing is: salesproces en pipeline-vragen naar V1, opvolg- en nurture-vragen naar V3. Bij twijfel, of als de gebruiker het hele Verkoop-domein wil aanpakken: toon het menu uit de Modules-tabel en noem de aanbevolen volgorde (V2 als pricing nog niet vastligt, dan V1, dan V3). Gaat de vraag over producten of pricing: verwijs door naar `scale-structure`, module `producten-en-pricing`, en start die workflow daar.
2. **Laad alleen de gekozen module.** Lees uitsluitend het gekozen `modules/<naam>.md` en volg die workflow exact. Laad niet beide modules tegelijk: dat kost onnodig context en de modules zijn zelfstandig ontworpen.
3. **Huisregels per module.** Elke module volgt dezelfde discipline:
   - Start met een run-time intro: hoeveel vragen (of blokken) komen er en wat is de geschatte tijd.
   - Pre-fill uit bestaande documenten (vault-scan zoals de module voorschrijft) voordat je vragen stelt.
   - Stel check-vragen om gevonden informatie te valideren in plaats van opnieuw uit te vragen.
   - Sla het resultaat op waar de module dat voorschrijft (canoniek pad per module).
4. **Stel het vervolg voor.** Na afronding van V1: stel V3 voor (opvolg-momenten per fase zijn de directe input). Na V3: stel de mailflow-automatisering in `scale-leverage` voor, of de sales-rapportage in `scale-analyze`. Ontbreekt pricing nog, wijs dan op `scale-structure`, module `producten-en-pricing`.

## Samenhang

- **Verkoop leunt op `scale-structure`:** V1 en V3 pre-fillen uit het ICP en de klantreis, en de Voorstel-fase verwijst naar het producten- en pricing-document (V2/S8) dat daar leeft.
- **`scale-collect` levert het datasysteem:** de CRM-setup (C2) definieert de pipeline-fases en velden waar V1 de bewegingsregels op tekent en waar de V3-triggers aan hangen.
- **`scale-analyze` meet het resultaat:** de KPI's per fase en het forecast-model uit V1 zijn directe input voor sales-rapportages en dashboards.
- **`scale-leverage` automatiseert de flows:** de opvolg-flows uit V3 zijn het ontwerp dat de mailflow-automatisering daar uitvoert.
- **`scale-engineer` bouwt erop voort:** een sales-tool of klantportaal heeft de fases, criteria en eigenaren nodig die hier worden vastgelegd.
- **`scale-marketing` voedt de funnel:** content en campagnes leveren de leads die dit domein opvolgt, en nurture-content voor V3 komt deels uit de content-roadmap.
- **`scale-juridisch` bewaakt de grenzen:** de AVG-check in V3 (opt-out, 14-dagen-regel, consumer-opt-in) leunt op de privacyverklaring, en de Won-fase in V1 verwijst naar het klantcontract.
- **`scale-audit` meet de voortgang:** de audit checkt per code (V1, V2, V3) of het canonieke document bestaat en gevuld is, en verwijst terug naar deze skill om gaps te dichten.
