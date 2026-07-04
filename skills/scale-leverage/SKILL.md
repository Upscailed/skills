---
name: scale-leverage
title: "SCALE Leverage"
description: "De Leverage-laag van het SCALE-framework van Upscailed: tijd terugwinnen door automatisering. Deze skill bundelt vier modules die samen het handwerk van een ondernemer gefaseerd overdragen aan tools, scripts, no-code-flows en AI-agents: L1 SOP Automatiseren (bestaande SOPs doorlichten, scoren op een 6-stappen leverage-spectrum en een automatiserings-roadmap met drie horizonten bouwen), L2 Auto-rapportage Setup (rapportage-templates uit A1 omzetten in scheduled jobs die data ophalen, bewerken, formatteren en bezorgen, inclusief cron, failure-handling en AVG-check), L3 Mailflow Setup (zes geautomatiseerde e-mail-workflows met kant-en-klare templates: welkom, onboarding, nurture, klachtafhandeling, opzegging en facturatie-reminders) en L4 Finance Automatisering (zes finance-workflows: facturatie, boekingen, debiteurenbeheer, BTW-voorbereiding, cashflow-forecast en boekhouder-handoff). Activeer wanneer iemand zegt: 'SOP automatiseren', 'proces automatiseren', 'welke stap kan automatisch', 'wat kan AI overnemen', 'mijn werk wegautomatiseren', 'mijn handwerk verminderen', 'leverage-roadmap', 'wat kan ik via Make/Zapier/n8n bouwen', 'wat is mijn quick-win-automatisering', 'rapportage automatiseren', 'scheduled report', 'auto maandrapport', 'auto weekrapport', 'rapport vanzelf laten draaien', 'cron voor mijn rapport', 'Stripe-data naar mailrapport', 'PDF-rapportage genereren', 'mailflow opzetten', 'welkomstmail automatiseren', 'follow-up sequence', 'onboarding-flow bouwen', 'klachtmail automatiseren', 'facturatie-herinneringen automatiseren', 'win-back flow bouwen', 'nurture automation', 'finance automatiseren', 'factuur automatisch versturen', 'auto-facturatie', 'betalingsherinneringen automatiseren', 'debiteuren-flow', 'incasso-flow', 'BTW-aangifte voorbereiden', 'cashflow-forecast bouwen', 'boekhouder-pakket maken', 'bankafschriften categoriseren', 'PSD2-koppeling', 'L1/L2/L3/L4 dichten in SCALE-audit', 'gap L1', 'gap L2', 'gap L3', 'gap L4', of iedere andere expliciete verwijzing naar de Leverage-laag van SCALE."
category: operations
tags: [scale-framework, leverage, automatisering, sop, processen, rapportage, cron, no-code, mailflow, email, avg, finance, facturatie, debiteuren, cashflow]
estimatedTime: "10-45 minuten per module"
version: "1.0.0"
author: Upscailed
license: MIT
---

# SCALE Leverage

## Doel

Leverage is de vierde laag van het SCALE-framework van Upscailed: **tijd terugwinnen door automatisering**. Waar Structure het fundament legt, Collect de data binnenhaalt en Analyze er stuurinformatie van maakt, neemt Leverage het handwerk weg. Het doel: de ondernemer reageert alleen nog op uitzonderingen, niet meer op het standaardwerk.

Deze skill is de **gebundelde versie van vier eerdere losse skills** (`sop-automatiseren`, `auto-rapportage-setup`, `mailflow-setup` en `finance-automatisering`). De volledige workflows leven ongewijzigd door als modules in `modules/`. Deze SKILL.md is de router: hij bepaalt welke module van toepassing is en laadt alleen die module.

## Modules

De aanbevolen doorloop-volgorde is L1 naar L4: eerst de roadmap (L1), daarna de specifieke bouw-modules (L2, L3, L4) in de volgorde die de roadmap voorschrijft.

| Code | Module | Wat het oplevert | Bestand |
|---|---|---|---|
| L1 | SOP Automatiseren | Automatiserings-roadmap: per SOP een score op het 6-stappen leverage-spectrum, tool-kandidaten, owner-overdracht en drie horizonten (quick-wins, medium, large) in `Leverage/SOP-Automatisering-Roadmap.md` | `modules/sop-automatiseren.md` |
| L2 | Auto-rapportage Setup | Per rapportage uit A1 een werkende automatisering: data-stappen, transformatie, formattering, distributie, cron-expressie en failure-handling in `Leverage/Auto-Rapportage.md` plus `Operations/Automations.md` | `modules/auto-rapportage-setup.md` |
| L3 | Mailflow Setup | Zes geautomatiseerde e-mail-workflows (welkom, onboarding, nurture, klacht, opzegging, facturatie-reminders) met kant-en-klare templates in `Leverage/Mailflow-Setup.md` | `modules/mailflow-setup.md` |
| L4 | Finance Automatisering | Zes finance-workflows (facturatie, boekingen, debiteuren, BTW-voorbereiding, cashflow-forecast, boekhouder-handoff) als blauwdruk in `Leverage/Finance-Automatisering.md` | `modules/finance-automatisering.md` |

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  SCALE LEVERAGE · router · 4 modules (L1-L4)              │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Intake of menu    │  Vraag duidelijk? Direct door.
   │                      │  Twijfel? Toon het module-menu
   │                      │  met de aanbevolen volgorde
   │                      │  L1 → L2 → L3 → L4
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Module kiezen     │  L1 roadmap · L2 rapportages
   │                      │  L3 mailflows · L4 finance
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Module-workflow   │  Lees ALLEEN het gekozen
   │    volgen            │  modules/<naam>.md en volg
   │                      │  die workflow exact
   │                      │  (intro, pre-fill, interview)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Opslaan + vervolg │  Resultaat opslaan waar de
   │                      │  module dat voorschrijft,
   │                      │  daarna vervolg-module of
   │                      │  volgende laag voorstellen
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:

- "SOP automatiseren" / "proces automatiseren" / "welke stap kan automatisch" / "wat kan AI overnemen" (L1)
- "Mijn werk wegautomatiseren" / "mijn handwerk verminderen" / "mijn processen schalen" (L1)
- "Leverage-roadmap" / "automatiserings-roadmap" / "wat is mijn quick-win-automatisering" (L1)
- "Wat kan ik via Make/Zapier/n8n bouwen" / "overdracht aan VA of agent" (L1)
- "Rapportage automatiseren" / "scheduled report" / "auto maandrapport" / "auto weekrapport" (L2)
- "Rapport vanzelf laten draaien" / "cron voor mijn rapport" / "rapportage in Make/n8n/Zapier" (L2)
- "Stripe-data naar mailrapport" / "PDF-rapportage genereren" / "Slack-bericht met cijfers automatiseren" (L2)
- "Mailflow opzetten" / "welkomstmail automatiseren" / "follow-up sequence" / "drip campaign" (L3)
- "Onboarding-flow bouwen" / "klachtmail automatiseren" / "transactionele mails inrichten" (L3)
- "Win-back flow bouwen" / "opzeg-mail flow" / "nurture automation" / "verlengings-flow jaarcontract" (L3)
- "Finance automatiseren" / "factuur automatisch versturen" / "auto-facturatie" / "auto-incasso opzetten" (L4)
- "Betalingsherinneringen automatiseren" / "debiteuren-flow" / "incasso-flow" (L4)
- "BTW-aangifte voorbereiden" / "cashflow-forecast bouwen" / "boekhouder-pakket maken" (L4)
- "Bankafschriften categoriseren" / "PSD2-koppeling" / "tikwerk eruit halen" (L4)
- "L1/L2/L3/L4 dichten in SCALE-audit" / "gap L1" t/m "gap L4" / iedere expliciete verwijzing naar de Leverage-laag

Let op de grens tussen L3 en L4 bij facturatie-herinneringen: gaat het om de mail-teksten en de reminder-cadans, dan L3; gaat het om de koppeling met het boekhoudpakket, incasso-escalatie en de bredere debiteuren-flow, dan L4. Bij twijfel: vraag het.

Triggert NIET wanneer:

- De gebruiker het **fundament** wil leggen: SOPs schrijven, toolstack inventariseren, team en rollen, ICP, klantreis, salesproces definiëren. Gebruik dan `scale-structure`. Zonder SOPs uit Structure heeft L1 niets om te automatiseren.
- De gebruiker **data wil verzamelen of structureren**: CRM opzetten, financiële data-laag, marketing-data, website-analytics, operationele KPIs. Gebruik dan `scale-collect`. Leverage automatiseert bovenop die data, maar bouwt de data-laag niet.
- De gebruiker **rapportages wil ontwerpen, een dashboard of daily briefing wil**: wat naar wie wanneer, Mission Control, beslissings-analyse. Gebruik dan `scale-analyze`. L2 automatiseert de rapportages die daar ontworpen zijn.
- De gebruiker een **eigen app, dashboard-app, workflow-pipeline of klantportaal wil bouwen of scopen**. Gebruik dan `scale-engineer`. Leverage werkt met bestaande tools en no-code; custom-bouw is de volgende laag.
- De gebruiker een **redactionele nieuwsbrief, content-roadmap of social-kanalen** wil opzetten. Gebruik dan `scale-marketing`. L3 bouwt automations, geen redactioneel kanaal.
- De gebruiker een **sales-opvolg-flow wil definiëren** (strategie, niet bouw), een CRM-proces of salesproces wil ontwerpen. Gebruik dan `scale-verkoop`. L3 voert de opvolg-strategie uit, maar bepaalt hem niet.
- De gebruiker **BTW-regime, contracten, privacyverklaring of AVG-grondslagen** wil vastleggen. Gebruik dan `scale-juridisch`. L2, L3 en L4 checken AVG, maar schrijven geen juridische documenten.
- De gebruiker wil weten **waar het bedrijf staat over alle SCALE-lagen heen**. Gebruik dan `scale-audit`. De audit wijst de gaten aan (waaronder L1 t/m L4), deze skill dicht ze.

## Werkwijze (router)

1. **Bepaal uit de vraag welke module van toepassing is.** Gebruik de triggerlijst hierboven en de Modules-tabel. Bij twijfel of bij een brede vraag ("ik wil automatiseren", "help me tijd terugwinnen"): toon het menu met de vier modules en de aanbevolen volgorde (L1 eerst voor de roadmap, daarna L2, L3, L4 op basis van wat de roadmap als quick-win aanwijst). Laat de gebruiker kiezen.
2. **Lees dan ALLEEN het gekozen `modules/<naam>.md` en volg die workflow exact.** Laad niet alle modules tegelijk: elke module is een volledige, zelfstandige workflow van 550 tot 650 regels. De module bepaalt de stappen, de interview-blokken, de output-paden en de schrijfregels.
3. **Huisregels die voor elke module gelden:**
   - Start met de run-time introductie uit de module: wat gaat er gebeuren, hoeveel blokken of vragen, en de geschatte tijd.
   - Pre-fill uit bestaande documenten (vault-scan en externe input) voordat je vragen stelt. Vraag nooit naar iets dat al ergens staat.
   - Stel check-vragen om gevonden informatie te valideren ("klopt dit beeld?") voordat je verder bouwt.
   - Sla het resultaat op waar de module dat voorschrijft (canoniek document onder `{scope}/Leverage/`, plus changelog en eventuele bron-annotaties).
4. **Stel na afronding de logische vervolg-module voor.** Na L1: de L-module die de top-quick-win uit de roadmap bouwt (L2 voor rapportages, L3 voor mailflows, L4 voor finance). Na L2, L3 of L4: de volgende module uit de roadmap, of, als de Leverage-laag rond is, de volgende SCALE-laag: **Engineer** (`scale-engineer`) voor custom dashboards, apps en pipelines.

## Samenhang

- **scale-structure** levert de verplichte input: L1 automatiseert de SOPs uit S10, en leunt op de toolstack (S12) en het team (S11) voor tool-keuze en owners.
- **scale-collect** levert de data-bronnen: L2 en L4 halen hun cijfers uit de CRM-, finance- en analytics-setups van C1 t/m C7. Leverage automatiseert wat in Structure, Collect en Analyze is opgebouwd.
- **scale-analyze** ontwerpt wat L2 uitvoert: zonder rapportage-templates uit A1 geen auto-rapportage. Andersom leveren L2 en L4 de datastromen die dashboards en briefings live houden.
- **scale-engineer** is de doorgroei: wordt een automatisering te complex voor no-code (custom dashboard, eigen app, meertaps-pipeline), dan gaat het stokje naar E1 t/m E4.
- **scale-marketing** raakt L3 op het mail-kanaal: de nieuwsbrief-provider en content-roadmap uit Marketing voeden de nurture-flow, maar het redactionele werk blijft daar.
- **scale-verkoop** definieert de opvolg-strategie (V3) die L3 in mail-templates en automations omzet, en de pipeline-fases (V1) die L4 als facturatie-trigger gebruikt.
- **scale-juridisch** levert de AVG-kaders: privacyverklaring en BTW-regime waar de AVG-checks in L2, L3 en L4 op steunen.
- **scale-audit** meet de hele SCALE-status: staat L1, L2, L3 of L4 op rood of oranje, dan is deze skill de route naar groen. Na afronding: audit opnieuw draaien.
