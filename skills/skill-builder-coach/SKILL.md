---
name: skill-builder-coach
title: "Skill Builder Coach"
description: "Coacht een ondernemer in 60 tot 120 minuten bij het zelf bouwen van een nieuwe, bedrijfsspecifieke skill voor zijn eigen AI-assistent. Dit is SCALE-stap E6 (Engineer) en de kroon op het SCALE-framework: de ondernemer wordt zelf-sufficient in skill-creatie. De skill leidt door 8 fases (probleem identificeren, bestaande-skills-check, skill-anatomie uitleggen, skill-PRD opstellen, eerste-versie schrijven, test-cases draaien, feedback-loop, polish) zodat aan het einde een werkende skill in `{scope}/IT/Skills/{naam}/` staat, getest op minimaal 3 prompts en gedocumenteerd in het Skills Overzicht. De skill scant vooraf de Upscailed-bibliotheek (44 SCALE-skills + utility-skills) plus Anthropic-skills en Claude Code skills om dubbel werk te voorkomen, leidt de ondernemer naar `anthropic-skills:skill-creator` als meta-tool, en bewaakt vier principes: lean (begin klein, niet over-engineeren), generaliseer (niet overfitten op één voorbeeld), documenteer waarom (theory-of-mind in plaats van rigide ALWAYS/NEVER), en test op divers (meerdere use-cases). De skill werkt vault-onafhankelijk: alleen relatieve paden binnen de bedrijfsscope, geen aannames over vault-naam of eigenaar. Activeer altijd wanneer iemand zegt: 'ik wil een eigen skill bouwen', 'help me een skill maken', 'eigen AI-assistent ontwerpen', 'skill ontwerpen voor mijn bedrijf', 'wat zou een goede skill voor mij zijn', 'nieuwe skill voor [proces]', 'mijn eigen Claude-skill', 'E6 dichten in SCALE-audit', 'gap E6', 'AI op maat voor mijn proces', 'iets terugkerends automatiseren met AI', 'skill voor wat ik elke week doe', 'hoe schrijf ik een SKILL.md', 'leer mij skills bouwen', 'meta-skill', 'skill builder', 'mijn eigen agent maken', 'kant-en-klaar prompt voor terugkerend werk'. Triggert ook bij iedere expliciete verwijzing naar E6, een eigen `IT/Skills/`-uitbreiding, of het zelf opzetten van een skill-bibliotheek per bedrijf. Disclaimer: pas inzetten ná de fundament-skills van Sprint 1 (Structure) en Sprint 2 (Juridisch) en bij voorkeur na Sprint 3 (Collect), omdat goede skills leunen op een gevulde vault."
category: bouwen
tags: [scale-framework, e6, engineer, skill-bouw, meta, skill-creator, ai-assistent, ondernemer, coaching]
estimatedTime: "60 tot 120 minuten (1 skill per sessie)"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Skill Builder Coach

## Doel

Coacht een ondernemer om in 60 tot 120 minuten **zijn eigen, bedrijfsspecifieke skill** te bouwen voor zijn AI-assistent. Output: een werkende skill in **`{scope}/IT/Skills/{naam}/`** met SKILL.md, eventueel een `references/`-map, en minimaal drie geslaagde test-prompts. Dit is SCALE-stap E6 (Engineer), het laatste en hoogste niveau in het SCALE-framework.

*Waarom dit de kroon is.* SCALE-stappen S1 tot en met E5 leveren een gevulde vault op: bedrijfsoverzicht, brand, ICP, SOPs, KPI's, dashboards, geautomatiseerde flows. Maar al die output blijft *materiaal*. Een skill is de eerste stap waarin de ondernemer zelf vorm geeft aan **hoe** zijn AI dat materiaal gebruikt. Met E6 wordt hij zelf-sufficient: hij wacht niet meer op Upscailed of een externe partij voor elke nieuwe AI-automatisering, hij bouwt ze zelf.

*Waarom dit lastig is in MKB-context.* Een goede skill schrijven is niet hetzelfde als een goede prompt schrijven. Een skill moet:
- Generaliseren naar veel situaties, niet één voorbeeld
- Goede triggers hebben zodat hij geactiveerd wordt op het juiste moment
- Heldere theory-of-mind bieden zodat de AI begrijpt waarom iets moet, niet alleen wat
- Lean blijven: niet vol met edge-cases die je nooit tegenkomt
- Getest zijn op meerdere use-cases voordat hij in productie gaat

De meeste ondernemers proberen dat alleen. Deze skill begeleidt ze.

*Waarom dit pas na de fundament-sprints kan.* Een skill bouwt voort op vault-content. `daily-briefing` werkt niet zonder gevulde Goals en Tasks. `salesproces-builder` werkt niet zonder ICP en Producten. Probeer je E6 zonder fundament, dan bouw je skills die niets vinden om mee te werken. **Vaste regel:** minstens Sprint 1 (Structure) en Sprint 2 (Juridisch) klaar voordat E6 zinvol is. Bij voorkeur ook Sprint 3 (Collect) zodat er data is om op te leunen.

*Waarom hier geen one-size-fits-all.* Skills komen in soorten en maten: interview-skills (`bedrijfsoverzicht`, `icp`), document-generators (`klantcontract-template`, `algemene-voorwaarden`), data-readers (`daily-briefing`, `rapportage-builder`), coaches (`doelen-coach`, `beslissings-analyse`), bouwers (`mission-control-builder`, `dashboard-bouwer`). Welke vorm de ondernemer nodig heeft, hangt af van het terugkerende proces dat hij wil automatiseren. Stap 1 van deze skill identificeert dat.

Resultaat: SCALE-audit E6 springt van ❌ of ⚠️ naar ✅, er staat minstens één werkende skill in `{scope}/IT/Skills/`, de ondernemer kent de skill-anatomie en kan zelf een tweede skill bouwen, en het Skills Overzicht is bijgewerkt.

## De 4 kernprincipes (bewaak deze door de hele sessie)

| # | Principe | Wat het betekent | Wat het tegenhoudt |
|---|---|---|---|
| **1** | **Lean** | Begin met minimum-viable skill: 1 SKILL.md, geen `references/`, geen `scripts/`. Uitbreiden pas wanneer testen dat afdwingen. | Voorkomt over-engineering: een ondernemer die 4 uur aan een skill bouwt die hij daarna nooit triggert. |
| **2** | **Generaliseer** | De skill moet werken op het algemene patroon, niet op het ene voorbeeld dat de ondernemer in zijn hoofd had. | Voorkomt overfitting: een skill die alleen werkt voor "het klantgesprek van afgelopen dinsdag" en faalt op het volgende. |
| **3** | **Documenteer waarom** | Bij elke regel een korte uitleg waarom hij er staat. Liever theory-of-mind ("we vragen één blok per beurt zodat de gebruiker niet overweldigd raakt") dan rigide ALWAYS/NEVER. | Voorkomt brittle skills: de AI moet kunnen redeneren over wanneer een regel niet relevant is, niet blind volgen. |
| **4** | **Test op divers** | Minstens 3 testprompts, met variatie in context, vraagstelling en eindgebruiker. Eén testprompt is geen test. | Voorkomt schijnzekerheid: een skill die op de eerste prompt werkt, faalt vaak op de tweede die net iets anders is. |

Bewaak deze door de hele sessie. Wijst de ondernemer in een fase af van een van deze vier, breng hem ernaar terug.

## Run-time introductie (toon aan gebruiker bij start)

Geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat en wat de voorwaarden zijn.

```
┌──────────────────────────────────────────────────────────┐
│  SKILL BUILDER COACH, SCALE-stap E6 (Engineer)            │
│  ~60-120 minuten · 1 nieuwe skill per sessie              │
└──────────────────────────────────────────────────────────┘

  In 60 tot 120 minuten bouwen we samen 1 nieuwe skill voor
  jouw bedrijfs-AI. Aan het einde staat er een werkende
  SKILL.md in IT/Skills/, getest op minstens 3 prompts.

  ┌────────────────────────────────────────────────────────┐
  │  VOORWAARDEN (LEES EERST)                               │
  │                                                         │
  │  E6 leunt op de fundament-sprints. Check eerst:         │
  │    [x] Sprint 1 (Structure) klaar? Bedrijfsoverzicht,   │
  │        ICP, Producten, Team etc.                        │
  │    [x] Sprint 2 (Juridisch) klaar? KvK, BTW, AV.        │
  │    [x] Sprint 3 (Collect) klaar of bezig?               │
  │                                                         │
  │  Zonder fundament bouw je een skill die niets vindt om  │
  │  mee te werken. Twijfel? Draai eerst scale-audit.       │
  └────────────────────────────────────────────────────────┘

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT, 8 FASES                       │
  │                                                         │
  │  [1] Probleem identificeren        (5-10 min)           │
  │      Welk terugkerend proces? Frequentie? Pijn?         │
  │                                                         │
  │  [2] Bestaande-skills-check        (5-10 min)           │
  │      Bestaat er al iets in Upscailed-bibliotheek,       │
  │      Anthropic-skills of Claude Code? Voorkom dubbel    │
  │      werk.                                              │
  │                                                         │
  │  [3] Skill-anatomie uitleggen      (10 min)             │
  │      Frontmatter + body + references + scripts.         │
  │      Wat hoort waar, en waarom.                         │
  │                                                         │
  │  [4] Skill-PRD opstellen           (15-25 min)          │
  │      Naam, doel, triggers, workflow, output-pad,        │
  │      schrijfregels, testprompts.                        │
  │                                                         │
  │  [5] Eerste-versie schrijven       (15-25 min)          │
  │      Lean: 1 SKILL.md zonder references. Uitbreiden     │
  │      pas als testen dat vragen.                         │
  │                                                         │
  │  [6] Test-cases draaien            (10-15 min)          │
  │      3 testprompts, divers. Wat werkt? Wat faalt?       │
  │                                                         │
  │  [7] Feedback-loop                 (10-15 min)          │
  │      Per faal-punt: wat moet duidelijker in de skill?   │
  │      Bijschaven, niet herschrijven.                     │
  │                                                         │
  │  [8] Polish                        (5-10 min)           │
  │      Description scherpstellen voor triggering,         │
  │      schrijfregels, runtime-intro, Skills Overzicht     │
  │      bijwerken, changelog.                              │
  └────────────────────────────────────────────────────────┘

  4 KERNPRINCIPES die ik door de hele sessie bewaak:
  [1] Lean         (begin met minimum)
  [2] Generaliseer (niet overfitten op 1 voorbeeld)
  [3] Documenteer waarom (theory-of-mind, geen ALWAYS/NEVER)
  [4] Test op divers (>1 use-case)

  Heb je al een ruw idee wat je skill zou moeten doen, of
  begin je echt blanco? Beide kan. Bij blanco start ik in
  fase 1 met een mini-inventarisatie van je terugkerende
  werk.
```

Vraag aan het einde: heeft de gebruiker al een ruw idee, of beginnen we bij nul met een mini-inventarisatie?

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  SKILL BUILDER COACH · E6 · 60-120 min · 1 skill          │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 0. Scope kiezen      │  Welk bedrijf?
   │    + voorwaarden     │  Welk pad?
   │                      │  Sprint 1+2 klaar?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Probleem          │  Welk terugkerend
   │    identificeren     │  proces? Frequentie?
   │                      │  Pijn-punt?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Bestaande-skills  │  Upscailed-44 +
   │    check             │  Anthropic-skills +
   │                      │  Claude Code
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Anatomie          │  Frontmatter +
   │    uitleggen         │  body + references
   │                      │  + scripts
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Skill-PRD         │  Naam, doel,
   │    opstellen         │  triggers, workflow,
   │                      │  output, regels,
   │                      │  testprompts
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Eerste versie     │  1 SKILL.md, lean,
   │    schrijven         │  zonder references
   │                      │  (tenzij nodig)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Test-cases        │  3 prompts,
   │    draaien           │  divers, handmatig
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Feedback-loop     │  Per faal-punt:
   │                      │  bijschaven, niet
   │                      │  herschrijven
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Polish + opslaan  │  Description,
   │                      │  schrijfregels,
   │                      │  runtime-intro,
   │                      │  Skills Overzicht
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Logging +         │  Changelog +
   │    vervolg           │  vervolg-skill
   │                      │  suggesties
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Ik wil een eigen skill bouwen" / "help me een skill maken"
- "Eigen AI-assistent ontwerpen voor mijn bedrijf"
- "Skill ontwerpen voor [terugkerend proces]"
- "Wat zou een goede skill voor mij zijn?"
- "Nieuwe skill voor [proces]" / "skill voor wat ik elke week doe"
- "Mijn eigen Claude-skill"
- "Hoe schrijf ik een SKILL.md?"
- "Leer mij skills bouwen" / "meta-skill" / "skill builder"
- "Mijn eigen agent maken"
- "E6 dichten in SCALE-audit" / "gap E6"
- "AI op maat voor mijn proces"
- "Iets terugkerends automatiseren met AI"

Triggert NIET wanneer:
- De gebruiker een **bestaande** skill wil aanpassen of debuggen (gebruik `anthropic-skills:skill-creator` direct, of laat de skill door de coach lopen en ga dan naar fase 7, feedback-loop)
- De gebruiker een **proces wil documenteren als SOP** (gebruik `sop-interviewer`, S10)
- De gebruiker een **proces wil automatiseren met Make/Zapier/n8n** (gebruik `sop-automatiseren`, L1)
- De gebruiker een **dashboard of mission-control** wil bouwen (gebruik `dashboard-bouwer`, E1 of `mission-control-builder`, A2)
- De gebruiker een **app of klantportaal** wil scopen (gebruik `app-scoping`, E2 of `klantportaal-scoping`, E4)
- De gebruiker een **workflow-pipeline** wil ontwerpen (gebruik `workflow-pipeline`, E3)
- De gebruiker een **kennisbank** wil organiseren (gebruik `kennisbank-organizer`, E5)
- De gebruiker een **prompt wil verbeteren** zonder een skill te bouwen (gebruik `prompt-optimaliseerder`)

## Workflow

### Stap 0: Scope kiezen en voorwaarden checken

Vraag voor welk bedrijf en in welk pad de nieuwe skill gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** met `IT/Skills/` direct onder de vault-root
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/IT/Skills/`)
- Een **Upscailed-OS-vault** (Google Drive-locatie voor Upscailed zelf) met dezelfde afdelingsstructuur

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze skill voor is?
2. Wat is het pad naar de bedrijfs-root? (Of "ik weet het niet, help me zoeken".)

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een `IT/Skills/`-map. Bevestig de gevonden scope voordat je doorgaat.

**Vervolgens: voorwaarden-check.** Stel drie korte vragen of doe een snelle vault-scan om te bevestigen dat het fundament er is:

1. Bestaat `{scope}/Directie/00 - Overzicht.md` met inhoud (niet leeg)?
2. Bestaat `{scope}/Directie/Playbook/ICP.md` of een gelijkwaardig bestand?
3. Bestaat `{scope}/Directie/01 - Goals.md` met meetbare doelen?

Als minstens twee van deze drie ontbreken: **adviseer om eerst de fundament-skills te draaien** (`bedrijfsoverzicht`, `icp`, `doelen-coach`). Vraag de ondernemer of hij wil doorzetten of eerst terug naar het fundament. Niet blokkeren, maar wel waarschuwen.

### Stap 1: Probleem identificeren

Doel: helder krijgen welk **terugkerend proces** de skill gaat raken. Een goede skill lost een terugkerend probleem op, niet een eenmalige klus.

Vragen aan de ondernemer:

1. **Welk proces?** Welk werk doe je vaker dan eens per maand en kost telkens minstens 15 minuten? (Voorbeelden om hem te helpen denken: maandelijkse klant-update schrijven, wekelijkse content-planning, nieuwe lead kwalificeren, factuur-status checken, week-rapport maken.)
2. **Hoe vaak?** Dagelijks, wekelijks, maandelijks, of bij elke klant?
3. **Wat is de pijn?** Waar loop je tegenaan? Vergeet je dingen, kost het te lang, lever je telkens een andere kwaliteit, of moet je telkens van voren af aan beginnen?
4. **Wat moet er uitkomen?** Een document, een lijst, een advies, een dashboard-update, een mail-concept, een beslissing?
5. **Wie gebruikt de output?** Alleen jij, een klant, je team, een externe partij?

**Heeft de ondernemer geen idee?** Vraag: noem drie dingen die je deze maand vaker dan eens hebt gedaan en die kostbaar voelden. Vaak komt het beste skill-idee uit irritatie, niet uit ambitie.

Schrijf het antwoord op in een kort intern blok (proces, frequentie, pijn, output, gebruiker). Dit wordt de input voor stap 2.

### Stap 2: Bestaande-skills-check

Voordat je een nieuwe skill bouwt: check of die al bestaat. Dubbel werk is de meest voorkomende verspilling in skill-bouw.

Scan drie bibliotheken:

1. **Upscailed-bibliotheek**, kijk in `{scope}/IT/Skills/` én in de Upscailed-OS skills-folder (`~/Library/CloudStorage/GoogleDrive-hallo@upscailed.nl/Mijn Drive/Upscailed-OS/IT/Skills/`) als die toegankelijk is. De 44 SCALE-skills + utility-skills (`feitencontrole`, `prompt-optimaliseerder`, `mcp-bouwer`, `presentatie-bouwer`, `skills-zoeker`, `audio-transcriber`, `agent-browser`, `open-router`, `scale-audit`).
2. **Anthropic-skills**, beschikbaar in elke Claude-installatie. Veel voorkomende: `skill-creator` (meta-tool), `pptx`, `xlsx`, `docx`, `pdf`, `consolidate-memory`, `setup-cowork`, `schedule`, `goals-review-preflight`.
3. **Claude Code skills**, `update-config`, `keybindings-help`, `simplify`, `fewer-permission-prompts`, `loop`, `schedule`, `claude-api`, `init`, `review`, `security-review`.

Per gevonden match: vergelijk met het probleem uit stap 1. Drie mogelijke uitkomsten:

| Uitkomst | Wat te doen |
|---|---|
| **Perfecte match** | Gebruik de bestaande skill. Coachen stopt hier, geen nieuwe skill nodig. |
| **Gedeeltelijke match** | De bestaande skill dekt 60-80 procent. Twee opties: (a) verbeter de bestaande skill via `anthropic-skills:skill-creator`, of (b) bouw een **wrapper-skill** die de bestaande aanroept en aanvult. Bespreek beide met de ondernemer. |
| **Geen match** | Ga door naar stap 3. Dit is écht een nieuwe skill. |

**Belangrijke regel:** wees streng bij "gedeeltelijke match". Een bestaande skill verbeteren is bijna altijd goedkoper dan een nieuwe bouwen. Alleen als de scope écht anders is (ander proces, andere output, andere doelgroep) een nieuwe rechtvaardigen.

### Stap 3: Skill-anatomie uitleggen

Leg de ondernemer kort de anatomie van een Upscailed-skill uit. Doel: hij begrijpt straks waarom welke regel waar staat.

```
SKILL.MD ANATOMIE, wat hoort waar

┌──────────────────────────────────────────────────────────┐
│  FRONTMATTER (verplicht, bovenaan tussen --- en ---)     │
│    name           Slug van de skill (mapnaam = name)     │
│    title          Korte titel voor mensen                │
│    description    Lange omschrijving + triggers          │
│                   Dit is wat de AI leest om te beslissen │
│                   wanneer hij de skill activeert         │
│    category       structure / collect / leverage / etc.  │
│    tags           Lijst voor zoek/filter                 │
│    estimatedTime  Hoe lang de sessie duurt               │
│    version        Semver: 1.0.0 voor een nieuwe skill    │
│    author         "Upscailed" of de bedrijfsnaam         │
│    license        MIT (default) of leeg                  │
│    scaleFramework true als SCALE-check gedekt wordt      │
└──────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────┐
│  BODY (de skill zelf, markdown na de frontmatter)        │
│                                                          │
│  # Titel                                                 │
│                                                          │
│  ## Doel                                                 │
│    Wat de skill bereikt, in 1-3 paragrafen.              │
│    Inclusief 'waarom dit nodig is'.                      │
│                                                          │
│  ## Run-time introductie                                 │
│    Wat de skill aan de gebruiker laat zien bij start.    │
│    Inclusief wat hem te wachten staat.                   │
│                                                          │
│  ## Visuele flow                                         │
│    ASCII-diagram van de stappen.                         │
│                                                          │
│  ## Wanneer triggeren / NIET triggeren                   │
│    Voorbeelden van triggers + tegenvoorbeelden.          │
│                                                          │
│  ## Workflow                                             │
│    Stap-voor-stap wat de skill doet.                     │
│                                                          │
│  ## Belangrijke regels                                   │
│    Theory-of-mind regels. Geen rigide ALWAYS/NEVER.      │
└──────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────┐
│  REFERENCES/ (optioneel, submap met templates)           │
│    template-{naam}.md = skelet voor de output            │
│    voorbeeld-{naam}.md = een ingevuld voorbeeld          │
│  Pas toevoegen als de eerste versie het nodig blijkt te  │
│  hebben. Niet vooraf bouwen.                             │
└──────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────┐
│  SCRIPTS/ (optioneel, submap met bestandsoperaties)      │
│    Bash/Python-scripts voor: PDF extraheren, web-scrape, │
│    bulk-renaming, data-conversie. Alleen als de skill    │
│    echt code uitvoert. Verreweg de meeste skills hebben  │
│    dit NIET nodig.                                       │
└──────────────────────────────────────────────────────────┘
```

Vraag aan de ondernemer of dit duidelijk is, en of hij vragen heeft over een specifiek onderdeel voordat we de eigen skill ontwerpen.

### Stap 4: Skill-PRD opstellen

Hier komt de denkfase. Doel: een korte PRD (Product Requirements Document) voor de nieuwe skill voordat we code schrijven. Dit is waar de meeste skills falen, niet in het schrijven maar in het ontwerp.

Gebruik het **PRD-blok** uit `references/template-skill-builder-coach.md`. De gebruiker vult per blok in:

1. **Naam (slug)**, kebab-case, max 30 tekens, beschrijvend zonder marketing-taal. Voorbeelden: `klant-update-generator`, `weekend-recap`, `factuur-status-check`. Niet: `awesome-helper`, `super-tool`.
2. **Titel (mens-leesbaar)**, Title Case, 2-4 woorden. "Klant Update Generator", "Weekend Recap", "Factuur Status Check".
3. **Doel (1 paragraaf)**, wat doet de skill, in welke tijd, met welk resultaat? Inclusief "voor wie": is de skill voor de ondernemer zelf, voor een teamlid, voor een klant?
4. **Triggers (10-20 zinnen)**, welke uitspraken activeren de skill? Variatie in formulering is belangrijk: korte, lange, formele, informele. Wat zou de ondernemer typen als hij dit nodig had?
5. **NIET-triggers (5-10 voorbeelden)**, welke aangrenzende behoeftes lijken erop maar horen ergens anders? Verwijs naar de bestaande skill die wel past.
6. **Input**, wat heeft de skill nodig om te draaien? Vault-bestanden (welke?), externe documenten, gebruikers-input?
7. **Output**, wat komt eruit? Een bestand (welk pad), een tabel, een lijst, een advies? Hoe lang ongeveer?
8. **Workflow (3-8 stappen)**, wat doet de skill stap voor stap? Per stap: korte beschrijving + vraag/actie.
9. **Schrijfregels**, taal (NL?), toon, conventies (geen em-dashes, geen marketing-superlatieven, etc.), formattering.
10. **3 testprompts**, drie expliciete voorbeeld-prompts waarvan de skill geactiveerd moet worden, met verschillende framings. Eén korte ("doe X"), één conceptueel ("hoe pak ik Y aan"), één impliciet ("ik wil dit voor mijn klant Z laten zien").

**Belangrijk:** dwing geen perfectie af. De PRD mag onaf zijn na 15-25 min; hij wordt bijgeschaafd in stap 5 en 7. Ga door zodra de hoofdlijnen helder zijn.

### Stap 5: Eerste versie schrijven (lean)

Schrijf de eerste versie van de skill. **Houd je aan principe 1 (Lean): begin met minimum.**

Gebruik `anthropic-skills:skill-creator` als meta-tool als die beschikbaar is. Dat is de Anthropic-skill die helpt om een nieuwe skill op te zetten. Activeer hem expliciet met *"Ik wil een nieuwe skill bouwen, hier is de PRD: [..."*. Hij neemt het over en levert een eerste SKILL.md.

Heb je `skill-creator` niet beschikbaar, schrijf de SKILL.md handmatig op basis van de PRD uit stap 4 plus het Upscailed-format dat we in stap 3 hebben uitgelegd.

**Lean-regels voor de eerste versie:**
- Eén SKILL.md, geen `references/`-map (komt later als nodig)
- Geen `scripts/`-map (komt later als nodig)
- Max 200 regels markdown. Als het langer wordt, zit er waarschijnlijk overdesign in.
- Frontmatter compleet, body met alle hoofdsecties (Doel, Run-time intro, Visuele flow, Wanneer triggeren, Workflow, Belangrijke regels)
- Geen geavanceerde features (chains, complexe pre-fill, externe API-calls). Eerst basis werken.

Sla op als:
```
{scope}/IT/Skills/{naam}/SKILL.md
```

Maak de map aan als die nog niet bestaat.

### Stap 6: Test-cases draaien

Draai de 3 testprompts uit stap 4 één voor één tegen de zojuist geschreven skill. **Niet automatiseren, niet bulk**: handmatig, één voor één, met de ondernemer mee-lezend.

Per testprompt:
1. Lees de prompt hardop voor (of laat de ondernemer hem typen).
2. Bedenk of de skill triggerde op de **description** (uit de frontmatter): zou een AI deze skill kiezen bij deze prompt?
3. Doorloop de workflow zoals beschreven in de SKILL.md. Zou een AI dit kunnen volgen?
4. Kom je bij een output? Klopt die met wat de PRD voorspelde?

Score per testprompt:
- ✅ **Werkt**: skill triggert, workflow loopt, output klopt
- ⚠️ **Werkt deels**: een van de drie haakt
- ❌ **Werkt niet**: skill triggert niet, workflow stokt, of output is verkeerd

Schrijf per testprompt op wat er werkte en wat niet. Dit wordt input voor stap 7.

**Speciale aandacht: variatie tussen testprompts.** Als alle drie testprompts identiek geformuleerd zijn, test je niets. Een echte test heeft variatie in framing, in concreetheid, in eindgebruiker.

### Stap 7: Feedback-loop

Per faal-punt uit stap 6: wat moet duidelijker in de skill? **Bijschaven, niet herschrijven.**

Veelvoorkomende patronen en hun fix:

| Probleem | Fix in SKILL.md |
|---|---|
| **Triggerde niet op testprompt** | Description-veld in frontmatter uitbreiden met meer triggers, variatie in formulering, of duidelijkere "wanneer activeren" |
| **Workflow stokt op vage stap** | Concretiseer die stap: één of twee voorbeeldvragen, of een mini-tabel met opties |
| **Output is te abstract** | Voeg een mini-voorbeeld toe in de "Workflow"-sectie, of maak een `references/template-{naam}.md` met het exacte skelet |
| **AI loopt door blokken die niet relevant zijn** | Voeg een "skip-regel" toe: "als blok X niet van toepassing, skip stilletjes" |
| **Tegenstrijdige regels** | Lees de Belangrijke regels-sectie kritisch: schrap of voeg theory-of-mind toe |
| **Te marketingerig** | Schrap "revolutionair", "next-level", em-dashes. Voeg de schrijfregel expliciet toe. |
| **Overfit op één voorbeeld** | Generaliseer: "voor alle X" in plaats van "voor klant Y", of voeg expliciet meerdere voorbeelden toe |
| **Te lang / te kort** | Markeer secties als optioneel of compact, of voeg uitleg toe waar nodig |

**Belangrijke regel:** wijzig **maximaal 3 dingen tegelijk**. Pas dan opnieuw testen. Wijzig je 10 dingen tegelijk, weet je niet wat de fix was.

Loop stap 6 en 7 één keer opnieuw na elke fix-ronde. Maximaal 3 fix-rondes per sessie. Werkt de skill na 3 rondes nog niet, terug naar stap 4 (PRD) want het ontwerp klopt niet.

### Stap 8: Polish

De skill werkt op de 3 testprompts. Tijd voor de afronding.

Werk de volgende dingen bij in de SKILL.md:
1. **Description-veld**: check dat hij nu rijk genoeg is (300-700 woorden), met variatie in trigger-formuleringen. Dit is wat de AI leest om te beslissen wanneer hij de skill activeert.
2. **Schrijfregels**: geen em-dashes, geen marketing-superlatieven, taalkeuze, formattering. Maak deze expliciet.
3. **Run-time introductie**: als die er nog niet is, voeg hem nu toe. Korte intro voor de gebruiker met wat hem te wachten staat.
4. **Visuele flow**: ASCII-diagram met de stappen die de skill doorloopt.
5. **Frontmatter version**: laat op `1.0.0`. Versie-bumps komen later, niet bij eerste release.

Werk daarna de **Skills Overzicht** bij in `Persoonlijk/Skills Overzicht.md` (of de bedrijfs-specifieke versie). Voeg een regel toe met: naam, titel, korte beschrijving, pad, categorie.

Werk ook `{scope}/IT/Skills/README.md` bij als die bestaat: voeg de nieuwe skill toe aan het overzicht.

### Stap 9: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf**: `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan: *"Nieuw: `IT/Skills/{naam}/SKILL.md` v1.0.0, eerste versie, 3 testprompts geslaagd"*.
2. **Daily**: als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat (Iwan-OS-conventie), log onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie**: als E6 op ❌ of ⚠️ staat in een audit-rapport, stel voor de audit opnieuw te draaien. Dit is de laatste stap die op groen springt om SCALE-volledig te zijn.

Vervolgsuggesties die je altijd noemt:
- **Tweede skill bouwen.** De ondernemer kent nu het patroon. Stel voor om binnen een week een tweede skill te bouwen voor een ander terugkerend proces. De tweede gaat twee keer zo snel.
- **Skill-bibliotheek opbouwen.** Houd de skills bij elkaar in `{scope}/IT/Skills/` met een README. Bij voldoende skills (>5) een eigen `IT/Skills/README.md` met categorie-overzicht.
- **Versiebeheer.** Bij elke wijziging na publicatie: bump de version (semver-light). Patches voor kleine fixes, minors voor nieuwe functionaliteit, majors voor breaking changes.
- **Vault-test.** Draai de skill na een week opnieuw op een echte case. Werkt hij nog? Wat moet bijgeschaafd?
- **Cross-bedrijf gebruik.** Werkt de skill voor meer dan één bedrijf? Verplaats hem naar `Persoonlijk/Skills/` (Iwan-OS-conventie) of een gedeelde locatie.

## Belangrijke regels

- **Voorwaarden eerst.** Sprint 1+2 moeten klaar zijn voordat E6 zinvol is. Bij twijfel: scale-audit draaien en kijken waar de vault staat. Niet blokkeren, wel waarschuwen.
- **Bestaande-skills-check is dwingend.** Sla stap 2 nooit over. Een groot deel van wat ondernemers willen bouwen, bestaat al. Dubbel werk is de meest voorkomende verspilling.
- **Lean voor de eerste versie.** Eén SKILL.md, geen `references/`, geen `scripts/`. Uitbreiden pas wanneer testen het afdwingen. Geen pre-emptive structuur.
- **Generaliseer, niet overfitten.** De skill moet werken voor het algemene patroon, niet voor één voorbeeld. Vraag bij elke regel: zou dit ook werken voor case X, Y, Z?
- **Theory-of-mind in plaats van rigide regels.** "We vragen één blok per beurt zodat de gebruiker niet overweldigd raakt" is beter dan "Stel ALTIJD één blok per beurt". De AI moet kunnen redeneren over wanneer de regel niet relevant is.
- **Test op minimaal 3 prompts, met variatie.** Eén testprompt is geen test. Variatie in framing, concreetheid en eindgebruiker is essentieel.
- **Per fix-ronde max 3 wijzigingen.** Wijzig je 10 dingen tegelijk, weet je niet wat de fix was. Test, fix max 3, test opnieuw.
- **Max 3 fix-rondes per sessie.** Werkt de skill na 3 rondes nog niet, terug naar PRD (stap 4). Dan klopt het ontwerp niet en is verder bijschaven verspilling.
- **Geen marketing-trucjes in de skill zelf.** Geen "imagine if...", geen rhetorische vragen, geen em-dashes. Recht voor zijn raap.
- **Frontmatter is geen bijzaak.** Het description-veld is wat de AI leest om de skill te activeren. Een rijke, gevarieerde description is het verschil tussen een skill die wordt gebruikt en een die in de la blijft liggen.
- **Vault-onafhankelijk.** De skill die we bouwen moet zelf ook vault-onafhankelijk zijn: alleen relatieve paden binnen `{scope}`, geen aannames over vault-naam of eigenaar.
- **Geen aannames over hoe de gebruiker zijn AI gebruikt.** Sommige ondernemers werken via Claude Desktop, andere via Claude Code, weer andere via een eigen MCP. De skill moet werken in alle drie.
- **Documenteer cross-links naar gerelateerde skills.** In "Wanneer NIET triggeren" expliciet verwijzen naar de wel-passende skill. Dit voorkomt dat de nieuwe skill ander werk overlapt.

## Voorbeeld-output

Zie [`references/template-skill-builder-coach.md`](references/template-skill-builder-coach.md) voor het PRD-skelet dat de ondernemer in stap 4 invult, plus het schema voor het Skills Overzicht.

Levende voorbeelden van werkende Upscailed-skills (gebruik als reference tijdens stap 3 en 4):
- **Interview-skill:** [`bedrijfsoverzicht`](../bedrijfsoverzicht/SKILL.md), 7 blokken, pre-fill, vault-scan
- **Document-generator:** [`klantcontract-template`](../klantcontract-template/SKILL.md), 5-7 vragen, variant-pattern
- **Coach:** [`beslissings-analyse`](../beslissings-analyse/SKILL.md), playbook + ad-hoc-template
- **Data-reader:** [`daily-briefing`](../daily-briefing/SKILL.md), 7-sectie-spec, scheduled task
- **Bouwer:** [`mission-control-builder`](../mission-control-builder/SKILL.md), 30-sec-design, 5 ontwerpblokken
- **Audit:** [`scale-audit`](../scale-audit/SKILL.md), de audit zelf, 47 controlepunten

Als meta-tool voor de eerste versie: [`anthropic-skills:skill-creator`](https://docs.claude.com/), Anthropic's eigen skill voor het bouwen van skills. Beschikbaar in elke Claude-installatie.

## Disclaimer

**Dit is de meta-skill**, de laatste van de 44 SCALE-skills. Pas in te zetten ná Sprint 1 (Structure) en Sprint 2 (Juridisch), en bij voorkeur ook Sprint 3 (Collect). Een goede skill leunt op een gevulde vault: zonder bedrijfsoverzicht, ICP, producten, processen en data heeft een skill niets om mee te werken.

Probeer je E6 als eerste SCALE-stap, dan bouw je een lege schil. Doe eerst het werk dat het materiaal oplevert, dan pas de skill die ermee werkt.
