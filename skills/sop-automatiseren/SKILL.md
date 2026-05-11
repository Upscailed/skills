---
name: sop-automatiseren
title: "SOP Automatiseren"
description: "Helpt een ondernemer in 45 tot 90 minuten zijn of haar bestaande SOPs door te lichten en stap-voor-stap te automatiseren. Dit is SCALE-stap L1 (Leverage): de stap waarin handwerk gefaseerd wordt overgedragen aan tools, scripts, no-code-flows of AI-agents. De skill leest bestaande SOPs uit Operations/Processen/, scoort per SOP de huidige plek op een 6-stappen leverage-spectrum (volledig handmatig, grotendeels handmatig, deels geautomatiseerd, grotendeels geautomatiseerd, volledig geautomatiseerd, AI-overgenomen) en doet dat zowel op proces-niveau als per genummerde stap. Per SOP komt er een automatiserings-blok uit met: huidige status per stap, kandidaten (Make, Zapier, n8n, Apple Shortcuts, Python-script, cron, AI-skill, e-mailflow, browser-agent, MCP-tool), benodigde input (data-bron, account-toegang, training-set, prompt, schema), oplevering (wat is af, hoe wordt het getest), en owner-overdracht (mens, mens-bij-uitzondering, AI-agent met human in the loop, volledig autonoom). Vervolgens komt er een roadmap met drie horizonten: quick-wins (binnen 1 week, lage complexiteit, hoge impact), medium (1 tot 3 maanden, integraties, datakwaliteit-vereisten), large (3 tot 12 maanden, custom-builds, AI-agents met meerdere tools). Voor MKB houdt de skill een vaste regel aan: eerst de SOP handmatig werkend hebben, dan pas automatiseren — geen automatisering bouwen op een proces dat nog niet stabiel is. De skill werkt vault-onafhankelijk: alleen relatieve paden binnen de bedrijfsscope, geen aannames over vault-naam of eigenaar. Activeer altijd wanneer iemand zegt: 'SOP automatiseren', 'proces automatiseren', 'welke stap kan automatisch', 'mijn werk wegautomatiseren', 'L1 dichten in SCALE-audit', 'gap L1', 'leverage-roadmap', 'wat kan AI overnemen', 'wat kan ik via Make/Zapier/n8n bouwen', 'automatiserings-kansen uit mijn SOPs', 'mijn handwerk verminderen', 'mijn processen schalen', 'overdracht aan VA of agent', 'wat is mijn quick-win-automatisering', 'hoe automatiseer ik mijn factuurproces', 'hoe automatiseer ik mijn opvolging'. Triggert ook bij iedere expliciete verwijzing naar L1, `Operations/Processen/`-automatisering, of de blok-10-automatiseringskansen uit S10 SOPs."
category: operations
tags: [scale-framework, l1, leverage, sop, automatisering, processen, make, zapier, n8n, ai-agent, mkb]
estimatedTime: "45 tot 90 minuten (1 tot 5 SOPs in één sessie)"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# SOP Automatiseren

## Doel

Helpt een ondernemer om in 45 tot 90 minuten zijn of haar bestaande **SOPs door te lichten en gefaseerd te automatiseren**. Output: één centraal document **`{scope}/Leverage/SOP-Automatisering-Roadmap.md`** plus annotaties terug in de bron-SOPs onder sectie 10. Dit is SCALE-stap L1 (Leverage), het natuurlijke vervolg op S10 (`sop-interviewer`).

*Waarom dit fundamenteel is.* SCALE-stap S10 vangt het werk in herhaalbare procedures. L1 is de stap waarin dat werk **uit de handen van de ondernemer verdwijnt**. Niet als ideaal-droom, maar als concreet plan met owners, tools en deadlines. Zonder L1 blijft een SOP een handleiding voor mensen, en blijft de ondernemer zelf de bottleneck.

*Waarom een spectrum, geen knop.* "Automatiseren" wordt vaak voorgesteld als binaire keuze: het is automatisch of niet. In de praktijk zit elke stap ergens op een schaal van zes posities. Deze skill scoort dat expliciet (zie *Het leverage-spectrum* hieronder) zodat de ondernemer per SOP en per stap weet waar hij staat, wat de volgende plek op het spectrum is, en wat dat kost.

*Waarom MKB eerst-handmatig-dan-automatiseren.* Een veelgemaakte fout in het MKB is automatiseren wat nog niet stabiel werkt. Dan bouw je een Make-flow op een proces dat de volgende maand alweer anders loopt, en is de automatisering binnen een kwartaal kapot of irrelevant. Vaste regel in deze skill: **een SOP moet eerst minstens drie tot vijf cycli handmatig draaien voordat je hem automatiseert**. Loopt het proces nog niet of bestaat de SOP nog niet, dan stuurt de skill terug naar S10 (`sop-interviewer`).

*Waarom drie horizonten.* Automatisering komt in drie soorten:
- **Quick-wins** (binnen 1 week): kleine flows met bestaande tools, geen integratie-puzzel, voornamelijk template-uitsturen, status-updates en notificaties.
- **Medium** (1 tot 3 maanden): integraties tussen meerdere systemen, datakwaliteit-vereisten, no-code-platforms (Make, Zapier, n8n), AI-skills met goede prompts.
- **Large** (3 tot 12 maanden): custom-bouw, AI-agents die meerdere tools combineren, eigen MCP-servers, dashboards die op real-time data draaien.

Door deze drie te scheiden voorkomen we dat een ondernemer met een grote droom (volledig autonome AI-agent) eerst zes maanden bouwt aan iets dat niet werkt, terwijl hij in week één al 8 uur per maand kon besparen met een Make-flow.

Resultaat: SCALE-audit L1 springt van ❌ of ⚠️ naar ✅, ten minste één SOP heeft een geactiveerde automatisering met owner-overdracht, en er ligt een roadmap voor de volgende kwartaal-cyclus.

## Het leverage-spectrum (6 posities)

Elke SOP en elke stap binnen een SOP zit op een van deze posities. De skill scoort beide expliciet.

| # | Positie | Beschrijving | Owner | Voorbeeld |
|---|---|---|---|---|
| **1** | **Volledig handmatig** | Mens doet alles, geen tool-ondersteuning behalve documentatie | Mens (ondernemer of medewerker) | Factuur op papier uitschrijven, mailen via persoonlijke inbox |
| **2** | **Grotendeels handmatig** | Mens doet alles, maar gebruikt een tool (CRM, boekhoudpakket, template) | Mens met tool | Factuur in Moneybird typen, kopiëren naar mail-template, verzenden |
| **3** | **Deels geautomatiseerd** | Mens trigget, systeem voert sub-stap uit | Mens met partial automation | Klant boekt zelf via Calendly, daarna mens stuurt onboardingmail |
| **4** | **Grotendeels geautomatiseerd** | Systeem voert proces uit, mens checkt en keurt goed | Mens als reviewer | Make-flow stuurt automatisch concept, mens drukt op verzendknop |
| **5** | **Volledig geautomatiseerd** | Systeem voert proces uit zonder check, mens kijkt naar logs | Systeem | Cron-job verstuurt elke maandag rapport, mens kijkt naar maand-overzicht |
| **6** | **AI-overgenomen** | AI-agent maakt beslissingen, kiest tools, escaleert alleen bij uitzonderingen | AI met human-in-the-loop voor escalatie | AI-agent leest support-mail, beantwoordt direct, alleen bij twijfel naar mens |

**Belangrijke regel:** elke beweging op het spectrum is een **eigen project**. Een sprong van positie 2 naar positie 4 in één keer mislukt vrijwel altijd in MKB-context. Beter: 2 → 3 in week 1, 3 → 4 in maand 2.

## Run-time introductie (toon aan gebruiker bij start)

Geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat.

```
┌──────────────────────────────────────────────────────────┐
│  SOP AUTOMATISEREN — SCALE-stap L1 (Leverage)             │
│  ~45-90 minuten · 1-5 SOPs in één sessie                  │
└──────────────────────────────────────────────────────────┘

  In 45 tot 90 minuten lichten we jouw bestaande SOPs door
  en bouwen we een gefaseerde automatiserings-roadmap.
  Per SOP scoren we de huidige plek op een 6-stappen
  leverage-spectrum (handmatig → AI-overgenomen) en
  identificeren we wat tot 1 week, 1-3 maanden, en 3-12
  maanden van wegautomatiseren bereikbaar is.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • Vooraf scan ik wat al in je vault staat:             │
  │      Operations/Processen (SOPs uit S10)                │
  │      Operations/Processen/README.md (overzicht)         │
  │      IT/Toolstack.md (welke tools al gebruikt)          │
  │      HR/Team.md (mogelijke owners)                       │
  │      Bestaande automatiseringen, scripts, Make-flows    │
  │  • Externe documenten welkom: scenarios uit Make,       │
  │    Zapier-export, n8n-workflow JSON, screenshots van    │
  │    bestaande cron-jobs of AI-agents, Python-scripts     │
  │    die je al draait                                     │
  │  • Per SOP een vaste flow (5-10 min per SOP):           │
  │      [1] Stabiliteits-check (mag deze SOP überhaupt     │
  │          geautomatiseerd worden, of eerst stabiel?)     │
  │      [2] Spectrum-score nu (proces + per stap)          │
  │      [3] Volgende spectrum-positie per stap             │
  │      [4] Tool-kandidaten (Make, Zapier, n8n, script,    │
  │          AI-skill, MCP, agent)                          │
  │      [5] Benodigde input (data, accounts, training,     │
  │          prompts, schemas)                              │
  │      [6] Owner-overdracht (mens, mens-bij-uitzondering, │
  │          AI met human-in-the-loop, volledig autonoom)   │
  │  • Daarna een sessie-overstijgende roadmap met drie     │
  │    horizonten: quick-wins, medium, large                │
  │  • Output: Leverage/SOP-Automatisering-Roadmap.md +     │
  │    annotaties in elke bron-SOP onder sectie 10          │
  └────────────────────────────────────────────────────────┘

  Welke SOPs ga je behandelen? Kies 1 tot 5 uit je
  Operations/Processen/-map. Heb je geen SOPs? Dan eerst
  S10 (`sop-interviewer`) afronden voor minstens 3
  processen.

  Heb je externe documenten klaar? Bestaande Make-flows,
  Zapier-export, n8n-JSON, Python-scripts of MCP-tools die
  je al draait? Plak ze, link ze, of upload — dat scheelt
  tijd in stap 4 (tool-kandidaten).
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  SOP AUTOMATISEREN — L1 · 45-90 min · 1-5 SOPs            │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Operations/Processen,
   │    (auto-discover)   │  Toolstack, Team,
   │                      │  bestaande automa-
   │                      │  tiseringen
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Make scenarios,
   │                      │  Zapier-export,
   │                      │  n8n-JSON, scripts,
   │                      │  MCP-tools
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. SOP-keuze         │  1 tot 5 SOPs uit
   │                      │  Operations/Processen
   │                      │  Stabiliteits-check
   │                      │  per SOP
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Analyse per SOP   │  Per SOP 6 blokken:
   │                      │  [1] Stabiliteits-check
   │                      │  [2] Spectrum-score
   │                      │  [3] Volgende positie
   │                      │  [4] Tool-kandidaten
   │                      │  [5] Benodigde input
   │                      │  [6] Owner-overdracht
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Roadmap bouwen    │  3 horizonten:
   │                      │  quick-wins (1 wk)
   │                      │  medium (1-3 mnd)
   │                      │  large (3-12 mnd)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Leverage/SOP-
   │    opslaan           │  Automatisering-
   │                      │  Roadmap.md
   │                      │  + sectie-10-update
   │                      │  per SOP
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    vervolg-          │  cross-link naar
   │    suggesties        │  L2/L3/L4/E1/E3
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "SOP automatiseren" / "proces automatiseren"
- "Welke stap kan automatisch" / "wat kan AI overnemen"
- "Mijn werk wegautomatiseren" / "mijn handwerk verminderen"
- "L1 dichten in SCALE-audit" / "gap L1"
- "Leverage-roadmap" / "automatiserings-roadmap"
- "Wat kan ik via Make/Zapier/n8n bouwen"
- "Automatiserings-kansen uit mijn SOPs" / "blok 10 uitwerken"
- "Mijn processen schalen" / "overdracht aan VA of agent"
- "Wat is mijn quick-win-automatisering"
- "Hoe automatiseer ik mijn factuurproces" / "hoe automatiseer ik mijn opvolging"

Triggert NIET wanneer:
- De gebruiker een **specifieke automatisering** wil bouwen (zoals een mailflow of een rapportage) — gebruik dan **L2** (`auto-rapportage-setup`), **L3** (`mailflow-setup`), of **L4** (`finance-automatisering`); deze skill levert de roadmap, de specifieke skills bouwen.
- De gebruiker **nog geen SOP** heeft — eerst terug naar **S10** (`sop-interviewer`); zonder SOP geen L1.
- De gebruiker een **dashboard** wil bouwen (gebruik **E1** `dashboard-bouwer`).
- De gebruiker een **workflow-pipeline of custom-app** wil scopen (gebruik **E3** `workflow-pipeline` of **E2** `app-scoping`).
- De SOP **nog niet stabiel** draait (< 3 cycli handmatig) — eerst stabiel maken, dan automatiseren. De skill stuurt actief terug.
- De gebruiker een **inventarisatie van tools** wil (gebruik **S12** `toolstack-inventarisatie`); L1 gebruikt die inventarisatie maar maakt hem niet.

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de automatiseringen geanalyseerd moeten worden. Maak **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Operations/`, `Directie/`, `IT/`, `Leverage/` direct onder de vault-root).
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Operations/`, `Bedrijven/Naam/Leverage/`, etc.).
- Een **fresh SCALE-skelet** (output van `os-builder`) waar `Operations/Processen/` mogelijk al gevuld is maar `Leverage/` nog leeg.

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze automatiseringen voor zijn?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Operations/Processen/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer:
- Of `{scope}/Operations/Processen/` bestaat en SOPs bevat. **Geen SOPs → stop deze skill en stuur door naar S10 (`sop-interviewer`).** L1 vereist S10 als input.
- Of `{scope}/Leverage/` al bestaat. Bestaat niet → wordt aangemaakt bij opslag (stap 7). Bestaat al → toon kort wat erin staat.
- Of er een bestaand `Leverage/SOP-Automatisering-Roadmap.md` is. Bestaat al → toon hem en vraag of de sessie **iteratie** (bestaande roadmap bijwerken) of **nieuwe versie** (oude archiveren als `SOP-Automatisering-Roadmap - archief YYYY-MM-DD.md`) is.

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: alleen relatieve paden binnen de bedrijfs-root.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Operations/Processen/*.md` | Alle bestaande SOPs (verplichte input). Per SOP: aantal stappen, eigenaar, frequentie, tools, blok-10-automatiseringskansen. |
| `Operations/Processen/README.md` | SOP-index — overzicht van welke processen er zijn en in welke fase. |
| `IT/Toolstack.md` | Welke tools het bedrijf gebruikt — bepaalt wat realistisch beschikbaar is. Zoek expliciet naar: Make, Zapier, n8n, Python, Apple Shortcuts, eigen MCP, OpenAI API, Anthropic API. |
| `HR/Team.md` | Wie mogelijke owners zijn van een geautomatiseerde flow (mens-reviewer of escalatie-pad). |
| `Directie/00 - Overzicht.md` | Bedrijfsfase (start-up, scale-up, gevestigd). Bepaalt welke horizon (quick-win vs large) realistisch is. |
| `Directie/01 - Goals.md` | Doelen die de automatisering moet ondersteunen (omzet, tijdwinst, kwaliteit). |
| `Financiën/Rapportage/*.md` | Welke rapportages al bestaan — kandidaat voor L2 (auto-rapportage). |
| `Marketing/Nieuwsbrief/` en `Marketing/LinkedIn/` | Bestaande content-flows — kandidaat voor L3 (mailflow) en social-publicatie. |
| `Sales/` | Lead-opvolging — kandidaat voor L3 (mailflow) of CRM-automatisering. |
| `Leverage/` (als bestaat) | Eerdere automatiserings-werk: roadmaps, Make-scenarios, scripts, AI-agents in productie. |
| `IT/AI-Tools/` | Bestaande AI-tools en hun status (Idee / Bouw / Test / Productie). |
| `IT/Skills/` | Bestaande skills — sommige zijn directe automatiseringen (zoals `daily-briefing`, `morning-brief`, scheduled tasks). |

Per gevonden bron: korte interne aantekening welke SOP het raakt, welke automatiserings-kansen het oplevert, en welke tool of skill al bestaat.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Werk met wat er is. Maar als `Operations/Processen/` leeg is, **stop** en stuur door naar S10.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. L1-specifieke bronnen die vaak goud waard zijn:

- **Bestaande Make-scenarios** (export-JSON of screenshots van actieve flows)
- **Zapier-Zaps** (export of lijst van actieve Zaps)
- **n8n-workflow-JSON** of dashboard-screenshots
- **Apple Shortcuts** die de gebruiker al draait
- **Python-scripts of Node-scripts** in een `~/AI - Projecten/`-folder of in een aparte repo
- **Cron-jobs of scheduled tasks** (lijst van wat draait, met frequentie)
- **AI-prompts** die al stabiel werken voor een specifiek proces
- **MCP-tools** die de gebruiker al gebruikt (Calendar, Drive, Slack, Notion, etc.)
- **Webhook-URLs** of integratie-keys (alleen het feit dat ze bestaan, geen secrets in tekst)
- **Eerdere automatiserings-pogingen die mislukten** (heel waardevol — voorkomt herhaling)
- **Loom-walkthroughs** van een huidige flow waarin pijnpunten zichtbaar zijn

Concrete vraag aan gebruiker:
> "Heb je externe documenten of bronnen waaruit ik kan putten? Bestaande Make-scenarios (export of screenshot), Zapier-Zaps, n8n-workflows, Python-scripts, scheduled tasks, AI-prompts die je al gebruikt, MCP-tools die je hebt aangesloten, of automatiseringen die je eerder probeerde maar niet werkten? Hoe meer ik weet wat al draait of vastliep, hoe scherper de roadmap wordt."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen.
- **JSON/script**: lees de inhoud, vat samen wat het doet en welke SOP het raakt.
- **Screenshot van flow**: lees de stappen visueel en koppel aan SOP-blokken.
- **Geplakte prompt**: behandel als template-input voor de tool-kandidaten in stap 4 van de analyse.

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: SOP-keuze (1 tot 5 SOPs)

Toon de gebruiker een lijst van alle SOPs uit `Operations/Processen/`, gerangschikt op **automatiserings-potentieel**. Maak die ranking op basis van:

1. **Frequentie** (uit SOP-sectie 2): vaker = meer ROI uit automatisering.
2. **Doorlooptijd vs werktijd** (uit SOP-sectie 7): groot verschil = veel wachten = automatiserings-kandidaat.
3. **Aantal handmatige overdracht-momenten** (uit SOP-sectie 6 "Handmatige overdracht? Ja"): meer overdrachts-momenten = meer kansen.
4. **Inhoud van blok 10** (SOP-sectie 10): als er al concrete kandidaten staan, zwaarder wegen.
5. **Stabiliteits-signaal**: SOP-versie > 1.0 of ouder dan 3 maanden = stabiel genoeg om te automatiseren.

Toon de top 5 met argumentatie en vraag de gebruiker welke hij wil behandelen. **Maximaal 5 SOPs per sessie** — daarboven verliest de analyse diepte.

**Stabiliteits-check per gekozen SOP:**

Voor elke gekozen SOP, vraag:
1. Heeft deze SOP minstens **3 tot 5 cycli handmatig** gedraaid? (Anders: nog niet automatiseren — terug naar S10 voor finetuning.)
2. Is de SOP in de **laatste 4 weken aangepast**? (Recente wijzigingen = nog niet stabiel.)
3. Zijn er **bekende open issues** of pijnpunten in het proces? (Niet automatiseren over een kapot proces heen — los eerst de hapering op.)

Bij twijfel: stuur die SOP terug naar handmatige fase. Bevestig met de gebruiker welke SOPs wel deze sessie ingaan.

### Stap 5: Analyse per SOP (6 blokken)

**Kernregel:** behandel **één SOP per beurt**, en binnen die SOP **één blok per beurt**. Wacht op antwoord, dan pas door.

#### Blok 1 — Stabiliteits-check (al gedaan in stap 4, hier vastleggen)

Leg vast:
- Aantal cycli die het proces handmatig heeft gedraaid.
- Laatste wijzigingsdatum van de SOP.
- Bekende open issues of pijnpunten (indien aanwezig).
- Conclusie: **automatiseren toegestaan** ✅ of **eerst stabiliseren** ⚠️.

Als conclusie ⚠️ → noteer in de roadmap en sla de andere blokken over voor deze SOP. Ga door naar de volgende SOP.

#### Blok 2 — Spectrum-score nu (proces en per stap)

Scoor het proces als geheel op een positie van het 6-stappen leverage-spectrum (zie tabel bovenaan deze skill). Daarnaast: scoor **elke genummerde stap** uit de SOP afzonderlijk.

Lever op als korte tabel:

| Stap | Korte beschrijving | Huidige positie (1-6) | Tool of mens nu |
|---|---|---|---|
| 1 | Open Moneybird en navigeer naar factuur | 2 — grotendeels handmatig | Mens met Moneybird |
| 2 | Vul klantgegevens in | 2 — grotendeels handmatig | Mens met Moneybird |
| 3 | Stuur factuur via Moneybird-knop | 3 — deels geautomatiseerd | Moneybird (verzending automatisch) |
| ... | ... | ... | ... |

**Daarnaast proces-niveau-score**: bv. *"Proces als geheel: positie 2 (Grotendeels handmatig). De Moneybird-tool verlicht stappen, maar mens trigget alles en doet alle checks."*

#### Blok 3 — Volgende spectrum-positie per stap

Voor elke stap waar de huidige positie < 6 is: bepaal de **volgende haalbare positie**. Niet automatisch een sprong naar 6, maar één positie verder. Dit is de kern van de MKB-regel: kleine stappen, één per cyclus.

Lever op als uitbreiding van de tabel uit blok 2:

| Stap | Huidige positie | Volgende positie | Verschil | Verwachte besparing |
|---|---|---|---|---|
| 1 | 2 | 3 | Calendly trigger triggert factuur-flow | 5 min per cyclus |
| 2 | 2 | 4 | Make-flow vult klantgegevens uit CRM | 10 min per cyclus, 0 typefouten |
| 3 | 3 | 5 | Volledig automatisch versturen op trigger | 2 min per cyclus, 24/7 beschikbaar |

Stappen die op positie 5 of 6 staan: noteer "Niet verder automatiseren — al volledig automatisch of AI-overgenomen". Voorkomt over-engineering.

#### Blok 4 — Tool-kandidaten

Per stap waar in blok 3 een volgende positie is benoemd: bepaal welke **tool of skill** dat gaat doen. Werk vanuit wat de gebruiker al heeft (uit `IT/Toolstack.md` en externe documenten) — geen nieuwe SaaS-abonnementen voorstellen als het bestaande pakket het ook kan.

Kandidaat-types (in volgorde van toegankelijkheid voor MKB):

1. **Bestaande tool gebruiken** — feature van Moneybird, Stripe, Calendly die al betaald is.
2. **No-code-flow** — Make, Zapier, n8n (Make eerst voor MKB-context: meeste sjablonen, beste prijs-kwaliteit).
3. **Apple Shortcuts / Power Automate** — als de gebruiker macOS/iOS of Windows draait en lokale automatisering wil.
4. **AI-skill (Claude / GPT)** — zoals deze skill in een Claude-omgeving, met een gerichte prompt en input-template.
5. **E-mailflow** (Loops, ActiveCampaign, Mailchimp, Brevo) — voor mailgedreven processen, zeker bij L3.
6. **Script** — Python, Node, Bash. Kost meer onderhoud, maar maximale flexibiliteit.
7. **MCP-tool** — voor Claude Code of vergelijkbare agentic environments waar de tool direct beschikbaar moet zijn.
8. **AI-agent met meerdere tools** — voor stappen waar oordeel nodig is over input (e-mail-classificatie, lead-scoring).
9. **Custom-app of klantportaal** — alleen bij large-horizon, link naar E2 of E4.

Lever op als uitbreiding van de tabel uit blok 3:

| Stap | Volgende positie | Tool-kandidaat | Alternatieven |
|---|---|---|---|
| 1 | 3 | Calendly webhook → Make → Moneybird | Zapier; eigen Python-cron met cal.com-API |
| 2 | 4 | Make-flow: CRM → Moneybird factuur-template | Zapier; Apple Shortcut + Notion-API |
| 3 | 5 | Moneybird ingebouwde scheduled verzending | Make-cron op vaste tijd |

#### Blok 5 — Benodigde input per kandidaat

Voor elke tool-kandidaat uit blok 4: wat is nodig om hem op te bouwen?

- **Data-bron**: welke bron levert de input? (CRM, factuurpakket, Calendly, een handmatige sheet, een formulier-tool?)
- **Account-toegang**: welke accounts, met welke rechten, met welke API-keys of OAuth-tokens?
- **Training-set of voorbeelden**: voor AI-kandidaten — minstens 5 tot 10 voorbeelden van input + gewenste output.
- **Prompt of schema**: voor AI-kandidaten — een eerste versie van de prompt of het JSON-schema.
- **Webhook-URL of trigger**: hoe wordt de automatisering aangetrokken?
- **Output-bestemming**: waar moet het eindresultaat heen? (Mail, CRM-update, document, dashboard, Slack-bericht?)
- **Fallback**: wat als de automatisering faalt? Mens-pad? Notificatie?
- **Test-plan**: hoe wordt het getest voor productie? (Sandbox-account, dry-run, side-by-side run, A/B met handmatig?)

Lever op als invul-tabel per stap:

| Aspect | Waarde |
|---|---|
| Data-bron | Calendly-webhook (event "boeking aangemaakt") |
| Account-toegang | Make Pro, Calendly Standard, Moneybird Premium |
| Training-set | n.v.t. (regel-gebaseerd) |
| Prompt | n.v.t. |
| Output | Concept-factuur in Moneybird, mens drukt op verzendknop |
| Fallback | Notificatie naar Slack als webhook faalt of veldwaarde ontbreekt |
| Test-plan | 5 test-boekingen in sandbox, check factuur-content en bedrag |

#### Blok 6 — Owner-overdracht

Voor elke automatisering: wie is daarna **owner**? Twee dimensies:

1. **Wie monitort dat hij blijft draaien?** (Logs, foutmeldingen, fallback-notificaties.) — Meestal de eind-eigenaar uit SOP-sectie 3, of een ge-delegeerde uit `HR/Team.md`.
2. **Wie heeft escalatie-pad als hij faalt?** — Bv. back-up uit SOP-sectie 3, of een externe partij (boekhouder, IT-leverancier).

Lever op als rij per automatisering:

| Stap | Automatisering | Owner monitoring | Owner escalatie | Frequentie check |
|---|---|---|---|---|
| 1 | Calendly → Make → Moneybird | Iwan | Back-up Tanja | Wekelijks Make-dashboard scannen |
| 2 | Make-flow factuur-template | Iwan | Boekhouder | Maandelijks steekproef bij factuurronde |

**Belangrijke check**: als geen mens dit kan monitoren, dan is de automatisering niet veilig genoeg. Owner-loos = wachtende crisis.

Sluit de SOP-analyse af met een korte **samenvatting**: drie regels die de essentie geven (huidige positie, volgende positie, eerstvolgende actie).

### Stap 6: Roadmap bouwen (3 horizonten)

Aggregeer alle automatiserings-kandidaten uit alle behandelde SOPs en sorteer ze in drie horizonten:

#### Quick-wins (binnen 1 week)

Criteria:
- Beweging van **één** positie op het spectrum, voornamelijk 2→3 of 3→4.
- Tool al beschikbaar in de stack (geen nieuw abonnement).
- Geen integratie-puzzel (enkelvoudige flow: één trigger, één actie).
- Geen AI-prompt-training nodig (regel-gebaseerd of standaard-template).

Voorbeelden:
- E-mail-template auto-versturen bij CRM-status-wissel.
- Notificatie in Slack bij factuur-status "Te laat".
- Wekelijkse rapportage-mail die zichzelf stuurt.
- Klant-bedankje-mail dag na onboarding.

Lever op als prioriteits-lijst:

| # | Automatisering | SOP | Stap | Tool | Verwachte besparing | Eigenaar | Deadline |
|---|---|---|---|---|---|---|---|
| 1 | Auto-bedankje na factuurbetaling | Factuur-cyclus | 7 | Stripe webhook → Brevo | 10 min/maand | Iwan | Week 1 |
| 2 | Slack-notificatie bij CRM-stuck | Lead-opvolging | 4 | Pipedrive → Slack | 30 min/week | Iwan | Week 1 |

#### Medium (1 tot 3 maanden)

Criteria:
- Beweging van twee posities op het spectrum, voornamelijk 2→4 of 3→5.
- Integratie tussen 2 of meer systemen.
- Datakwaliteit-vereisten (uniforme klant-ID's, gestandaardiseerde tags).
- Eventueel AI-skill of -prompt met training-set.

Voorbeelden:
- Make-flow die CRM-status, Moneybird-factuur en mail in één keten zet.
- AI-skill voor lead-classificatie op basis van inkomende mails.
- Automatische maandafsluiting met checklist en notificaties.
- Klantfeedback-pijplijn: typeform → Notion → AI-samenvatting → Slack-digest.

Lever op als prioriteits-lijst (zelfde tabel als quick-wins, plus extra kolom **"Voorvereisten"** voor data of accounts die eerst geregeld moeten zijn).

#### Large (3 tot 12 maanden)

Criteria:
- Beweging van drie of meer posities, of sprong naar positie 6 (AI-overgenomen).
- Custom-bouw nodig (eigen script, eigen MCP-server, eigen agent).
- Meerdere processen tegelijk geraakt (cross-SOP-automatisering).
- Significante investering in data-infrastructuur of training.

Voorbeelden:
- AI-agent die support-mail leest, antwoordt, en alleen bij twijfel escaleert.
- Custom dashboard dat live data uit boekhoud-, CRM- en marketing-bronnen toont (link naar E1).
- Eigen klantportaal waar klanten zelf processen starten (link naar E4).
- Volledige automatisering van content-publicatie (idea → draft → review → publicatie → distributie).

Lever op met dezelfde tabel, plus expliciete **"Cross-link"**-kolom naar L2/L3/L4 (specifieke automatiserings-skills) of E1/E2/E3/E4 (engineer-skills).

**Belangrijke regel voor de roadmap:**
- Quick-wins worden altijd eerst aangepakt — dit is non-negotiable. Een ondernemer die met large begint, bouwt zes maanden iets dat niet werkt. Met quick-wins eerst is er na week 1 een tastbare besparing, en dat geeft brandstof voor medium en large.
- Medium pas starten als minstens 3 quick-wins productie-stabiel draaien (een maand foutloos).
- Large pas starten als de medium-stack de data-bron is en stabiel werkt.

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-sop-automatiseren.md` als skelet voor de roadmap. Vul het met de uitkomsten uit de analyse.

Sla op als:
```
{scope}/Leverage/SOP-Automatisering-Roadmap.md
```

Maak de `Leverage/`-map aan als die nog niet bestaat. **Belangrijk**: dit pad ligt op afdelings-niveau (niet onder `Operations/`), omdat Leverage een eigen SCALE-fase is met meerdere skills (L1 tot en met L4) die hier landen.

Frontmatter (verplicht):
```yaml
---
type: leverage-roadmap
bedrijf: <Naam>
scope: <Pad>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: L1
sops-behandeld: <Aantal>
quick-wins: <Aantal>
medium: <Aantal>
large: <Aantal>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "naadloze automatisering", "perfecte flow", "ongekende efficiency". Feitelijk en menselijk.
- **Concreet > abstract.** Tool-namen letterlijk ("Make", niet "een no-code-platform"). Tijdsbesparingen in minuten of uren, niet "veel sneller".
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Tabellen voor de blokken**: spectrum-score, tool-kandidaten, owner-overdracht, roadmap.
- **Per SOP een eigen subsectie**, niet alles in één lange tabel mengen.

**Daarnaast: sectie 10 van elke behandelde SOP bijwerken.** In de bron-SOP onder sectie 10 (Automatiseringskansen): voeg onderaan een verwijzing toe:
```
> **Bijgewerkt door L1 (`sop-automatiseren`) op YYYY-MM-DD.** Zie [`Leverage/SOP-Automatisering-Roadmap.md`](../../Leverage/SOP-Automatisering-Roadmap.md) voor het volledige plan, eigenaars en deadlines. Top quick-win uit deze sessie: {korte regel}.
```

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw: `Leverage/SOP-Automatisering-Roadmap.md` v1.0 — X SOPs doorgelicht, Y quick-wins, Z medium, W large geïdentificeerd"*.
2. **Bijgewerkte SOPs** — per behandelde SOP een regel in het changelog: *"Bijgewerkt: `Operations/Processen/{Proces}.md` — sectie 10 aangevuld met L1-roadmap-verwijzing"*.
3. **Daily** — als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (conventie geldt in Iwan's OS, niet alle vaults hebben hem), log dan onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
4. **Scale-audit-suggestie** — als er een audit-rapport in `Directie/Research/` staat waar L1 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien zodat de score springt.

Vervolgsuggesties die je altijd noemt:

- **Eerste quick-win bouwen — deze week:** stel voor om de top-quick-win uit de roadmap direct in te plannen. Geef de gebruiker de keuze om hem zelf te bouwen of via een specifieke L-skill:
  - Rapportages → **L2** (`auto-rapportage-setup`)
  - Mail- en opvolg-flows → **L3** (`mailflow-setup`)
  - Finance-automatiseringen → **L4** (`finance-automatisering`)
- **C-skills voor data-kwaliteit:** als blok 5 datakwaliteit-vereisten heeft opgeleverd (uniforme klant-ID's, tags, schema's), stel voor om de relevante C-skills te draaien om die data eerst op orde te zetten:
  - **C1** (`marketing-data-setup`) — voor marketing-data
  - **C2** (`crm-setup`) — voor CRM-data
  - **C3** (`financiele-data-setup`) — voor finance-data
  - **C7** (`operationele-kpis`) — voor operationele KPIs
- **Toolstack updaten (S12):** als er nieuwe tools in de roadmap zijn die nog niet in `IT/Toolstack.md` staan, stel voor `toolstack-inventarisatie` (S12) opnieuw te draaien.
- **Dashboard (E1):** als de roadmap een dashboard-behoefte opvoert (live-data-overzicht voor de eigenaar), stel voor met **E1** (`dashboard-bouwer`) te starten zodra de medium-horizon helft af is.
- **Workflow-pipeline (E3):** als de roadmap een eind-tot-eind-flow opvoert die meerdere automatiseringen koppelt, stel voor met **E3** (`workflow-pipeline`) te scopen.
- **Review-ritme:** een automatiserings-roadmap veroudert sneller dan een SOP. Stel voor om de roadmap **maandelijks bij te werken** met wat gebouwd is, wat gefaald is, en welke nieuwe kansen ontstaan. Suggesteer een check op de eerste maandag van elke maand.

## Belangrijke regels

- **Geen SOP, geen L1.** Zonder bestaande SOP in `Operations/Processen/` stuurt de skill terug naar S10. L1 bouwt niet op niets.
- **Eerst stabiel, dan automatiseren.** Minimaal 3 tot 5 cycli handmatig gedraaid, geen openstaande issues in het proces. SOP nog niet stabiel → terug naar S10 voor finetuning.
- **Eén SOP per beurt, één blok per beurt** in de analyse. Niet alle blokken tegelijk neerzetten, niet meerdere SOPs tegelijk uitwerken. Wachten op antwoord, dan pas door.
- **Maximaal 5 SOPs per sessie.** Boven dat aantal verdwijnt de diepte. Liever twee sessies van drie dan één sessie van zes half-uitgewerkte.
- **Eén positie per beweging.** Een sprong van spectrum-positie 2 naar 4 in één keer mislukt in MKB-context. Eerst 2→3, dan 3→4. Voor elke beweging een eigen project met owner en deadline.
- **Geen owner = geen automatisering.** Een automatisering zonder mens die hem monitort is een wachtende crisis. Owner-overdracht is verplicht voordat iets in productie gaat.
- **Quick-wins eerst.** Een ondernemer die met large begint, bouwt zes maanden iets dat niet werkt. Quick-wins leveren binnen een week tastbare besparing en geven brandstof voor de rest van de roadmap.
- **Bestaande tools eerst.** Stel geen nieuwe SaaS-abonnementen voor als het bestaande pakket de feature ook heeft. Lees `IT/Toolstack.md` actief.
- **Tool-namen letterlijk.** "Make", "Zapier", "n8n", "Brevo", "Moneybird" — niet "een no-code-platform" of "een mailtool". Voor uitvoerbaarheid moet de roadmap concreet zijn.
- **Test-plan verplicht per kandidaat.** Geen automatisering live zonder een sandbox-run, dry-run of side-by-side met handmatig. Het test-plan staat in blok 5 (Benodigde input).
- **Fallback verplicht.** Bij elke automatisering vastleggen wat er gebeurt als hij faalt: notificatie, handmatig pad, escalatie. Zonder fallback geen productie.
- **Geen aannames over vault-structuur.** Werkt voor solopreneurs met een single-business vault, voor multi-business vaults, en voor versgemaakte SCALE-skeletten. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Cross-link de specifieke L-skills.** L2/L3/L4 bouwen specifieke automatiseringen; L1 levert de roadmap. Bij oplevering altijd verwijzen naar welke L-skill de quick-win gaat uitvoeren.
- **Drie horizonten scheiden.** Quick-wins, medium en large in aparte secties. Niet mengen — anders raken quick-wins overschaduwd door grootse plannen en gebeurt er feitelijk niets.
- **Frequentie van review:** maandelijkse update van de roadmap. Wat is gebouwd? Wat is gefaald? Welke nieuwe kansen zijn ontstaan? Roadmap is een levend document, geen statisch eind-rapport.

## Voorbeeld-output

Zie [`references/template-sop-automatiseren.md`](references/template-sop-automatiseren.md) voor de exacte structuur die de skill oplevert: frontmatter, samenvatting, per-SOP-blok (6 secties met tabellen), roadmap in drie horizonten, eigenaars-tabel, review-ritme, en cross-link-blok naar S10/S12/L2/L3/L4/E1/E3.
