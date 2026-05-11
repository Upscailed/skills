---
name: workflow-pipeline
title: "Workflow Pipeline"
description: "Helpt een ondernemer in 60 tot 120 minuten een doorlopende workflow-pipeline te ontwerpen waarin meerdere bestaande automatiseringen (L1 tot en met L4) samenwerken als één gekoppelde keten. Dit is SCALE-stap E3 (Engineer): de overkoepelende architectuur waarin losse Make- of Zapier-flows, scripts, AI-skills en cron-jobs vervangen worden door één geordende pipeline met state-doorgift, event-bus, error-handling, retry-logica, observability en versiebeheer. De skill scant de bestaande automatiseringen uit Leverage/ (L1 roadmap, L2 rapportages, L3 mailflows, L4 finance) plus IT/Toolstack.md en IT/AI-Tools/, kiest een orchestratie-laag (n8n self-hosted voor MKB-default, Temporal voor code-first stateful, Inngest voor event-driven hosted, Airflow voor enterprise data-pipelines, of custom EventBridge-plus-queue-plus-workers), beschrijft per workflow trigger (event, cron, webhook, manual), input-schema, processing-stappen met sub-skills of tools, output-bestemming, exception-handling en escalatie-pad, en levert daarnaast een state-laag (Postgres, Redis, queue zoals BullMQ of SQS), een observability-laag (Sentry, eigen log-dashboard, OpenTelemetry-traces), versiebeheer-conventies (workflows behandelen als code in Git, niet als UI-config), en een migration-pad van losse no-code-flows naar geconsolideerde pipeline. Output is een Engineer/Workflow-Pipeline.md met high-level pipeline-diagram, per-workflow-spec, orchestratie-keuze met argumentatie, state-en-observability-plan, versionering-conventies, migration-stappen, eigenaars-tabel en review-ritme. De skill werkt vault-onafhankelijk: alleen relatieve paden binnen de bedrijfsscope. Activeer altijd wanneer iemand zegt: 'workflow ontwerpen', 'pipeline bouwen', 'pipeline architectuur', 'workflow architectuur', 'meerdere flows koppelen', 'orchestratie laag', 'multi-stap automatisering', 'flows aan elkaar knopen', 'end-to-end automatisering', 'event-bus opzetten', 'workflows als code', 'gap E3', 'E3 dichten in SCALE-audit', 'van Make naar geconsolideerd', 'losse Zaps consolideren', 'n8n self-hosted opzetten', 'Temporal gebruiken', 'Inngest event-driven', 'Airflow pipeline', 'mijn automatiseringen samenhangen', 'state doorgeven tussen flows', 'error-handling pipeline', 'observability automatiseringen', 'versie-beheer workflows', 'workflow-pipeline scopen voor klant'. Triggert ook bij iedere expliciete verwijzing naar E3, Engineer/Workflow-Pipeline.md, of vragen over hoe losse L-skill-uitkomsten samenhangen tot één geheel."
category: bouwen
tags: [scale-framework, e3, engineer, workflow, automatisering, orchestratie, pipeline, n8n, temporal, inngest, airflow, event-bus, mkb]
estimatedTime: "60 tot 120 minuten (1 sessie)"
version: "1.1.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Workflow Pipeline

## Doel

Helpt een ondernemer om in 60 tot 120 minuten zijn losse automatiseringen (Make-scenarios, Zapier-Zaps, n8n-flows, Python-scripts, AI-skills, cron-jobs) samen te brengen in **één geordende workflow-pipeline** met expliciete trigger-, input-, processing-, output-, error-handling-, state- en observability-laag. Output: één centraal document **`{scope}/Engineer/Workflow-Pipeline.md`**. Dit is SCALE-stap E3 (Engineer), het Engineer-niveau boven L1 tot en met L4.

*Waarom dit fundamenteel is.* Een MKB-bedrijf dat L1 tot en met L4 doorloopt eindigt met 10 tot 30 losse automatiseringen verspreid over Make, Zapier, scripts en AI-skills. Elke flow werkt op zichzelf, maar er is geen overkoepelende architectuur. Resultaat: dubbele triggers, datakwaliteit-drift tussen systemen, geen zicht op wat draait, geen retry-logica wanneer een schakel faalt, geen state-doorgift wanneer een proces meerdere flows nodig heeft, en geen versie-beheer wanneer een flow stilletjes verandert. E3 lost dat op door één pipeline te ontwerpen waarin de flows samenwerken als één keten met expliciete spelregels.

*Waarom een orchestratie-laag, geen losse flows.* Een Make-scenario kent geen andere Make-scenarios. Een Zapier-Zap kent geen Python-script. Een AI-skill weet niet wat de scheduled task ernaast deed. Zonder orchestratie-laag wordt elke koppeling tussen twee flows een eigen probleem: webhook-URL hier, polling-cron daar, copy-paste van state via Google Sheets als tussenstation. Een orchestratie-laag (n8n, Temporal, Inngest, Airflow of custom) centraliseert dat: één plek waar workflows starten, state doorgegeven wordt, fouten gevangen, retries afgehandeld, logs verzameld, versies vastgelegd.

*Waarom E3 niet hetzelfde is als L1 tot en met L4.* L-skills bouwen losse automatiseringen, één proces tegelijk. E3 is **niveau hoger**: hoe knopen we die losse stukken aan elkaar zodat ze samen een keten vormen, met expliciete state, observability en versionering. L1 levert de roadmap voor automatiseringen, L2 tot en met L4 bouwen specifieke flows. E3 architecteert het systeem waarin die flows leven.

*Waarom MKB eerst losse flows, dan pipeline.* Een pipeline ontwerpen voordat er flows zijn is academisch. De skill vereist daarom minimaal **3 productie-stabiele flows** (uit L1 quick-wins of L2 tot en met L4 deliveries) als input. Zonder die basis stuurt de skill terug naar L1. De pipeline is een consolidatie-stap, geen vertrekpunt.

*Waarom workflows als code.* Een Make-scenario in de UI is onzichtbaar voor versie-beheer. Een wijziging is direct live, zonder review en zonder rollback-pad. Een MKB-bedrijf dat pipeline-niveau bereikt moet workflows behandelen als code: gedefinieerd in een bestand of repository, met expliciete versies, een review-stap voor wijzigingen, en de mogelijkheid om terug te rollen. Niet alle orchestratie-tools ondersteunen dit standaard. De skill weegt de tools expliciet op dit criterium.

Resultaat: SCALE-audit E3 springt van rood of geel naar groen, er ligt één centraal `Engineer/Workflow-Pipeline.md` met diagram en specs, en de ondernemer weet welke orchestratie-laag past, welke migratie-stappen nodig zijn, en wie elke workflow monitort.

## Twee toepassingsdomeinen

Deze skill werkt voor twee soorten pipelines. Bij start vraagt de skill expliciet welk domein van toepassing is (A of B) en past de terminologie en deliverables daarop aan.

- **A. Software-orchestratie:** scripts, n8n, Zapier, Make, API-koppelingen, AI-skills en cron-jobs. Doel: bestaande automatiseringen consolideren in één keten met state, retries, observability en versionering in Git.
- **B. Operationele dienstverlening-pipeline:** een handmatige werkflow (bijvoorbeeld fotografie-bewerking, advies-traject, productie-proces, klant-onboarding) gemodelleerd als Kanban-board met fases, WIP-limits, exit-criteria per fase en duidelijke handover-momenten. Geen scripts, geen orchestratie-tool, alleen proces-discipline.

Bij domein B vervalt de orchestratie-tool-keuze (blok 3) en komt er in plaats daarvan een Kanban-board-spec (fases, WIP-limits, exit-criteria, owner per fase, doorlooptijd-doel per fase). De andere blokken blijven inhoudelijk, maar "trigger" wordt "instroom-criterium", "exception-handling" wordt "escalatie-procedure", "retry" wordt "rework-loop".

## De zes pipeline-onderdelen

Elke pipeline-spec heeft deze zes onderdelen. De skill werkt ze één voor één uit.

| # | Onderdeel | Wat erin staat |
|---|---|---|
| **1** | **Pipeline-overzicht** | High-level diagram (ASCII) van alle gekoppelde workflows binnen het bedrijf, plus welke triggers ze starten en welke data tussen hen stroomt. |
| **2** | **Per workflow** | Trigger (event, cron, webhook, manual), input-schema, processing-stappen (chain van skills en tools), output-bestemming, exception-handling, retry-strategie. |
| **3** | **Orchestratie-laag** | Keuze tussen n8n, Temporal, Inngest, Airflow of custom (EventBridge-plus-queue-plus-workers). Met argumentatie waarom deze keuze past bij dit bedrijf, dit team en deze schaal. |
| **4** | **State en observability** | Waar state bijgehouden wordt (Postgres, Redis, BullMQ, SQS), hoe elke run gelogd wordt, hoe failures gemonitord worden (Sentry, eigen log-dashboard, OpenTelemetry-traces). |
| **5** | **Versionering** | Workflows als code in Git: repository-structuur, branch-strategie, review-stappen, deployment-pad, rollback-procedure. |
| **6** | **Migration-pad** | Van losse Make-, Zapier-, n8n- en script-flows naar geconsolideerde pipeline. Per bestaande flow: blijft, migreert, vervangen, of uitgefaseerd. |

## De vijf orchestratie-opties (keuze-matrix)

De skill kiest één primair en mogelijk één secundair. Geen aanbeveling vooraf, alleen op basis van de bedrijfs-context.

| Tool | Type | Sterk in | Zwak in | Past bij | Niet voor |
|---|---|---|---|---|---|
| **n8n** | Visueel, self-hosted (of cloud) | Snel starten, veel sjablonen, low-code, vrij goedkoop. Workflows als JSON exporteerbaar (dus versie-baar). | Stateful long-running flows; schaalbaarheid boven duizenden runs per dag. | MKB-default, 3 tot 20 workflows, tot 5.000 runs per dag, geen dev-team. | Mission-critical realtime, > 10.000 runs per dag, complexe state-machines. |
| **Temporal** | Code-first, stateful | Lange flows met retries en checkpoints, code-review-friendly, doorgaande state weken-tot-maanden. | Steile leercurve, vereist dev-team. | Scale-up met dev-resources, processen met stateful long-running stappen (klant-onboarding van weken, contract-cyclus van maanden). | Solopreneur zonder code, eenvoudige flows. |
| **Inngest** | Event-driven, hosted | Eenvoudige TypeScript- of Python-code, ingebouwde retries, sterk in event-fan-out, prijs schaalt met gebruik. | Vendor-lock-in op Inngest-cloud, minder visueel. | Tech-bedrijf met ontwikkelaar, event-zware workloads, snelle iteratie. | Niet-technische team, on-prem-eisen. |
| **Airflow** | Enterprise, batch-data | Data-pipelines met grote ETL-jobs, dependencies tussen DAG-nodes, gevestigde standaard in data-engineering. | Overkill voor de meeste MKB, complexe operations, niet event-driven van nature. | Bedrijf met grote data-flows (analytics, BI, ML), dedicated data-engineer. | MKB zonder data-team, event-flows, real-time. |
| **Custom (EventBridge + queue + workers)** | Cloud-native, code | Maximale flexibiliteit, schaalt naar miljoenen events, integreert naadloos met AWS-stack. | Bouw- en onderhouds-werk volledig zelf, geen visuele tool, dev-team verplicht. | Scale-up of enterprise met cloud-team, specifieke schaal- of compliance-eisen. | MKB zonder dev-resources, eenvoudige consolidatie. |

**Default-aanbeveling voor Upscailed-doelgroep (MKB):** **n8n self-hosted op een DigitalOcean-droplet of Hetzner-VM**. Reden: visueel genoeg voor non-dev maar workflows als JSON exporteerbaar (dus versie-baar in Git), tot enkele duizenden runs per dag prima, prijs voorspelbaar, geen vendor-lock-in (open-source). Wijk af als het bedrijf evident in een andere categorie zit.

## Run-time introductie (toon aan gebruiker bij start)

Geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat.

```
┌──────────────────────────────────────────────────────────┐
│  WORKFLOW PIPELINE — SCALE-stap E3 (Engineer)             │
│  ~60-120 minuten · 1 sessie                               │
└──────────────────────────────────────────────────────────┘

  In 60 tot 120 minuten ontwerpen we jouw workflow-pipeline:
  de architectuur waarin meerdere bestaande flows (Make,
  Zapier, n8n, scripts, AI-skills) samenwerken als één
  keten met expliciete trigger-, state-, error- en
  observability-laag.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • Vooraf scan ik wat al in je vault staat:             │
  │      Leverage/ (L1 roadmap, L2/L3/L4 flows)             │
  │      IT/Toolstack.md (welke tools al gebruikt)          │
  │      IT/AI-Tools/ (skills en agents in productie)       │
  │      Operations/Processen/ (SOPs die de flows raken)    │
  │      Bestaande scheduled tasks en cron-jobs             │
  │  • Externe documenten welkom: n8n-workflow-JSON,        │
  │    Make-scenario-export, Zapier-overzicht, Temporal-    │
  │    workflow-code, GitHub-repo-link van scripts,         │
  │    screenshots van bestaande dashboards                  │
  │  • Sessie-flow (6 blokken):                             │
  │      [1] Pipeline-overzicht (high-level diagram)        │
  │      [2] Per workflow: trigger, input, processing,      │
  │          output, exceptions, retry                      │
  │      [3] Orchestratie-laag kiezen (n8n / Temporal /     │
  │          Inngest / Airflow / custom)                    │
  │      [4] State + observability ontwerpen                │
  │      [5] Versionering (workflows als code)              │
  │      [6] Migration-pad van losse flows naar pipeline    │
  │  • Output: Engineer/Workflow-Pipeline.md                │
  │  • Vereiste vooraf: minstens 3 productie-stabiele       │
  │    flows uit L1 / L2 / L3 / L4. Zonder die basis        │
  │    stuur ik terug naar L1 (`sop-automatiseren`).        │
  └────────────────────────────────────────────────────────┘

  Welke bestaande flows wil je consolideren? Som ze op of
  laat me ze ontdekken uit je vault. Heb je externe
  documenten klaar? n8n-JSON, Make-export, Zapier-lijst,
  GitHub-repo van scripts? Plak ze of link ze.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  WORKFLOW PIPELINE — E3 · 60-120 min · 1 sessie           │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Leverage/, Toolstack,
   │    (auto-discover)   │  AI-Tools, Operations/
   │                      │  Processen, scheduled
   │                      │  tasks, scripts
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  n8n-JSON, Make-export,
   │                      │  Zapier-lijst, Temporal-
   │                      │  code, GitHub-repo,
   │                      │  dashboard-screenshots
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Basis-check       │  Minstens 3 stabiele
   │                      │  flows? Zo niet, terug
   │                      │  naar L1.
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. 6 ontwerp-blokken │  [1] Pipeline-overzicht
   │                      │  [2] Per workflow
   │                      │  [3] Orchestratie-laag
   │                      │  [4] State + obs
   │                      │  [5] Versionering
   │                      │  [6] Migration-pad
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Schrijven +       │  Engineer/Workflow-
   │    opslaan           │  Pipeline.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Logging +         │  Changelog +
   │    vervolg-          │  cross-link naar
   │    suggesties        │  L1/L2/L3/L4/E1/E5/S10
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Workflow ontwerpen" / "pipeline bouwen" / "pipeline architectuur"
- "Workflow architectuur" / "meerdere flows koppelen"
- "Orchestratie laag" / "multi-stap automatisering"
- "Flows aan elkaar knopen" / "end-to-end automatisering"
- "Event-bus opzetten" / "workflows als code"
- "Gap E3" / "E3 dichten in SCALE-audit"
- "Van Make naar geconsolideerd" / "losse Zaps consolideren"
- "n8n self-hosted opzetten" / "Temporal gebruiken"
- "Inngest event-driven" / "Airflow pipeline"
- "Mijn automatiseringen samenhangen" / "state doorgeven tussen flows"
- "Error-handling pipeline" / "observability automatiseringen"
- "Versie-beheer workflows" / "workflow-pipeline scopen voor klant"

Triggert NIET wanneer:
- De gebruiker een **specifieke automatisering** wil bouwen (één flow, één proces) — gebruik dan **L1** (`sop-automatiseren`) voor de roadmap of **L2** (`auto-rapportage-setup`), **L3** (`mailflow-setup`), **L4** (`finance-automatisering`) voor specifieke bouw.
- De gebruiker **nog geen 3 productie-stabiele flows** heeft — terug naar L1 om eerst de roadmap af te ronden en quick-wins uit te voeren. E3 bouwt niet op niets.
- De gebruiker een **dashboard** wil bouwen (gebruik **E1** `dashboard-bouwer`); de pipeline kan een dashboard voeden, maar E1 bouwt het dashboard zelf.
- De gebruiker een **klantportaal of custom-app** wil scopen (gebruik **E2** `app-scoping` of **E4** `klantportaal-scoping`); E3 koppelt automatiseringen, E2 en E4 leveren een eigen product.
- De gebruiker een **kennisbank** wil organiseren (gebruik **E5** `kennisbank-organizer`); de pipeline kan een kennisbank voeden, maar E5 ontwerpt de kennisbank zelf.
- De SOPs **nog niet stabiel** zijn (geen L1-roadmap, geen 3 cycli handmatig per proces) — eerst terug naar S10 en L1.

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de pipeline ontworpen moet worden. Maak **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Operations/`, `Leverage/`, `Engineer/`, `IT/` direct onder de vault-root).
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Operations/`, `Bedrijven/Naam/Leverage/`, `Bedrijven/Naam/Engineer/`, etc.).
- Een **fresh SCALE-skelet** (output van `os-builder`) waar `Leverage/` en `Engineer/` mogelijk al bestaan.

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze pipeline voor is?
2. Wat is het **pad naar de bedrijfs-root**? (De huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken".)
3. **Welk toepassingsdomein** (A of B)? A = software-orchestratie (scripts, n8n, Zapier, API-koppelingen). B = operationele dienstverlening-pipeline (handmatige werkflow als Kanban-board met fases, WIP-limits en exit-criteria, denk aan fotografie-bewerking, advies-traject, productie-proces). Bij twijfel: omschrijf in één zin het proces, dan stel ik het domein voor. Het domein bepaalt de terminologie en welke blokken in stap 5 aan bod komen.

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Leverage/`-map. Bevestig de gevonden scope en het gekozen domein voordat je doorgaat.

Controleer:
- Of `{scope}/Leverage/` bestaat en gevuld is. **Geen Leverage/ of leeg → stop en stuur door naar L1 (`sop-automatiseren`).** E3 vereist L1 als input.
- Of `{scope}/Engineer/` al bestaat. Bestaat niet → wordt aangemaakt bij opslag (stap 6). Bestaat al → toon kort wat erin staat.
- Of er een bestaand `Engineer/Workflow-Pipeline.md` is. Bestaat al → toon hem en vraag of de sessie **iteratie** (bestaande pipeline-spec bijwerken) of **nieuwe versie** (oude archiveren als `Workflow-Pipeline - archief YYYY-MM-DD.md`) is.

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: alleen relatieve paden binnen de bedrijfs-root.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Leverage/SOP-Automatisering-Roadmap.md` | L1-roadmap met geïdentificeerde automatiseringen, quick-wins, medium, large. Bepaalt welke flows kandidaat zijn voor de pipeline. |
| `Leverage/Auto-Rapportages/` (als bestaat) | L2-rapportages die gepland draaien. |
| `Leverage/Mailflows/` (als bestaat) | L3-mailflows die getriggerd worden door events. |
| `Leverage/Finance-Automatiseringen/` (als bestaat) | L4-finance-flows (factuur, PSD2, BTW). |
| `IT/Toolstack.md` | Welke tools het bedrijf gebruikt — bepaalt welke orchestratie-laag realistisch is en welke connectors al beschikbaar zijn. |
| `IT/AI-Tools/*.md` | Lijst AI-tools, hun status (Idee / Bouw / Test / Productie), waar de code staat (vaak `~/AI - Projecten/...`). |
| `IT/Skills/` | Bestaande skills die als sub-stap in een workflow kunnen optreden (zoals `daily-briefing`, `morning-brief`, custom scheduled-task-skills). |
| `Operations/Processen/*.md` | SOPs die de flows raken. Bepaalt welke processen worden gedekt door welke workflow. |
| `Operations/Processen/README.md` | SOP-index. |
| `HR/Team.md` | Mogelijke owners per workflow (mens-reviewer of escalatie-pad). |
| `Directie/00 - Overzicht.md` | Bedrijfsfase (start-up, scale-up, gevestigd). Bepaalt welke orchestratie-laag past. |
| `Directie/Changelog.md` | Welke automatiseringen recent gewijzigd zijn — signaal voor stabiliteit. |
| `Engineer/` (als bestaat) | Eerdere engineer-werk: dashboard-specs (E1), app-scopes (E2), klantportaal-scopes (E4), kennisbank-organisatie (E5). |

Per gevonden bron: korte interne aantekening welke workflow het raakt, welke trigger het gebruikt, welke tool, en wie owner is.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Werk met wat er is. Maar als `Leverage/` leeg is of geen L1-roadmap aanwezig, **stop** en stuur door naar L1.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. E3-specifieke bronnen die vaak goud waard zijn:

- **n8n-workflow-JSON-exports** (een of meer workflows die al draaien)
- **Make-scenario-export** (Blueprint-JSON of screenshots van actieve scenarios)
- **Zapier-overzicht** (lijst van actieve Zaps, eventueel met steps)
- **Temporal-workflow-code** (TypeScript- of Python-bestanden)
- **Inngest-functies** (TypeScript-handlers)
- **Airflow-DAGs** (Python-bestanden)
- **GitHub-repo-link** van eigen scripts of orchestratie-code
- **AWS Lambda-functies** of **Cloudflare Workers** (lijst plus rol)
- **Cron-jobs** of scheduled tasks (volledige crontab of equivalent)
- **MCP-servers** die al draaien
- **Dashboard-screenshots** van bestaande logs of observability-stacks (Sentry, Grafana, DataDog)
- **Architectuur-schetsen** die de gebruiker al heeft (handmatige tekeningen, Miro-boards, Excalidraw)
- **Eerdere mislukte orchestratie-pogingen** (heel waardevol)

Concrete vraag aan gebruiker:
> "Heb je externe documenten of bronnen waaruit ik kan putten? n8n-workflow-JSON-exports, Make-scenario-exports, Zapier-overzicht, Temporal- of Inngest-code, een GitHub-repo, AWS Lambda-lijst, een crontab, MCP-servers die draaien, dashboard-screenshots, of architectuur-schetsen? Plak ze, link ze of upload — hoe meer ik weet wat al loopt, hoe scherper de pipeline-spec wordt."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen.
- **JSON of code**: lees de inhoud, vat samen wat het doet, welke trigger, welke output, welke data het verwerkt.
- **Screenshot**: lees de stappen visueel en koppel aan workflows.
- **Architectuur-schets**: behandel als richtinggevende input voor blok 1 (pipeline-overzicht).

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Basis-check (minstens 3 stabiele flows)

Voordat de pipeline ontworpen kan worden: check of er een werkbare basis is.

Vraag of bevestig:
1. **Hoeveel automatiseringen draaien er nu productie-stabiel** (een maand of langer foutloos)? Som ze op uit de vault-scan en eventueel externe bronnen.
2. **Welke L-skills zijn afgerond?** L1-roadmap aanwezig? L2 tot en met L4 deliveries gedaan?
3. **Welke flows zijn experimenteel** of nog in test? Die horen nog niet in de pipeline; eerst naar productie.

Minimum-eis voor E3: **3 productie-stabiele flows**. Minder → terug naar L1 om de roadmap af te ronden en quick-wins uit te voeren.

Bij twijfel over wat "stabiel" is: vraag of de flow een **maand foutloos** heeft gedraaid. Zo niet, dan eerst stabiliseren.

Bevestig met de gebruiker welke flows in deze pipeline-sessie meegaan.

### Stap 5: Zes ontwerp-blokken

**Kernregel:** behandel **één blok per beurt**. Wacht op antwoord, dan pas door. Per blok deliver je een ingevuld stuk dat in de output-md komt.

#### Blok 1 — Pipeline-overzicht

Lever een **high-level diagram** in ASCII waar alle workflows in zichtbaar zijn, met hun triggers en de data-stromen tussen hen.

Voorbeeld-structuur:

```
              ┌───────────────────────────────┐
              │  EXTERNE TRIGGERS              │
              │  - Calendly webhook            │
              │  - Stripe webhook              │
              │  - Inbound email (Brevo)       │
              └───────────┬───────────────────┘
                          ▼
              ┌───────────────────────────────┐
              │  ORCHESTRATIE-LAAG (n8n)       │
              │                                │
              │  Workflow A: Lead-intake       │
              │  Workflow B: Onboarding        │
              │  Workflow C: Factuur-cyclus    │
              │  Workflow D: Klant-retentie    │
              └───────────┬───────────────────┘
                          ▼
              ┌───────────────────────────────┐
              │  STATE-LAAG                    │
              │  Postgres (klant-records)      │
              │  Redis (run-state)             │
              │  BullMQ (queue)                │
              └───────────┬───────────────────┘
                          ▼
              ┌───────────────────────────────┐
              │  OUTPUT-BESTEMMINGEN           │
              │  - Moneybird (facturen)        │
              │  - Brevo (mailings)            │
              │  - Slack (notificaties)        │
              │  - Notion (klant-records)      │
              └────────────────────────────────┘
```

Vraag de gebruiker:
1. Welke **externe triggers** starten flows? (Webhooks, scheduled events, manuele triggers.)
2. Welke **workflows** moeten in de pipeline samenkomen? (Aansluiten op blok 2.)
3. Welke **output-bestemmingen** ontvangen data uit de pipeline?

Lever het diagram terug en vraag bevestiging voordat je doorgaat naar blok 2.

#### Blok 2 — Per workflow

Per workflow uit blok 1: leg in een tabel vast wat de trigger, input, processing-stappen, output, exception-handling en retry-strategie zijn.

Behandel **één workflow per beurt** als er meerdere zijn. Wachten op antwoord per workflow, dan pas door.

Per workflow:

| Aspect | Waarde |
|---|---|
| **Naam** | Bv. "Lead-intake" |
| **Trigger** | Event (Calendly webhook), cron (dagelijks 09:00), webhook URL, manueel via UI, of inbound (mail-naar-webhook). |
| **Input-schema** | Lijst velden die binnenkomen. Bv. `{naam, email, telefoon, datum, dienst}`. |
| **Processing-stappen** | Geordende lijst sub-stappen. Per stap: tool, skill of API-call, met korte beschrijving. Bv. *1. Verrijk lead met enrichment-API → 2. Maak CRM-record in HubSpot → 3. Stuur welkomstmail via Brevo → 4. Plan opvolgmail over 3 dagen.* |
| **Output-bestemming** | Waar gaat data heen na de laatste stap? CRM-record bijgewerkt, mailflow gestart, dashboard ververst, Slack-notificatie. |
| **Exception-handling** | Wat gebeurt er als een stap faalt? Notificatie naar wie? Retry hoeveel keer? Dead-letter-queue? Fallback-pad? |
| **Retry-strategie** | Aantal retries, backoff-strategie (lineair, exponentieel), maximale runtime, time-out per stap. |
| **State-doorgift** | Welke state moet behouden blijven tussen stappen? (Klant-ID, run-ID, idempotency-key, scratchpad-veld.) |
| **Idempotency-key** | Hoe wordt dubbele verwerking voorkomen? (Calendly-event-ID, Stripe-payment-ID, eigen UUID.) |
| **Verwachte run-tijd** | Hoeveel seconden of minuten per run? |
| **Verwachte run-frequentie** | Per dag, per uur, per week. |
| **Owner monitoring** | Wie monitort dat deze workflow blijft draaien? |
| **Owner escalatie** | Wie krijgt notificatie als hij faalt? |

Sluit per workflow af met **drie regels samenvatting**: trigger, kern-output, owner.

#### Blok 3 — Orchestratie-laag kiezen

Op basis van de info uit blok 1 en 2: kies één primaire orchestratie-laag en eventueel een secundaire voor specifieke workflows.

Werk de keuze-matrix uit (zie bovenaan deze skill) en bepaal per criterium hoe het bedrijf scoort:

| Criterium | Score voor dit bedrijf |
|---|---|
| **Aantal workflows** | {Klein < 5 / Medium 5-20 / Groot > 20} |
| **Runs per dag** | {Tot 1.000 / 1.000-5.000 / 5.000-50.000 / > 50.000} |
| **Dev-resources** | {Geen / Solopreneur die kan coderen / Klein dev-team / Dedicated platform-team} |
| **Self-hosted bereidheid** | {Nee, alleen cloud-services / Ja, comfortabel met VM / Voorkeur voor on-prem} |
| **State-complexiteit** | {Eenvoudig, fire-and-forget / Medium, doorgift tussen stappen / Hoog, long-running weken/maanden} |
| **Visueel vs code** | {Voorkeur visueel / Voorkeur code / Combinatie} |
| **Bestaand toolingsstack** | {Heeft Make / Zapier / n8n / niets} |

Op basis daarvan: primair {Tool}, secundair {Tool of n.v.t.}.

Lever de keuze terug met **drie regels argumentatie**: waarom deze tool, welk alternatief afgevallen, wat het concrete migratie-pad globaal is.

**Default-aanbeveling voor MKB:** n8n self-hosted. Wijk af wanneer:
- Bedrijf is een tech-bedrijf met dev-team → overweeg Inngest of Temporal.
- Bedrijf heeft grote data-pipelines en data-engineer → Airflow.
- Bedrijf is enterprise met AWS-stack en platform-team → custom (EventBridge + queue + workers).

#### Blok 4 — State en observability

Op basis van de gekozen orchestratie-laag en het type workflows: ontwerp de state- en observability-laag.

**State-laag:**

| Aspect | Keuze | Argumentatie |
|---|---|---|
| **Run-state opslag** | Postgres / Redis / orchestratie-tool-intern (n8n DB, Temporal) | {Per use-case verschillend; default Postgres voor lang-leveende state, Redis voor snelle korte-state.} |
| **Queue** | BullMQ (Redis) / SQS / RabbitMQ / orchestratie-tool-intern | {n8n heeft eigen queue; bij custom: BullMQ voor MKB-context.} |
| **Idempotency-store** | Postgres-tabel met UUID-uniqueness / Redis SET / orchestratie-tool-intern | {Voorkomt dubbele verwerking van dezelfde event-ID.} |
| **Schemaversies** | Per workflow een input- en output-schema (JSON Schema of Pydantic / Zod), opgeslagen in Git. | {Voorkomt dat workflow A een veld stuurt dat workflow B niet meer kent.} |
| **Retentie** | Hoe lang blijven run-records bewaard? (30 dagen, 1 jaar, oneindig.) | {AVG-vereisten meewegen.} |

**Observability-laag:**

| Aspect | Keuze | Argumentatie |
|---|---|---|
| **Error-tracking** | Sentry / Highlight / eigen | {Default Sentry voor MKB-context, gratis tier dekt veel.} |
| **Logs** | Orchestratie-tool-intern (n8n logs) / Loki / CloudWatch / eigen log-dashboard | {Default tool-intern, mits ondersteund.} |
| **Traces** | OpenTelemetry naar Honeycomb / Tempo / DataDog / nog niet nodig | {Pas relevant boven 1.000 runs per dag of bij multi-step debug-noodzaak.} |
| **Metrics** | Prometheus + Grafana / DataDog / nog niet nodig | {Pas relevant bij dedicated platform-team.} |
| **Alerting** | Slack / email / PagerDuty | {Default Slack-kanaal voor MKB, PagerDuty pas bij 24/7-stack.} |
| **Run-dashboard** | Orchestratie-tool-eigen UI / eigen dashboard via E1 / extern | {n8n heeft executions-tab; bij eigen dashboard cross-link naar E1.} |
| **Audit-log** | Wie startte welke workflow, wie wijzigde welke versie | {AVG-vereisten meewegen.} |

Lever de twee tabellen terug en sluit af met een **failure-scenario-overzicht**: wat zien we, wie wordt genotificeerd, wie repareert, wat is fallback voor de klant.

#### Blok 5 — Versionering (workflows als code)

Werk de versie-beheer-aanpak uit. Default: **workflows als code in Git**.

| Aspect | Keuze | Argumentatie |
|---|---|---|
| **Repository-locatie** | GitHub / GitLab / Bitbucket | {Default GitHub voor MKB.} |
| **Repository-structuur** | `workflows/` map per workflow met JSON of code, `schemas/` voor input- en output-schemas, `docs/` voor README en runbooks, `tests/` voor unit-tests waar mogelijk. | {Standaardiseert vindbaarheid.} |
| **Branch-strategie** | `main` is productie, feature-branches per wijziging, PR-review verplicht | {Voorkomt directe live-wijzigingen.} |
| **Workflow-formaat** | n8n: JSON-export per workflow, gecommit in Git. Temporal / Inngest / Airflow: native code. Custom: eigen DSL of code. | {Per tool verschillend.} |
| **CI / CD** | GitHub Actions die syntax-check doet, bij merge naar `main` automatisch deployt naar orchestratie-laag | {Pas nodig bij > 5 workflows.} |
| **Versie-tagging** | Semver-light (`v1.0.0`, `v1.1.0`, `v2.0.0`) per workflow, in JSON of code | {Zoals Upscailed-skills.} |
| **Rollback-procedure** | Git-revert + redeploy of orchestratie-tool-eigen versie-historie | {n8n heeft executions-history en versie-rollback ingebouwd.} |
| **Review-stap** | Verplichte PR-review voor wijzigingen, ook bij self-review (commit-msg discipline) | {Voorkomt onbedoelde live-wijzigingen.} |
| **Documentatie per workflow** | README.md per workflow-map met doel, trigger, input, output, owner, runbook (wat te doen bij failure) | {Onmisbaar voor opvolger of vakantie-vervanger.} |

Sluit blok 5 af met een **eerste-stap-actie**: maak deze week een Git-repo `{bedrijf}-workflows`, commit één bestaande workflow als JSON of code, schrijf de README.md, deploy automatisch terug naar de orchestratie-laag. Dit is de proof-of-concept voor de hele versie-aanpak.

#### Blok 6 — Migration-pad

Per bestaande flow (uit vault-scan en externe bronnen): bepaal of hij **blijft** waar hij is, **migreert** naar de pipeline, **vervangen** wordt door een nieuwe pipeline-workflow, of **uitgefaseerd** wordt.

Lever op als tabel:

| Huidige flow | Tool | Trigger | Beslissing | Nieuwe locatie of opmerking | Deadline |
|---|---|---|---|---|---|
| Calendly → Make → Moneybird | Make | Webhook | Migreert | Workflow A "Lead-intake" in n8n | Week 2 |
| Stripe-webhook → Python-script → Brevo | Python op VPS | Webhook | Vervangen | Wordt onderdeel van Workflow C "Factuur-cyclus" in n8n | Week 4 |
| Wekelijkse rapportage-cron | Shell-script op VPS | Cron | Blijft | Te klein om te migreren, blijft losse cron | n.v.t. |
| Zapier mail-to-sheet | Zapier | Inbound mail | Uitgefaseerd | Niet meer gebruikt, deactiveren | Week 1 |

**Volgorde-regel:** uitfaseren eerst (week 1), dan migreren (week 2-6), dan vervangen (week 4-12). Nieuwe workflows pas bouwen nadat een eerste workflow in n8n stabiel draait — niet alles tegelijk migreren.

Geef per beslissing een korte motivatie (één regel).

Sluit blok 6 af met een **migratie-roadmap in drie horizonten**:

| Horizon | Wat |
|---|---|
| Week 1-2 | Orchestratie-laag opzetten (n8n self-hosted), Git-repo `{bedrijf}-workflows` aanmaken, eerste workflow migreren als proof-of-concept. |
| Week 3-6 | Workflows een voor een migreren. Per migratie: side-by-side run met oude flow gedurende minstens 1 week, dan oude flow deactiveren. |
| Week 7-12 | Resterende workflows migreren of vervangen. Uitgefaseerde flows opruimen. Dashboard (E1) integreren als monitoring-laag. |

### Stap 6: Schrijven en opslaan

Gebruik het template uit `references/template-workflow-pipeline.md` als skelet voor de pipeline-spec. Vul het met de uitkomsten uit de zes blokken.

Sla op als:
```
{scope}/Engineer/Workflow-Pipeline.md
```

Maak de `Engineer/`-map aan als die nog niet bestaat. **Belangrijk**: dit pad ligt op afdelings-niveau (niet onder `Leverage/`), omdat Engineer een eigen SCALE-fase is met meerdere skills (E1 tot en met E6) die hier landen.

Frontmatter (verplicht):
```yaml
---
type: workflow-pipeline
bedrijf: <Naam>
scope: <Pad>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: E3
orchestratie-laag: <n8n / Temporal / Inngest / Airflow / custom>
aantal-workflows: <N>
state-opslag: <Postgres / Redis / orchestratie-intern>
observability-stack: <Sentry / eigen / DataDog / ...>
versionering: <Git-repo-URL>
migratie-deadline: <YYYY-MM-DD>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "naadloze pipeline", "perfecte orchestratie", "ongekende schaalbaarheid". Feitelijk en menselijk.
- **Concreet > abstract.** Tool-namen letterlijk ("n8n", niet "een orchestratie-laag"). Run-frequenties en run-tijden in concrete getallen.
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Tabellen voor de blokken**: pipeline-overzicht (diagram), per workflow (spec-tabel), orchestratie-keuze (scoringsmatrix), state (tabel), observability (tabel), versionering (tabel), migration (tabel).
- **Per workflow een eigen subsectie**, niet alles in één lange tabel mengen.
- **High-level diagram in ASCII** bij blok 1, plus eventueel een tweede diagram bij blok 4 (state + observability) als de gebruiker het verheldert.

### Stap 7: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw: `Engineer/Workflow-Pipeline.md` v1.0 — N workflows in {orchestratie-tool}, M migratie-stappen, eerste deadline {datum}"*.
2. **Bijgewerkte verwijzingen** — als L1-roadmap (`Leverage/SOP-Automatisering-Roadmap.md`) automatiseringen bevat die nu in de pipeline landen, voeg dan onderaan die roadmap een sectie toe met *"Geconsolideerd in `Engineer/Workflow-Pipeline.md` op YYYY-MM-DD"* plus een lijst van welke flows zijn meegenomen. Eén regel per flow.
3. **Daily** — als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (conventie geldt in Iwan's OS, niet alle vaults hebben hem), log dan onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
4. **Scale-audit-suggestie** — als er een audit-rapport in `Directie/Research/` staat waar E3 op rood of geel staat: stel voor de audit opnieuw te draaien zodat de score springt.

Vervolgsuggesties die je altijd noemt:

- **Eerste workflow migreren — deze week:** stel voor om de orchestratie-laag op te zetten (n8n self-hosted), de Git-repo aan te maken, en de eerste workflow als JSON in te checken. Niet alle workflows tegelijk; één om te bewijzen dat het werkt.
- **Specifieke L-skills voor sub-bouw:** als er nog automatiseringen in de pipeline zitten die nog niet gebouwd zijn, stel voor om de juiste L-skill te draaien:
  - **L1** (`sop-automatiseren`) — voor brede roadmap-iteratie
  - **L2** (`auto-rapportage-setup`) — voor rapportage-flows
  - **L3** (`mailflow-setup`) — voor mailflows
  - **L4** (`finance-automatisering`) — voor finance-flows
- **Dashboard (E1):** stel voor om met **E1** (`dashboard-bouwer`) een monitoring-laag bovenop de pipeline te bouwen — één plek waar de eigenaar ziet welke runs draaien, welke faalden, welke wacht-rij heeft.
- **Kennisbank (E5):** stel voor om met **E5** (`kennisbank-organizer`) de workflow-documentatie en runbooks centraal te organiseren — als de pipeline groeit, groeit ook de behoefte aan vindbare documentatie per workflow.
- **SOPs onderbouwen (S10):** als een workflow een proces ondersteunt dat nog niet als SOP bestaat, stel voor met **S10** (`sop-interviewer`) dat proces vast te leggen. Een workflow zonder onderliggende SOP is een gokje.
- **Toolstack updaten (S12):** als er nieuwe tools in de pipeline staan (n8n, Temporal, Sentry, Postgres) die nog niet in `IT/Toolstack.md` staan, stel voor `toolstack-inventarisatie` (S12) opnieuw te draaien.
- **Review-ritme:** een pipeline-spec veroudert sneller dan een SOP. Stel voor om de pipeline-spec **maandelijks bij te werken** met wat gebouwd is, wat gemigreerd, wat is uitgefaseerd. Suggesteer een check op de eerste maandag van elke maand, gekoppeld aan de L1-roadmap-review.

## Belangrijke regels

- **Geen 3 stabiele flows, geen E3.** Een pipeline ontwerpen voordat er flows zijn is academisch. Minimaal 3 productie-stabiele flows (een maand foutloos) als input. Anders terug naar L1.
- **Eerst losse flows, dan pipeline.** L1 tot en met L4 leveren de bouwblokken. E3 consolideert ze. Niet andersom.
- **Eén blok per beurt** in de analyse. Niet alle 6 blokken tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Eén workflow per beurt** binnen blok 2. Per workflow de volledige spec invullen, dan pas naar de volgende.
- **Geen aannames over orchestratie-tool.** De keuze in blok 3 volgt uit de bedrijfs-context, niet uit een voorkeur. Default is n8n voor MKB, maar wijk af waar het past.
- **Workflows als code, niet als UI-config.** Elke workflow moet exporteerbaar zijn naar JSON of code, en in een Git-repo leven. UI-only is geen pipeline.
- **Idempotency verplicht.** Elke workflow moet een idempotency-key gebruiken zodat dubbele triggers niet leiden tot dubbele acties. Geen idempotency = wachtende crisis.
- **Owner verplicht per workflow.** Twee dimensies: wie monitort, wie escaleert. Geen owner = workflow gaat niet in productie.
- **Fallback verplicht.** Bij elke workflow vastleggen wat er gebeurt als hij faalt: notificatie, manueel pad, escalatie. Zonder fallback geen productie.
- **Side-by-side migratie.** Bij migratie van oude naar nieuwe flow: minstens 1 week parallel draaien, output vergelijken, dan pas oude flow deactiveren. Geen big-bang-migratie.
- **Drie horizonten in migration-pad.** Week 1-2 fundament, week 3-6 migreren, week 7-12 opruimen en uitbreiden. Niet alles in week 1 willen.
- **Bestaande tools eerst.** Stel geen nieuwe orchestratie-tool voor als de bestaande stack volstaat. Lees `IT/Toolstack.md` actief.
- **Tool-namen letterlijk.** "n8n", "Temporal", "Inngest", "Airflow", "BullMQ", "Sentry", "Postgres" — niet "een orchestratie-tool" of "een queue".
- **Geen aannames over vault-structuur.** Werkt voor solopreneurs met een single-business vault, voor multi-business vaults, en voor versgemaakte SCALE-skeletten. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Cross-link de L- en E-skills.** L-skills bouwen, E3 consolideert, E1 visualiseert, E5 documenteert. Bij oplevering altijd de cross-links neerzetten.
- **Frequentie van review:** maandelijkse update van de pipeline-spec, gekoppeld aan L1-roadmap-review.

## Voorbeeld-output

Zie [`references/template-workflow-pipeline.md`](references/template-workflow-pipeline.md) voor de exacte structuur die de skill oplevert: frontmatter, samenvatting, pipeline-diagram, per-workflow-spec (10 velden), orchestratie-keuze met scoringsmatrix, state-laag, observability-laag, versionering-aanpak, migration-tabel met deadlines, eigenaars-tabel, review-ritme, en cross-link-blok naar L1/L2/L3/L4/E1/E5/S10/S12.

## Changelog

### 1.1.0 — 2026-05-11

- Twee toepassingsdomeinen onderscheiden: software-orchestratie en operationele Kanban-pipeline. Domeinkeuze in stap 1.

### 1.0.0 — initiele release

- Eerste productie-versie.
