---
name: bedrijfsoverzicht
title: "Bedrijfsoverzicht"
description: "Helpt een ondernemer in 25-35 minuten een rijk bedrijfsoverzicht op te bouwen in één canoniek document: `Directie/00 - Overzicht.md`. Dit is SCALE-stap 1 (Structure) en het fundament waar al het latere AI-werk op leunt: zonder dit moet een AI bij elke vraag opnieuw raden wie het bedrijf is, voor wie het werkt, wat het aanbiedt en waar het naartoe wil. De skill werkt via een gestructureerd interview in 7 blokken (Identiteit, Missie, Doelgroep, Aanbod, KPI's, Methodiek/werkfilosofie, Status & richting), één blok per beurt zodat de gebruiker niet wordt overweldigd. Vóór het interview begint, scant de skill diep wat al beschikbaar is — in de vault (Directie/Playbook, Directie/Research, Directie/Meetings, eerdere versies van 00-Overzicht, Goals, Tasks) én in externe documenten die de ondernemer kan aanleveren (website-URL, KvK-uittreksel, eerder businessplan, pitch deck, AI-scan-rapport, marketing-materialen). Het werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam, persoonlijke profielen of vault-eigenaar, alleen over de SCALE-Structure-conventie (`Directie/`, `Directie/Playbook/`, etc.). Activeer altijd wanneer iemand zegt: 'maak een bedrijfsoverzicht', 'wat is mijn bedrijf precies', 'help me mijn bedrijf samenvatten', 'vul 00 - Overzicht aan', 'beschrijf mijn bedrijf', 'wie zijn we eigenlijk', 'fundament van mijn bedrijf op papier', 'S1 dichten in SCALE-audit', 'gap S1', 'mijn bedrijfscontext vastleggen voor AI', 'company overview', 'bedrijfsidentiteit op één plek'. Triggert ook bij iedere expliciete verwijzing naar S1 of `00 - Overzicht.md`."
category: structure
tags: [bedrijfsoverzicht, identiteit, structure, scale-framework, s1, fundament]
estimatedTime: "25 tot 35 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Bedrijfsoverzicht

## Doel

Helpt een ondernemer om in 25 tot 35 minuten het **fundament** van zijn of haar bedrijf vast te leggen in één canoniek document: `{scope}/Directie/00 - Overzicht.md`. Dit is SCALE-stap 1 (Structure) en de basis waar alle andere SCALE-stappen op leunen.

*Waarom dit fundamenteel is.* Een AI-assistent is zo goed als de context die hij krijgt. Zonder bedrijfsoverzicht moet hij bij elke vraag opnieuw uitvragen of gokken wie je bent, wat je doet, voor wie. Mét bedrijfsoverzicht heeft hij je bedrijf in zijn hoofd voordat je iets vraagt. Vergelijk het met een nieuwe collega die op dag 1 het bedrijfshandboek uit zijn hoofd kent — geen "stuur me eerst de context even op", maar direct meedenkend werk.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit S1 stelt dat 4 secties (Missie, Doelgroep, Aanbod, Status) elk minimaal 1 zin moeten hebben. Die drempel haal je in 5 minuten met halve antwoorden, maar dan heb je geen bruikbaar fundament. Deze skill mikt op een **rijk** document: 7 blokken met genoeg diepte dat een AI er werkelijk mee kan werken.

Resultaat: SCALE-audit S1 springt van ❌ of ⚠️ naar ✅ én het document is direct herbruikbaar in álle latere SCALE-stappen (Collect, Analyze, Leverage, Engineer).

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  BEDRIJFSOVERZICHT — SCALE-stap 1 (Structure)             │
│  ~25-35 minuten · 7 interview-blokken                     │
└──────────────────────────────────────────────────────────┘

  In 25 tot 35 minuten leggen we het fundament van je bedrijf
  vast in één canoniek document waar al je AI-werk op leunt.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 7 blokken interview (één per beurt, niet alles       │
  │    tegelijk) — gemiddeld 2-5 minuten per blok           │
  │  • Per blok 1-3 korte vragen                            │
  │  • Vooraf scan ik wat er al in je vault staat plus      │
  │    externe documenten die je aanlevert, zodat we niets  │
  │    vragen wat je al ergens hebt opgeschreven            │
  │  • Daarna lever ik een gevuld 00 - Overzicht.md op dat  │
  │    je nog mag bijschaven                                │
  └────────────────────────────────────────────────────────┘

  De 7 blokken:
  [1] Identiteit  [2] Missie  [3] Doelgroep  [4] Aanbod
  [5] KPI's       [6] Methodiek           [7] Status & richting

  Heb je externe documenten klaar (website-URL, KvK-uittreksel,
  business plan, pitch deck, AI-scan, marketing-materiaal)?
  Dan kun je die nu noemen of uploaden — ik haal er alles
  bruikbaar uit voordat we aan het interview beginnen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  BEDRIJFSOVERZICHT — S1 · 25-35 min · 7 blokken           │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Wat staat er al
   │    (auto-discover)   │  in Directie/?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Website, KvK,
   │                      │  business plan,
   │                      │  pitch deck, etc.
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
   │                      │  [1] Identiteit
   │                      │  [2] Missie
   │                      │  [3] Doelgroep
   │                      │  [4] Aanbod
   │                      │  [5] KPI's
   │                      │  [6] Methodiek
   │                      │  [7] Status
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Schrijven +       │  Directie/00 -
   │    opslaan           │  Overzicht.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Logging +         │  Changelog +
   │    vervolg-          │  hint naar
   │    suggesties        │  S2/S3/S4
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Maak een bedrijfsoverzicht" / "schrijf een 00-Overzicht"
- "Help me mijn bedrijf samenvatten" / "wat is mijn bedrijf precies"
- "Beschrijf mijn bedrijf" / "wie zijn we eigenlijk"
- "Fundament van mijn bedrijf op papier"
- "Vul 00 - Overzicht aan" / "verbeter mijn bedrijfsoverzicht"
- "S1 dichten in SCALE-audit" / "gap S1"
- "Bedrijfscontext vastleggen voor AI"
- "Company overview" / "bedrijfsidentiteit op één plek"

Triggert NIET wanneer:
- De gebruiker een **brand-document** wil opbouwen (gebruik `brand-guidelines` — S2)
- De gebruiker een **tone of voice** wil vastleggen (gebruik `tone-of-voice` — S3)
- De gebruiker een **ICP** of klantsegmenten wil uitwerken (S4 — eigen skill, of meeneem-blok 3 maar verwijs voor diepgang)
- De gebruiker **jaardoelen** wil maken (gebruik `doelen-coach` — S5)
- De gebruiker een **bedrijfsverhaal / origin story** wil schrijven (gebruik `bedrijfsverhaal` — S7)
- De gebruiker een **producten- of pricing-document** wil (S8 — eigen skill)
- De gebruiker alleen een **website-About-tekst** wil (laat het bedrijfsverhaal-document daarvoor gebruiken)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad het bedrijfsoverzicht gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam — elke gebruiker heeft een andere setup.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Directie/`, `Marketing/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Directie/`, `Bedrijven/Naam/Marketing/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Directie/00 - Overzicht.md`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar dit overzicht voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet — help me zoeken")

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Directie/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Directie/00 - Overzicht.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `00 - Overzicht - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard SCALE-Structure-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Directie/00 - Overzicht.md` (huidige versie als die bestaat) | Bestaande missie/doelgroep/propositie/status |
| `Directie/01 - Goals.md` | Driejaarvisie, jaardoelen, lange-termijn richting |
| `Directie/02 - Tasks.md` | Huidige projecten en initiatieven (kunnen propositie raken) |
| `Directie/Playbook/Brand Guidelines.md` | Brand-persoonlijkheid, kernwaarden, positionering |
| `Directie/Playbook/Tone of Voice.md` | Toon, taalgebruik (raakt communicatie-blok) |
| `Directie/Playbook/Bedrijfsverhaal.md` | Origin story, mede-oprichters, mentorgesprekken |
| `Directie/Playbook/ICP.md` (of vergelijkbaar) | Klantsegmenten + pijnpunten (doelgroep-blok) |
| `Directie/Research/*.md` | Brainstorms, marktanalyse, mentorgesprekken, audits |
| `Directie/Meetings/*.md` | Sleutelgesprekken die positionering bepaalden |

Maak per gevonden bron een korte interne aantekening: welke van de 7 blokken het raakt, en wat de relevante kerninzichten zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes — niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Maak duidelijk dat dit kan via meerdere paden:

- **URL** (website van het bedrijf, LinkedIn-bedrijfspagina, online portfolio)
- **PDF-upload** (KvK-uittreksel, business plan, pitch deck, marketing-rapport, AI-scan-rapport)
- **Tekst plakken** (e-mail aan een investeerder, een pitch die ergens staat, een interview-transcript)
- **Bestaande bestanden in vault** buiten Directie/ die context geven (bijvoorbeeld content-archief, salesgesprekken-notities)

Concrete vraag aan gebruiker:
> "Heb je externe documenten of bronnen waaruit ik kan putten? Bijvoorbeeld een bestaande website-URL, KvK-uittreksel, een ouder business plan, een pitch deck, een AI-scan rapport, of marketing-materiaal? Je mag een URL noemen, een bestand uploaden of tekst plakken. Hoe meer bronnen, hoe rijker het pre-fill."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen, scan op identiteit, propositie, doelgroep, USP's
- **PDF/document**: lees de inhoud, vat samen wat relevant is per blok
- **Geplakte tekst**: behandel als research-input

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 7 blokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] IDENTITEIT
      Bedrijfsnaam, kernactiviteit in 1-2 zinnen
      Bron: Directie/00 - Overzicht.md, KvK-uittreksel

  [2] MISSIE
      Wat ik gevonden heb over de drijfveer
      Bron: Directie/Playbook/Bedrijfsverhaal.md, website-About-pagina

  [3] DOELGROEP
      Klant-segmenten + pijnpunten
      Bron: ICP-bestand, pitch deck

  [4] AANBOD
      Pakketten / scenario's / dienstverlening
      Bron: website-dienstenpagina, business plan

  ... (5, 6, 7)

  GATEN waar ik nog vragen voor heb:
  - Blok 5: KPI's nog niet expliciet ergens benoemd
  - Blok 7: Korte-termijn doelen ja, langere-termijn vaag

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**. Wacht op het antwoord, dán pas het volgende blok. Niet alle blokken tegelijk neerzetten, dat overweldigt.

Per blok: 1 tot 3 vragen, afhankelijk van hoe gevuld de pre-fill al was. Als een blok in pre-fill al rijk gevuld is, stel je alleen een check-vraag ("klopt dit ook?"). Als het blok leeg is, stel je 2-3 open vragen om het te vullen.

#### Blok 1 — Identiteit

**Wat we vastleggen:** wie het bedrijf is in 1-2 alinea's, plus naam + uitleg van de naam als die betekenis heeft.

Kernvragen (kies wat relevant is):
1. Wat is de officiële naam, en heeft die een betekenis of geschiedenis (afkorting, samentrekking, rebrand)?
2. Hoe zou je in twee zinnen vertellen wat dit bedrijf doet, zonder marketing-taal?
3. Is er een korte tagline of zin die het samenvat in één regel?

#### Blok 2 — Missie

**Wat we vastleggen:** de diepere drijfveer, waarom dit bedrijf bestaat. Niet de USP, wel de why.

Kernvragen:
1. Wat is de werkelijke reden dat dit bedrijf bestaat? Wat moet er anders in de wereld door dit bedrijf?
2. Voor welke mensen of organisaties wil je echt iets betekenen?
3. Wat zou er verloren gaan als dit bedrijf stopt te bestaan?

#### Blok 3 — Doelgroep

**Wat we vastleggen:** wie de klant is, in welke segmenten, met welke pijnpunten.

Kernvragen:
1. Welke types klanten of organisaties bedien je nu of wil je bedienen? Twee of drie segmenten is meestal genoeg.
2. Per segment: wat is het kernprobleem dat ze hebben waar jij iets aan doet?
3. Wie zijn duidelijk **geen** klant — branches, omvang of situaties die je expliciet niet bedient?

Voor diepgang verwijs naar de ICP-skill (S4) als die nog volgt; deze skill mag op overzichtsniveau blijven.

#### Blok 4 — Aanbod / propositie

**Wat we vastleggen:** wat het bedrijf concreet aanbiedt, hoe dat is gestructureerd, en wat de belofte aan de klant is.

Kernvragen:
1. Welke pakketten, scenario's of dienstverleningstypen bied je aan? Geef korte beschrijvingen.
2. Wat is het concrete resultaat dat een klant na een traject heeft?
3. Wat is de belofte in één zin?

Voor pricing-details verwijs naar de S8-skill (Producten en Pricing) als die nog volgt.

#### Blok 5 — KPI's en succesindicatoren

**Wat we vastleggen:** hoe het bedrijf zijn succes meet. Niet alleen omzet — ook structurele indicatoren die met de propositie meebewegen.

Kernvragen:
1. Welke harde cijfers houd je nu bij om te zien of het bedrijf gezond is? (Omzet, marge, klanten, retentie, etc.)
2. Welke "zachte" indicatoren tellen ook? (NPS, kwaliteit, tijdsbesparing per klant, doorlooptijd, etc.)
3. Is er een KPI die je *wel* belangrijk vindt maar nu nog niet meet?

Lever op als tabel met indicator + beschrijving + status (actief / gewenst).

#### Blok 6 — Methodiek of werkfilosofie

**Wat we vastleggen:** een eigen werkwijze, framework, of een handvol kernprincipes die het bedrijf onderscheiden in hoe het werkt.

Kernvragen:
1. Heb je een eigen werkwijze of framework dat klanten doorlopen?
2. Welke 2 tot 4 kernprincipes leiden hoe je werkt? (Bijvoorbeeld: snelheid van oplevering, transparantie, opbouwen in lagen, geen lock-in, etc.)
3. Is er een metafoor of mentaal model dat je vaak terug laat komen in gesprekken?

Als er geen expliciete methodiek is, mag dit blok beperkt blijven tot 2-3 principes. Forceer geen kunstmatige framework als die er niet is.

#### Blok 7 — Status en richting

**Wat we vastleggen:** waar het bedrijf nu staat plus de korte- en lange-termijn doelen op hoofdlijn.

Kernvragen:
1. In welke fase staat het bedrijf nu? (Idee, opstart, gevestigd, schaal, transformatie, etc.)
2. Wat zijn 2 tot 4 korte-termijn doelen voor de komende 6-12 maanden?
3. Wat is de richting voor 2-3 jaar vooruit, op hoofdlijn?

Voor diepgang verwijs naar de S5-skill (`doelen-coach`) als die nog volgt; deze skill mag op overzichtsniveau blijven.

### Stap 6: Schrijven en opslaan

Gebruik het template uit `references/template-bedrijfsoverzicht.md` als skelet. Vul het met de uitkomsten uit pre-fill + interview.

Sla op als:
```
{scope}/Directie/00 - Overzicht.md
```

Maak de `Directie/`-map aan als die nog niet bestaat (al zal die normaal al door `os-builder` zijn aangemaakt).

Frontmatter (verplicht):
```yaml
---
type: bedrijfsoverzicht
bedrijf: <Naam>
status: <fase>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S1
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "revolutionair", "disruptief", "next-level", "game-changing". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** Een specifiek klantsegment ("administratiekantoor met 50 tot 100 klanten") is sterker dan een vaag begrip ("MKB").
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Korte koppen** (3 tot 6 woorden) in eigen stijl, niet generiek.
- **Tweede persoon vermijden** in het hoofdoverzicht; schrijf in derde persoon (of in we-vorm bij een duo of team).
- **Pas op met "branche-onafhankelijk".** Specifiek mag — een document dat probeert iedereen te bedienen, bedient niemand.

### Stap 7: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Directie/00 - Overzicht.md` — v1.0, 7 blokken ingevuld op basis van interview en pre-fill"*.
2. **Daily** — als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (deze conventie geldt in Iwan's OS, niet alle vaults hebben hem), log dan onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie** — als er een audit-rapport in `Directie/Research/` staat waar S1 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien zodat de score springt.

Vervolgsuggesties die je altijd noemt:
- **Verken de aangrenzende SCALE-checks:** S2 Brand Guidelines en S3 Tone of Voice geven het overzicht een visuele en communicatieve kant. S4 ICP diept de doelgroep uit. S5 Jaardoelen verfijnt de richting. S7 Bedrijfsverhaal voegt menselijke laag toe.
- **Cross-link:** het overzicht zal in alle communicatie terugkomen (website-About, sales-deck, eerste klantgesprek, workshop-intro). Stel voor om het hergebruik expliciet te markeren in een sectie onderaan het document.
- **Bijhouden:** dit is een levend document. Update bij grote bedrijfsverschuivingen (nieuw pakket, fasewissel, rebrand).

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaand `00 - Overzicht.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een klantsegment, een cijfer, een voorbeeld) als het te abstract blijft.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs met een single-business vault, voor mensen met een multi-business vault, en voor klanten die door Upscailed begeleid net hun SCALE-skelet hebben opgezet. Geen hard-coded persoonlijke paden — alleen relatief binnen `{scope}`.
- **Vraag actief naar externe documenten.** Veel ondernemers hebben hun bedrijf al beschreven in een website, business plan, pitch deck of LinkedIn-pagina. Halen we dat niet op, dan typen ze het opnieuw.
- **Respecteer de stem van de ondernemer.** Het overzicht moet voelen alsof hij het zelf had kunnen schrijven, niet alsof er een tekstschrijver bovenop is gezet.
- **Geen marketing-trucjes.** Geen "imagine if...", geen rhetorische vragen aan het begin van een sectie. Recht voor zijn raap.
- **Mik op rijke diepte, niet op het audit-minimum.** Het document moet aan een AI alle context geven die nodig is om daarna mee te denken. Halve antwoorden voldoen niet.

## Voorbeeld-output

Zie [`references/template-bedrijfsoverzicht.md`](references/template-bedrijfsoverzicht.md) voor de exacte structuur die de skill oplevert.

Levende voorbeelden van een rijk gevuld bedrijfsoverzicht (intern bij Upscailed):
- Een rijk uitgewerkt `00 - Overzicht.md` heeft minstens 100 regels, alle 7 blokken volledig gevuld, plus SCALE-framework- of methodiek-uitleg en kernprincipes
