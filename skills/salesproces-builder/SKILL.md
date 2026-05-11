---
name: salesproces-builder
title: "Salesproces"
description: "Helpt een ondernemer in 30 tot 60 minuten een sales-pipeline en bijbehorend salesproces vast te leggen in één canoniek document: `Sales/Salesproces.md`. Dit is SCALE-stap V1 (Verkoop) en het operationele zusje van C2 (CRM Setup): waar C2 de tool en data-laag inricht, definieert V1 wat er per fase concreet moet gebeuren, wie het doet, hoeveel tijd het kost en wat bewezen moet worden om verder te gaan. De skill werkt via een gestructureerd interview in 8 blokken (business-type en cyclus, fase-set, per-fase definitie, sales-materiaal, KPI's, forecast-model, eigenaarschap, toolkoppeling), met de zes typische B2B-fases als startpunt (Prospect, Eerste contact, Discovery, Voorstel, Onderhandeling, Won of Lost) en passende varianten voor B2C of hybride. Vóór het interview begint, scant de skill diep wat al in de vault staat: ICP-segmenten uit `Directie/Playbook/ICP.md`, producten en prijzen uit `Directie/Playbook/Producten.md`, bestaande CRM-pipeline uit `Sales/CRM-Setup.md`, klantreis uit `Directie/Playbook/Klantreis.md`, team-eigenaren uit `HR/Team.md`, en contracten uit `Juridisch/Klantcontract.md`. Per fase legt de skill vast: entry-criterium (wanneer komt een deal in deze fase), kern-acties met touchpoints, exit-criterium (wat moet bewezen voor de volgende fase), gemiddelde doorlooptijd, kans-percentage, eigenaar en KPI per fase. Daarnaast levert de skill een forecast-model (weighted pipeline), discovery-script, voorstel-template-keuze en pricing-overzicht-link. Werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke vault-naam of vault-eigenaar, alleen over de SCALE-Verkoop-conventie. Activeer altijd wanneer iemand zegt: 'salesproces uitwerken', 'salesproces bouwen', 'verkoopproces vastleggen', 'lead-tot-deal proces', 'sales-pipeline definiëren', 'sales-flow uitwerken', 'sales-stappen vastleggen', 'discovery-gesprek script', 'voorstel-template kiezen', 'win-rate per fase', 'deal-velocity meten', 'forecast-model bouwen', 'sales-KPI's vastleggen', 'V1 dichten in SCALE-audit', 'gap V1', 'Sales/Salesproces.md aanmaken'. Triggert ook bij iedere expliciete verwijzing naar V1 of `Salesproces.md`."
category: operations
tags: [scale-framework, v1, verkoop, sales, pipeline, salesproces, discovery, forecast, deal-velocity, win-rate]
estimatedTime: "30 tot 60 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Salesproces

## Doel

Helpt een ondernemer om in 30 tot 60 minuten het **salesproces** van zijn of haar bedrijf vast te leggen in één canoniek document: `{scope}/Sales/Salesproces.md`. Dit is SCALE-stap V1 (Verkoop) en de directe vervolgstap op C2 (CRM Setup): waar C2 de tool en het datamodel kiest, beschrijft V1 wat er per pipeline-fase concreet gebeurt, wie verantwoordelijk is en wat bewezen moet zijn voordat de deal de volgende fase ingaat.

*Waarom dit fundamenteel is.* Een pipeline in de CRM is een leeg datamodel zolang er niet bij staat hoe een deal van fase naar fase beweegt. Zonder die procesbeschrijving gebeurt drie keer hetzelfde mis: deals blijven hangen in een fase zonder dat iemand weet wat de volgende actie is, forecast wordt een gokwerk omdat niemand weet welke fase-kans realistisch is, en nieuwe teamleden moeten elke deal opnieuw uitvinden omdat het proces alleen in iemands hoofd zit.

*Waarom dit het zusje is van C2.* C2 levert de pipeline-fases met kans-percentages en velden. V1 vult per fase de **bewijslast** in: wat moet er gebeurd zijn om hier in te zijn, welke acties hoort het bedrijf uit te voeren, en wat moet bewezen zijn om naar de volgende fase te gaan. Zonder V1 is C2 een mooie pijplijn-grafiek zonder bewegingsregels.

*Waarom de audit-drempel laag is.* SCALE-audit V1 stelt dat minstens 4 stappen van lead tot deal aanwezig moeten zijn, met per stap wie verantwoordelijk is. Die drempel haal je in 15 minuten met een lijst. Deze skill mikt op een **werkbaar** document: typisch 5 tot 6 fases met entry- en exit-criteria, kern-acties, doorlooptijden, KPI's per fase, een sales-materiaal-set (discovery-script, voorstel-template-keuze, pricing-link) en een forecast-model dat de pipeline kan vermenigvuldigen met fase-kansen om een gewogen verwachte omzet te krijgen.

Resultaat: SCALE-audit V1 springt van rood of oranje naar groen, het document is direct werkbaar voor het bedrijf zelf en herbruikbaar als input voor V3 (Opvolg-flow), A1 (Rapportage) en S10 (SOPs van de zwaarste fases).

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  SALESPROCES, SCALE-stap V1 (Verkoop)                    │
│  ~30-60 minuten · 8 blokken                                │
└──────────────────────────────────────────────────────────┘

  In 30 tot 60 minuten leggen we het hele salesproces vast,
  van eerste lead tot getekende deal. Per fase: wanneer een
  deal hier in komt, wat er gebeurt, wat bewezen moet zijn
  om door te kunnen, hoe lang het duurt en wat de kans is.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • Eerst 2 vragen: B2B, B2C of hybride, en wat is je    │
  │    typische verkoopcyclus (uren, dagen, weken, maanden) │
  │  • Daarna 8 blokken (één per beurt, niet alles tegelijk)│
  │    [1] Fase-set kiezen                                  │
  │    [2] Per fase: entry, acties, exit, tijd, kans-%      │
  │    [3] Sales-materiaal (discovery, voorstel, pricing)   │
  │    [4] KPI's per fase                                   │
  │    [5] Forecast-model (weighted pipeline)               │
  │    [6] Eigenaarschap per fase                           │
  │    [7] Toolkoppeling (CRM, kalender, voorstel, factuur) │
  │    [8] Won-Lost analyse en leerlus                      │
  │  • Vooraf scan ik wat er al in je vault staat: ICP,     │
  │    Producten, CRM-Setup, Klantreis, Team, Klantcontract │
  │  • Daarna lever ik Sales/Salesproces.md op met fase-    │
  │    tabel, forecast-model en cross-links                 │
  └────────────────────────────────────────────────────────┘

  De default B2B-fase-set (we passen aan op jouw business):
  [1] Prospect       [2] Eerste contact   [3] Discovery
  [4] Voorstel       [5] Onderhandeling   [6] Won / Lost

  Heb je externe input klaar? Bijvoorbeeld:
  • Een uitdraai van je huidige pipeline (CRM-screenshot)
  • Discovery-vragen die je vaak gebruikt
  • Een voorstel- of offerte-template (PandaDoc, Notion, Docs)
  • Een lijst recente wins en losses met reden
  • Pricing-overzicht of pakketten-lijst

  Dan kun je dat nu noemen of uploaden, hoe meer bronnen,
  hoe rijker het pre-fill.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  SALESPROCES, V1 · 30-60 min · 8 blokken                 │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │   + business-type    │  Welk pad?
   │                      │  B2B / B2C / hybride?
   │                      │  Cyclus-lengte?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  ICP, Producten,
   │    (auto-discover)   │  CRM-Setup, Klantreis,
   │                      │  Team, Klantcontract
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Pipeline-screenshot,
   │                      │  voorstel-template,
   │                      │  discovery-vragen,
   │                      │  win-loss-lijst
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is per
   │                      │  blok, ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, blok   │  8 blokken:
   │    voor blok         │  [1] Fase-set
   │                      │  [2] Per-fase definitie
   │                      │  [3] Sales-materiaal
   │                      │  [4] KPI's per fase
   │                      │  [5] Forecast-model
   │                      │  [6] Eigenaarschap
   │                      │  [7] Toolkoppeling
   │                      │  [8] Won-Lost-analyse
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Cross-link check  │  S4 ICP, S8 Pricing,
   │                      │  C2 CRM, V3 Opvolg-flow,
   │                      │  J5 Contract, S11 Team
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Sales/Salesproces.md
   │    opslaan           │
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    vervolg-          │  hint richting V3,
   │    suggesties        │  A1, S10 (SOPs)
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Salesproces uitwerken" / "salesproces bouwen" / "verkoopproces vastleggen"
- "Lead-tot-deal proces" / "van lead tot klant"
- "Sales-pipeline definiëren" / "sales-flow uitwerken" / "sales-stappen vastleggen"
- "Discovery-gesprek script" / "discovery-vragen vastleggen"
- "Voorstel-template kiezen" / "offerte-flow inrichten"
- "Win-rate per fase" / "conversie per stap" / "deal-velocity meten"
- "Forecast-model bouwen" / "weighted pipeline opzetten"
- "Sales-KPI's vastleggen" / "verkoop-KPI's"
- "V1 dichten in SCALE-audit" / "gap V1"
- "Sales/Salesproces.md aanmaken" / "Salesproces.md aanvullen"

Triggert NIET wanneer:
- De gebruiker een **CRM-tool of pipeline-datamodel** wil inrichten (gebruik `crm-setup` C2, die levert de pipeline en velden waar dit salesproces dan beweging op tekent)
- De gebruiker **opvolg-automatiseringen** wil bouwen (gebruik `opvolg-flow` V3, die bouwt op het salesproces dat deze skill oplevert)
- De gebruiker een **klantreis** wil mappen (gebruik `klantreis` S9, die geeft het wanneer en waar de klant zit, dit salesproces zoomt in op de verkoop-fases binnen die reis)
- De gebruiker een **product- of pricing-document** wil (gebruik `producten-en-pricing` S8, dit salesproces verwijst ernaar, vervangt het niet)
- De gebruiker een **contract-template** wil bouwen (gebruik `klantcontract-template` J5)
- De gebruiker een **operationele SOP** wil schrijven (gebruik `sop-interviewer` S10, een salesproces is de bovenbouw, een SOP zoomt in op één handmatige stap)

## Workflow

### Stap 1: Scope kiezen plus business-type en cyclus

Vraag voor welk bedrijf en in welk pad het salesproces gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Sales/`, `Directie/`, `HR/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft
- Een **versgemaakte SCALE-skelet** die nog leeg is op `Sales/Salesproces.md`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar dit salesproces voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")
3. **Business-type:** is dit een **B2B**, **B2C** of **hybride** business?
4. **Cyclus-lengte:** hoe lang duurt een typische verkoopcyclus van eerste contact tot getekende deal? (uren / dagen / weken / maanden)

Het business-type plus de cyclus-lengte bepalen de fase-set:

| Type + cyclus | Fase-set | Karakteristiek |
|---|---|---|
| **B2B met lange cyclus** (weken tot maanden) | Prospect, Eerste contact, Discovery, Voorstel, Onderhandeling, Won/Lost | Meerdere stakeholders, formeel voorstel, vaak onderhandeling op scope of prijs |
| **B2B met korte cyclus** (dagen tot 1-2 weken) | Lead, Kennismaking, Voorstel, Won/Lost | Eén beslisser, snelle kwalificatie, eenvoudig voorstel |
| **B2C met directe transactie** (minuten tot uren) | Geïnteresseerd, Bestelling, Betaling, Geleverd | Vaak self-service, weinig persoonlijk contact, conversie-getrokken |
| **B2C met advies-component** (dagen tot weken) | Lead, Intake, Offerte, Akkoord, Geleverd | Persoonlijke intake voor bedrag wordt vastgesteld |
| **Hybride** (beide kanalen) | Twee parallelle tracks die op Voorstel of Bestelling samenkomen | Vraag door welke variant per track |

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Sales/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Sales/Salesproces.md` al bestaat:
- Bestaat niet, eerste versie, doorgaan
- Bestaat wel, vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Salesproces - archief YYYY-MM-DD.md`) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Sales/Salesproces.md` (huidige versie als die bestaat) | Bestaande fase-set, KPI's, eigenaarschap |
| `Sales/CRM-Setup.md` | **Verplichte check**, pipeline-fases en kans-percentages, plus deal-velden die de basis vormen |
| `Directie/Playbook/ICP.md` | Klantsegmenten en kwalificatie-criteria voor Prospect en Discovery |
| `Directie/Playbook/Producten.md` (of `Aanbod.md`) | Pakketten, prijzen, scope-modules voor Voorstel |
| `Directie/Playbook/Klantreis.md` | Hoe Consideration en Purchase in de klant-reis lopen, plus pain points die in Discovery moeten worden geadresseerd |
| `HR/Team.md` | **Verplichte check**, wie wordt eigenaar per fase (zelfs als dat één persoon is) |
| `Juridisch/Klantcontract.md` | Welk contract wordt gestuurd bij Won, plus contract-secties die in Onderhandeling kunnen komen |
| `Directie/00 - Overzicht.md` | Propositie en doelgroep, hint voor Prospect-criteria |
| `Directie/01 - Goals.md` | Sales-doelen (omzet, # klanten) die in forecast moeten passen |
| `Marketing/Content Roadmap.md` (of `Marketing/`) | Inbound-bronnen die Prospect voeden |
| `Operations/Processen/*.md` | Bestaande sales-procesbeschrijvingen die misschien al voor één fase bestaan |

Maak per gevonden element een korte interne aantekening: in welk salesproces-blok het past en welke kerngegevens al bekend zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Werk met wat er is. Maar markeer **expliciet** als `CRM-Setup.md`, `Producten.md` of `Team.md` ontbreken, want die zijn de drie cruciale invoerbronnen voor V1.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Sales-specifieke bronnen die vaak goud waard zijn:

- **Pipeline-uitdraai of -screenshot** uit HubSpot/Pipedrive/Notion/Excel, toont welke fases nu draaien en welke deals waar zitten
- **Discovery-vragen** die al in Notion, een Doc of een sales-script staan, toont hoe Discovery-gesprek is opgebouwd
- **Voorstel- of offerte-template** uit PandaDoc, Notion, Docs of Word, toont format en typische scope-secties
- **Pricing-overzicht of pakketten-blad** (afzonderlijk van Producten.md) als die bestaat
- **Win-loss-lijst** met deals van de laatste 6-12 maanden, plus reden waarom gewonnen of verloren, ongoud voor exit-criteria en KPI-benchmarks
- **Sales-rapport** uit een vorig kwartaal of jaar (omzet, deals, conversie), helpt forecast-model kalibreren
- **CRM-export** als CSV (deals met fase, bedrag, sluitingsdatum), helpt actuele kans-percentages valideren
- **E-mailtemplates** voor opvolging na voorstel, toont de huidige opvolg-discipline
- **Onboarding-checklist** voor de fase ná Won, helpt de overgang Won naar Onboarding scherp neerzetten

Concrete vraag aan gebruiker:
> "Heb je externe bronnen waaruit ik kan putten? Bijvoorbeeld een pipeline-uitdraai of CRM-screenshot, een discovery-vragenlijst, een voorstel-template, een win-loss-lijst van de laatste 6-12 maanden, een sales-rapport, of e-mailtemplates voor opvolging? Je mag URL's noemen, bestanden uploaden of tekst plakken. Hoe meer bronnen, hoe rijker het pre-fill."

Per aangeleverde bron:
- **Pipeline-screenshot of CSV-export**: spiegel de huidige fases, vergelijk met C2 CRM-Setup, gebruik voor blok 1 en 2
- **Discovery-vragen**: input voor blok 3 (sales-materiaal)
- **Voorstel-template**: registreer tool en typische scope-secties, input voor blok 3
- **Win-loss-lijst**: bron voor realistische kans-percentages per fase en voor blok 8 (won-loss-analyse)
- **Sales-rapport**: input voor blok 5 (forecast-model)
- **E-mailtemplates**: hint voor V3 (opvolg-flow), niet primair voor V1, maar wel noteren als pre-werk

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 8 blokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] FASE-SET
      Vanuit CRM-Setup.md: 5 fases (Prospect 10%, Gesprek 25%,
      Voorstel 50%, Onderhandeling 75%, Won 100% / Lost 0%).
      Pipeline-fases zijn dus al bekend en kunnen 1-op-1 over.

  [2] PER-FASE DEFINITIE
      Nog leeg, dit is hoofdwerk van het interview.

  [3] SALES-MATERIAAL
      Pricing zit in Producten.md (3 pakketten genoemd).
      Discovery-vragen niet gevonden in de vault.
      Voorstel-template ook nog niet vastgelegd.

  [4] KPI'S PER FASE
      Goals.md noemt jaardoel-omzet en # nieuwe klanten,
      daar leiden we conversie- en win-rate-targets uit af.

  [5] FORECAST-MODEL
      Weighted pipeline kan met de kans-% uit CRM-Setup.

  [6] EIGENAARSCHAP
      Team.md noemt 1 persoon (solopreneur), dus alle fases
      hebben dezelfde eigenaar. Wel relevant: wanneer wordt
      welke pet opgezet (acquisitie vs delivery)?

  [7] TOOLKOPPELING
      Vanuit Toolstack of CRM-Setup: HubSpot Free, Calendly
      voor afspraken, Moneybird voor facturatie. PandaDoc/
      voorstel-tool nog niet bevestigd.

  [8] WON-LOST-ANALYSE
      Niets gevonden, hier hebben we de win-loss-lijst voor
      nodig (al opgehaald in stap 3, of we vragen het na).

  GATEN waar ik nog vragen voor heb:
  - Per fase: entry-criterium, kern-acties, exit-criterium
  - Discovery-script
  - KPI-targets per fase
  - Won-loss-redenen vorige periode

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, blok voor blok

**Kernregel:** loop **één blok per beurt** af. Niet alle 8 tegelijk neerzetten. Per blok: alle bekende input langsgaan, eventueel ontbrekende info toevoegen, en pas dán door naar het volgende blok.

#### Blok 1: Fase-set kiezen

Als er al een pipeline in `Sales/CRM-Setup.md` staat: neem die als startpunt en vraag alleen om bevestiging. Als die ontbreekt: kies een van de drie startsjablonen, afhankelijk van business-type en cyclus.

**Default-B2B-zes (gangbaar bij dienstverlening, advies, B2B-SaaS):**

| # | Fase | Default kans-% | Typische duur |
|---|---|---|---|
| 1 | Prospect | 10% | 1-7 dagen |
| 2 | Eerste contact | 20% | 1-7 dagen |
| 3 | Discovery | 40% | 7-14 dagen |
| 4 | Voorstel | 60% | 7-21 dagen |
| 5 | Onderhandeling | 80% | 3-14 dagen |
| 6 | Won / Lost | 100% / 0% | sluiting |

**B2B-vier (korte cyclus, simpele dienst):**

| # | Fase | Default kans-% | Typische duur |
|---|---|---|---|
| 1 | Lead | 15% | 1-3 dagen |
| 2 | Kennismaking | 40% | 1-7 dagen |
| 3 | Voorstel | 70% | 3-14 dagen |
| 4 | Won / Lost | 100% / 0% | sluiting |

**B2C-vier (advies-component):**

| # | Fase | Default kans-% | Typische duur |
|---|---|---|---|
| 1 | Geïnteresseerd | 10% | minuten tot dagen |
| 2 | Intake | 35% | 1-7 dagen |
| 3 | Offerte | 70% | 1-14 dagen |
| 4 | Won / Lost | 100% / 0% | sluiting |

Vraag aan gebruiker:
1. *"Welke fase-set herken je het meest, of hebben we via CRM-Setup al een bestaande pipeline waar ik op kan voortbouwen?"*
2. *"Wil je 'Won' en 'Lost' apart of als één fase met statussen?"* (Pipedrive en HubSpot scheiden ze meestal)
3. *"Zijn er fases die je wil splitsen of samenvoegen? Bijvoorbeeld Discovery in 'Kwalificatie' plus 'Behoeftepeiling'?"*
4. *"Mis je een fase die in jouw bedrijf typisch is, bijvoorbeeld 'Pilot' (B2B-SaaS), 'Demo' (software), 'Aanbetaling' (retail) of 'Briefing' (creatief)?"*

Vastleggen: definitieve lijst fases (4 tot 7), met default kans-% en typische duur per fase.

#### Blok 2: Per-fase definitie

Voor elke fase uit blok 1 leg je vier dingen vast: entry-criterium, kern-acties, exit-criterium, eigenaar. Dit is het hart van V1.

Werk **één fase per beurt**. Vraag per fase:

1. **Entry-criterium**, *"Wanneer komt een deal in deze fase? Welk feit of welke gebeurtenis triggert dat?"*
   Voorbeelden:
   - Prospect: lead heeft contact opgenomen via formulier, e-mail of LinkedIn-bericht
   - Discovery: kennismakingsgesprek is gepland in agenda
   - Voorstel: scope is helder genoeg om kosten te berekenen
   - Onderhandeling: voorstel is verstuurd én klant heeft inhoudelijk gereageerd
2. **Kern-acties**, *"Wat doe jij (of het team) concreet in deze fase? Hoeveel touchpoints? Welke kanalen?"*
   Voorbeelden:
   - Prospect: kwalificatie-vragen via e-mail, fit-check tegen ICP, beslissen of we doorgaan
   - Discovery: 30-60 min gesprek, vragenlijst aflopen, behoefte vastleggen
   - Voorstel: voorstel opstellen in PandaDoc, intern reviewen, sturen, follow-up plannen
3. **Exit-criterium**, *"Wat moet bewezen of gebeurd zijn voordat de deal naar de volgende fase mag?"*
   Dit is de kern van V1, zonder exit-criterium glijden deals oneindig in een fase. Voorbeelden:
   - Prospect → Eerste contact: kwalificatie-fit OK, lead heeft gereageerd op uitnodiging
   - Discovery → Voorstel: probleem en gewenste oplossing helder, budget-orde-van-grootte besproken
   - Voorstel → Onderhandeling: klant heeft voorstel ontvangen én inhoudelijke vraag of feedback gegeven
   - Onderhandeling → Won: akkoord op scope én prijs, contract is gestuurd en in ondertekening
4. **Eigenaar**, *"Wie is verantwoordelijk voor het bewegen van deze fase naar de volgende?"* (Cross-link `HR/Team.md`)

Voor solopreneurs: één eigenaar voor alles is OK, maar **noteer welke pet wordt opgezet** (acquisitie vs delivery vs administratie). Dat geeft zelfdiscipline en is later nodig als er een tweede persoon aanhaakt.

Daarna per fase nog twee korte vragen:
5. **Gemiddelde doorlooptijd**, *"Hoe lang zit een deal gemiddeld in deze fase?"* (input voor blok 8 deal-velocity)
6. **Kans-% (validatie)**, *"Klopt de kans-% uit CRM-Setup ({getal}%) of moet die anders?"*

Werk de fases af in volgorde, één per beurt. Dit is meestal het langste onderdeel van het interview.

#### Blok 3: Sales-materiaal

Vraag welke ondersteunende materialen er per fase nodig en aanwezig zijn. Standaard drie kerndocumenten:

| Materiaal | Per fase | Status |
|---|---|---|
| **Discovery-vragenscript** | Discovery | Bestaand / nog te maken |
| **Voorstel-template** | Voorstel | Tool + locatie |
| **Pricing-overzicht** | Voorstel + Onderhandeling | Cross-link naar Producten.md |
| **E-mailtemplates** | Eerste contact, Voorstel-opvolg, Onderhandeling | Bestaand / nog te maken |
| **Casestudies of referenties** | Voorstel, Onderhandeling | Bestaand / nog te maken |
| **Onboarding-checklist** | Direct na Won | Bestaand / nog te maken |

Vraag aan gebruiker:
1. *"Welke materialen heb je al klaar staan?"* (vink af wat bestaat plus locatie)
2. *"Welk voorstel-tool gebruik je: PandaDoc, Notion, Google Docs, Word, Canva, anders?"*
3. *"Heb je een discovery-script of doe je dat uit het hoofd?"*, als er een script is, link ernaar; zo niet, voorstellen om de typische vragen alvast te noteren in `Sales/Discovery-script.md`
4. *"Welke e-mailtemplates gebruik je voor opvolging na voorstel? Eén template of variatie per segment?"*
5. *"Heb je casestudies of testimonials beschikbaar om te delen in Voorstel of Onderhandeling?"*

Vastleggen per materiaal: bestaat (locatie) of gewenst (actie), plus eigenaar van het materiaal.

#### Blok 4: KPI's per fase

Vraag welke meetwaarden per fase relevant zijn. Standaard vier KPI-families:

| KPI-familie | Waar gemeten | Waarvoor |
|---|---|---|
| **Volume per fase** | Aantal deals in elke fase | Pipeline-gezondheid |
| **Conversie-ratio per fase** | % deals dat van fase N naar N+1 gaat | Bottlenecks vinden |
| **Doorlooptijd per fase (deal-velocity)** | Gemiddelde dagen per fase | Bottlenecks plus forecast-precisie |
| **Win-rate** | % gewonnen van afgesloten deals (Won / (Won + Lost)) | Overall sales-effectiviteit |
| **Gemiddelde deal-grootte** | Gemiddeld EUR-bedrag van Won-deals | Mix-bewustzijn |
| **Win-rate per segment** | Win-rate gesplitst op ICP-segment of bron | Inzicht welke segmenten goed converteren |

Vraag aan gebruiker:
1. *"Welke KPI's wil je per kwartaal volgen? Mijn voorstel: conversie per fase, deal-velocity, win-rate, gemiddelde deal-grootte."*
2. *"Heb je benchmark-getallen vanuit een vorige periode? Bijvoorbeeld: vorig kwartaal was win-rate 25%, dit kwartaal target 35%."*
3. *"Wil je ook win-rate per segment of per bron volgen, of houden we het overall?"*

Vastleggen: KPI-lijst met target plus huidige stand (indien beschikbaar) plus meetmoment (wekelijks, maandelijks, kwartaal).

#### Blok 5: Forecast-model

Vraag hoe de forecast wordt berekend. Default: **weighted pipeline**, deal-bedrag vermenigvuldigd met fase-kans-%, opgeteld over alle open deals.

Voorbeeld:

```
Open pipeline op 2026-05-11:

  Fase           Deals  Totaal-bedrag  Kans-%  Gewogen
  Prospect          8     EUR 16.000    10%   EUR 1.600
  Eerste contact    5     EUR 12.500    20%   EUR 2.500
  Discovery         3     EUR  9.000    40%   EUR 3.600
  Voorstel          4     EUR 14.000    60%   EUR 8.400
  Onderhandeling    2     EUR  8.000    80%   EUR 6.400

  Totaal gewogen forecast: EUR 22.500
```

Vraag aan gebruiker:
1. *"Werkt weighted pipeline voor jouw business, of heb je een ander voorkeur-model (best-case, commit, omnibus)?"*
2. *"Hoe vaak update je deze forecast? Wekelijks, maandelijks?"*
3. *"Wat is je target-omzet voor dit kwartaal of jaar? Kunnen we de forecast daartegen afzetten?"*

Vastleggen: forecast-formule, update-ritme, target-omzet, voorbeeld-tabel (lege placeholder als er nog geen open deals zijn).

Cross-link blok 5 expliciet naar A1 Rapportage: *"De forecast-tabel is input voor de sales-rapportage in A1."*

#### Blok 6: Eigenaarschap per fase

Werk uit wat in blok 2 per fase al is genoteerd. Maak een overzichtstabel: fase, eigenaar, back-up.

Voor solopreneurs:
- **Eigenaar = persoon zelf** voor alle fases, **back-up = "geen"** of "externe ondersteuner als er één is"
- Wel: voor elke fase noteren **welke pet** opgezet wordt (acquisitie, delivery, administratie)

Voor micro-teams:
- Vaste eigenaar plus duidelijke back-up bij afwezigheid
- Cross-link `HR/Team.md` om consistentie te bewaren

Vraag aan gebruiker:
1. *"Is voor elke fase de eigenaar uit blok 2 nog steeds correct? Wil je een back-up benoemen voor als de eigenaar afwezig is?"*
2. *"Is er een handover-moment tussen fases waar twee mensen betrokken zijn?"* (bv. acquisitie geeft over aan delivery na Won)

Cross-link verplicht met `HR/Team.md`. Bestaat Team.md niet: noteer in output *"Owners niet gevalideerd tegen HR/Team.md. Aanrader: draai eerst `team-en-rollen` (S11)."*

#### Blok 7: Toolkoppeling

Vraag welke tools het salesproces aansteken. Vier kerntools:

| Tool-categorie | Voorbeelden | Verbinding met salesproces |
|---|---|---|
| **CRM** | HubSpot, Pipedrive, Notion, Airtable, Attio | Pipeline live, fase-status per deal (cross-link C2) |
| **Kalender** | Google Calendar, Outlook, Calendly | Afspraken voor Discovery en Onderhandeling |
| **Voorstel-tool** | PandaDoc, Notion, Google Docs, Word | Voorstel-template (fase Voorstel) |
| **Facturatie** | Moneybird, e-Boekhouden, Stripe | Won-deal triggert factuur (cross-link J5 contract) |
| **Communicatie** | Gmail, Outlook, Slack | E-mail en chat over deals |
| **E-handtekening** | SignWell, DocuSign, Adobe Sign | Contract-ondertekening bij Won |

Vraag aan gebruiker:
1. *"Welke tools draaien al voor elk van deze categorieën?"* (kruis aan, link naar Toolstack als die bestaat)
2. *"Waar zitten manuele overdrachten? Bijvoorbeeld: CRM-status Won → handmatig naar Moneybird. Of: e-handtekening getekend → manuele kick-off-mail."*
3. *"Welke koppeling zou je willen automatiseren maar staat nu nog handmatig?"* (input voor L-fase later)

Cross-link expliciet met `Sales/CRM-Setup.md` voor de CRM, en met `IT/Toolstack.md` voor de andere tools.

#### Blok 8: Won-Lost-analyse en leerlus

Vraag of er een leerlus is na elke deal: wat is gewonnen, wat is verloren, en waarom.

Standaard drie velden bij sluiting:

| Veld | Bij Won | Bij Lost |
|---|---|---|
| **Reden** | Welke factor was doorslaggevend? (prijs, fit, doorlooptijd, vertrouwen, persoonlijk klik) | Welke factor liet de deal afhaken? (te duur, concurrent gekozen, geen budget, fit slecht, timing verkeerd) |
| **Lessen** | Wat kunnen we hieruit leren voor toekomstige deals? | Idem |
| **Vervolg-actie** | Onboarding-start, contract-mail | Win-back over 6 maanden, of definitief afsluiten |

Vraag aan gebruiker:
1. *"Doe je nu al een Win-loss-analyse? Bijvoorbeeld bij elke gesloten deal een korte reflectie?"*
2. *"Heb je win-loss-data van de laatste 6 maanden? Geef me 3-5 voorbeelden van Won en 3-5 van Lost, met reden."* (gebruik dit om kans-% en fase-conversie te valideren)
3. *"Hoe vaak doen we een terugblik over meerdere deals? Maandelijks, kwartaal?"*

Vastleggen: drie velden bij sluiting (verplicht in CRM-Setup), review-ritme (maandelijks of kwartaal), voorbeeld-tabel met laatste 5 Won en 5 Lost (als die data er is).

Cross-link expliciet met V3 Opvolg-flow: *"Win-back-flow voor Lost-deals wordt in V3 verder uitgewerkt."*

### Stap 6: Cross-link check

Voordat je het document schrijft, valideer zes cross-links expliciet:

1. **S4 ICP**, entry-criteria voor Prospect en Discovery moeten passen bij ICP-segmenten in `Directie/Playbook/ICP.md`. Verschil? Markeer in output en stel update voor.
2. **S8 Producten en Pricing**, Voorstel-fase verwijst naar Producten en Pricing. Document moet expliciet aanmerken: *"Voorstel-bedragen en pakketten zijn afgeleid van `Directie/Playbook/Producten.md`."*
3. **C2 CRM-Setup**, pipeline-fases in dit document moeten **letterlijk** overeenkomen met pipeline-fases in `Sales/CRM-Setup.md`. Verschil betekent inconsistentie tussen tool en proces, markeer en stel synchronisatie voor.
4. **V3 Opvolg-flow**, opvolg-momenten per fase (bv. follow-up na voorstel binnen X dagen, win-back-flow voor Lost) zijn input voor V3. Document moet expliciet aanmerken: *"Opvolg-acties per fase zijn de basis voor V3 Opvolg-flow."*
5. **J5 Klantcontract**, Won-fase triggert contract. Document moet expliciet aanmerken: *"Bij Won wordt het contract uit `Juridisch/Klantcontract.md` gebruikt."* Ontbreekt dat document, stel `klantcontract-template` voor.
6. **S11 Team en Rollen**, eigenaars per fase moeten overeenkomen met rollen in `HR/Team.md`. Ontbreekt Team.md, noteer aanbeveling om `team-en-rollen` te draaien.

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-salesproces.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus cross-link check.

Sla op als:
```
{scope}/Sales/Salesproces.md
```

Maak de `Sales/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: salesproces
bedrijf: <Naam>
business-type: <B2B | B2C | hybride>
cyclus-lengte: <uren | dagen | weken | maanden>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: V1
aantal-fases: <getal>
forecast-model: weighted-pipeline
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "ultiem salesproces", "perfect afgestemde pipeline", "next-level forecast". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Voorstel-fase eindigt zodra klant op het voorstel reageert met inhoudelijke vraag binnen 7 dagen" is sterker dan "Voorstel eindigt als klant wat zegt".
- **Geen em-dashes** (-). Gebruik komma's, haakjes of losse zinnen.
- **Tabelvorm waar mogelijk**, een fase-set is een tabel, geen essay.
- **Entry- en exit-criteria altijd in feitelijke termen.** Geen "klant is enthousiast", wel "klant heeft op voorstel gereageerd én scope-akkoord gegeven".
- **Forecast-tabel altijd met voorbeeld-cijfers** (ook al zijn ze placeholder), anders blijft het abstract.
- **Quality-eis V1:** minstens 4 fases met per fase entry, kern-acties, exit, eigenaar én kans-%. Halve sets voldoen niet.

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):

1. **Changelog bedrijf**, `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Sales/Salesproces.md`, v1.0, salesproces met N fases, forecast-model weighted-pipeline, KPI's per fase vastgelegd"*.
2. **Daily**, als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md` in een Iwan-OS-stijl vault, of een Notion-daily-pagina), log dan een eenregelige melding plus link. Skip als die conventie niet bestaat.
3. **Goals-bestand**, als `{scope}/Directie/01 - Goals.md` een V1-doel of sales-omzet-doel heeft: status bijwerken, regel toevoegen aan voortgangslog.
4. **Scale-audit-suggestie**, als er een audit-rapport in `Directie/Research/` staat waar V1 op rood of oranje staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:

- **Doorgroei naar V3 Opvolg-flow**, opvolg-momenten per fase zijn nu vastgelegd. V3 bouwt geautomatiseerde opvolging op die structuur. Logische volgende stap.
- **Doorgroei naar A1 Rapportage**, KPI's per fase plus forecast-model zijn directe input. A1 maakt de rapportage-structuur die deze meet-set actief volgt.
- **Cross-link met S10 SOPs**, de zwaarste handmatige fase (vaak Voorstel of Onderhandeling) is kandidaat voor een SOP. Stel voor om met `sop-interviewer` die fase als eerste te documenteren.
- **Cross-link met S11 Team**, als rollen niet expliciet zijn, stel `team-en-rollen` voor.
- **Cross-link met J5 Klantcontract**, als het contract-document ontbreekt, stel `klantcontract-template` voor (Won-fase blijft anders open eind).
- **Review-ritme**, een salesproces veroudert wanneer pakketten, prijzen of segmenten veranderen. Stel voor: kwartaal-review, of triggeren bij elke verandering in pricing of ICP.

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

- **Eén blok per beurt** in het interview. Niet alle 8 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Eerst business-type en cyclus-lengte vragen.** Dit bepaalt de fase-set in blok 1. Niet later corrigeren.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **CRM-Setup, Producten en Team zijn verplichte cross-checks.** Ontbreken ze, vraag het actief uit en raad aan eerst die skills te draaien (C2, S8, S11).
- **Schrijf nooit zomaar over een bestaande `Salesproces.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Pipeline-fases letterlijk synchroniseren met CRM-Setup.** Als CRM-Setup een fase 'Discovery' heet, gebruik dat woord, niet 'Kwalificatie'. Een mismatch tussen V1 en C2 maakt rapportage onbetrouwbaar.
- **Entry- en exit-criteria altijd in feitelijke termen.** Geen subjectieve beschrijvingen zoals "klant is geïnteresseerd". Wel concrete observaties zoals "klant heeft afspraak in de agenda".
- **Kans-percentages onderbouwen.** Default-kansen alleen overnemen als de gebruiker geen historische data heeft. Met win-loss-data: gebruik werkelijke percentages.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een tool-naam, een tijdsduur, een specifieke actie) als het te abstract blijft.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe bronnen.** Een win-loss-lijst en een huidige pipeline-screenshot besparen 60% van het uitvraag-werk en geven realistische cijfers.
- **Mik op werkbaarheid, niet op het audit-minimum.** Het document moet de basis kunnen vormen voor V3, A1 en S10. Halve antwoorden voldoen niet.
- **Forecast-tabel altijd opnemen.** Ook als de pipeline leeg is, neem een lege tabel-skelet op zodat hij direct invulbaar is.

## Voorbeeld-output

Zie [`references/template-salesproces.md`](references/template-salesproces.md) voor de exacte structuur die de skill oplevert: fase-tabel met entry, kern-acties, exit, doorlooptijd, kans-% en eigenaar; sales-materiaal-tabel; KPI-tabel met targets; forecast-model met voorbeeld; toolkoppeling; won-loss-analyse en cross-links naar S4 ICP, S8 Producten, C2 CRM, V3 Opvolg-flow, J5 Klantcontract en S11 Team.
