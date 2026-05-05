---
name: os-builder
title: "Personal OS Builder"
description: "Begeleidt een ondernemer interactief bij het opzetten van een persoonlijk AI Operating System (Second Brain) volgens een bewezen structuur. Maakt de complete mappenboom aan, genereert een gepersonaliseerde CLAUDE.md, plus alle starter-bestanden (overzichten, goals, tasks, dailies). Eindigt met een concrete actielijst van wat de gebruiker zelf nog moet aanvullen om de OS waardevol te maken. Activeer altijd wanneer iemand zegt: 'ik wil mijn eigen second brain', 'OS opzetten', 'AI-OS bouwen', 'personal vault inrichten', 'kennisbank aanleggen voor mijn bedrijf', 'mijn business structureren met AI', 'Obsidian setup voor ondernemers', of vergelijkbare verzoeken om een AI-vriendelijke kennisstructuur op te bouwen. Triggert ook bij 'hoe begin ik met Claude Code voor mijn bedrijf', 'second brain bouwen', 'mijn ondernemingsadministratie automatiseren', 'systeemarchitectuur voor solopreneur'. Werkt voor zowel solopreneurs met één bedrijf als ondernemers met meerdere bedrijven."
category: operations
tags: [setup, second-brain, vault, knowledge-base, onboarding, claude-code, ondernemerschap]
estimatedTime: "30-45 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
---

# Personal OS Builder

## Doel

Bouwt voor een ondernemer in één sessie een complete, AI-vriendelijke Second Brain (Operating System) op het filesystem. De gebruiker krijgt na de sessie:

1. Een werkende mappenstructuur met de juiste afdelingen per bedrijf
2. Een `CLAUDE.md` die exact past bij hun situatie (1 bedrijf of N bedrijven, hun naam, hun stijl)
3. Starter-bestanden gevuld met de context die uit de vragen-flow is verzameld
4. Een heldere actielijst van wat ze zelf nog moeten invullen om de OS écht waardevol te maken

De skill is ontworpen op basis van een werkende referentie-implementatie waar een solopreneur meerdere bedrijven mee runt. De structuur is bewezen: scheiding tussen "het bedrijf" en "de mens", standaard-afdelingen die ondernemerstaal volgen, en automatische audit-trails (changelogs, dailies) die de AI helpen consistent te werken.

## Visuele Flow

```
┌─────────────────────────────────────────────────────────┐
│  PERSONAL OS BUILDER                                     │
└─────────────┬───────────────────────────────────────────┘
              ▼
   ┌─────────────────────┐
   │ 1. Pad kiezen       │  Waar moet de OS leven?
   │                     │  Nieuwe map of bestaande?
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 2. Profiel-vragen   │  Naam, situatie, visie,
   │                     │  ondernemerschap-stijl
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 3. Bedrijfs-vragen  │  1 bedrijf of N? Per bedrijf:
   │                     │  naam, fase, propositie
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 4. Mappen + bestand │  Genereer de tree en
   │    aanmaken         │  alle starter-files
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 5. Eindrapport +    │  Wat staat er, wat nog
   │    actielijst       │  zelf in te vullen
   └─────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker:
- Een persoonlijke kennisbank, vault of Second Brain wil opzetten
- Hun bedrijf of bedrijven wil structureren in een mappensysteem dat AI-vriendelijk is
- Vraagt hoe ze moeten beginnen met Claude Code, Obsidian, of een vergelijkbaar systeem
- Een werkende referentie-implementatie wil overnemen voor hun eigen situatie

Triggert NIET wanneer:
- De gebruiker een specifieke skill of tool wil bouwen (gebruik dan `skill-creator`)
- Het puur om visuele branding gaat (gebruik `brand-guidelines`)
- Het een eenmalige content-vraag is

## Belangrijke voorbereiding

Voordat je de flow start, controleer of je in een filesystem-omgeving bent met schrijfrechten (bv. Claude Code lokaal). Als dat niet zo is, schakel over naar een gids-modus: leg uit wat de gebruiker handmatig moet doen, in plaats van mappen aan te maken.

## Workflow

### Stap 1: Pad en context

Vraag waar de OS moet komen te staan en of er al iets bestaat.

**Vraagblok 1 (gebruik AskUserQuestion indien beschikbaar, anders inline):**

1. "Waar moet je OS-map komen?" Bied opties als:
   - Een nieuwe map onder de Home-folder (bv. `~/MijnNaam-OS/`)
   - Een nieuwe map in iCloud Drive (bv. `~/Library/Mobile Documents/com~apple~CloudDocs/MijnNaam-OS/`)
   - Een nieuwe map in Documents (`~/Documents/MijnNaam-OS/`)
   - Een eigen pad dat de gebruiker zelf opgeeft

2. "Heb je al een bestaande vault of Second Brain die we moeten respecteren?" (Ja/Nee). Als ja, vraag het pad en wijs erop dat je naast de bestaande inhoud bouwt, niet erover heen schrijft.

Voer een veiligheids-check uit: bestaat de doelmap al en is hij leeg? Zo niet, vraag bevestiging voordat je doorgaat. **Schrijf NOOIT bestanden over zonder expliciete toestemming.**

### Stap 2: Profiel-vragen (de mens)

Verzamel de basisinformatie over de gebruiker zelf. Dit komt later terecht in `Persoonlijk/00 - Over [Naam].md` en in `CLAUDE.md`.

**Vraagblok 2:**

1. "Wat is je voornaam?" (open antwoord, gebruikt voor mapnaam-suggesties en bestandsnamen)
2. "Hoe omschrijf je jezelf als ondernemer?" Bied opties:
   - "Solopreneur, één onderneming"
   - "Solopreneur, portfolio-ondernemer met meerdere bedrijven"
   - "Eigenaar/oprichter met team"
   - "Anders, ik leg het zelf uit"
3. "In welke taal wil je dat je OS standaard wordt opgezet?" (Nederlands aanbevolen, want alle prompts en templates zijn Nederlands)

Wacht op antwoorden voordat je doorgaat. Verwerk het antwoord op vraag 2 zorgvuldig: het bepaalt of de map `Bedrijven/` of een directe bedrijfsnaam-map wordt.

### Stap 3: Bedrijfs-vragen

Per bedrijf wil je weten: naam, fase, propositie. Voor elk bedrijf één korte ronde.

**Eerst:**
- "Hoeveel bedrijven heb je?" Als 1, ga met dat ene bedrijf door. Als meer, vraag eerst de namen op (één lijst), daarna per bedrijf de details.

**Per bedrijf:**

1. "Wat is de officiële naam van het bedrijf?" (open)
2. "In welke fase zit dit bedrijf?" Opties:
   - Idee-fase (concept wordt nog uitgewerkt)
   - Opstart (draait, eerste klanten/omzet)
   - Groei (validatie achter de rug, opschalen)
   - Stabiel (vaste klantenkring, doorlopende omzet)
   - In transitie / herpositionering
3. "Wat doet dit bedrijf in één zin?" (de propositie)
4. "Wie is de doelgroep?" (open, kort)

Bij meerdere bedrijven: na alle bedrijven, vraag of de gebruiker een hoofdbedrijf wil aanwijzen (komt eerst in dailies/dashboards) of dat alle bedrijven gelijkwaardig zijn.

### Stap 4: Mappen en bestanden aanmaken

Nu heb je genoeg context om te bouwen. Voer de volgende stappen uit, in deze volgorde, en log elke stap in een korte voortgangsindicator naar de gebruiker ("Map aangemaakt: ..., bestand geschreven: ...").

#### 4a. Hoofdmap

Maak de doelmap aan via `mkdir -p`. Als de map al bestaat en bestanden bevat, vraag opnieuw om bevestiging.

#### 4b. Vault-tree

Volg de structuur uit `references/vault-structure.md`. Bij één bedrijf wordt `Bedrijven/[Naam]/` vervangen door `[Naam]/` op het top-level. Bij meerdere bedrijven blijft `Bedrijven/`.

Maak alle vaste mappen aan:

- `[Naam]/` of `Bedrijven/[Naam]/` per bedrijf, met de 10 standaard-afdelingen (Directie, Financiën, Sales, Marketing, Operations, Klantenservice, HR, IT, Inkoop, Juridisch) plus `Projects/`
- `Persoonlijk/` met `Skills/`, `AI-Tools/`, `Projects/`, `Research/`, `Resources/`, `Goals/`
- `Huddle/Daily/`, `Huddle/Weekly/`, `Huddle/Monthly/`
- `Systeem/Templates/`, `Systeem/Structuur/`

#### 4c. Hoofdbestanden genereren

Gebruik de templates uit `references/templates.md`. Vervang placeholders met de antwoorden uit de vragenflow.

Genereer in deze volgorde (zodat ze elkaar correct kunnen referentiëren):

1. `CLAUDE.md` (vault-root) — gepersonaliseerd op basis van naam, aantal bedrijven, namen, fases
2. `Persoonlijk/00 - Over [Naam].md` — profiel-skelet
3. `Persoonlijk/01 - Goals.md` — leeg goals-skelet voor 2026
4. `Persoonlijk/02 - Tasks.md` — lege tasks-lijst met juiste frontmatter
5. `Persoonlijk/Inbox.md` — lege inbox
6. `Persoonlijk/Changelog.md` — leeg changelog met header
7. `Persoonlijk/Afspraken AI.md` — werkafspraken-skelet (em-dash regel, etc.)
8. `Persoonlijk/Strategie.md` — alleen bij meerdere bedrijven, anders skip
9. `Persoonlijk/ICP.md` — ICP-skelet per bedrijf
10. Per bedrijf:
    - `[Bedrijf]/Directie/00 - Overzicht.md` — gevuld met de propositie en fase uit de vragen
    - `[Bedrijf]/Directie/01 - Goals.md` — leeg goals-skelet
    - `[Bedrijf]/Directie/02 - Tasks.md` — lege tasks-lijst
    - `[Bedrijf]/Directie/Changelog.md` — leeg changelog
    - `[Bedrijf]/IT/Skills/README.md` — skills-overzicht-skelet
    - `[Bedrijf]/IT/AI-Tools/README.md` — AI-tools-overzicht-skelet
11. `Systeem/Templates/Daily Log.md` — daily-template (aangepast op aantal bedrijven)
12. `Systeem/Templates/Weekly Review.md`
13. `Systeem/Templates/Project.md`
14. `Systeem/Templates/Goal.md`
15. `Systeem/Structuur/Vault Structuur.md` — beschrijving van de gebouwde structuur
16. `Systeem/Structuur/Vault Changelog.md` — eerste entry: "OS opgezet via os-builder skill op [datum]"

Voor elk bestand: lees de template uit `references/templates.md`, vul placeholders in, schrijf naar het juiste pad. **Schrijf NOOIT over een bestand dat al bestaat zonder bevestiging.**

#### 4d. .gitignore (optioneel)

Vraag of de gebruiker de OS in Git wil zetten. Zo ja, schrijf een sensibel `.gitignore` (geen `.env`, geen `node_modules`, geen `*-state.md` voor skill-state-bestanden, etc.) en stel voor om `git init` te draaien. Doe dit niet automatisch, alleen op verzoek.

### Stap 5: Eindrapport en actielijst

Sluit af met een gestructureerd rapport. Gebruik de template uit `references/post-setup-checklist.md` en vul aan met de specifieke acties die uit de gegevens van deze gebruiker volgen.

Het rapport bevat drie delen:

**Deel A: Wat staat er nu (gegenereerd door deze skill)**
- Aantal mappen aangemaakt
- Aantal bestanden gegenereerd
- Pad naar de vault
- Hoe je er morgen weer in komt: open de vault-map met je editor of in Claude Code

**Deel B: Eerstvolgende acties (echt nodig om OS waardevol te maken)**
Sorteer op urgentie. Voor elke actie: korte uitleg waarom het belangrijk is.

Verplichte items voor elke gebruiker:
- Vul `Persoonlijk/00 - Over [Naam].md` aan: visie, waarden, achtergrond, werkstijl. AI heeft dit nodig om jou te begrijpen
- Voor elk bedrijf: vul `[Bedrijf]/Directie/00 - Overzicht.md` aan met missie, KPI's, kanalen, status
- Vul `Persoonlijk/01 - Goals.md` met 1 tot 3 jaardoelen (meetbaar). Zonder doelen kan AI je niet helpen sturen
- Vul `Persoonlijk/Afspraken AI.md` met persoonlijke werkafspraken (taalvoorkeur, woordkeuze-regels, mail-regels)

Optioneel maar sterk aanbevolen:
- Voor elk bedrijf: brand guidelines schrijven (kan met `brand-guidelines` skill)
- Voor elk bedrijf: tone of voice schrijven (kan met `tone-of-voice` skill)
- ICP per bedrijf invullen
- Strategie cross-bedrijf invullen (alleen relevant bij meerdere bedrijven)

**Deel C: Vervolgskills die bij dit punt waardevol zijn**
- `tone-of-voice` voor merk-communicatie
- `brand-guidelines` voor visuele richtlijnen
- `prompt-optimaliseerder` om je eerste prompts scherp te krijgen
- `feitencontrole` voor content-werk

Sluit af met: "Vandaag of morgen tijd vrijmaken voor 30-60 minuten om Deel B aan te vullen, geeft je AI direct de context die hij nodig heeft. Zonder die context blijft de OS leeg. Zal ik nu beginnen met `Persoonlijk/00 - Over [Naam].md` invullen?"

## Veiligheid en grenzen

- **Schrijf nooit over bestaande bestanden zonder expliciete bevestiging.** Als de gebruiker een bestaande vault opgeeft, controleer eerst of de doelpaden leeg zijn.
- **Maak geen aannames over religie, politiek, of relatiestatus.** Als de gebruiker zelf niets aangeeft over geloof, gezin of waarden, sla die secties leeg en laat de gebruiker het zelf invullen.
- **Vraag toestemming voordat je `git init` draait of een remote toevoegt.** Pushen naar een Git-host doet de gebruiker zelf.
- **Loop niet vooruit.** Maak geen branding, ICP-content of strategie automatisch aan: dat is werk dat de gebruiker zelf moet leveren via de vervolgskills.

## Belangrijke regels

- Stel vragen via keuzeblokken waar mogelijk (AskUserQuestion-tool indien beschikbaar) zodat de gebruiker snel antwoorden kan geven
- Wacht op antwoorden voor je verder gaat
- Werk in het Nederlands tenzij de gebruiker uitdrukkelijk Engels of een andere taal kiest
- Gebruik geen em-dashes in gegenereerde bestanden of in je communicatie. Gebruik komma's of nieuwe zinnen
- Behandel "actie" en "actielijst" als de standaardterm in plaats van "taak" of "to do"
- Geef tussentijdse voortgangsupdates ("Map aangemaakt", "Bestand geschreven") zodat de gebruiker ziet dat het werkt
- Als iets onduidelijk is, vraag het. Liever één extra vraag dan een aanname die later moet worden teruggedraaid
