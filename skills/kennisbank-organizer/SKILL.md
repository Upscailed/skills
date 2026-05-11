---
name: kennisbank-organizer
title: "Kennisbank Organizer"
description: "Helpt een ondernemer in 60 tot 120 minuten een werkende interne kennisbank op te zetten zodat het bedrijf zijn kennis structureel verzamelt, doorzoekbaar maakt en bewaakt. Dit is SCALE-stap E5 (Engineer): de fase waarin verspreide kennis (Google Docs, mails, hoofden van mensen, oude Notion-pagina's, screenshots in Slack) wordt samengebracht in één bevraagbare bron met eigenaars, update-cadans en optioneel een RAG-laag erbovenop. De skill maakt eerst een tool-keuze tussen Notion, Obsidian-vault, Confluence, Slite, Slab, GitBook, Outline of een zelfgebouwde stack op Astro plus content-collections, op basis van team-grootte, technische volwassenheid en gewenste AI-integratie. Daarna bouwt hij de structuur op rond 8 vaste categorieen (Bedrijfsinfo, Producten, Klantinfo, Processen, Templates, Onboarding, Tools, Trainings), wijst per categorie een owner toe (cross-link naar S11 Team), legt een update-cadans vast (bedrijfsinfo jaarlijks, processen kwartaal, klantinfo doorlopend), tagt op afdeling, proces en klantsegment, configureert search en stelt een onboarding-leespad op voor nieuwe medewerkers (welke docs in week 1). Tot slot beschrijft hij hoe een RAG-systeem (kennisbank-content → embedding → AI-assistant) eraan vast kan zodat medewerkers de bank in natuurlijke taal kunnen bevragen. De skill werkt vault-onafhankelijk, scant bestaande bronnen (00-Overzicht, alle Playbook-documenten, SOPs uit Operations/Processen, S11 Team voor owners, S12 Toolstack voor tool-keuze, J4 Privacy voor intern-versus-extern-classificatie) en vraagt actief naar externe documenten (huidige Google Drive- of Dropbox-structuur, Notion-workspace-URL, oude wiki-export, lijst-van-veelgestelde-vragen-aan-de-ondernemer). Activeer altijd wanneer iemand zegt: 'kennisbank opzetten', 'interne wiki bouwen', 'Notion-workspace structureren', 'centraal kennisoverzicht', 'doorzoekbare documentatie', 'second brain voor het bedrijf', 'informatie ontsluiten voor team', 'onboarding-docs centraal zetten', 'kennis vastleggen die nu in mijn hoofd zit', 'AI laten zoeken in mijn docs', 'RAG bouwen op bedrijfskennis', 'kennisdeling structureren', 'E5 dichten in SCALE-audit', 'gap E5', 'wat moet een nieuwe medewerker lezen', 'vraagbaak voor het team', 'wiki versus Notion versus Obsidian-keuze'. Triggert ook bij iedere expliciete verwijzing naar E5, kennisbank, knowledge base of interne wiki."
category: bouwen
tags: [scale-framework, e5, engineer, kennisbank, wiki, documentatie, notion, obsidian, rag, ai-zoek]
estimatedTime: "60 tot 120 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Kennisbank Organizer

## Doel

Helpt een ondernemer om in 60 tot 120 minuten een werkende **interne kennisbank** op te zetten zodat het bedrijf zijn kennis structureel verzamelt, doorzoekbaar maakt en bewaakt. Output: één canonieke bron (Notion-workspace, Obsidian-vault, Confluence-space, GitBook-site of eigen Astro-stack), aangevuld met een index-document **`{scope}/IT/Kennisbank.md`** dat de structuur, eigenaars en update-cadans vastlegt. Dit is SCALE-stap E5 (Engineer).

*Waarom dit fundamenteel is.* Veel MKB-bedrijven hebben hun kennis verspreid over Google Drive, e-mailtjes, oude Notion-pagina's, screenshots in Slack en het hoofd van de ondernemer. Dat is werkbaar voor één persoon, kapot voor twee. Een kennisbank zet die kennis op één plek met **drie expliciete eigenschappen**: vindbaar (search), actueel (update-cadans met owners) en bevraagbaar (optioneel een RAG-laag zodat medewerkers in natuurlijke taal vragen kunnen stellen).

*Waarom de tool-keuze er toe doet.* Een kennisbank in Confluence voor een team van drie is overkill. Een kennisbank in Obsidian voor een niet-technisch team is een no-go. De skill maakt eerst een gemotiveerde tool-keuze op basis van team-grootte, technische volwassenheid en AI-integratie-wens, en bouwt daarna pas de structuur. Dit voorkomt dat de ondernemer na twee maanden weer migreert.

*Waarom 8 categorieen, niet 25.* Een kennisbank met 25 hoofdsecties wordt niet gevonden. 8 vaste categorieen (Bedrijfsinfo, Producten, Klantinfo, Processen, Templates, Onboarding, Tools, Trainings) dekken het MKB in vrijwel alle gevallen. Eventueel aanvullen met 1 tot 2 bedrijfsspecifieke categorieen (bv. R en D voor productbedrijven, Compliance voor zorg, Cases voor bureau's), maar het basisskelet blijft hetzelfde.

*Waarom owner per categorie verplicht is.* Een document zonder eigenaar veroudert. Per categorie wijst de skill een owner toe (cross-link naar S11 Team). Die owner is de enige persoon die mag zeggen "dit is actueel" of "dit moet bijgewerkt". Geen owner = categorie krijgt geen plek in de bank.

*Waarom update-cadans expliciet wordt vastgelegd.* Bedrijfsinfo verandert jaarlijks, processen kwartaal, klantinfo doorlopend. Zonder cadans vergeet je sommige docs zes jaar lang. Met cadans wordt elke owner periodiek getriggerd om zijn categorie te reviewen.

*Waarom een onboarding-leespad apart wordt opgeleverd.* Een nieuwe medewerker moet in week 1 niet alle 200 docs lezen, maar de 8 tot 12 belangrijkste. De skill stelt dat pad expliciet samen, met volgorde, geschatte leestijd en een check-in moment na elke groep.

*Waarom RAG optioneel is.* RAG (Retrieval Augmented Generation, kennisbank-content → embedding → AI-assistant) maakt de bank bevraagbaar in natuurlijke taal. Niet elk bedrijf is daar klaar voor (kost een paar uur setup, vereist een AI-budget, vraagt structuur in de docs). De skill biedt het als laatste stap in de workflow, met expliciete go/no-go op basis van team-grootte en docs-volume.

Resultaat: SCALE-audit E5 springt van ❌ of ⚠️ naar ✅, er ligt een werkende kennisbank met minstens 3 docs per categorie, elke categorie heeft een owner en cadans, het onboarding-leespad ligt klaar, en de RAG-bouwopdracht staat geformuleerd (of bewust uitgesteld).

## Tool-keuze (8 opties, één beslissing)

De skill maakt een gemotiveerde tool-keuze tussen acht opties. Maakt onderscheid op vier assen: team-grootte, technische volwassenheid, gewenste AI-integratie, budget per maand.

| # | Tool | Sweet spot | Sterke punten | Zwakke punten | AI-integratie | Kosten/mnd |
|---|---|---|---|---|---|---|
| 1 | **Notion** | 2 tot 50 medewerkers, klassiek MKB | Gratis tot 10 gebruikers, vlakke leercurve, blokken-systeem, sjabloon-bibliotheek, ingebouwde Notion AI | Search wordt traag bij grote workspaces, exporteren naar markdown kostte historisch moeite | Notion AI ingebouwd (€8/gebr/mnd), externe RAG via Notion-API → embedding-pipeline | Gratis tot 10 gebruikers, daarna €8 tot €15/gebr/mnd |
| 2 | **Obsidian-vault** | 1 tot 5 technische ondernemers, lokale markdown | Lokale bestanden in markdown, plugin-ecosysteem, Git-versiebeheer mogelijk, alles open standaard | Niet geschikt voor niet-technische teams, samenwerking via Sync (betaald) of Git, geen native web-UI voor lezers | Lokale AI-plugins (Smart Connections, Copilot), externe RAG via vault-files → embedding | Gratis (vault) of €4 tot €10/mnd (Obsidian Sync of Publish) |
| 3 | **Confluence** | 20-plus medewerkers, al in Atlassian-stack (Jira) | Naadloze koppeling met Jira, enterprise-grade rechten, krachtige spaces | Zwaar, langzaam, marketing-stijl interface, leercurve, prijs schaalt snel | Atlassian Intelligence (per seat), externe RAG via Confluence-API | Gratis tot 10 gebruikers, daarna €5,75 tot €11/gebr/mnd, AI per seat duurder |
| 4 | **Slite** | 5 tot 25 medewerkers, doc-first | Eenvoudige UI, snel zoeken, AI-assistent ingebouwd, sjablonen | Minder veelzijdig dan Notion, kleinere community | Slite Ask (ingebouwd), externe RAG via API | €8 tot €15/gebr/mnd |
| 5 | **Slab** | 10 tot 100 medewerkers, document-focus | Schone UI, sterk in versiebeheer en verifieren-status per doc, Slack-integratie | Minder bekend, kleiner ecosysteem | Slab AI Search (ingebouwd) | €6,67 tot €12,50/gebr/mnd |
| 6 | **GitBook** | Technische teams, productdocumentatie | Markdown-native, sterke API en developer-flows, publieke docs makkelijk, AI-zoeken | Voelt meer als productdoc-tool dan algemene kennisbank | GitBook AI Search en GitBook Lens | Gratis tot 5 personen, daarna $8 tot $12.50/gebr/mnd |
| 7 | **Outline** | 5 tot 50 medewerkers, open-source-voorkeur | Open-source, self-host mogelijk, schone markdown-UI, sterk in beveiliging | Minder sjablonen dan Notion, kleinere community | Outline AI Answers (cloud) of zelf-bouwen op self-host | $10/gebr/mnd cloud, gratis self-hosted |
| 8 | **Zelfgebouwd (Astro + content-collections)** | Technische ondernemer of klein dev-team, deel-publiek | Volledige controle, markdown-files in Git, automatisch deploy, kan publiek of besloten draaien | Bouw-uren vooraf, zelf onderhoud, geen out-of-the-box samenwerking | Eigen RAG-stack volledig in te richten | Hosting €0 tot €20/mnd, bouw-tijd 20 tot 60 uur |

**Default-keuze als de gebruiker geen voorkeur heeft:**

- Team 1 tot 3, niet-technisch, klassiek MKB → **Notion** (gratis-tier doet wat hij moet doen, sjabloon-bibliotheek schaalt mee).
- Team 1 tot 5, technische ondernemer, lokale data-voorkeur → **Obsidian-vault** met Git-backup.
- Team 10-plus al in Atlassian → **Confluence**.
- Team 10-plus, niet in Atlassian, wil ingebouwde AI → **Slite** of **Slab**.
- Productbedrijf met technische docs → **GitBook**.
- Open-source-voorkeur of GDPR-strenge sector → **Outline self-hosted**.
- Bouw-budget plus dev-skills en lange horizon → **Zelfgebouwd op Astro**.

De skill maakt deze keuze expliciet en motiveert hem op basis van het beantwoorde tool-keuze-blok in stap 5 (Interview, blok 1).

## Run-time introductie (toon aan gebruiker bij start)

Geef de gebruiker bij start een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  KENNISBANK ORGANIZER - SCALE-stap E5 (Engineer)          │
│  ~60-120 minuten · tool-keuze + 8 categorieen + RAG       │
└──────────────────────────────────────────────────────────┘

  In 60 tot 120 minuten zetten we een werkende interne
  kennisbank op: doorzoekbaar, met eigenaars per categorie,
  update-cadans vastgelegd en optioneel een AI-laag erbovenop
  waar je medewerkers in natuurlijke taal vragen aan kunnen
  stellen.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • Vooraf scan ik wat er al in je vault staat:          │
  │      Directie/00 - Overzicht (bedrijfsinfo)             │
  │      Directie/Playbook (brand, tone, ICP)               │
  │      Operations/Processen (SOPs)                        │
  │      HR/Team.md (mogelijke owners)                      │
  │      IT/Toolstack.md (huidige tools, integraties)       │
  │      Juridisch/Privacyverklaring.md (intern-vs-extern)  │
  │  • Externe input welkom: huidige Google Drive- of       │
  │    Dropbox-mappenstructuur, een Notion-workspace-URL,   │
  │    oude wiki-export, lijst van vragen die mensen        │
  │    steeds aan jou stellen                               │
  │  • Interview in 7 blokken, één per beurt:               │
  │      [1] Tool-keuze   [2] Scope + bestaande bronnen     │
  │      [3] Categorieen + owners                           │
  │      [4] Update-cadans + tags                           │
  │      [5] Search + access                                │
  │      [6] Onboarding-leespad                             │
  │      [7] AI / RAG-laag (go-no-go)                       │
  │  • Aan het eind: werkende basisstructuur in de gekozen  │
  │    tool, IT/Kennisbank.md als index-document in je      │
  │    vault, plus een 2-weken-vulplan                      │
  └────────────────────────────────────────────────────────┘

  Heb je externe input klaar? Bijvoorbeeld:
  • Huidige Drive/Dropbox-mapstructuur (screenshot of export)
  • Notion-workspace-URL als je daar al wat hebt staan
  • Oude wiki-export (Confluence, BookStack, oude tools)
  • Lijst van vragen die teamleden steeds aan jou stellen
  • Inhoud-bibliotheek (vorige onboarding-docs, FAQs)

  Dan kun je dat nu noemen - hoe meer bronnen, hoe minder ik
  hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  KENNISBANK ORGANIZER - E5 · 60-120 min · 7 blokken       │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  00 - Overzicht,
   │    (auto-discover)   │  Playbook, SOPs,
   │                      │  Team, Toolstack,
   │                      │  Privacy
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe input?    │  Huidige Drive,
   │                      │  Notion-URL,
   │                      │  oude wiki,
   │                      │  vragen-lijst
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per blok, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, blok   │  7 blokken,
   │    voor blok         │  1-3 vragen elk
   │                      │  [1] Tool-keuze
   │                      │  [2] Scope/bronnen
   │                      │  [3] Categorieen
   │                      │      + owners
   │                      │  [4] Cadans + tags
   │                      │  [5] Search/access
   │                      │  [6] Onboarding-pad
   │                      │  [7] RAG go/no-go
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Tool inrichten    │  Workspace/vault/
   │                      │  space opzetten,
   │                      │  categorieen
   │                      │  aanmaken, eerste
   │                      │  3 docs per cat
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Index schrijven   │  IT/Kennisbank.md
   │    + opslaan         │  als single source
   │                      │  of truth voor
   │                      │  structuur
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. RAG-laag (opt)    │  Embedding-pipe,
   │                      │  AI-assistant op
   │                      │  kennisbank
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Logging +         │  Changelog +
   │    vervolg-          │  cross-link
   │    suggesties        │  S10/S11/S12/J4
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Kennisbank opzetten" / "interne wiki bouwen"
- "Notion-workspace structureren" / "centraal kennisoverzicht"
- "Doorzoekbare documentatie" / "second brain voor het bedrijf"
- "Informatie ontsluiten voor team"
- "Onboarding-docs centraal zetten"
- "Kennis vastleggen die nu in mijn hoofd zit"
- "AI laten zoeken in mijn docs" / "RAG bouwen op bedrijfskennis"
- "Kennisdeling structureren"
- "E5 dichten in SCALE-audit" / "gap E5"
- "Wat moet een nieuwe medewerker lezen"
- "Vraagbaak voor het team"
- "Wiki versus Notion versus Obsidian-keuze"

Triggert NIET wanneer:
- De gebruiker een **klantportaal** wil scopen (gebruik `klantportaal-scoping` - E4)
- De gebruiker een **dashboard** wil bouwen (gebruik `dashboard-bouwer` - E1)
- De gebruiker een **SOP** wil documenteren (gebruik `sop-interviewer` - S10, eerst proces vastleggen, dan in kennisbank ophangen)
- De gebruiker zijn **toolstack** wil inventariseren (gebruik `toolstack-inventarisatie` - S12, eerst stack helder, dan kennisbank-tool kiezen)
- De gebruiker een **content-roadmap** wil voor extern publiek (gebruik `content-roadmap` - M3, dat is publieksgericht, niet intern)
- De gebruiker zijn **team en rollen** wil vastleggen (gebruik `team-en-rollen` - S11, eerst owners helder, dan toewijzen aan categorieen)
- De gebruiker zijn **privacyverklaring** wil maken (gebruik `privacyverklaring` - J4, want intern-vs-extern-keuze hangt daaraan)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de kennisbank opgezet moet worden. Maak hier **geen aannames** over mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** met `Directie/`, `Operations/`, `IT/` direct onder de root.
- Een **multi-business vault** met `Bedrijven/Naam/Directie/`, etc.
- Een **versgemaakte SCALE-skelet** waar `IT/` nog leeg is.

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze kennisbank voor is?
2. Wat is het **pad naar de bedrijfs-root**?
3. Heeft het bedrijf al een bestaande kennisbank (Notion, Confluence, Drive-folder, oude wiki) waar we mee verder werken, of starten we leeg?

Controleer of `{scope}/IT/Kennisbank.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan.
- Bestaat wel → vraag of dit een **update** of **nieuwe iteratie** (oude archiveren) wordt.

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: alleen relatieve paden binnen `{scope}`.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Directie/00 - Overzicht.md` | Bedrijfsinfo (categorie 1), missie, doelgroep, aanbod |
| `Directie/Playbook/Brand Guidelines.md` | Categorie 1 input (brand-element van Bedrijfsinfo) |
| `Directie/Playbook/Tone of Voice.md` | Categorie 1 input |
| `Directie/Playbook/ICP.md` | Categorie 3 (Klantinfo) input |
| `Directie/Playbook/Producten.md` | Categorie 2 (Producten) input |
| `Directie/Playbook/Klantreis.md` | Categorie 3 (Klantinfo) input |
| `Directie/Playbook/Bedrijfsverhaal.md` | Categorie 6 (Onboarding) input - leesopdracht dag 1 |
| `Operations/Processen/*.md` | Categorie 4 (Processen) input - SOPs uit S10 |
| `HR/Team.md` | Owners per categorie (cross-link S11) |
| `HR/Onboarding/*.md` (als die bestaat) | Categorie 6 (Onboarding) input |
| `IT/Toolstack.md` | Categorie 7 (Tools) input plus tool-keuze referentie |
| `IT/AI-Tools/*.md` | Categorie 7 input + categorie 8 (Trainings) referentie |
| `IT/Skills/*/SKILL.md` | Categorie 8 (Trainings) input |
| `Juridisch/Privacyverklaring.md` | Categorie 3 (Klantinfo) intern-vs-extern-classificatie |
| `Juridisch/Algemene-Voorwaarden.md` | Categorie 5 (Templates) input |
| `Juridisch/Klantcontract-Template.md` | Categorie 5 (Templates) input |
| `Marketing/Content-Roadmap.md` | Categorie 5 (Templates) raakpunt |
| `Sales/Salesproces.md` | Categorie 4 (Processen) input |
| `Bestaande Kennisbank.md` (als die bestaat) | Eerdere structuur, niet zonder bevestiging overschrijven |

Maak per gevonden bron een korte interne aantekening: welke categorie het raakt, en wat de relevante kerninzichten zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Werk met wat er is.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. Maak duidelijk dat dit via meerdere paden kan:

- **URL** (huidige Notion-workspace, Confluence-space, Slite-doc, GitBook-site, Google Drive folder-URL)
- **PDF- of CSV-upload** (oude wiki-export, audit-rapport, Notion-export.zip-inhoudslijst)
- **Tekst plakken** (lijst van vragen die teamleden steeds aan de ondernemer stellen, oude onboarding-checklist, FAQs uit support-mails)
- **Screenshots** (huidige mapstructuur in Drive of Dropbox)
- **Bestaande bestanden in vault buiten Directie/IT/** die context geven

Concrete vraag aan gebruiker:
> "Heb je externe materialen waaruit ik kan putten? Bijvoorbeeld een huidige Notion-workspace-URL, een screenshot van je Drive-structuur, een lijst met vragen die je team steeds aan jou stelt, een oude wiki-export, of bestaande onboarding-docs? Je mag een URL noemen, een bestand uploaden, screenshots delen of tekst plakken. Hoe meer bronnen, hoe minder ik hoef uit te vragen."

Per aangeleverde bron:
- **URL** → web-fetch, scan op categorie-relevantie en bestaande structuur.
- **PDF/document** → lees, vat samen per categorie.
- **Tekst** → behandel als directe input.
- **Screenshot** → lees mappenstructuur als hint voor bestaande categorisering.

Als er geen externe bronnen zijn, ga door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon een samenvatting van wat je hebt gevonden, **gegroepeerd per van de 8 toekomstige kennisbank-categorieen plus de tool-keuze-overweging**.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  TOOL-KEUZE-OVERWEGING
      Team-grootte gevonden in HR/Team.md: 3 personen
      Tools-stack: Notion al genoemd in IT/Toolstack.md
      Technische volwassenheid: laag-tot-middel
      → Voorlopig advies: Notion (gratis-tier dekt 3 mensen)

  [1] BEDRIJFSINFO
      Brand Guidelines, Tone of Voice, 00-Overzicht aanwezig
      Bron: Directie/Playbook/, Directie/00 - Overzicht.md

  [2] PRODUCTEN
      Producten.md aanwezig, 3 pakketten
      Bron: Directie/Playbook/Producten.md

  [3] KLANTINFO
      ICP aanwezig (2 segmenten), Klantreis aanwezig
      Privacy-classificatie: ICP = intern, Klantreis = intern
      Bron: Directie/Playbook/ICP.md, Klantreis.md, Juridisch/Privacy

  [4] PROCESSEN
      8 SOPs in Operations/Processen/
      Bron: Operations/Processen/*.md

  [5] TEMPLATES
      Klantcontract-Template aanwezig
      Algemene voorwaarden aanwezig
      Bron: Juridisch/*.md

  [6] ONBOARDING
      Geen bestaande onboarding-docs gevonden
      Wel: Bedrijfsverhaal.md (kandidaat dag-1-lectuur)

  [7] TOOLS
      Toolstack.md compleet (9 categorieen, 28 tools)
      Bron: IT/Toolstack.md

  [8] TRAININGS
      4 AI-tools, 5 skills aanwezig
      Bron: IT/AI-Tools/, IT/Skills/

  GATEN waar ik nog vragen voor heb:
  - Tool-keuze definitief maken (Notion lijkt logisch maar checken)
  - Owners per categorie expliciet toewijzen (HR/Team helpt)
  - Update-cadans per categorie afspreken
  - Tags-systeem definieren (afdeling/proces/klantsegment)
  - Onboarding-leespad voor week 1 samenstellen
  - RAG-laag wel of niet (afhankelijk van team-grootte)

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**. Wacht op antwoord, dán pas het volgende blok.

Per blok: 1 tot 3 vragen, afhankelijk van pre-fill-rijkdom.

#### Blok 1 - Tool-keuze

**Wat we vastleggen:** welk platform de kennisbank gaat dragen, met motivatie.

Kernvragen (kies wat relevant is op basis van pre-fill):
1. Hoeveel mensen gaan deze kennisbank gebruiken (nu en realistisch over 12 maanden)?
2. Wat is de technische volwassenheid van het team (van "wil graag markdown en git" tot "wil het liefst klikken")?
3. Wat is je voorkeur of bestaand gebruik: gebruik je al Notion, Confluence, Drive, Obsidian of iets anders?
4. Hoe belangrijk is een AI-laag (medewerkers stellen vragen aan de bank in natuurlijke taal)?
5. Wat is het maandbudget per gebruiker dat je acceptabel vindt (kan ook €0 zijn)?

Output van dit blok:
- Gekozen tool (uit de 8 in de tabel hierboven), met motivatie in 2 tot 3 zinnen.
- Concrete plan-keuze (gratis-tier, team-plan, enterprise) plus maandkosten-inschatting.
- Setup-instructie in 3 tot 5 stappen (workspace aanmaken, members uitnodigen, eerste pagina opzetten).

#### Blok 2 - Scope plus bestaande bronnen finaliseren

**Wat we vastleggen:** of er al een gedeeltelijke kennisbank bestaat die overgenomen moet worden, of dat we leeg starten.

Kernvragen:
1. Heeft het bedrijf al een (gedeeltelijke) kennisbank? Zo ja, waar staat hij en wat is de status?
2. Welke bestaande documenten moeten zeker mee (uit de pre-fill, bijvoorbeeld Brand Guidelines, alle SOPs, ICP)?
3. Welke documenten moeten expliciet NIET mee (verouderde versies, persoonlijke notities van de ondernemer, klantspecifieke uitzonderingen)?

Output:
- Lijst van documenten die in de eerste vulling meegaan, gegroepeerd per categorie.
- Lijst van documenten die archief blijven (referentie, niet meer canoniek).
- Migratie-volgorde (welke categorie eerst, welke laatste).

#### Blok 3 - Categorieen plus owners

**Wat we vastleggen:** de 8 basiscategorieen met eventuele aanvullingen plus een owner per categorie.

Per categorie 1 vraag:
1. Voor categorie X - wie wordt de owner? Onze beste kandidaat uit HR/Team.md is {naam}. Klopt dat?

Voor bedrijfsspecifieke categorieen:
2. Heb je naast de 8 standaardcategorieen nog een categorie nodig die specifiek is voor jouw bedrijf? (Bv. R en D voor productbedrijven, Compliance voor zorg, Cases voor bureau's, Investor relations voor startups, Resellers voor channel-businesses.)

Vaste 8 categorieen:

| # | Categorie | Wat erin komt | Voorbeeld-docs | Owner-default |
|---|---|---|---|---|
| 1 | **Bedrijfsinfo** | Missie, visie, brand, tone, geschiedenis | 00 - Overzicht, Brand Guidelines, Tone of Voice, Bedrijfsverhaal | Ondernemer |
| 2 | **Producten** | Pakketten, pricing, productdetails, roadmap | Producten.md, Pricing.md, Productroadmap.md, FAQ per product | Product owner of ondernemer |
| 3 | **Klantinfo** | ICP, klantreis, segmenten, klant-cases | ICP.md, Klantreis.md, Cases | Sales of marketing |
| 4 | **Processen** | SOPs, werkstroom-beschrijvingen | Alle SOPs uit Operations/Processen | Operations of ondernemer |
| 5 | **Templates** | Contracten, mail-templates, offerte-templates, document-bouwstenen | Klantcontract-Template, AV, mail-flows, offerte-skelet | Operations of sales |
| 6 | **Onboarding** | Wat een nieuwe medewerker leest, in welke volgorde, met check-ins | Welkom-doc, 30-60-90-plan, dag-1-leespad, mentor-toewijzing | HR of ondernemer |
| 7 | **Tools** | Welke tools, waarvoor, wie heeft toegang, hoe gebruiken | Toolstack.md plus per tool een korte how-to | IT of ondernemer |
| 8 | **Trainings** | Cursussen, vaardigheden-bibliotheek, AI-skills, frameworks | IT/AI-Tools, IT/Skills, externe cursus-links | HR of ondernemer |

Output: tabel met categorie, owner, fallback-owner (voor als de owner uitvalt of weggaat).

#### Blok 4 - Update-cadans plus tag-systeem

**Wat we vastleggen:** hoe vaak elke categorie gereviewd wordt en welke tags er bovenop liggen.

Kernvragen:
1. Voor elke categorie: wat is een realistische review-frequentie? Voorgesteld:
   - Bedrijfsinfo: jaarlijks (bij planning-cyclus).
   - Producten: per kwartaal (volgt productroadmap).
   - Klantinfo: doorlopend (nieuwe cases en feedback komt continu binnen).
   - Processen: per kwartaal (na ten minste een kwartaal draaien).
   - Templates: halfjaarlijks.
   - Onboarding: na elke nieuwe medewerker (feedback verwerken).
   - Tools: per kwartaal (gelijk met Toolstack-review).
   - Trainings: halfjaarlijks.
2. Welke tags moeten er op elke doc kunnen (boven op de categorie)?
   - **Afdeling** (sales, marketing, finance, operations, IT, HR).
   - **Proces** (verkoop, onboarding, levering, support, jaarafsluiting).
   - **Klantsegment** (bv. de 2 of 3 segmenten uit ICP).
   - Eventueel: **fase** (idee, concept, productie, archief) en **vertrouwelijkheid** (intern-alleen, partner-toegankelijk, publiek).
3. Welke status-labels moeten docs kunnen krijgen (draft, gereviewd, verifieren, archief)?

Output:
- Tabel met categorie + cadans + verantwoordelijke reviewer.
- Tag-vocabulaire (vaste lijst, geen vrije velden, anders explodeert het).
- Status-labels-set.

#### Blok 5 - Search plus access

**Wat we vastleggen:** hoe de bank doorzoekbaar wordt en wie wat mag lezen of bewerken.

Kernvragen:
1. Welke search-functionaliteit zit in je gekozen tool, en is die voldoende voor jullie volume? (Notion-search wordt traag boven ongeveer 1.000 pagina's, Slite en Slab hebben snellere search, GitBook heeft AI Lens.)
2. Hoe lossen we het op als zoeken niet snel genoeg blijkt? (Tag-systeem fijnmaziger, of tool wisselen, of RAG-laag toevoegen - blok 7.)
3. Wie mag wat?
   - Lezen: standaard alle medewerkers, of bepaalde categorieen alleen voor een subset?
   - Bewerken: alleen owner per categorie, of breder?
   - Externen (klanten, partners, freelancers): krijgen die toegang tot bepaalde delen?
4. Hoe sluit dit aan op de classificatie uit J4 (privacyverklaring) - welke docs zijn intern, welke partner-publiek, welke publiek?

Output:
- Permissions-matrix (3 tot 5 rollen × 8 categorieen).
- Workflow voor doc-publicatie (wie reviewt, wie keurt goed, wanneer publiek).

#### Blok 6 - Onboarding-leespad

**Wat we vastleggen:** wat een nieuwe medewerker in week 1 leest, in welke volgorde, met check-ins.

Kernvragen:
1. Hoeveel uur leestijd is acceptabel voor de eerste week (typisch 4 tot 8 uur verspreid over 5 dagen)?
2. Welke 8 tot 12 docs zijn écht essentieel om in week 1 te lezen?
3. Welke kunnen wachten tot week 2 tot 4?
4. Wie is de mentor of buddy die ze door dit leespad heen begeleidt?
5. Hoe checken we of het is geland (gesprek na dag 3, quiz, opdracht, reflectie-doc)?

Output:
- Onboarding-leespad-document (`Onboarding/Leespad-Week-1.md` in de gekozen kennisbank-tool plus link vanuit `IT/Kennisbank.md`).
- 8 tot 12 docs met volgorde, geschatte leestijd, en een korte uitleg per doc waarom dit nu in week 1 hoort.
- Check-in moment(en).
- Optioneel: 30-60-90-dagenplan-stub die mee-evolueert met deze docs.

#### Blok 7 - AI / RAG-laag (go-no-go)

**Wat we vastleggen:** of er een AI-laag op de bank komt, en zo ja, hoe.

Kernvragen:
1. Hoeveel docs verwacht je in de bank te hebben binnen 6 maanden? (Onder ongeveer 50 docs is search vaak genoeg, daarboven wordt AI-bevraging waardevoller.)
2. Hoe vaak komen er nu al "waar staat X?"-vragen voorbij in je team? Wekelijks, dagelijks of vrijwel nooit?
3. Wat is je budget voor een AI-laag (€20 tot €50/mnd Notion AI, €100 tot €300/mnd voor eigen RAG, €1.000-plus voor enterprise)?
4. Welk privacy-niveau is acceptabel (data binnen EU, data niet naar OpenAI, alleen self-hosted)?

Beslissingsregel:
- **Go op RAG** als: 50-plus docs binnen 6 maanden, 3-plus vragen per week, budget acceptabel, privacy past.
- **No-go (uitstellen)** als: minder docs, weinig vragen, budget krap of privacy te kritisch. Markeer als "review over 6 maanden bij next-evolutie".

Bij **go**, maak een keuze tussen drie aanpakken:

| Aanpak | Wie bouwt | Tijdsinvestering | Maandkosten | Wanneer |
|---|---|---|---|---|
| **Tool-native AI** (Notion AI, Slite Ask, Slab AI, GitBook Lens) | Niemand, ingebouwd | 0 uur | €5 tot €15/gebr/mnd | Klein team, snel resultaat, beperkte controle |
| **Externe RAG via tool-API** | Dev of vakkundige no-coder | 8 tot 20 uur | €30 tot €150 fixed + API-kosten | Middelgroot team, eigen LLM-voorkeur, controle over prompts |
| **Volledig eigen RAG-stack** | Dev-team of vendor | 40 tot 120 uur | €100 tot €500 fixed plus per query-kosten | Groot team, GDPR-strikt, multi-bron (kennisbank plus Slack plus mail) |

Voor eigen RAG (aanpak 2 of 3): noteer de stap-voor-stap-pipeline.

**RAG-pipeline (standaard, alleen voor `go` op aanpak 2 of 3):**
1. Export of API-tap op alle kennisbank-content (markdown of HTML).
2. Chunk content in stukken van 500 tot 1.000 tokens met overlap.
3. Embed via een embedding-model (OpenAI text-embedding-3-small, Cohere of een self-hosted alternatief).
4. Sla embeddings op in een vector-database (Pinecone, Weaviate, Qdrant of pgvector).
5. Bouw een retrieval-laag (top-N chunks per vraag).
6. Bouw een answer-laag (LLM met retrieval-context, prompt-template met disclaimer en bronvermelding).
7. Bouw een interface (chat in Slack, kennisbank-widget, of stand-alone web-UI).
8. Bouw een evaluatie-set (10 tot 20 typische vragen plus verwachte antwoorden) om regressie te detecteren bij elke aanpassing.
9. Plan een update-trigger zodat nieuwe of gewijzigde docs binnen 24 uur opnieuw geembed worden.

Output:
- Go/no-go-beslissing, met motivatie.
- Bij go: gekozen aanpak (1, 2 of 3), benodigde tijd plus kosten, eigenaar van de pipeline, evaluatie-set-stub.
- Bij no-go: review-moment (over X maanden).

### Stap 6: Tool inrichten en eerste vulling

Voer de praktische setup uit:

1. **Workspace, vault of space aanmaken** in de gekozen tool. Naam: `{Bedrijfsnaam} Kennisbank`.
2. **Members uitnodigen** met de juiste rol (zie permissions-matrix uit blok 5).
3. **Top-level structuur aanmaken**: 8 (of 8-plus-eigen) categorieen als pagina's of databases.
4. **Per categorie ten minste 3 docs aanmaken** uit pre-fill (vermijd lege bank-syndroom).
5. **Tag-systeem en status-labels configureren** zoals afgesproken in blok 4.
6. **Search testen**: typ 5 typische vragen, check of de juiste docs naar boven komen.

Concreet voor de top-3 tools:

**Notion:**
- Maak een Team Workspace aan (of gebruik bestaande).
- Top-level pagina "Kennisbank" met 8 sub-pagina's per categorie.
- Maak per categorie een database (Collection) met properties: titel, owner (relation naar Team-database), tags (multi-select), status (select), laatst-bijgewerkt (date), volgende-review (date).
- Configureer view per database: "Per status", "Per tag", "Verlopen reviews".
- Zet permissies per pagina conform matrix.

**Obsidian-vault:**
- Maak vault op afgesproken Git-pad (bv. `kennisbank-{bedrijf}` repo).
- Maak top-level mappen voor elke categorie.
- Maak `_index.md` per categorie met frontmatter (owner, cadans, review-datum) en links naar alle docs in die categorie.
- Voeg de Templater-plugin toe voor doc-templates per type.
- Voeg Dataview-plugin toe voor automatische index-tabellen.
- Optioneel: Obsidian Sync of zelf Git-deployment naar GitHub voor backup en samenwerking.

**Confluence:**
- Maak Space "Kennisbank {bedrijf}".
- Maak hoofdpagina's per categorie.
- Configureer page-templates per type (proces, klant-case, training).
- Activeer Confluence-labels conform tag-systeem.
- Zet space-permissies en pagina-restricties.

### Stap 7: Index-document schrijven en opslaan

Gebruik het template uit `references/template-kennisbank-organizer.md` als skelet. Vul met de uitkomsten uit interview plus tool-setup.

Sla op als:
```
{scope}/IT/Kennisbank.md
```

Dit document is de **single source of truth voor de structuur**: welke tool, welke 8 (of meer) categorieen, welke owners, welke cadans, welke tags, welke permissions, welk onboarding-leespad, welke RAG-status. De feitelijke content leeft in de gekozen tool, maar dit document is de canonieke uitleg ervan binnen de vault.

Frontmatter (verplicht):
```yaml
---
type: kennisbank
bedrijf: <Naam>
tool: <Notion | Obsidian | Confluence | Slite | Slab | GitBook | Outline | Astro>
url: <link-naar-workspace-of-vault>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: E5
owner-kennisbank: <Naam - overall-eigenaar>
---
```

**Schrijfregels:**
- **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "revolutionair", "disruptief", "game-changing". Feitelijk en concreet.
- **Geen em-dashes** (-). Gebruik komma's, haakjes of losse zinnen.
- **Concrete details boven abstracties.** "Notion gratis-tier tot 10 gebruikers" is sterker dan "een schaalbaar platform".
- **Linken naar bestaande SCALE-documenten** waar mogelijk: HR/Team voor owners, IT/Toolstack voor tool-context, Juridisch/Privacy voor classificatie.
- **Kort koppen** (3 tot 6 woorden).
- **Tabellen waar mogelijk** voor categorie-overzichten, cadans, permissions.

### Stap 8: RAG-laag opzetten (alleen bij `go` uit blok 7)

Als de RAG-laag een go heeft, voer dan de gekozen aanpak uit of beschrijf hem als project:

- **Aanpak 1 (tool-native AI):** activeer de feature in de tool, configureer welke spaces of databases de AI mag doorzoeken, zet rollen-restrictie (welke users mogen vragen stellen), test met 5 typische vragen.
- **Aanpak 2 (externe RAG via tool-API):** schrijf een project-brief in `Projects/{Bedrijf} Kennisbank RAG/README.md` met de 9-stappen-pipeline uit blok 7, owner, budget, deadline.
- **Aanpak 3 (volledig eigen RAG-stack):** zelfde als aanpak 2 maar groter project, met expliciete keuze van vector-database, embedding-model, LLM-provider, hosting.

Bij no-go: noteer in `IT/Kennisbank.md` onder een aparte sectie *"AI-laag uitgesteld"* met de review-datum en wat moet zijn veranderd voordat we het opnieuw bekijken.

### Stap 9: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** - `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw: `IT/Kennisbank.md` - v1.0, kennisbank opgezet in {tool}, 8 categorieen, owners toegewezen, RAG-status {go/no-go}"*.
2. **Daily** - als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat (Iwan-OS-conventie, niet alle vaults), log onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **SCALE-audit-suggestie** - als er een audit-rapport in `Directie/Research/` staat waar E5 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.
4. **Cross-update HR/Team.md** - als per categorie een owner is toegewezen die nog niet in `HR/Team.md` als verantwoordelijke voor "Kennisbank-categorie X" staat, suggereer die regel toe te voegen.

Vervolgsuggesties die je altijd noemt:
- **Volgende SCALE-checks die nu verder geholpen worden:**
  - **S10 SOPs** worden nu vindbaar voor het hele team via de bank (categorie 4).
  - **S11 Team** krijgt nu concrete owner-rollen toegewezen die in functie-omschrijvingen kunnen.
  - **S12 Toolstack** wordt nu de bron voor categorie 7 "Tools".
  - **J4 Privacy** stuurt de intern-vs-extern-classificatie aan.
- **Vulplan voor de eerste 2 weken:** stel een 14-daags vulplan op (categorie per categorie minstens 3 docs).
- **Eerste review-moment over een maand:** plan een 30-min check-in om gaten te identificeren en owners te confronteren met hun cadans.
- **Bewaak de leegloop-risico's:** elke categorie met minder dan 3 docs na 4 weken krijgt een owner-aanspreek-moment.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle vragen tegelijk neerzetten.
- **Tool-keuze voor structuur.** Geen categorieen ontwerpen voordat de tool gekozen is - dat geeft incompatibele blokken.
- **Owner per categorie verplicht.** Geen owner = categorie krijgt geen plek in de bank. Forceer een keuze, ook als de ondernemer in eerste instantie zelf alle owners is (dat mag, maar leg dan vast dat hij dat is).
- **Cadans verplicht.** Geen cadans = doc veroudert. Forceer een keuze per categorie.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaande `IT/Kennisbank.md`** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Geen aannames over vault-structuur.** Alleen relatieve paden binnen `{scope}`, geen hard-coded persoonlijke vault-paden.
- **Vraag actief naar externe documenten.** Drive-mapstructuur, Notion-URL, oude wiki-export, vragenlijst - veel ondernemers hebben hun kennis al ergens, en je voorkomt onnodig uitvragen.
- **RAG is optioneel.** Forceer geen RAG-bouwopdracht als het bedrijf er nog niet klaar voor is. Liever uitstellen met expliciet review-moment.
- **Lege bank vermijden.** Per categorie minimaal 3 docs in stap 6, anders raakt niemand gewend om de bank te gebruiken.
- **Concreet boven abstract.** Bij elke beslissing een specifiek voorbeeld in plaats van algemeenheden ("Notion gratis tot 10 users" boven "schaalbaar platform").
- **Geen marketing-trucjes.** Geen "imagine if", geen rhetorische vragen aan begin van een sectie. Recht voor zijn raap.

## Voorbeeld-output

Zie [`references/template-kennisbank-organizer.md`](references/template-kennisbank-organizer.md) voor de exacte structuur die de skill oplevert.

## Cross-links

| SCALE-check | Document | Hoe relateert het |
|---|---|---|
| S1 - Bedrijfsoverzicht | `Directie/00 - Overzicht.md` | Bron voor categorie 1 (Bedrijfsinfo) |
| S2 - Brand Guidelines | `Directie/Playbook/Brand Guidelines.md` | Bron voor categorie 1 |
| S3 - Tone of Voice | `Directie/Playbook/Tone of Voice.md` | Bron voor categorie 1 |
| S4 - ICP | `Directie/Playbook/ICP.md` | Bron voor categorie 3 (Klantinfo) |
| S7 - Bedrijfsverhaal | `Directie/Playbook/Bedrijfsverhaal.md` | Bron voor categorie 6 (Onboarding) leespad dag 1 |
| S8 - Producten en Pricing | `Directie/Playbook/Producten.md` | Bron voor categorie 2 (Producten) |
| S9 - Klantreis | `Directie/Playbook/Klantreis.md` | Bron voor categorie 3 |
| **S10 - SOPs** | `Operations/Processen/*.md` | Bron voor categorie 4 (Processen) |
| **S11 - Team en rollen** | `HR/Team.md` | Owners per categorie - verplichte cross-link |
| **S12 - Toolstack** | `IT/Toolstack.md` | Tool-keuze referentie plus bron voor categorie 7 (Tools) |
| J3 - Algemene Voorwaarden | `Juridisch/Algemene-Voorwaarden.md` | Bron voor categorie 5 (Templates) |
| **J4 - Privacyverklaring** | `Juridisch/Privacyverklaring.md` | Bepaalt intern-vs-extern-classificatie van docs |
| J5 - Klantcontract | `Juridisch/Klantcontract-Template.md` | Bron voor categorie 5 |
| M3 - Content Roadmap | `Marketing/Content-Roadmap.md` | Raakpunt voor categorie 5 (Templates, content-formats) |
| L1 - SOP Automatiseren | `Leverage/SOP-Automatisering-Roadmap.md` | Categorie 4 wordt veel rijker als L1 is gedaan |
| E1 - Dashboard Bouwer | `Engineer/Dashboard-Ontwerp.md` | Dashboard kan in categorie 7 (Tools) of een eigen categorie |
| E2 - App Scoping | `Engineer/App-Scoping.md` | App-docs kunnen categorie 7 voeden |
| E6 - Skill Builder Coach | `IT/Skills/*` | Skills landen in categorie 8 (Trainings) |
