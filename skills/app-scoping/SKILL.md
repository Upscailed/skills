---
name: app-scoping
title: "App Scoping"
description: "Helpt een ondernemer in 60 tot 120 minuten een app-idee, intern toolidee of interne automatiserings-app door te ploegen tot één bouwklaar PRD (Product Requirements Document) dat direct als brief gestuurd kan worden naar een developer, een no-code-bouwer of naar Claude Code. Dit is SCALE-stap E2 (Engineer): de stap waarin een grondig gescopete app het verschil maakt tussen een bouwsessie die in week 1 klaar is en een sessie die zes maanden uitloopt omdat de basis niet vastligt. De output is een PRD in 13 secties: (1) probleem-statement, (2) doelgroep plus persona's met cross-link naar S4 ICP, (3) kern-functionaliteit met maximaal 5 must-have features, (4) nice-to-have voor later, (5) expliciete out-of-scope, (6) drie tot vijf user journeys stap-voor-stap, (7) data-model met entities, relaties en key velden, (8) externe integraties en API's, (9) auth en rollen wie ziet wat, (10) tech-stack-voorstel afgestemd op MKB-budget (frontend, backend, database, hosting), (11) niet-functionele eisen (performance, security, AVG, schaal), (12) drie-traps roadmap (MVP in 1 week, v0.5 in 1 maand, v1 in 3 maanden), (13) open vragen plus expliciete aannames. De skill werkt vault-onafhankelijk via een runtime-intro en een gestructureerd interview blok per blok, scant proactief bestaande SOPs (S10), de toolstack (S12), de ICP (S4), het bedrijfsoverzicht en aanwezige tool-cards in IT/AI-Tools/ om alvast diep voor te vullen wat hij kan en alleen te vragen wat hij echt nog niet weet. Activeer altijd wanneer iemand zegt: 'app scopen', 'app-idee uitwerken', 'tool scopen', 'PRD maken', 'product requirements', 'brief schrijven voor Claude Code', 'brief voor developer', 'interne tool ontwerpen', 'MVP scope', 'bouwbrief', 'E2 dichten in SCALE-audit', 'gap E2', 'wat moet ik bouwen', 'mijn app uitlijnen', 'hoe schrijf ik dit uit voor een bouwer', 'data-model voor mijn app', 'tech-stack-keuze voor mijn tool', 'roadmap voor mijn app', 'out-of-scope vastleggen', 'mijn workflow als app'. Triggert ook bij iedere expliciete verwijzing naar E2, een nieuwe of bestaande tool-card in `IT/AI-Tools/` die nog geen brief heeft, of de wens om een proces uit S10 SOPs om te zetten naar een app."
category: bouwen
tags: [scale-framework, e2, engineer, app, scoping, requirements, prd, brief, mvp, mkb]
estimatedTime: "60 tot 120 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# App Scoping

## Doel

Helpt een ondernemer om in 60 tot 120 minuten een app-idee, interne tool of automatiserings-app te scopen tot één bouwklaar **PRD (Product Requirements Document)**. Output: één centraal document `{scope}/Engineer/App-Scoping-{AppNaam}.md` dat direct als brief gestuurd kan worden naar een developer, een no-code-bouwer of naar Claude Code. Dit is SCALE-stap E2 (Engineer), het natuurlijke vervolg op E1 (Dashboard) en de bouwsteen voor E3 (Workflow), E4 (Klantportaal) en E5 (Kennisbank).

*Waarom dit fundamenteel is.* In de praktijk start 9 van de 10 MKB-bouwsessies met een halfje idee en een halfje wens. De ondernemer weet wel waar het naartoe moet maar niet wat de must-have features zijn, wat de data-model-entities zijn, welke rollen wat moeten zien en wat expliciet **niet** in v1 hoort. Het gevolg: scope-creep, een bouwer die elke week opnieuw moet vragen, en een MVP die zes maanden later nog "bijna af" is. Een grondige scoping vooraf voorkomt dit. De vuistregel: één uur scoping bespaart vier tot tien uur bouw.

*Waarom een PRD en niet een brainstorm.* Een brainstorm legt vast wat de ondernemer denkt. Een PRD legt vast wat gebouwd moet worden, in een vorm die een ontwikkelaar in vijf minuten leest en daarna direct begint. Het verschil zit in concrete entities (klant, factuur, bestelling) met velden, in user journeys (login → dashboard → kies klant → klik "factuur" → bevestig), in een tech-stack-voorstel (Next.js + Supabase + Vercel) en in roadmap-blokken met datums.

*Waarom een drie-traps roadmap.* Een MVP in week 1 dwingt de ondernemer om scope te schrappen. Een v0.5 in maand 1 voegt het minimaal-bruikbare toe. Een v1 in maand 3 maakt het volwassen genoeg om mee naar buiten te treden. Deze drie cycli (1 week, 1 maand, 3 maanden) zijn de horizon-indeling die in MKB werkt - korter werkt niet voor iets nieuws, langer leidt tot scope-creep en uitloop.

*Waarom tech-stack-voorstel op MKB-budget.* Een Java/Spring + Kubernetes + Postgres + Kafka-stack klopt technisch maar niet voor een MKB met één bouwer en geen DevOps-budget. Deze skill stelt standaard low-ops / low-cost stacks voor (Next.js + Supabase + Vercel of Astro + SQLite of Apple Shortcuts + Airtable) en motiveert per voorstel waarom hij past bij de schaal van het bedrijf. De ondernemer kiest, de skill adviseert.

Resultaat: SCALE-audit E2 springt van ❌ of ⚠️ naar ✅ wanneer minstens één app gescopet is met een bouwklaar PRD, plus is de roadmap helder genoeg dat de bouwer (mens of Claude Code) zonder verdere vragen kan starten.

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  APP SCOPING - SCALE-stap E2 (Engineer)                   │
│  ~60-120 minuten · 13 PRD-secties · bouwklare brief       │
└──────────────────────────────────────────────────────────┘

  In 60 tot 120 minuten scopen we jouw app-idee tot een
  bouwklaar Product Requirements Document. Dat document kun
  je daarna direct als brief sturen naar een developer, een
  no-code-bouwer of naar Claude Code. Eén uur scoping bespaart
  4 tot 10 uur bouw.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 13 secties interview (in 4 blokken gegroepeerd,      │
  │    niet alles tegelijk) - 10-20 minuten per blok        │
  │  • Per sectie 1-4 korte vragen                          │
  │  • Vooraf scan ik wat er al in je vault staat:          │
  │    SOPs (S10), toolstack (S12), ICP (S4),               │
  │    bedrijfsoverzicht, eerdere tool-cards in IT/AI-Tools │
  │    en eventueel een aangeleverde brainstorm-notitie     │
  │  • Daarna lever ik een PRD op die direct als brief      │
  │    kan voor een bouwer                                  │
  └────────────────────────────────────────────────────────┘

  De 13 secties (in 4 blokken):

  Blok A - Wat & waarom (10-15 min)
  [1] Probleem-statement  [2] Doelgroep + persona's
  [13] Open vragen + aannames (lopend, telkens bijgewerkt)

  Blok B - Scope (15-25 min)
  [3] Kern-functionaliteit  [4] Nice-to-have  [5] Out-of-scope
  [6] User journeys

  Blok C - Onder de motorkap (15-30 min)
  [7] Data-model  [8] Externe integraties
  [9] Auth + rollen

  Blok D - Bouw (15-25 min)
  [10] Tech-stack-voorstel  [11] Niet-functionele eisen
  [12] Roadmap (MVP / v0.5 / v1)

  Heb je al een brainstorm, een eerdere tool-card, een
  workflow-tekening, een SOP die deze app gaat vervangen,
  of een referentie-app die je wilt namaken? Noem ze nu -
  ik haal er alles bruikbaar uit voordat we starten.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  APP SCOPING - E2 · 60-120 min · 13 PRD-secties · 4 blok │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welke app-naam?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  S10 SOPs,
   │    (auto-discover)   │  S12 toolstack,
   │                      │  S4 ICP, 00-Overzicht
   │                      │  IT/AI-Tools/*
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe input?    │  Brainstorm-notitie,
   │                      │  workflow-tekening,
   │                      │  referentie-app, SOP
   │                      │  die wordt vervangen
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Per van de 13
   │                      │  secties, wat al
   │                      │  bekend is + gaten
   └──────────┬───────────┘
              ▼
   ┌──────────────────────────────────────────────┐
   │ 5. Interview, 4 blokken                       │
   │                                               │
   │ A. Wat & waarom  → [1][2][13-lopend]          │
   │ B. Scope         → [3][4][5][6]               │
   │ C. Motorkap      → [7][8][9]                  │
   │ D. Bouw          → [10][11][12]               │
   └──────────┬───────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Schrijven +       │  Engineer/
   │    opslaan           │  App-Scoping-
   │                      │  {AppNaam}.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Logging +         │  Changelog +
   │    vervolg-          │  hint naar
   │    suggesties        │  bouw-sessie /
   │                      │  Claude Code
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "App scopen" / "tool scopen" / "interne app ontwerpen"
- "App-idee uitwerken" / "MVP scope" / "v1 scope"
- "PRD maken" / "product requirements" / "bouwbrief"
- "Brief schrijven voor Claude Code" / "brief voor developer"
- "Hoe schrijf ik dit uit voor een bouwer"
- "Data-model voor mijn app" / "tech-stack-keuze voor mijn tool"
- "Roadmap voor mijn app" / "out-of-scope vastleggen"
- "Mijn workflow als app" / "deze SOP als tool"
- "E2 dichten in SCALE-audit" / "gap E2"
- "Wat moet ik bouwen" (als context = nieuwe app)
- "Mijn app uitlijnen voor een bouwer"

Triggert NIET wanneer:
- De gebruiker een **dashboard** wil bouwen dat alleen data toont uit bestaande systemen → gebruik `dashboard-bouwer` (E1).
- De gebruiker een **automatiserings-flow** wil tussen bestaande tools, geen eigen UI → gebruik `sop-automatiseren` (L1) of E3 Workflow Pipeline als die later komt.
- De gebruiker een **klant-app** of klantportaal wil ontwerpen → gebruik `klantportaal-scoping` (E4 - vergelijkbaar, andere doelgroep).
- De gebruiker een **kennisbank** wil opzetten zonder eigen logica → gebruik `kennisbank-organizer` (E5).
- De gebruiker een **bestaande tool-card** alleen invult zonder bouwintentie → gebruik `os-builder` of vul de tool-card direct in.
- De app technisch al gebouwd is en er nu een **GitHub-repo wordt gestart** → de skill stopt waar de scoping eindigt, niet bij de bouwfase.

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf, welke app, en in welk pad de scoping moet plaatsvinden. Maak **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Directie/`, `IT/AI-Tools/`, `Engineer/` direct onder de vault-root).
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Engineer/...`).
- Een **versgemaakte SCALE-skelet** waar `Engineer/` nog niet bestaat. Maak de map dan aan.

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze app voor is?
2. Wat is de werknaam van de app? (Bijvoorbeeld "Worktracker", "Boeker", "Wealth", "Sales Flow". Mag een interne codenaam zijn - wordt later eventueel hernoemd.)
3. Wat is het pad naar de bedrijfs-root? (Of "ik weet het niet - help me zoeken".)

Controleer daarna of `{scope}/Engineer/App-Scoping-{AppNaam}.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan.
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** wordt (archiveer de oude als `App-Scoping-{AppNaam} - archief YYYY-MM-DD.md`).

Controleer ook of er al een **tool-card** bestaat in `{scope}/IT/AI-Tools/{AppNaam}.md`:
- Bestaat → lees hem mee in stap 2, en stel voor om aan het einde de tool-card-status bij te werken naar "Bouw" of "Scope-fase afgerond".
- Bestaat niet → vraag of de gebruiker er na de scoping ook een tool-card bij wil. (Niet verplicht, maar geadviseerd voor vault-hygiëne.)

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: alleen relatieve paden binnen de bedrijfs-root.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt | Voedt secties |
|---|---|---|
| `Directie/00 - Overzicht.md` | Bedrijfscontext, doelgroep, propositie | 1, 2 |
| `Directie/Playbook/ICP.md` (of `Directie/Research/ICP.md`) | Klantsegmenten + persona's | 2 |
| `Operations/Processen/*.md` (S10 SOPs) | Het proces dat de app vervangt of ondersteunt | 1, 6, 7 |
| `Directie/Playbook/Toolstack.md` of `IT/Toolstack.md` | Welke tools en API's al beschikbaar zijn | 8, 10 |
| `IT/AI-Tools/{AppNaam}.md` (bestaande tool-card) | Eerdere brainstorm, doel, status | 1, 3, 12 |
| `IT/AI-Tools/*.md` (andere tools) | Stack-precedenten - welke stack heeft eerder gewerkt | 10 |
| `Engineer/*.md` (eerdere scopings) | Stijl + stack-keuzes van eerdere PRDs | 10, 12 |
| `Directie/Research/*.md` | Brainstorms, marktonderzoek, concurrenten | 1, 3, 13 |

Maak per gevonden bron een korte interne aantekening: welke van de 13 secties hij raakt en wat de relevante kerninzichten zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

### Stap 3: Externe input ophalen

Vraag actief of de gebruiker externe materialen heeft. Concreet:

> "Heb je al iets liggen over deze app? Bijvoorbeeld een brainstorm-notitie, een workflow-tekening op papier of een whiteboard-foto, een referentie-app die je wilt namaken, een SOP die deze app gaat vervangen, een eerdere v0-poging of een gesprek dat je hierover hebt gehad? Je mag een URL noemen, een bestand of foto uploaden, of tekst plakken. Hoe meer bronnen, hoe rijker het pre-fill."

Per aangeleverde bron:
- **URL van een referentie-app**: scan op kern-features, navigatie, datamodel-hints.
- **PDF of document**: lees, vat samen wat relevant is per sectie.
- **Foto van whiteboard**: extraheer entities, flows, scherm-schetsen.
- **Geplakte tekst**: behandel als research-input.

Als er geen externe bronnen zijn, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 13 secties**.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld voor "{AppNaam}":

  [1] PROBLEEM-STATEMENT
      Wat je nu zelf doet/op-papier-bijhoudt, het probleem
      Bron: SOP "Klantadministratie", tool-card eerdere versie

  [2] DOELGROEP + PERSONA'S
      Wie de gebruiker is (jij, je medewerker, je klant?)
      Bron: ICP.md, 00 - Overzicht.md

  [3] KERN-FUNCTIONALITEIT
      Welke must-have features ik kan afleiden
      Bron: brainstorm-notitie, SOP-stappen 3 t/m 6

  ... (4 t/m 12)

  GATEN waar ik nog vragen voor heb:
  - Sectie 7: data-model nog niet expliciet beschreven
  - Sectie 9: rollen/auth nog niet duidelijk (alleen jij of ook medewerker?)
  - Sectie 10: tech-stack nog open

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren voordat
we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, in 4 blokken

**Kernregel:** stel **één blok per beurt**. Wacht op het antwoord, dan pas het volgende blok. Sectie 13 (open vragen + aannames) loopt mee door alle blokken - telkens als er een aanname ontstaat, noteer je hem daar.

#### Blok A - Wat & waarom (sectie 1, 2, 13-lopend)

**Wat we vastleggen:** het probleem dat de app oplost, voor wie, en welke aannames we onderweg maken.

##### Sectie 1 - Probleem-statement

Kernvragen:
1. Welk concreet probleem lost deze app op? Beschrijf de huidige situatie zonder de app (handmatig, in een spreadsheet, op papier, in een andere tool die niet past).
2. Wat is de pijn? Tijd verloren, fouten gemaakt, data versnipperd, klanten ontevreden, schaal niet haalbaar?
3. Wat gebeurt er als deze app er niet komt? (Test of het probleem groot genoeg is om te bouwen.)
4. Welk meetbaar resultaat verwacht je na 3 maanden gebruik? (Tijdsbesparing in uren per week, fout-reductie in procenten, nieuwe omzet, etc.)

##### Sectie 2 - Doelgroep + persona's

Kernvragen:
1. Wie gebruikt deze app? Alleen jij, ook een medewerker, ook een klant, ook een externe partij?
2. Per gebruikersgroep: wat doet deze persoon nu zonder de app, en wat moet hij straks mét de app kunnen?
3. Hoeveel gebruikers verwacht je in v1, en in v1 + 6 maanden?
4. Cross-link: als er een ICP-document is (S4), verwijs daarheen voor de externe-klant-doelgroep. Voor interne gebruikers (jij, medewerker) maak korte persona's hier ter plekke.

##### Sectie 13 (lopend) - Open vragen + aannames

Tijdens elk blok: zodra je een aanname doet of een onbekende raakt, noteer hem hier. Voorbeeld-formats:
- *Aanname:* "We gaan ervan uit dat de gebruiker minstens één computer met moderne browser heeft."
- *Open vraag:* "Moet de app offline werken? Niet geadresseerd in dit blok."

Aan het einde van de scoping ronden we sectie 13 expliciet af met de gebruiker.

#### Blok B - Scope (sectie 3, 4, 5, 6)

**Wat we vastleggen:** wat in v1 zit, wat later komt, wat expliciet niet, en hoe de gebruiker erdoorheen beweegt.

##### Sectie 3 - Kern-functionaliteit (maximaal 5 must-haves)

Kernvragen:
1. Welke must-have features zitten in v1? Beperk tot maximaal 5. Forceer prioritering - meer dan 5 betekent geen MVP meer.
2. Per feature: beschrijving in 1-2 zinnen, wie hem gebruikt, hoe vaak (per dag / per week / per maand).
3. Vuistregel: als een feature pas in maand 2 gebruikt zou worden, is hij geen must-have voor v1.

Lever op als genummerde tabel:

| # | Feature | Beschrijving | Gebruiker | Frequentie |
|---|---|---|---|---|

##### Sectie 4 - Nice-to-have (voor later)

Kernvragen:
1. Welke features zou je graag willen maar zijn niet kritiek voor v1?
2. Per feature: bij welke versie hoort hij - v0.5, v1, post-v1?

##### Sectie 5 - Out-of-scope (expliciet wat NIET)

Kernvragen:
1. Wat is **expliciet niet** in deze app? (Bijvoorbeeld: geen factureren, geen klant-login, geen mobiele app, geen meerdere talen, geen multi-tenant.)
2. Vuistregel: schrijf hier wat anderen zouden kunnen verwachten dat erin zit - om misverstand vooraf weg te nemen.

Dit is het belangrijkste lijstje om scope-creep tegen te houden. Wees genadeloos.

##### Sectie 6 - User journeys (3 tot 5 key flows)

Kernvragen:
1. Wat zijn de 3 tot 5 belangrijkste flows die de gebruiker doorloopt? Voorbeelden: "een klant toevoegen", "een factuur maken", "rapportage downloaden", "instellingen aanpassen".
2. Per flow: stap-voor-stap (5 tot 12 stappen), beginnend bij waar de gebruiker is (homepage / e-mail / dashboard) en eindigend bij waar hij wil zijn.

Lever op per flow als genummerde stappenlijst:

```
Flow 1: Een klant toevoegen
1. Gebruiker logt in op homepage
2. Klikt op "Klanten" in zijmenu
3. Klikt rechtsboven op knop "Nieuwe klant"
4. Vult formulier in (naam, email, telefoon, segment)
5. Klikt "Opslaan"
6. Krijgt bevestigingsbericht + komt terug op klantenlijst
7. Nieuwe klant staat bovenaan
```

#### Blok C - Onder de motorkap (sectie 7, 8, 9)

**Wat we vastleggen:** de data, de integraties, en wie wat ziet.

##### Sectie 7 - Data-model

Kernvragen:
1. Welke entities zitten in de app? (Bijvoorbeeld: Klant, Factuur, Bestelling, Gebruiker, Project, Taak.)
2. Per entity: wat zijn de **key velden** (3 tot 8 belangrijkste, niet uitputtend)?
3. Hoe verhouden entities zich tot elkaar? (Bijvoorbeeld: een Klant heeft veel Facturen, een Factuur heeft één Klant en veel Regels.)

Lever op als tabel:

| Entity | Key velden | Relaties |
|---|---|---|
| Klant | id, naam, e-mail, segment, status | Heeft veel Facturen |
| Factuur | id, klant_id, datum, bedrag, status | Hoort bij één Klant, heeft veel Regels |

Plus een korte ASCII-schets als de relaties complex zijn.

##### Sectie 8 - Externe integraties

Kernvragen:
1. Welke externe services moet de app aanspreken? (API's, services, externe tools.)
2. Per integratie: doel (data lezen / data schrijven / beide), authenticatie-methode, wie het account heeft.
3. Welke integraties zijn must-have voor v1, welke voor later?

Veelvoorkomende integraties in MKB: e-mail (SMTP, Resend, Postmark), betaalprovider (Mollie, Stripe), boekhouding (Moneybird, e-Boekhouden), CRM (HubSpot, Pipedrive), kalender (Google Calendar, Apple Calendar), authenticatie (Google, Apple, magic-link).

##### Sectie 9 - Auth + rollen (wie ziet wat)

Kernvragen:
1. Welke rollen bestaan? (Bijvoorbeeld: Admin, Medewerker, Klant, Lezer.)
2. Per rol: wat ziet hij wel, wat ziet hij niet? Welke acties mag hij doen?
3. Authenticatie-methode: e-mail + wachtwoord, magic-link, OAuth (Google/Apple), passkeys?
4. Wachtwoord-reset, sessie-duur, 2FA - nodig voor v1 of later?

Lever op als rolmatrix:

| Rol | Mag zien | Mag doen | Mag NIET |
|---|---|---|---|

#### Blok D - Bouw (sectie 10, 11, 12)

**Wat we vastleggen:** de technische stack, de niet-functionele eisen, en de roadmap.

##### Sectie 10 - Tech-stack-voorstel (pas aan op MKB-budget)

De skill stelt 2 tot 3 stack-varianten voor op basis van wat de app moet doen. De gebruiker kiest. Default voorstellen voor MKB:

**Variant A - Web-app, snel bouwen, moderne stack**
- Frontend: Next.js (React) of Astro
- Backend: Next.js API routes of Supabase Edge Functions
- Database: Supabase (Postgres) of Turso (SQLite)
- Hosting: Vercel of Cloudflare Pages
- Auth: Supabase Auth of Clerk
- Geschat: 0 tot 50 euro per maand bij MKB-schaal

**Variant B - No-code / low-code, geen developer nodig**
- Bouw-platform: Bubble, Softr, Glide, of Adalo
- Database: ingebouwd of Airtable
- Auth: ingebouwd
- Geschat: 30 tot 100 euro per maand
- Trade-off: sneller starten, beperkte aanpasbaarheid bij groei

**Variant C - Lokaal-eerst / desktop**
- macOS: SwiftUI of Electron
- Database: SQLite lokaal
- Sync (optioneel): iCloud, Supabase
- Hosting: niet van toepassing
- Geschat: alleen ontwikkel-tijd, geen maandkosten
- Trade-off: niet web-toegankelijk, alleen voor de eigenaar of vaste medewerkers

Kernvragen aan de gebruiker:
1. Heb je een voorkeur op basis van wat je eerder hebt gebouwd? (Bijvoorbeeld: andere tools in deze bedrijfsmap draaien al op Next.js + Supabase - dat zou consistent zijn.)
2. Wie gaat het bouwen? Jij zelf met Claude Code, een externe developer, een no-code-bouwer, een combinatie?
3. Wat is je budget-limiet per maand voor hosting en services?
4. Moet de app web-toegankelijk zijn, of mag het lokaal/desktop?

Motiveer per variant de keuze in 1 tot 2 zinnen. Geen marketing-superlatieven, alleen feiten.

##### Sectie 11 - Niet-functionele eisen

Kernvragen:
1. **Performance** - hoe veel gebruikers tegelijk in v1, in v1 + 6 maanden? Welke maximale laadtijd?
2. **Security** - gevoelige data (PII, financiële data, gezondheidsdata, klantgegevens)? Welke maatregelen verwacht je (encryptie at-rest, encryptie in-transit, audit-log)?
3. **AVG / privacy** - welke persoonsgegevens worden opgeslagen, hoe lang, welke betrokkenenrechten zijn relevant (inzage, verwijdering, dataportabiliteit)? Is er een verwerkersovereenkomst nodig met een bouwer of host?
4. **Schaal** - hoeveel records in v1 (klanten, facturen, gebruikers)? Hoeveel in v1 + 12 maanden? Hoeveel in 3 jaar?
5. **Beschikbaarheid** - moet de app 24/7 draaien of mag onderhoud op zondag-nacht?
6. **Backup + recovery** - hoe vaak backup, hoe lang bewaard, hoe snel terugzetten bij crash?

Lever op als tabel:

| Eis | Doel v1 | Doel v1+6mnd | Hoe meten |
|---|---|---|---|

##### Sectie 12 - Roadmap (MVP / v0.5 / v1)

Drie-traps-roadmap. Standaard cycli:

**MVP - in 1 week**
- Wat: minimaal-werkende versie met de 2 tot 3 belangrijkste must-haves uit sectie 3
- Voor wie: één gebruiker (de bouwer zelf)
- Doel: bewijzen dat het werkt, niet meer
- Niet in: integraties, multi-user, polish

**v0.5 - in 1 maand**
- Wat: alle 5 must-haves uit sectie 3 + 1 of 2 nice-to-haves uit sectie 4 als er ruimte is
- Voor wie: alle interne gebruikers (jij + eventueel medewerker)
- Doel: dagelijks bruikbaar in productie
- Niet in: klant-facing features, schaalbaarheid > 100 records

**v1 - in 3 maanden**
- Wat: complete must-have set + key integraties uit sectie 8 + auth/rollen uit sectie 9
- Voor wie: alle gebruikersgroepen uit sectie 2
- Doel: volwassen genoeg om mee naar buiten te treden (klanten, externe stakeholders)
- Niet in: alles uit sectie 5 (out-of-scope)

Kernvragen aan de gebruiker:
1. Kloppen deze drie horizonten? Of wijkt jouw situatie af?
2. Heb je een harde deadline ergens (klant-demo, kwartaal-doel, audit)?
3. Welke fase moet zeker af zijn vóór die deadline?

##### Sectie 13 - Open vragen + aannames (afronding)

Sluit het interview af door samen met de gebruiker door alle open vragen en aannames te lopen die je gedurende blok A, B en C hebt verzameld. Per item:
- **Open vraag** → expliciet benoemen, en bepalen: ofwel direct beantwoorden, ofwel parkeren voor v0.5, ofwel als risico noteren.
- **Aanname** → bevestiging vragen of bijstellen.

Lever op als twee genummerde lijsten:

```
Open vragen
1. Moet de app offline werken? → Geparkeerd voor v0.5, in v1 niet nodig.
2. ...

Aannames
1. Gebruiker heeft een moderne browser. → Bevestigd.
2. Er is geen meertaligheid nodig in v1. → Bevestigd.
3. ...
```

### Stap 6: Schrijven en opslaan

Gebruik het template uit `references/template-app-scoping.md` als skelet. Vul het met de uitkomsten uit pre-fill + interview.

Sla op als:
```
{scope}/Engineer/App-Scoping-{AppNaam}.md
```

Maak de `Engineer/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: app-scoping
bedrijf: <Naam>
app: <AppNaam>
status: scope-afgerond
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: E2
must-haves: <aantal>
nice-to-haves: <aantal>
out-of-scope: <aantal>
journeys: <aantal>
entities: <aantal>
integraties: <aantal>
rollen: <aantal>
tech-stack: <gekozen variant>
roadmap-mvp: <YYYY-MM-DD>
roadmap-v05: <YYYY-MM-DD>
roadmap-v1: <YYYY-MM-DD>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "revolutionair", "disruptief", "next-level", "game-changing". Feitelijk en menselijk.
- **Concreet > abstract.** Een specifiek scherm-element ("knop rechtsboven met label 'Nieuwe klant'") is sterker dan een vaag begrip ("UI element").
- **Geen em-dashes**. Gebruik komma's, haakjes, dubbele punten of losse zinnen.
- **Korte koppen** (3 tot 6 woorden) in eigen stijl.
- **PRD-stijl**: kort, feitelijk, in opsommingen waar het kan. Geen verhaaltjes, geen overwegingen die de bouwer al kent.
- **Eén bron van waarheid per sectie.** Geen herhaling van features in sectie 3 en 6 (sectie 3 = wat, sectie 6 = hoe doorlopen).
- **Bouwklare brief.** De vraag aan jezelf na het schrijven: "Kan een bouwer of Claude Code dit document lezen en zonder verdere vragen starten? Zo nee, welke sectie ontbreekt?"

### Stap 7: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** - `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw: `Engineer/App-Scoping-{AppNaam}.md` - v1.0 PRD, 13 secties, stack <X>, MVP-deadline <datum>"*.
2. **Tool-card bijwerken** - als `IT/AI-Tools/{AppNaam}.md` bestaat, update status naar "Scope-fase afgerond → klaar voor bouw" en voeg een verwijzing toe naar de scoping. Bestaat hij niet, vraag of de gebruiker er een wil (niet automatisch aanmaken zonder bevestiging).
3. **Daily** - als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat (Iwan-OS-conventie), log onder *Gedaan vandaag*.
4. **Scale-audit-suggestie** - als er een audit-rapport in `Directie/Research/` staat waar E2 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-links binnen SCALE:** S4 ICP (voor doelgroep), S10 SOPs (voor proces-aansluiting), S12 Toolstack (voor stack-precedenten), E1 Dashboard (als de app ook data toont), E3 Workflow (als de app deels orchestratie is), E4 Klantportaal (als de app deels klant-facing is).
- **Volgende stap = bouwen.** Stel concreet voor om een sessie te plannen: ofwel met Claude Code (de PRD is de eerste prompt), ofwel met een externe bouwer (de PRD is de brief), ofwel met een no-code-platform (de PRD is het briefing-document).
- **Levend document.** De PRD wordt geüpdatet wanneer scope verschuift. Markeer in het document zelf onderaan een sectie "Scope-wijzigingen" waar veranderingen tijdens de bouwfase worden gelogd.

## Belangrijke regels

- **Eén blok per beurt** in het interview (4 blokken: A Wat & waarom, B Scope, C Motorkap, D Bouw). Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaande PRD heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Genadeloos prioriteren.** Maximaal 5 must-haves in sectie 3, en sectie 5 (out-of-scope) krijgt expliciete aandacht. Een PRD zonder out-of-scope is een wensenlijst, geen plan.
- **Tech-stack passend bij MKB.** Stel default low-ops / low-cost stacks voor, motiveer waarom de gekozen variant past bij de schaal. Als de gebruiker een zwaardere stack wil (Java + Kubernetes), vraag waarom - kan zijn dat het terecht is, kan zijn dat het overengineering is.
- **Geen aannames over vault-structuur.** Werkt voor solopreneurs, multi-business vaults én klanten die net hun SCALE-skelet hebben opgezet. Geen hard-coded paden - alleen relatief binnen `{scope}`.
- **Respecteer de stem van de ondernemer.** Het PRD moet voelen alsof hij het zelf had kunnen schrijven, niet alsof er een tekstschrijver bovenop is gezet.
- **Geen marketing-trucjes.** Geen "imagine if...", geen rhetorische vragen. Recht voor zijn raap.
- **Bouwklaar of niet af.** Het PRD moet door een bouwer (mens of Claude Code) in 5 minuten gelezen kunnen worden en daarna direct gestart. Als je twijfelt of dat zou kunnen, stel de gebruiker nog één gerichte vraag voordat je opslaat.
- **Open vragen + aannames lopen mee.** Sectie 13 wordt gedurende alle blokken bijgewerkt. Aan het einde expliciet doorlopen met de gebruiker - niet stilletjes opnemen.
- **MVP is genadeloos klein.** De vuistregel: MVP in 1 week moet voor één gebruiker werken met 2 tot 3 features. Als de gebruiker iets groters wil als MVP, daag uit. Een te grote MVP is geen MVP.

## Voorbeeld-output

Zie [`references/template-app-scoping.md`](references/template-app-scoping.md) voor de exacte structuur die de skill oplevert.
