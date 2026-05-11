---
name: crm-setup
title: "CRM Setup"
description: "Helpt een ondernemer in 30 tot 60 minuten een CRM-systeem in te richten dat past bij de klantsegmenten en het sales-proces van het bedrijf, met als output één canoniek document: `Sales/CRM-Setup.md`. Dit is SCALE-stap C2 (Collect) en de fundering voor V1 (Salesproces), V3 (Opvolg-Flow) en A1 (Rapportage). Zonder een werkende CRM blijven leads in losse mailboxen, post-its en hoofden hangen, vergeet je opvolg-momenten en is omzet-voorspelling onmogelijk. De skill werkt via een gestructureerd interview in 7 blokken (tool-keuze, contact-velden, deal-velden, pipeline-fases, tagging, integraties, eigenaarschap), één blok per beurt zodat het niet overweldigt. Vóór het interview begint, scant de skill diep wat al beschikbaar is: ICP-segmenten uit `Directie/Playbook/ICP.md`, leadbronnen uit `Sales/`, bestaande CRM-tool uit `IT/Toolstack.md`, owners uit `HR/Team.md`. Per tool-categorie wordt gevraagd: HubSpot (Free/Pro), Pipedrive, Notion-database, Airtable, Attio, custom in Supabase, of nog geen CRM. Te documenteren: contact-velden (naam, bedrijf, segment, fase, eigenaar), deal-velden (titel, bedrag, kans-%, sluitings-datum, verwachte omzet), pipeline-fases (4-7 fases zoals Prospect → Gesprek → Voorstel → Onderhandeling → Won/Lost), tagging-systeem (segment, bron, branche), integraties (email, kalender, factuurtool). Werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam of vault-eigenaar, alleen over de SCALE-Collect-conventie. Activeer altijd wanneer iemand zegt: 'CRM opzetten', 'pipeline inrichten', 'leads vastleggen', 'CRM-tool kiezen', 'salesfunnel bouwen', 'deal-stages definiëren', 'contact-velden inrichten', 'HubSpot opzetten', 'Pipedrive setup', 'Notion CRM bouwen', 'lead-tracking systeem', 'wie zit in welke fase', 'C2 dichten in SCALE-audit', 'gap C2', 'Sales/CRM-Setup.md aanmaken', 'CRM-velden vastleggen', 'pipeline-fases vastleggen'. Triggert ook bij iedere expliciete verwijzing naar C2, CRM-Setup.md, of vragen rond lead-statussen, deal-fases, sales-tagging en kwalificatie-criteria."
category: operations
tags: [crm, sales, pipeline, leads, deals, collect, scale-framework, c2]
estimatedTime: "30 tot 60 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# CRM Setup

## Doel

Helpt een ondernemer om in 30 tot 60 minuten een **CRM-systeem** in te richten dat past bij de klantsegmenten en het sales-proces van het bedrijf. Output: één canoniek document `{scope}/Sales/CRM-Setup.md` met de tool-keuze, datamodel, pipeline-fases en integraties. Dit is SCALE-stap C2 (Collect) en de fundering die V1 (Salesproces) en V3 (Opvolg-Flow) nodig hebben om te kunnen draaien.

*Waarom dit fundamenteel is.* Een CRM is geen administratieve overhead. Het is de **datalaag** waar minstens vier latere SCALE-stappen op leunen:

- **V1 (Salesproces)** — Het salesproces is exact dezelfde reeks fases als de CRM-pipeline. Geen CRM betekent geen objectieve pipeline-meetbaarheid.
- **V3 (Opvolg-Flow)** — Opvolg-automatisering kan alleen triggeren op CRM-statussen ("3 dagen in fase Voorstel zonder activiteit"). Zonder structuur in de CRM geen geautomatiseerde opvolging.
- **A1 (Rapportage)** — Sales-rapportage haalt data uit de CRM: pipeline-waarde, conversie per fase, deals per segment. Geen CRM betekent geen objectieve sales-rapportage.
- **C1 (Marketing-data)** — Marketing-leads moeten ergens landen en herkend worden. De CRM is de centrale plek waar marketing-bronnen en sales-deals samenkomen.

*Wat je verliest zonder dit document.* Drie concrete pijnpunten die deze skill voorkomt:

1. **Leads die verdwijnen.** Een lead die via LinkedIn komt en niet wordt opgevolgd omdat hij in een mailbox hangt is omzetverlies dat niemand meet.
2. **Onmogelijke forecast.** Zonder fase-percentages en sluitings-datums kun je niet voorspellen of het kwartaal-doel haalbaar is.
3. **Versnipperd klantbeeld.** Sales weet niet wat marketing al heeft gestuurd, customer-success weet niet wat sales beloofd heeft, en jij weet niet welke klant uit welk segment komt.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit C2 vraagt minimaal 2 statusvelden (bv. nieuw, gekwalificeerd, gewonnen). Die drempel haal je in 10 minuten met een spreadsheet. Deze skill mikt op een **werkbaar** systeem: tool-keuze met onderbouwing, minstens 5 contact-velden, 3 deal-velden, 4 pipeline-fases met kans-percentages, tagging-systeem en integratie-overzicht, zodat de CRM direct bruikbaar is in V-fase en A-fase.

Resultaat: SCALE-audit C2 springt van ❌ of ⚠️ naar ✅ en het document is direct herbruikbaar voor V1, V3, A1 en C1.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  CRM SETUP — SCALE-stap C2 (Collect)                       │
│  ~30-60 minuten · 7 blokken                                │
└──────────────────────────────────────────────────────────┘

  In 30 tot 60 minuten richten we een CRM-systeem in dat past
  bij jouw klantsegmenten en sales-proces. Dit document is de
  fundering voor V1 (Salesproces), V3 (Opvolg-Flow), A1 (Rapportage)
  en C1 (Marketing-data).

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 7 blokken interview (één per beurt) — gemiddeld 5-10 │
  │    minuten per blok                                     │
  │  • Pre-fill: ik scan eerst ICP, leadbronnen, Toolstack  │
  │    en Team zodat ik al veel weet                        │
  │  • Daarna lever ik Sales/CRM-Setup.md op met tool-keuze,│
  │    datamodel, pipeline en integratie-overzicht          │
  └────────────────────────────────────────────────────────┘

  De 7 blokken:
  [1] Tool-keuze              [2] Contact-velden
  [3] Deal-velden             [4] Pipeline-fases
  [5] Tagging-systeem         [6] Integraties
  [7] Eigenaarschap & toegang

  Heb je externe input klaar? Bijvoorbeeld:
  • Een export van bestaande leads (uit Excel, mail, LinkedIn)
  • Voorbeelden van deals die je gewonnen of verloren hebt
  • Een screenshot van je huidige CRM (als je er al een hebt)
  • Een lijst met klantsegmenten die je nu in het hoofd hebt

  Dan kun je dat nu noemen, hoe meer bronnen, hoe minder ik
  hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  CRM SETUP — C2 · 30-60 min · 7 blokken                    │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  ICP.md (segmenten),
   │    (auto-discover)   │  Sales/ (leadbronnen),
   │                      │  IT/Toolstack.md (CRM),
   │                      │  HR/Team.md (owners)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Lead-export, deal-
   │                      │  voorbeelden, CRM-
   │                      │  screenshot, segmenten
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per blok, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, per    │  7 blokken:
   │    blok              │  [1] Tool-keuze
   │                      │  [2] Contact-velden
   │                      │  [3] Deal-velden
   │                      │  [4] Pipeline-fases
   │                      │  [5] Tagging
   │                      │  [6] Integraties
   │                      │  [7] Eigenaarschap
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Cross-link check  │  S4 ICP (segmenten),
   │                      │  V1 Salesproces,
   │                      │  S12 Toolstack
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Sales/CRM-Setup.md
   │    opslaan           │
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    vervolg           │  hint richting V1,
   │    suggesties        │  V3, A1, S12-update
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "CRM opzetten" / "CRM inrichten" / "CRM bouwen"
- "Pipeline inrichten" / "salesfunnel bouwen" / "deal-stages definiëren"
- "Leads vastleggen" / "lead-tracking systeem" / "wie zit in welke fase"
- "CRM-tool kiezen" / "HubSpot opzetten" / "Pipedrive setup" / "Notion CRM bouwen"
- "Contact-velden inrichten" / "deal-velden vastleggen"
- "Pipeline-fases vastleggen" / "sales-stages definiëren"
- "C2 dichten in SCALE-audit" / "gap C2"
- "Sales/CRM-Setup.md aanmaken" / "CRM-document schrijven"
- "Kwalificatie-criteria vastleggen" / "lead-statussen vastleggen"

Triggert NIET wanneer:
- De gebruiker een **specifiek salesproces wil uitschrijven** (gebruik `salesproces-builder` — V1, dat is de bredere context rond de CRM)
- De gebruiker **opvolg-automatiseringen wil bouwen** (gebruik `opvolg-flow` — V3, dat bouwt op de CRM die deze skill oplevert)
- De gebruiker een **ICP wil definiëren** (gebruik `icp` — S4, dat levert de segmenten waar de CRM op tagt)
- De gebruiker een **toolstack-inventaris** wil (gebruik `toolstack-inventarisatie` — S12, dat catalogiseert alle tools waaronder CRM)
- De gebruiker **klantfeedback wil verzamelen** (gebruik `klantfeedback-collector` — C4)
- De gebruiker een **specifieke deal of klant wil invoeren** (dat is operationeel gebruik van de CRM, niet de setup)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de CRM-setup gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Sales/`, `Directie/`, `IT/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Sales/`, `Bedrijven/Naam/Directie/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Sales/CRM-Setup.md`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze CRM-setup voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Sales/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Sales/CRM-Setup.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen op basis van wat er staat) of **nieuwe iteratie** (oude archiveren als `CRM-Setup - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

**Output-pad keuze:** standaard `{scope}/Sales/CRM-Setup.md`. Als de scope een aparte `Collect/`-map heeft (sommige SCALE-skeletten doen dat) mag `{scope}/Collect/CRM-Setup.md` ook, mits gebruiker bevestigt.

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Sales/CRM-Setup.md` (huidige versie als die bestaat) | Bestaande CRM-keuze, datamodel, pipeline-fases |
| `Directie/Playbook/ICP.md` | **Verplichte check** — klantsegmenten die in de CRM als tags of veld terugkomen |
| `Sales/` (subfolders) | Leadbronnen, eerdere sales-overzichten, lopende deals, leads-lijsten |
| `IT/Toolstack.md` | **Verplichte check** — bestaande CRM-tool als die al in de toolstack staat |
| `HR/Team.md` | **Verplichte check** — wie wordt sales-eigenaar of deal-owner |
| `Directie/00 - Overzicht.md` | Genoemde sales-aanpak, propositie, doelgroep |
| `Directie/01 - Goals.md` | Sales-doelen (omzet, # klanten) die in de CRM gemeten moeten worden |
| `Marketing/` (subfolders) | Lead-bronnen vanuit marketing (LinkedIn, nieuwsbrief, website) |
| `Financien/Rapportage/` | Eerdere omzet-rapportages die de CRM-fases moeten kunnen reproduceren |
| `Operations/Processen/*.md` | Bestaande sales-procesbeschrijvingen |

Maak per gevonden element een korte interne aantekening: in welk CRM-blok het past en welke kerngegevens al bekend zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes — niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Bij een CRM-setup zijn er vaak **operationele lead-bronnen** buiten de vault die enorm helpen.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen waaruit ik kan putten? Bijvoorbeeld:
> - Een export van bestaande leads (uit Excel, Numbers, een mail-zoekopdracht)
> - Een lijst met deals die je dit jaar gewonnen of verloren hebt (bedrag + reden)
> - Een screenshot van je huidige CRM of een ander tool waar leads in staan
> - Een lijst met klantsegmenten of branches die je voor ogen hebt
> - LinkedIn Sales Navigator-lijsten of CSV-exports daarvan
> - Een sales-rapport (Excel of PDF) van een vorig jaar of kwartaal
>
> Hoe meer bronnen, hoe minder ik hoef uit te vragen en hoe rijker het CRM-datamodel wordt."

Per aangeleverde bron:
- **Lead-export (Excel/CSV)**: scan op kolomnamen, herken impliciete velden (naam, bedrijf, mail, fase), gebruik als input voor blok 2 (contact-velden)
- **Deal-historie (gewonnen/verloren)**: gebruik voor blok 3 (deal-velden) en blok 4 (pipeline-fases met realistische kans-percentages)
- **CRM-screenshot**: spiegel wat er staat, vraag wat wel/niet werkt
- **Segmenten-lijst**: directe input voor blok 5 (tagging) en cross-check met ICP
- **Sales-rapport**: laat zien welke velden nodig zijn voor rapportage (input voor A1 later)

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 7 blokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] TOOL-KEUZE
      Geen CRM in Toolstack.md gevonden, ook geen verwijzing
      in Sales/. Lijkt dus nog leeg veld of buiten-vault tool.

  [2] CONTACT-VELDEN
      Vanuit ICP.md zie ik 3 segmenten: ZZP, Eenmanszaak,
      Micro-BV. Vanuit Sales/Tolken/ zie ik velden als:
      naam, woonplaats, telefoon, mail, RTGS-nummer.

  [3] DEAL-VELDEN
      Vanuit Goals.md staan jaardoel-omzet en # klanten,
      dus deal-bedrag en kans-% zijn relevant.

  [4] PIPELINE-FASES
      Niets concreets gevonden. Wel hint in 00-Overzicht:
      "lead → kennismaking → offerte → klant".

  [5] TAGGING
      Segmenten uit ICP, branches niet expliciet genoemd.

  [6] INTEGRATIES
      Vanuit Toolstack.md: e-mail-tool, factuurtool. Mogelijk
      koppelpunten.

  [7] EIGENAARSCHAP
      Team.md noemt 1 persoon (jij) als sales-eigenaar.

  GATEN waar ik nog vragen voor heb:
  - Geen CRM-tool gekozen
  - Geen pipeline-fases met kans-percentages
  - Tagging-systeem nog niet vastgelegd

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, blok voor blok

**Kernregel:** loop **één blok per beurt** af. Niet alle 7 tegelijk neerzetten. Per blok: alle bekende input langsgaan, eventueel ontbrekende info toevoegen, en pas dán door naar het volgende blok.

#### Blok 1 — Tool-keuze

Vraag welke CRM-tool de basis wordt. Zes realistische opties, elk met sweet-spot:

| Optie | Wanneer een goede keuze | Indicatieve kosten |
|---|---|---|
| **HubSpot Free** | < 50 leads/maand, solopreneur, basis-tracking | EUR 0 |
| **HubSpot Pro** | > 100 leads/maand, marketing-automatisering nodig | vanaf EUR 90/mnd |
| **Pipedrive** | Klassieke B2B-sales-aanpak, visuele pipeline-focus | vanaf EUR 15/mnd/zetel |
| **Notion-database** | Solopreneur die al in Notion werkt, lage volumes | EUR 0 (binnen bestaand plan) |
| **Airtable** | Hybride database + CRM, eigen velden, automatiseringen | vanaf EUR 0 (Free), EUR 10/mnd (Team) |
| **Attio** | Modern, AI-first CRM, voor tech-savvy teams | vanaf EUR 29/mnd/zetel |
| **Custom in Supabase** | Eigen bouw, integreert met andere maatwerk-tools | EUR 0 (Free tier) |
| **Nog geen / spreadsheet** | < 10 leads totaal, eerste opstartmaanden | EUR 0 |

Vraag aan gebruiker:
1. *"Welke van deze opties past het beste, gegeven je leadvolume en hoe technisch je wil worden?"*
2. *"Als je nog geen CRM hebt: wat is de eerstvolgende stap waar je het tool voor gaat gebruiken? Lead-tracking, deal-pipeline of beide?"*
3. *"Heb je een voorkeur voor Nederlandse leverancier (Pipedrive heeft NL-support), of mag het Amerikaans zijn?"*

Vastleggen in document: gekozen tool, plan, indicatieve kosten, reden van keuze (1 zin), evt. alternatieven die zijn overwogen.

#### Blok 2 — Contact-velden

Vraag welke velden je per contact (persoon of bedrijf) wil bijhouden. Standaard minstens 5 velden, vaak 7-10.

Standaard-set die altijd zinvol is:

| Veld | Type | Verplicht? | Toelichting |
|---|---|---|---|
| **Naam** | tekst | ja | Voornaam + achternaam, of bedrijfsnaam bij B2B |
| **Bedrijf** | tekst | ja (B2B) | Naam van organisatie, bij B2C optioneel |
| **E-mail** | mail | ja | Hoofd-mailadres |
| **Telefoon** | tekst | optioneel | Voor warmer contact |
| **Segment** | dropdown | ja | Cross-link naar ICP-segmenten |
| **Fase** | dropdown | ja | Cross-link naar pipeline-fases (blok 4) |
| **Eigenaar** | dropdown | ja | Cross-link naar Team.md |
| **Bron** | dropdown | optioneel | Waar komt de lead vandaan (LinkedIn, nieuwsbrief, doorverwijzing) |
| **Branche** | dropdown | optioneel | B2B-relevant, voor segment-rapportage |
| **Datum eerste contact** | datum | optioneel | Voor cohort-analyse |

Vraag:
1. *"Welke contact-velden wil je minimaal bijhouden? Kies uit deze standaard-set en voeg eventueel eigen velden toe."*
2. *"Heb je segmenten in je ICP die direct als dropdown-waarden hierin moeten? Ik kan ze ophalen."*
3. *"Wil je verplichte velden onderscheiden van optionele, of liever alles open laten?"*

#### Blok 3 — Deal-velden

Vraag welke velden je per deal (opportunity) wil bijhouden. Standaard minstens 3 velden, vaak 5-7.

Standaard-set:

| Veld | Type | Verplicht? | Toelichting |
|---|---|---|---|
| **Titel** | tekst | ja | Bv. "Boekhouding 2026 — Klant X" |
| **Bedrag** | EUR | ja | Verwachte deal-waarde (excl. btw, eenmalig of jaarbedrag) |
| **Kans %** | dropdown | ja | Hangt aan pipeline-fase (zie blok 4) |
| **Sluitings-datum** | datum | ja | Verwachte close-datum, voor forecast |
| **Verwachte omzet** | berekend | optioneel | = Bedrag × Kans% |
| **Producten/diensten** | dropdown | optioneel | Cross-link naar Producten-en-Pricing.md |
| **Bron** | dropdown | optioneel | Idem als contact-bron |
| **Reden gewonnen/verloren** | tekst | bij sluiting | Voor leerlus, input voor V1 en V3 |

Vraag:
1. *"Wat is jouw typische deal-grootte? Eenmalig of recurring? Dat bepaalt of bedrag een eenmalig of jaarbedrag is."*
2. *"Wil je per deal de verwachte omzet automatisch berekenen op basis van kans-percentage, of liever handmatig?"*
3. *"Wil je 'reden gewonnen/verloren' altijd invullen bij sluiting, of optioneel?"*

#### Blok 4 — Pipeline-fases

Vraag welke fases een deal doorloopt. Standaard minstens 4 fases, vaak 5-7. Elke fase heeft een **kans-percentage** zodat verwachte omzet berekend kan worden.

Veelvoorkomende pipeline-templates:

**B2B-zakelijk (5 fases):**
| # | Fase | Kans % | Wanneer |
|---|---|---|---|
| 1 | Prospect | 10% | Lead binnengekomen, nog geen contact |
| 2 | Gesprek | 25% | Eerste kennismakingsgesprek gepland of gehad |
| 3 | Voorstel | 50% | Offerte/voorstel verstuurd |
| 4 | Onderhandeling | 75% | Inhoudelijke vragen of prijs-discussie |
| 5 | Won / Lost | 100% / 0% | Klant getekend of definitief afgehaakt |

**B2C-eenvoudig (4 fases):**
| # | Fase | Kans % | Wanneer |
|---|---|---|---|
| 1 | Lead | 10% | Geïnteresseerd, formulier ingevuld |
| 2 | Contact | 40% | Reactie verzonden, wachten op respons |
| 3 | Bestelling | 80% | Bestelling bevestigd, factuur verstuurd |
| 4 | Won / Lost | 100% / 0% | Betaald of geannuleerd |

**Consultant/specialist (7 fases):**
| # | Fase | Kans % | Wanneer |
|---|---|---|---|
| 1 | Inbound | 5% | Eerste signaal (formulier, mail, doorverwijzing) |
| 2 | Kwalificatie | 15% | Discovery-call, fit-check |
| 3 | Briefing | 30% | Behoefte uitgevraagd, scope helder |
| 4 | Voorstel | 50% | Voorstel/offerte ingediend |
| 5 | Onderhandeling | 70% | Prijs of scope-discussie |
| 6 | Ondertekening | 90% | Voorstel akkoord, contract loopt |
| 7 | Won / Lost | 100% / 0% | Project gestart of afgevallen |

Vraag:
1. *"Welk type pipeline past het beste? B2B-zakelijk, B2C-eenvoudig, consultant-flow, of iets eigens?"*
2. *"Wil je kans-percentages aanpassen, of zijn de defaults goed?"*
3. *"Is 'Won' en 'Lost' één fase of twee aparte fases?"* (Pipedrive scheidt ze meestal, HubSpot ook)
4. *"Wat is een typische doorlooptijd per fase?"* (input voor V3 opvolg-flow)

Vastleggen: pipeline-naam, fases met kans-%, default-doorlooptijd per fase (in dagen).

#### Blok 5 — Tagging-systeem

Vraag welke tags of categorieën je over contacten en deals heen wil leggen. Standaard 3 tag-dimensies: segment, bron, branche.

Standaard-tagging:

| Dimensie | Voorbeeld-waarden | Bron |
|---|---|---|
| **Segment** | ZZP, Eenmanszaak, Micro-BV, MKB, Enterprise | Cross-link naar ICP.md |
| **Bron** | LinkedIn, Nieuwsbrief, Doorverwijzing, Cold outbound, Website-formulier, Event | Eigen marketing-kanalen |
| **Branche** | Bouw, Zorg, Tech, Retail, Horeca, Onderwijs, Overig | Bij B2B zinvol |
| **Klant-status** | Lead, Klant, Oud-klant, Niet-klant | Lifecycle-tag |
| **Prioriteit** | Hoog, Medium, Laag | Voor focus |

Vraag:
1. *"Welke dimensies wil je tagen? Segment is verplicht (cross-link ICP), de rest is optioneel."*
2. *"Heb je een vaste lijst branches die je veel ziet, of pas je dat per case aan?"*
3. *"Wil je prioriteit automatisch laten bepalen op basis van bedrag of kans, of liever handmatig?"*

#### Blok 6 — Integraties

Vraag welke andere tools moeten koppelen met de CRM. Standaard minstens 3 integratie-momenten: e-mail, kalender, factuurtool.

Standaard-koppelingen:

| Koppeling | Wat het doet | Veelvoorkomende tools |
|---|---|---|
| **E-mail-sync** | Mails automatisch loggen bij contact | Gmail, Outlook |
| **Kalender-sync** | Meetings koppelen aan deals | Google Calendar, Outlook Calendar |
| **Factuur-koppeling** | Won-deal triggert factuur | Moneybird, e-Boekhouden, Stripe |
| **Marketing-tool** | Nieuwsbrief-inschrijvers worden contacten | Beehiiv, Mailchimp |
| **Formulier-tool** | Website-formulier creëert lead | Tally, Typeform, eigen formulier |
| **LinkedIn** | Profielen ophalen, connect-acties loggen | LinkedIn Sales Navigator (extensie of API) |
| **Slack/Teams** | Notificaties bij nieuwe lead of won-deal | Slack, Microsoft Teams |

Vraag:
1. *"Welke koppelingen heb je nu al, en welke wil je nog inrichten?"*
2. *"Voor elke koppeling: werkt hij vandaag, of staat hij op de wens-lijst?"*
3. *"Welke koppeling heeft de hoogste prioriteit?"* (helpt prioriteren in L-fase)

#### Blok 7 — Eigenaarschap en toegang

Vraag wie de CRM beheert en wie er toegang toe heeft. Voor solopreneurs is dat één persoon, voor teams meerdere rollen.

Vraag:
1. *"Wie is hoofd-eigenaar van de CRM (administrator-rechten)?"* (cross-link met HR/Team.md sales-rol)
2. *"Wie heeft daarnaast toegang, en met welke rol?"* (lezen, schrijven, beheren)
3. *"Hoe vaak wordt de pipeline doorgelopen?"* (dagelijks, wekelijks, maandelijks)
4. *"Wie heeft eindverantwoordelijkheid voor data-kwaliteit?"* (deze persoon staat in document als data-owner)

**Cross-link verplicht met HR/Team.md.** Bestaat Team.md niet, maak opmerking in output: *"Owners niet gevalideerd tegen HR/Team.md. Aanrader: bouw eerst Team.md met skill `team-en-rollen` (S11)."*

### Stap 6: Cross-link check

Voordat je het document schrijft, valideer 4 cross-links expliciet:

1. **S4 ICP** — pipeline-segmenten in CRM komen overeen met ICP-segmenten in `Directie/Playbook/ICP.md`. Verschil? Markeer in output en stel update voor.
2. **V1 Salesproces** — pipeline-fases zijn de basis van een toekomstig salesproces. Document moet expliciet aanmerken: *"Deze pipeline is input voor V1 Salesproces. Een Salesproces-document detailleert per fase de acties, owner en KPI's."*
3. **A1 Rapportage** — deal-velden (bedrag, kans-%, sluitings-datum) zijn input voor sales-rapportage. Document moet expliciet aanmerken: *"Deze deal-velden zijn de bron voor sales-rapportage in A1."*
4. **S12 Toolstack** — de gekozen CRM-tool moet in `IT/Toolstack.md` staan. Bestaat Toolstack niet of CRM staat er niet in, geef aan: *"Aanrader: voeg de gekozen CRM-tool toe aan IT/Toolstack.md (skill: `toolstack-inventarisatie`)."*

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-crm-setup.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus cross-link check.

Sla op als:
```
{scope}/Sales/CRM-Setup.md
```

Maak de `Sales/`-map aan als die nog niet bestaat. Als de scope een aparte `Collect/`-map gebruikt en gebruiker dat heeft bevestigd, mag `{scope}/Collect/CRM-Setup.md`.

Frontmatter (verplicht):
```yaml
---
type: crm-setup
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: C2
crm-tool: <Tool-naam>
aantal-pipeline-fases: <getal>
aantal-contact-velden: <getal>
aantal-deal-velden: <getal>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "perfecte CRM-setup", "ideaal datamodel", "next-level pipeline". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Pipedrive Essential plan, EUR 15/mnd, 1 zetel, NL-support via chat" is sterker dan "een CRM-tool".
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Tabelvorm waar mogelijk** — een datamodel is feitelijk een lijst velden, geen essay.
- **Pipeline-fases altijd met kans-%** — anders is forecast onmogelijk.
- **Quality-eis voor C2:** minstens 3 pipeline-fases, 5 contact-velden, 3 deal-velden. Halve sets voldoen niet.

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Sales/CRM-Setup.md` — v1.0, CRM-tool <Naam>, N pipeline-fases, M contact-velden, K deal-velden"*.
2. **Daily** — als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md` in een Iwan-OS-stijl vault, of een Notion-daily-pagina), log dan een eenregelige melding plus link naar het nieuwe bestand. Skip als die conventie niet bestaat.
3. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een C2-doel of sales-doel heeft: status bijwerken (✅), regel toevoegen aan het voortgangslog.
4. **Toolstack-update-suggestie** — als de gekozen CRM-tool nog niet in `IT/Toolstack.md` staat, stel voor `toolstack-inventarisatie` (S12) opnieuw te draaien of een snelle update toe te voegen.
5. **Scale-audit-suggestie** — als `{scope}/Directie/Research/` een audit-rapport bevat waar C2 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Doorgroei naar V1 Salesproces** — pipeline-fases zijn al gedefinieerd. V1 detailleert per fase de acties en KPI's. Logische volgende stap.
- **Doorgroei naar V3 Opvolg-Flow** — opvolg-automatisering kan nu starten op de pipeline-statussen. V3 bouwt direct hierop.
- **Doorgroei naar A1 Rapportage** — pipeline-data is nu beschikbaar voor sales-rapportage. A1 maakt de rapportage-structuur.
- **Cross-link met S4 ICP** — als ICP-segmenten en CRM-tags niet overeenkomen, stel voor om ICP opnieuw langs te lopen.
- **Cross-link met S12 Toolstack** — voeg de gekozen CRM toe als die er nog niet staat.
- **Review-ritme** — een CRM-setup veroudert wanneer de pipeline-fases niet meer aansluiten bij hoe daadwerkelijk verkocht wordt. Stel voor: kwartaal-review, of triggeren bij elke verandering in propositie of segmentatie.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle 7 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **ICP, Toolstack en Team zijn verplichte cross-checks.** Geen optionele velden. Ontbreken ze, vraag het actief uit en raad aan eerst die skills te draaien (S4, S12, S11).
- **Schrijf nooit zomaar over een bestaande `CRM-Setup.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Pipeline-fases altijd met kans-percentage.** Zonder kans-% geen forecast, en de hele meetbaarheid valt weg.
- **Quality-eis is hard:** minstens 3 pipeline-fases, 5 contact-velden, 3 deal-velden. Onder die drempel niet opleveren.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een bedrag, een tool-naam, een fase-naam) als het te abstract blijft.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe bronnen.** Een lead-export of deal-historie bespaart 70% van het uitvraag-werk.
- **Geen marketing-trucjes.** Geen "imagine if...", geen rhetorische vragen aan het begin van een sectie. Recht voor zijn raap.
- **Mik op werkbaarheid, niet op het audit-minimum.** Het document moet de basis kunnen vormen voor V1, V3 en A1. Halve antwoorden voldoen niet.
- **Cross-link met ICP-segmenten letterlijk overnemen.** Als ICP zegt "ZZP, Eenmanszaak, Micro-BV", dan zijn dat exact de drie dropdown-waarden bij Segment-veld. Geen vrije variant.

## Voorbeeld-output

Zie [`references/template-crm-setup.md`](references/template-crm-setup.md) voor de exacte structuur die de skill oplevert: tool-keuze met onderbouwing, contact- en deal-velden, pipeline-fases met kans-percentages, tagging-systeem, integratie-overzicht, eigenaarschap-tabel en cross-links naar ICP, Toolstack, Team en aangrenzende SCALE-checks.
