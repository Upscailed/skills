---
name: scale-engineer
title: "SCALE Engineer"
description: "De Engineer-laag van het SCALE-framework van Upscailed: maatwerk bouwen voor het bedrijf. Deze skill bundelt zes bouw-modules in één router: E1 Dashboard Bouwer (een werkend custom dashboard bouwen op eigen data, van A2-ontwerp naar live app), E2 App Scoping (een app-idee of interne tool doorploegen tot één bouwklaar PRD in 13 secties), E3 Workflow Pipeline (losse automatiseringen koppelen tot één geordende pipeline met orchestratie, state en observability), E4 Klantportaal Scoping (een klant-facing self-service-portaal scopen en architecteren, inclusief auth, AVG en stack-keuze), E5 Kennisbank Organizer (een doorzoekbare interne kennisbank opzetten met eigenaars, update-cadans en optionele RAG-laag) en E6 Skill Builder Coach (de ondernemer coachen bij het zelf bouwen van een eigen, bedrijfsspecifieke skill). Activeer wanneer iemand zegt: 'dashboard bouwen', 'mission control bouwen', 'live dashboard met echte data', 'KPI-dashboard met API-data', 'custom dashboard ontwikkelen', 'A2 ontwerp gaan bouwen', 'app scopen', 'app-idee uitwerken', 'PRD maken', 'brief schrijven voor Claude Code', 'brief voor developer', 'interne tool ontwerpen', 'MVP scope', 'workflow ontwerpen', 'pipeline bouwen', 'flows aan elkaar knopen', 'orchestratie laag', 'losse Zaps consolideren', 'n8n self-hosted opzetten', 'end-to-end automatisering', 'klantportaal scopen', 'self-service portal', 'klant-login bouwen', 'mijn-omgeving voor klanten', 'white-label portaal', 'kennisbank opzetten', 'interne wiki bouwen', 'second brain voor het bedrijf', 'AI laten zoeken in mijn docs', 'RAG bouwen op bedrijfskennis', 'ik wil een eigen skill bouwen', 'help me een skill maken', 'hoe schrijf ik een SKILL.md', 'AI op maat voor mijn proces', 'skill voor wat ik elke week doe'. Triggert ook bij iedere verwijzing naar E1 tot en met E6, 'gap E1' tot en met 'gap E6', of 'de Engineer-laag dichten in de SCALE-audit'."
category: bouwen
tags: [scale-framework, engineer, dashboard, maatwerk, app, scoping, prd, workflow, orchestratie, pipeline, klantportaal, self-service, kennisbank, rag, skill-bouw]
estimatedTime: "10-45 minuten per module"
version: "1.0.0"
author: Upscailed
license: MIT
---

# SCALE Engineer

## Doel

De Engineer-laag (E) is de bovenste laag van het SCALE-framework van Upscailed: hier wordt maatwerk gebouwd. Waar Structure het fundament legt, Collect de data binnenhaalt, Analyze er inzicht van maakt en Leverage terugkerend werk automatiseert, bouwt Engineer de dingen die het bedrijf uniek maken: eigen dashboards, eigen apps, gekoppelde workflow-pipelines, klantportalen, een interne kennisbank en zelfs eigen skills.

Dit is de gebundelde versie van 6 eerdere losse skills (`dashboard-bouwer`, `app-scoping`, `workflow-pipeline`, `klantportaal-scoping`, `kennisbank-organizer`, `skill-builder-coach`). Elke module bevat de volledige, ongewijzigde workflow van de oorspronkelijke skill. Deze router bepaalt alleen wélke module aan de beurt is en bewaakt de gedeelde huisregels.

## Modules

Volgorde in de tabel is de aanbevolen doorloop-volgorde.

| Code | Module | Wat het oplevert | Bestand |
|------|--------|------------------|---------|
| E1 | Dashboard Bouwer | Werkend custom dashboard op eigen data, vastgelegd in `Engineer/Dashboard-Bouwer-Spec.md` (technische realisatie van het A2-ontwerp) | `modules/dashboard-bouwer.md` |
| E2 | App Scoping | Bouwklaar PRD in 13 secties, direct bruikbaar als brief voor developer, no-code-bouwer of Claude Code | `modules/app-scoping.md` |
| E3 | Workflow Pipeline | Pipeline-architectuur die losse automatiseringen (L1 t/m L4) koppelt tot één keten, in `Engineer/Workflow-Pipeline.md` | `modules/workflow-pipeline.md` |
| E4 | Klantportaal Scoping | Implementatie-klare blauwdruk voor een klant-facing self-service-portaal, in `Engineer/Klantportaal-Scoping.md` | `modules/klantportaal-scoping.md` |
| E5 | Kennisbank Organizer | Werkende interne kennisbank met tool-keuze, 8 vaste categorieën, eigenaars, update-cadans en optionele RAG-laag | `modules/kennisbank-organizer.md` |
| E6 | Skill Builder Coach | Zelfgebouwde, geteste bedrijfsspecifieke skill in `IT/Skills/`, de ondernemer wordt zelf-sufficient in skill-creatie | `modules/skill-builder-coach.md` |

## Visuele Flow

```
┌─────────────────────────────────────────────────────────┐
│  SCALE ENGINEER                                          │
└─────────────┬───────────────────────────────────────────┘
              ▼
   ┌─────────────────────┐
   │ 1. Intake of menu   │  Directe vraag herkennen,
   │                     │  anders module-menu tonen
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 2. Module kiezen    │  E1 t/m E6, bij twijfel de
   │                     │  aanbevolen volgorde volgen
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 3. Module-workflow  │  ALLEEN het gekozen
   │    volgen           │  modules/<naam>.md laden
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 4. Opslaan en       │  Resultaat opslaan waar de
   │    vervolg-module   │  module dat voorschrijft,
   │    voorstellen      │  vervolg-module aanbieden
   └─────────────────────┘
```

## Wanneer triggeren

- **E1 Dashboard Bouwer:** "dashboard bouwen", "mission control bouwen", "live dashboard met echte data", "KPI-dashboard met API-data", "custom dashboard ontwikkelen", "CEO-dashboard live zetten", "dashboard in Astro / Next.js / React", "A2 ontwerp gaan bouwen", "gap E1"
- **E2 App Scoping:** "app scopen", "app-idee uitwerken", "tool scopen", "PRD maken", "brief schrijven voor Claude Code", "brief voor developer", "interne tool ontwerpen", "MVP scope", "data-model voor mijn app", "gap E2"
- **E3 Workflow Pipeline:** "workflow ontwerpen", "pipeline bouwen", "flows aan elkaar knopen", "orchestratie laag", "losse Zaps consolideren", "n8n self-hosted opzetten", "end-to-end automatisering", "workflows als code", "gap E3"
- **E4 Klantportaal Scoping:** "klantportaal scopen", "self-service portal", "klant-login bouwen", "mijn-omgeving voor klanten", "factuur-portaal", "cursusplatform met login", "white-label portaal", "gap E4"
- **E5 Kennisbank Organizer:** "kennisbank opzetten", "interne wiki bouwen", "second brain voor het bedrijf", "AI laten zoeken in mijn docs", "RAG bouwen op bedrijfskennis", "wat moet een nieuwe medewerker lezen", "gap E5"
- **E6 Skill Builder Coach:** "ik wil een eigen skill bouwen", "help me een skill maken", "hoe schrijf ik een SKILL.md", "AI op maat voor mijn proces", "skill voor wat ik elke week doe", "leer mij skills bouwen", "gap E6"
- Iedere expliciete verwijzing naar E1 t/m E6 of het dichten van de Engineer-laag uit een SCALE-audit.

**Triggert NIET wanneer iemand:**

- Het fundament wil leggen (ICP, klantreis, producten en pricing, toolstack, SOPs, team): gebruik `scale-structure`
- Data-bronnen wil aansluiten (CRM, financiële data, marketing-data, klantfeedback): gebruik `scale-collect`
- Een dashboard wil ONTWERPEN, een rapportage wil maken of een daily briefing wil opzetten: gebruik `scale-analyze` (E1 bouwt pas als het A2-ontwerp er ligt)
- Een losse automatisering wil opzetten (auto-rapportage, mailflows, finance-automatisering, SOP automatiseren): gebruik `scale-leverage` (E3 koppelt die pas als ze bestaan)
- Marketing wil neerzetten (content-roadmap, nieuwsbrief, social presence, website): gebruik `scale-marketing`
- Het salesproces of de opvolg-flow wil bouwen: gebruik `scale-verkoop`
- Juridische documenten nodig heeft (privacyverklaring, algemene voorwaarden, contracten): gebruik `scale-juridisch` (E4 verwijst hier zelf naar door bij AVG-vragen)
- Wil weten hoe compleet het bedrijf is of welke gaps er zijn: gebruik `scale-audit`
- Externe tools via MCP wil koppelen aan de AI-assistent: gebruik de losse skill `mcp-integratie`

## Werkwijze (router)

1. **Bepaal de module.** Leid uit de vraag af welke module (E1 t/m E6) van toepassing is. Bij twijfel: toon het module-menu (de tabel hierboven) plus de aanbevolen doorloop-volgorde E1 naar E6, en laat de gebruiker kiezen.
2. **Laad alleen de gekozen module.** Lees uitsluitend het gekozen `modules/<naam>.md` en volg die workflow exact. Laad niet alle modules tegelijk: elke module is een volledige, zelfstandige workflow.
3. **Huisregels, geldig in elke module:**
   - Start met een run-time intro: wat gaat er gebeuren, hoeveel vragen komen er en wat is de geschatte tijd.
   - Pre-fill uit bestaande documenten (scan de scope) vóórdat je vragen stelt; vraag alleen wat je echt niet weet.
   - Stel check-vragen om gevonden informatie te valideren in plaats van hem blind over te nemen.
   - Sla het resultaat op waar de module dat voorschrijft (meestal onder `Engineer/` in de bedrijfsscope).
4. **Stel de vervolg-module voor.** Na afronding: bied de logische volgende module aan (bijvoorbeeld na E2 App Scoping richting E1 of E3, na E4 richting E2, na E5 richting E6), of rond af als de gebruiker klaar is.

## Samenhang

- Engineer is de bovenste laag van het SCALE-framework: de modules bouwen op wat de andere lagen hebben neergezet.
- `scale-structure` levert het fundament (ICP, klantreis, producten, toolstack, SOPs, team) waar alle E-modules op pre-fillen.
- `scale-collect` levert de data-bronnen (CRM, financiële data) die E1 en E4 aansluiten.
- `scale-analyze` levert het Mission Control-ontwerp (A2) dat E1 bouwt, plus rapportages die in dashboards landen.
- `scale-leverage` levert de losse automatiseringen (L1 t/m L4) die E3 tot één pipeline koppelt.
- `scale-marketing` en `scale-verkoop` leveren context voor E4: het deal-won-moment triggert het klant-account in het portaal.
- `scale-juridisch` dekt de AVG-kant af waar E4 en E5 naar doorverwijzen bij persoonsgegevens.
- `scale-audit` meet de gaps E1 t/m E6 en verwijst voor het dichten ervan naar deze skill.
- Losse skill `mcp-integratie`: voor het koppelen van externe tools via MCP aan de gebouwde oplossingen.
- Losse skill `os-builder`: zet de mappenstructuur neer waar de Engineer-outputs (`Engineer/`, `IT/Skills/`) in landen.
