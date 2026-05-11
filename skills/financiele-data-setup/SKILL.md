---
name: financiele-data-setup
title: "Financiële Data Setup"
description: "Helpt een ondernemer in 30 tot 50 minuten zijn financiële data-stroom inrichten in één canoniek document: `{scope}/Collect/Financiele-Data.md` (of `{scope}/Financiën/Data-Setup.md` voor vaults met een Financiën-map). Dit is SCALE-stap C3 (Collect) en de fundering voor alle latere analyse-, leverage- en engineer-stappen die op cijfers leunen. Zonder dit setup-document blijven kerncijfers verspreid over boekhoudpakket, Stripe-dashboard, banking-app en handmatige spreadsheets, en kan geen enkele AI-tool of rapportage betrouwbaar mee rekenen. De skill werkt via een gestructureerd interview in 6 blokken (Scope + bestaande situatie, Bronnen-inventaris boekhouding-betalingen-bank, Kerncijfers per categorie omzet-kosten-marge-cashflow-DSO-winst-per-medewerker, Ophaal-frequentie realtime-dagelijks-maandelijks-kwartaal, Doelgroep en consumenten van de data, Eerste rapportage opzetten). Vóór het interview begint, scant de skill diep wat al beschikbaar is: `IT/Toolstack.md` voor boekhoudpakket en betalingsplatform, `Financiën/` voor bestaande rapportages, `Juridisch/BTW-administratie.md` voor BTW-status (relevant voor netto versus bruto omzet), `Directie/00 - Overzicht.md` voor type bedrijf en propositie. Bronnen die de skill expliciet ondersteunt: boekhoudpakket (Moneybird, e-Boekhouden, Exact, Snelstart, Twinfield), betalingsplatform (Stripe, Mollie, iDEAL, PayPal), bank (Rabobank, ABN AMRO, ING via PSD2-API of handmatig), factuurtool, urenregistratie. Werkt vault-onafhankelijk: geen aannames over een specifieke mapnaam of vault-eigenaar, alleen over de SCALE-conventie (`Collect/`, `Financiën/`, `IT/`). Activeer altijd wanneer iemand zegt: 'financiële data structureren', 'financiële rapportages opzetten', 'cijfers op één plek', 'kerncijfers vastleggen', 'omzet en kosten in kaart brengen', 'DSO bijhouden', 'cashflow-overzicht opzetten', 'boekhouding documenteren', 'finance dashboard voorbereiden', 'C3 dichten in SCALE-audit', 'gap C3', 'Financiele-Data.md aanmaken', 'data-setup voor Financiën', 'welke kerncijfers heb ik nodig'. Belangrijk: dit is documentatie en setup, geen fiscaal advies. Bij twijfel over fiscale of boekhoudkundige keuzes verwijst de skill door naar een boekhouder of Fit In Finance."
category: operations
tags: [finance, financiele-data, collect, kerncijfers, rapportage, scale-framework, c3, omzet, kosten, marge, cashflow, dso]
estimatedTime: "30 tot 50 minuten"
version: "1.1.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Financiële Data Setup

## Doel

Helpt een ondernemer om in 30 tot 50 minuten een complete **financiële data-setup** in te richten in één canoniek document: `{scope}/Collect/Financiele-Data.md` of `{scope}/Financiën/Data-Setup.md`. Dit is SCALE-stap C3 (Collect) en de basis voor elke latere SCALE-stap die op cijfers leunt: A1 (Rapportage Builder), A4 (Beslissings Analyse), L4 (Finance Automatisering) en de Engineer-stappen die dashboards bouwen.

*Waarom dit fundamenteel is.* Zonder duidelijke afspraak welke kerncijfers uit welke bron, in welke frequentie, voor wie worden klaargezet, blijven cijfers verspreid. De ondernemer logt in op Moneybird voor omzet, op Stripe voor abonnementen, op de bank-app voor cashflow en in een eigen spreadsheet voor DSO. Vier tabbladen, vier waarheden, geen enkele AI of dashboard die er betrouwbaar op kan landen. Deze skill legt de stroom vast: bron, cijfer, frequentie, eigenaar, consument. Daarna kan een rapportage-skill, een mission-control-dashboard of een finance-automatisering vertrekken vanaf één gedeelde feiten-basis.

*Wat je verliest zonder dit document.* Drie concrete pijnpunten die deze skill voorkomt:

1. **Cijfers die niet kloppen.** Twee rapportages over dezelfde periode met andere uitkomsten omdat ze andere bronnen of definities gebruiken (bruto versus netto, factuurdatum versus betaaldatum).
2. **Vergeten kerncijfers.** Een ondernemer kijkt elke maand naar omzet, maar nooit naar marge per dienst, DSO of winst per medewerker. De cijfers die hij wel ziet, sturen verkeerde besluiten aan.
3. **Geen basis voor automatisering.** Een latere finance-automatisering (L4) of dashboard (E1) heeft een gedefinieerd cijfer-vocabulaire nodig. Zonder C3 wordt elke automatisering een eilandje met eigen definities.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit C3 vraagt minimaal 1 rapportage-bestand in `Financiën/Rapportage/` of een vermelding in `Toolstack.md` dat de boekhouding actueel is. Die drempel haal je in 5 minuten door één bestaand rapport te plaatsen. Maar dan staat er nog steeds geen afspraak over welke cijfers in welke frequentie uit welke bron komen. Deze skill mikt op een **werkbare data-setup**: een document dat exact specificeert wat er bijgehouden wordt, door wie, hoe vaak, en voor welke consumenten (mensen of AI-tools).

Resultaat: SCALE-audit C3 springt van ❌ of ⚠️ naar ✅, én het document is direct herbruikbaar voor A1 (rapportage genereren), A2 (mission control), L4 (finance automatisering), E1 (dashboard bouwen) en latere beslissings-analyses.

**Disclaimer:** dit document is administratieve en organisatorische documentatie, geen fiscaal of boekhoudkundig advies. Bij twijfel over boekhoudkundige verwerking, fiscale optimalisatie, complexe omzetcategorisering, balansbeoordeling of belastingadvies verwijst de skill expliciet door naar een boekhouder of administratiekantoor (bijvoorbeeld Fit In Finance).

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  FINANCIËLE DATA SETUP - SCALE-stap C3 (Collect)          │
│  ~30-50 minuten · 6 interview-blokken                     │
└──────────────────────────────────────────────────────────┘

  In 30 tot 50 minuten leggen we vast welke financiële
  kerncijfers je bedrijf stuurt, uit welke bron ze komen,
  hoe vaak ze worden klaargezet en voor wie. Daarna kan elke
  rapportage, dashboard of AI-tool op één gedeelde basis
  rekenen.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 6 blokken interview (één per beurt, niet alles       │
  │    tegelijk), gemiddeld 4-8 minuten per blok            │
  │  • Per blok 2-4 korte vragen, altijd met een            │
  │    aanbevolen standaard erbij                           │
  │  • Vooraf scan ik je vault (IT/Toolstack.md voor je     │
  │    boekhoudpakket, Financiën/ voor bestaande            │
  │    rapportages, Juridisch/BTW-administratie.md voor je  │
  │    BTW-status) zodat we niets vragen wat er al staat    │
  │  • Daarna lever ik Financiele-Data.md op plus een       │
  │    eerste maandrapportage-template als opvolging        │
  └────────────────────────────────────────────────────────┘

  De 6 blokken:
  [1] Scope + bestaande situatie
  [2] Bronnen-inventaris (boekhouding, betalingen, bank)
  [3] Kerncijfers per categorie (omzet, kosten, marge,
      cashflow, DSO, winst per medewerker)
  [4] Ophaal-frequentie (realtime / dagelijks /
      maandelijks / kwartaal)
  [5] Consumenten van de data (mens, AI, dashboard)
  [6] Eerste rapportage opzetten

  Heb je externe input klaar? Bijvoorbeeld:
  • Login of read-only export van je boekhoudpakket
    (Moneybird, e-Boekhouden, Exact, Snelstart, Twinfield)
  • Laatste maand- of kwartaalrapportage uit je boekhouding
  • Stripe of Mollie betalings-export
  • Banking-export (CSV uit je bank-app, laatste 3-6 mnd)
  • Een bestaande spreadsheet met cijfers die je nu bijhoudt

  Hoe meer bronnen, hoe minder ik hoef uit te vragen en hoe
  preciezer de setup wordt.

  Let op: dit is documentatie en setup, geen fiscaal advies.
  Bij twijfel over verwerking, fiscale gevolgen of complexe
  boekhoudvragen verwijs ik je door naar je boekhouder of
  een administratiekantoor.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  FINANCIËLE DATA SETUP - C3 · 30-50 min · 6 blokken       │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   │                      │  Collect/ of
   │                      │  Financiën/?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  IT/Toolstack.md,
   │    (auto-discover)   │  Financiën/,
   │                      │  Juridisch/BTW,
   │                      │  Directie/Overzicht,
   │                      │  bestaande rapporten
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Boekhoud-export,
   │                      │  Stripe/Mollie-
   │                      │  rapport, banking-
   │                      │  CSV, bestaande
   │                      │  spreadsheet
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per blok, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, blok   │  6 blokken,
   │    voor blok         │  2-4 vragen elk
   │                      │  [1] Scope
   │                      │  [2] Bronnen
   │                      │  [3] Kerncijfers
   │                      │  [4] Frequentie
   │                      │  [5] Consumenten
   │                      │  [6] Eerste rapport
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Cross-link met    │  S12 Toolstack,
   │    aangrenzende      │  J2 BTW-status,
   │    SCALE-stappen     │  A1 Rapportage,
   │                      │  L4 Finance Auto
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Collect/
   │    opslaan           │  Financiele-Data.md
   │                      │  of Financiën/
   │                      │  Data-Setup.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    aanbevelingen     │  3 vervolgstappen
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Financiële data structureren" / "financiële data-setup"
- "Cijfers op één plek" / "kerncijfers vastleggen"
- "Welke kerncijfers heb ik nodig" / "welke cijfers moet ik bijhouden"
- "Omzet en kosten in kaart brengen" / "marge per dienst documenteren"
- "DSO bijhouden" / "Days Sales Outstanding meten"
- "Cashflow-overzicht opzetten" / "cashflow-monitoring"
- "Winst per medewerker" / "winst per FTE bijhouden"
- "Boekhouding-data documenteren" / "rapportage-stroom inrichten"
- "Finance dashboard voorbereiden" / "data-basis voor finance dashboard"
- "C3 dichten in SCALE-audit" / "gap C3"
- "Financiele-Data.md aanmaken" / "Data-Setup.md schrijven"
- "Hoe haal ik betrouwbare cijfers uit mijn boekhouding"

Triggert NIET wanneer:
- De gebruiker een **boekhoudpakket wil opzetten of inrichten** (dat is een eenmalige tool-keuze plus configuratie, niet een data-stroom-setup). Verwijs naar een boekhouder of `toolstack-inventarisatie` (S12) als de tool nog niet in de stack staat.
- De gebruiker een **BTW-aangifte wil doen** (gebruik het boekhoudpakket of zie skill `btw-administratie` voor documentatie).
- De gebruiker een **echte rapportage wil genereren** met cijfers erin (dat is A1 Rapportage Builder). Deze skill (C3) zet de bron en frequentie vast. A1 maakt het rapport.
- De gebruiker een **dashboard wil bouwen** (E1 Dashboard Bouwer of A2 Mission Control). Deze skill levert wel de cijfer-definities die zo'n dashboard nodig heeft.
- De gebruiker een **finance-automatisering wil opzetten** (L4 Finance Automatisering). Deze skill levert wel het cijfer-vocabulaire dat die automatisering gebruikt.
- De gebruiker een **jaarrekening wil opstellen**. Dat is werk voor een boekhouder of accountant, niet voor deze setup-skill.
- Het bedrijf heeft **geen actieve omzet of administratie** en bestaat alleen op papier. Dan is er nog geen data om te collecten.

## Workflow

### Stap 1: Scope kiezen en bestand-locatie bepalen

Vraag voor welk bedrijf en in welk pad de financiële data-setup wordt vastgelegd. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Collect/`, `Financiën/`, `IT/`, `Directie/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Collect/`, `Bedrijven/Naam/Financiën/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van `os-builder`) waar Collect of Financiën nog leeg is

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze financiële data-setup voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bijvoorbeeld de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `IT/`-, `Financiën/`- of `Directie/`-map. Bevestig de gevonden scope voordat je doorgaat.

**Pad-keuze voor het output-bestand.** Twee paden zijn beide goed:

- `{scope}/Collect/Financiele-Data.md` past binnen de SCALE-Collect-conventie (bewust ondergebracht in de Collect-sprint zodat de fundering visueel bij elkaar staat)
- `{scope}/Financiën/Data-Setup.md` past beter bij bedrijven die al een goed gevulde Financiën-map hebben en cijfers daar centraal beheren

Vraag de gebruiker welke voorkeur:
> "Wil je dit document onder `Collect/` plaatsen (SCALE-Collect-conventie, makkelijk vindbaar bij alle data-setup-bestanden) of onder `Financiën/` (centraal bij je financiële documenten en rapportages)? Beide kanten werken. Mijn standaard-suggestie is **`Collect/Financiele-Data.md`** omdat dat het beste aansluit op de SCALE-flow waarin alle Collect-stappen op één plek staan."

Controleer daarna of het gekozen output-pad al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Financiele-Data - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

Maak de bovenliggende map (`Collect/` of `Financiën/`) aan als die nog niet bestaat. Log dat dan in `Systeem/Structuur/Vault Changelog.md` (alleen als die conventie in deze vault geldt; sla over als die map of dat bestand niet bestaat).

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, geen hard-coded absolute paden.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Collect/Financiele-Data.md` (huidige versie als die bestaat) | Bestaande setup, bronnen, definities |
| `Financiën/Data-Setup.md` (alternatieve naam, als die bestaat) | Idem |
| `IT/Toolstack.md` (S12) | **Verplichte check** - welke boekhoudpakket, betalingsplatform, bank, factuurtool en urenregistratie er staan |
| `Juridisch/BTW-administratie.md` (J2, als die bestaat) | BTW-status, regime (21% / 9% / vrijgesteld / KOR), aangiftefrequentie (relevant voor netto versus bruto rapportage) |
| `Juridisch/KvK-administratie.md` (J1, als die bestaat) | Rechtsvorm, vestigingsadres (relevant voor sole proprietor versus BV-rapportage) |
| `Directie/00 - Overzicht.md` | Bedrijfsnaam, type dienstverlening, propositie, omzetorde-grootte, klantvolume |
| `Directie/01 - Goals.md` | Omzetdoel lopend jaar (relevant voor maandelijkse vergelijking met realisatie) |
| `Financiën/` (basis-map als die bestaat) | Bestaande rapportages, jaarrekening, kwartaalrapportages |
| `Financiën/Rapportage/` (als bestaat) | Eerdere maand- of kwartaalrapporten (te gebruiken als referentie voor cijfer-definities) |
| `HR/Team.md` (S11, als bestaat) | Aantal FTE (relevant voor winst per medewerker) |
| `Sales/` (subfolders) | Eventueel klant- of factuurregisters die naast boekhouding lopen |
| `Operations/Processen/` | Eventuele beschreven processen rond facturatie of incasso |

Maak per gevonden bron een korte interne aantekening: welk van de 6 blokken het raakt en welke kerngegevens al bekend zijn (welk boekhoudpakket, welk betalingsplatform, BTW-regime, aantal FTE).

**Indien split-stack** (bijvoorbeeld e-Boekhouden voor boekhouding + Moneybird als factuur-tool + bank apart via PSD2, of Exact + Yuki + Stripe, of elke andere combinatie waarbij boekhouding, factuur-tool en bank niet één geïntegreerd pakket vormen): documenteer ELKE bron als aparte rij in de bronnen-tabel, met expliciete koppelingen tussen-bronnen (bijv. *"Moneybird-facturen → e-Boekhouden via maandelijkse factuurexport (CSV) door boekhouder, handmatige stap"*, of *"bank → e-Boekhouden via PSD2-koppeling, automatisch dagelijks"*). Markeer ontbrekende of handmatige koppelingen expliciet als **risico** in een aparte sectie "Koppel-risico's", omdat handmatige stappen de meest voorkomende bron zijn van cijfer-discrepanties tussen rapportages.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

Vul daarna onderstaand intern overzicht in:

- Bedrijfsnaam: [uit vault of leeg]
- Rechtsvorm: [eenmanszaak / VOF / BV / etc. uit KvK of leeg]
- BTW-regime: [21% / 9% / vrijgesteld / KOR / onbekend - uit BTW-administratie]
- Boekhoudpakket: [Moneybird / e-Boekhouden / Exact / Snelstart / Twinfield / anders / onbekend - uit Toolstack]
- Betalingsplatform: [Stripe / Mollie / iDEAL via bank / PayPal / anders / geen - uit Toolstack]
- Bank: [Rabobank / ABN / ING / bunq / anders / onbekend]
- Aantal FTE: [getal uit HR/Team.md of "1 (solopreneur)"]
- Bestaande rapportages: [lijst gevonden in Financiën/Rapportage of "geen"]
- Omzetdoel lopend jaar: [uit Goals of "niet vastgelegd"]

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Bij een financiële data-setup zijn er vaak structurele bronnen buiten de vault die de setup precies maken.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen die we kunnen meenemen? Bijvoorbeeld:
> - Een **export uit je boekhoudpakket** (Moneybird, e-Boekhouden, Exact, Snelstart of Twinfield): laatste maand of kwartaal, of de jaarrekening van vorig jaar. Geeft inzicht in welke cijfers nu al beschikbaar zijn.
> - Een **Stripe of Mollie betalings-export** (CSV of dashboard-screenshot): laat zien welke recurring streams er lopen.
> - **Banking-export** uit je bank-app (CSV, laatste 3-6 maanden): voor cashflow-patronen, debiteuren en crediteuren.
> - Een **bestaande spreadsheet** waar je nu cijfers in bijhoudt (welke rijen, welke formules).
> - Een **factuurtool-export** of urenregistratie-export, als je die buiten je boekhoudpakket draait.
> 
> Hoe meer bronnen, hoe minder ik hoef uit te vragen en hoe preciezer ik de definities kan vastleggen. Een ruwe export is veel waardevoller dan een schatting uit het hoofd."

Per aangeleverde bron:
- **Boekhoud-export of jaarrekening**: scan op categorieën (omzet, kosten, BTW, debiteuren, crediteuren), herken patronen, neem ze over als referentie-definities
- **Stripe/Mollie-export**: identificeer recurring versus eenmalig, abonnementen versus one-shot, gemiddelde transactiewaarde
- **Banking-CSV**: scan op vaste lasten (huur, software-abonnementen, salarissen), pieken in inkomsten, timing van debiteuren-betalingen
- **Bestaande spreadsheet**: neem het cijfer-vocabulaire over als baseline, vraag de gebruiker waarom hij dat zo bijhoudt

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4. Markeer in dat geval velden waar geen bron voor is met `[VERIFICEREN]` zodat de gebruiker later kan aanvullen.

**Privacy-let op**: pas op met het laten plakken van complete banking-exports of klantnamen. Vraag eventueel om geanonimiseerde versies of laat de gebruiker zelf de relevante regels noemen.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 6 blokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat én de gebruiker bevestigen of de informatie correct is begrepen.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] SCOPE + BESTAANDE SITUATIE
      Bedrijf: {Naam}, rechtsvorm: {BV / EZ / VOF}
      Pad: {scope}
      Output-bestand: {scope}/Collect/Financiele-Data.md
      Bestaat al: nee (eerste versie)
      Bron: KvK-administratie, Directie/Overzicht

  [2] BRONNEN-INVENTARIS
      Boekhoudpakket: Moneybird (uit Toolstack.md)
      Betalingsplatform: Stripe (uit Toolstack.md)
      Bank: Rabobank (uit Toolstack.md)
      Factuurtool: ingebakken in Moneybird (vermoed)
      Urenregistratie: nog onbekend
      Bron: IT/Toolstack.md

  [3] KERNCIJFERS (al ergens benoemd?)
      Omzet: ja, in Q3-rapportage Financiën/Rapportage/
      Marge per dienst: nee, nergens gevonden
      DSO: nee, niet bijgehouden
      Cashflow: ja, maandelijks in spreadsheet (extern)
      Winst per medewerker: nee
      Bron: Financiën/Rapportage/Q3-2025.md

  [4] FREQUENTIE
      Maandafsluiting: vermoed maandelijks via boekhouder
      Stripe: realtime beschikbaar
      Bank: dagelijks via banking-app
      Bron: niet expliciet vastgelegd, vermoed op gebruik

  [5] CONSUMENTEN VAN DE DATA
      Iwan zelf (operationele stuur-cijfers)
      Boekhouder (BTW-aangifte, jaarrekening)
      Latere AI-rapportage en mission-control nog te bouwen

  [6] EERSTE RAPPORTAGE
      Bestaande Q3-rapportage in Financiën/Rapportage/
      Geen vaste maandrapportage-template gevonden

  GATEN waar ik nog vragen voor heb:
  - Blok 2: factuurtool en urenregistratie bevestigen
  - Blok 3: welke cijfers actief stuur je nu en welke wil je
    erbij (DSO, marge per dienst, winst per FTE)?
  - Blok 4: wie zet wat klaar en wanneer
  - Blok 5: voor welke AI-tool of dashboard wordt straks
    door gebruikt

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat. Flag inconsistenties expliciet (bijvoorbeeld: Toolstack noemt Moneybird, maar in een aparte spreadsheet hou je ook cijfers bij - moet die spreadsheet weg of blijft die naast Moneybird leven?).

### Stap 5: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**. Wacht op het antwoord, dan pas het volgende blok. Niet alle blokken tegelijk neerzetten.

Per blok: 2 tot 4 vragen, afhankelijk van hoe gevuld de pre-fill al was. Als een blok in pre-fill al rijk gevuld is, stel je alleen check-vragen. Als het blok leeg is, stel je open vragen om het te vullen. **Altijd een aanbevolen standaard meegeven** bij elke vraag, zodat de gebruiker snel kan bevestigen of corrigeren.

#### Blok 1: Scope en bestaande situatie

Behandeld in stap 1, hier alleen een korte bevestiging:
> "We leggen de financiële data-setup vast voor {Bedrijfsnaam} op `{gekozen pad}`. Klopt dit? En wil je beginnen vanaf nul of voortbouwen op {gevonden bestaande rapportage}?"

#### Blok 2: Bronnen-inventaris

**Wat we vastleggen:** welke tool of bron levert welke ruwe data. Per bron: naam, plan/account, eigenaar (cross-link Team.md indien aanwezig), wat hij oplevert, hoe je erbij komt, welke koppelingen er al lopen.

Vijf bron-types expliciet uitvragen:

1. **Boekhoudpakket.** De primaire bron voor de meeste cijfers.
   > "Welk boekhoudpakket gebruik je? Standaard-suggesties voor MKB: **Moneybird** (laagdrempelig, populair voor ZZP en kleine BV's), **e-Boekhouden** (sterk geprijsd voor groei), **Exact Online** (sterker bij meer volume of complexere boekhouding), **Snelstart** of **Twinfield** (vaak via boekhouder)."
   
   Per pakket vastleggen: account-eigenaar, welke modules actief (boekhouding, facturatie, urenregistratie, salaris), welke koppelingen lopen (Stripe, bank, factuurtool).

2. **Betalingsplatform.** Voor recurring of online betalingen:
   > "Hoe ontvang je geld? Standaard-keuzes: **Stripe** (sterk voor recurring en internationale klanten), **Mollie** (sterk voor Nederlandse iDEAL-flow), **iDEAL via bank** (direct in bankrekening), **PayPal** (vooral B2C of internationaal), **handmatige overboeking** (factuur betaald per overschrijving). Welke gebruik je en koppelt die door naar je boekhouding?"
   
   Belangrijk uitvragen: of er een **automatische koppeling** is tussen betalingsplatform en boekhouding (Stripe-Moneybird-koppeling, Mollie-e-Boekhouden, etc.). Als nee, log dat als handmatige stap met risico op vertraagde verwerking.

3. **Bank.** Voor cashflow-monitoring en niet-platform-betalingen:
   > "Welke bank gebruik je voor de zakelijke rekening? Voor Rabobank, ABN AMRO, ING en bunq is er een **PSD2-koppeling** mogelijk waarmee een boekhoudpakket transacties direct kan ophalen. Geldt dat voor jullie en, zo niet, doe je dat handmatig (CSV-import in boekhouding)?"

4. **Factuurtool.** Vaak ingebakken in boekhoudpakket, soms apart:
   > "Maak je facturen vanuit je boekhoudpakket of een aparte tool (Factuursturen, Sendcloud Pay, iZettle, etc.)? Voor de meeste MKB-cases is **ingebakken in boekhoudpakket** de standaard. Apart heeft alleen zin bij hoge volumes of specifieke flows."

5. **Urenregistratie.** Alleen relevant bij uur-georiënteerde bedrijven (dienstverlening, consultancy):
   > "Als je per uur factureert: hoe registreer je uren? Optie A: **direct in boekhoudpakket** (Moneybird en e-Boekhouden hebben een urenmodule). Optie B: **aparte tool** (Toggl, Harvest, Clockify). Optie C: **geen urenregistratie** (vaste prijzen of abonnementen)."

Voor elke bron: noteer of er een API of CSV-export bestaat, zodat latere automatisering of dashboards op die bron kunnen aanhaken.

#### Blok 3: Kerncijfers per categorie

**Wat we vastleggen:** welke cijfers actief gestuurd worden. Vier hoofdcategorieën, plus twee specifieke cijfers die vaak ontbreken maar belangrijk zijn (DSO en winst per medewerker).

Voor elke categorie: noteer **wat het cijfer is, uit welke bron, en hoe het wordt berekend**. Een cijfer zonder definitie is een cijfer waarover ruzie ontstaat.

**Categorie 1: Omzet**

Kernvragen:

1. **Bruto versus netto.** BTW-regime bepaalt of het verschil scherp is:
   > "Wil je omzet bijhouden **bruto** (incl. BTW) of **netto** (excl. BTW)? Voor sturing van het bedrijf is meestal **netto** de standaard (BTW is doorgeefpost). Voor cashflow-monitoring kan bruto handig zijn (wat komt er binnen). Suggestie: hou **netto** als primair cijfer, met bruto als afgeleide voor cashflow."

2. **Omzet-uitsplitsing.** Voor latere marge-analyse en sturing:
   > "Splits je omzet uit per dienst, product of klant? Drie veelgebruikte splits: **per dienst-categorie** (bv. abonnement / advies / project), **recurring versus eenmalig**, **per klant of klant-segment**. Welke splits zijn voor jullie zinvol om te sturen?"
   
   Bij dienstverleners: vaak per dienst-categorie zinvol omdat marges sterk verschillen.
   Bij abonnement-businesses: recurring versus eenmalig is kerncijfer (MRR, ARR).
   Bij B2B: per klant kan zinvol zijn voor concentratie-risico.

3. **Frequentie van bijwerken.** Boekhouding loopt vaak achter:
   > "Hoe vaak wordt de omzet bijgewerkt in je boekhouding? Standaard: **direct bij factuur** (als facturen in boekhoudpakket worden gemaakt), of **wekelijks tot maandelijks** (als boekhouder of jij zelf het ergens anders verwerkt). Wat is jullie ritme?"

**Categorie 2: Kosten**

Kernvragen:

1. **Vast versus variabel.** Voor break-even-analyse en cashflow-prognose:
   > "Splits je kosten in **vast** (huur, software-abonnementen, salarissen, vaste verzekeringen) versus **variabel** (inkoop, freelancers, betaalde ads, leveranciers per project)? Standaard-suggestie: ja, omdat vaste kosten je maandelijkse break-even bepalen en variabele kosten meeschalen met omzet."

2. **Kostencategorieën.** Bouw mee op wat in boekhouding al staat:
   > "Welke kostencategorieën gebruik je in je boekhouding? Vaak: huisvesting, software, marketing, freelancers, kantoorbenodigdheden, reizen, verzekeringen, telecom, accountant. Welke zijn voor jullie de relevante posten om te sturen?"

3. **Salarissen of DGA-loon.** Apart relevant voor BV:
   > "Bij BV-rechtsvorm: hoe verwerk je DGA-loon? En hoe verschilt dat van bruto-resultaat? Vraag het apart te scheiden van overige kosten als dat substantieel is."

**Categorie 3: Marge**

Marge per dienst en per klant is een **vergeten cijfer** bij veel dienstverleners maar cruciaal voor sturing. Vraag actief:

1. **Marge per dienst-categorie.** Bouw verder op de omzet-splits:
   > "Heb je zicht op marge per dienst-categorie? Bijvoorbeeld: een abonnement van 500 euro per maand met 100 euro variabele kosten heeft een marge van 80%. Een project van 5.000 euro met 3.000 euro freelancer-inzet heeft 40% marge. Welke marges sturen jullie en hoe vaak bekijk je ze?"

2. **Marge per klant.** Voor B2B met grote klanten:
   > "Heb je een paar grote klanten? Dan kan **marge per klant** een belangrijk sturingscijfer zijn. Standaard-suggestie bij minder dan 20 klanten: ja. Bij honderden klanten: meestal op klant-segment-niveau."

3. **Bruto versus netto marge.** Eenvoudige berekening vastleggen:
   > "Welke marge-definitie hou je aan? Bruto marge = omzet minus directe kosten (inkoop, freelancer-tijd). Netto marge = omzet minus alle kosten. Voor sturing per dienst is **bruto marge** standaard."

**Categorie 4: Cashflow**

Kernvragen:

1. **Cashflow in en uit per maand.** Eenvoudige stuur-cijfers:
   > "Hou je een cashflow-overzicht bij per maand (totaal in versus totaal uit)? Voor de meeste MKB-cases is een maandelijkse cashflow-check zinvol. Met welke frequentie wil je dat dit cijfer beschikbaar is?"

2. **Debiteuren-saldo.** Open facturen die nog binnenkomen:
   > "Hoe groot is je debiteuren-saldo nu (open facturen die nog niet betaald zijn)? Boekhoudpakketten kunnen dit live tonen. Suggestie: dit cijfer **wekelijks** bekijken, vooral als grote facturen lang openstaan."

3. **Crediteuren-saldo.** Wat je nog moet betalen:
   > "Hoe groot is je crediteuren-saldo nu (open inkoop-facturen die jij nog moet betalen)? Belangrijk in combinatie met debiteuren: levert het netto-cashflow-beeld voor de komende weken."

4. **Liquide middelen.** Banksaldo plus betalingsplatform-saldo:
   > "Wat is je gecombineerd saldo (bank + Stripe/Mollie + andere uitstaande tegoeden)? Dit is je vertrekpunt voor cashflow-prognose."

**Categorie 5: DSO (Days Sales Outstanding)**

DSO is een vaak vergeten kerncijfer dat aangeeft hoe snel debiteuren betalen. Formule: (debiteuren-saldo / omzet over periode) × dagen in periode.

> "DSO meet hoe snel je geld krijgt na facturatie. Concreet: een DSO van 30 dagen betekent dat je gemiddeld 30 dagen wacht op betaling. Een DSO boven 45 of 60 dagen wijst op betalingsdiscipline-problemen of trage afspraken met klanten. Wil je dit cijfer maandelijks bijhouden? Standaard-suggestie: ja, met als drempel '45 dagen of minder' als gezond."

Bij hoge DSO: noteer in het document als open punt en stel voor de skill `opvolg-flow` (V3) of een latere automatisering te overwegen.

**Categorie 6: Winst per medewerker (FTE)**

Specifiek relevant voor dienstverleners en voor Upscailed's eigen propositie (AI als hefboom per FTE).

Formule: bruto winst / aantal FTE.

> "Winst per medewerker (per FTE) laat zien hoe efficiënt je bedrijf draait. Voor een dienstverlener is dit een sterke proxy voor hoe goed AI of automatisering werkt: hoe meer winst per FTE, hoe beter de hefboom. Voor solopreneurs is dit gewoon je eigen bruto winst. Wil je dit cijfer **maandelijks** of **per kwartaal** bijhouden? Standaard-suggestie: per kwartaal, omdat het maandelijks te veel ruis heeft."

Bij solopreneur: noteer als zelfde cijfer als bruto winst (1 FTE).

#### Blok 4: Ophaal-frequentie

**Wat we vastleggen:** voor elk cijfer of bron: hoe vaak wordt het ververst, wie zet het klaar, hoe komt het in het document of dashboard.

Vier frequentie-niveaus expliciet:

1. **Realtime.** Cijfers die live beschikbaar zijn via API of dashboard:
   > "Welke cijfers heb je realtime nodig? **Stripe-omzet** komt live, **banksaldo** via PSD2 ook. Vaak komt 'realtime' in praktijk neer op 'binnen een minuut bij refresh'. Voor welke cijfers is dit echt nodig?"
   
   Standaard-suggestie: alleen realtime voor liquide middelen plus actuele Stripe-MRR. De rest is niet realtime nodig.

2. **Dagelijks.** Voor cashflow-bewustzijn en operationele sturing:
   > "Welke cijfers wil je dagelijks zien? Standaard: **banksaldo** en **omzet die dag**. Andere cijfers (DSO, marge per dienst) zijn dagelijks vaak overkill."

3. **Maandelijks.** Voor de meeste stuur-cijfers de juiste frequentie:
   > "Welke cijfers wil je elke maand zien? Standaard-suggestie: **omzet totaal en per categorie**, **kosten totaal en per categorie**, **bruto marge totaal**, **DSO**, **cashflow in/uit/saldo**. Dit is het hart van de maandrapportage."

4. **Per kwartaal.** Voor strategische sturing:
   > "Welke cijfers bekijk je per kwartaal? Standaard-suggestie: **marge per dienst-categorie**, **marge per klant** (bij weinig klanten), **winst per FTE**, **vergelijking met jaardoel**."

Per cijfer of bron noteren:
- **Bron** (boekhoudpakket / Stripe / bank / handmatig)
- **Frequentie** (realtime / dagelijks / maandelijks / per kwartaal)
- **Eigenaar** (wie zet klaar - solopreneur, boekhouder, AI-tool)
- **Ophaal-methode** (API / CSV-export / dashboard-kopie / handmatige notitie)

#### Blok 5: Consumenten van de data

**Wat we vastleggen:** voor wie of voor welke tool wordt deze data klaargezet. Belangrijk omdat dezelfde data verschillende formats nodig kan hebben.

Vraag:

1. **Wie kijkt naar deze cijfers?**
   > "Wie consumeert deze cijfers actief? Standaard: **jij zelf** (operationele sturing). Vaak ook: **boekhouder** (voor BTW-aangifte en jaarrekening). Soms: **medewerker of partner** (overleg-cijfers). Wie nog meer?"

2. **Welke AI-tools of dashboards gebruiken dit straks?**
   > "Welke latere SCALE-stappen of AI-tools moeten op deze data landen? Standaard-kandidaten: **A1 Rapportage Builder** (maakt maandrapport), **A2 Mission Control** (dashboard), **E1 Dashboard Bouwer** (custom dashboard), **L4 Finance Automatisering** (auto-pull en alerts). Welke daarvan zijn voor jullie relevant op korte termijn?"

3. **Formats die nodig zijn:**
   > "Welk format moet de output hebben? Standaard-opties: **markdown-rapport** (voor in de vault), **JSON-export** (voor dashboards en AI), **CSV** (voor doorrekening), **directe API** (voor automatisering). Voor de eerste maand-rapportage is **markdown** vaak voldoende."

#### Blok 6: Eerste rapportage opzetten

**Wat we vastleggen:** een eerste maand-rapportage-template die direct gevuld kan worden met data van de huidige of vorige maand.

Vraag:

1. **Maand-rapportage of kwartaal-rapportage als eerste deliverable?**
   > "Wil je dat ik een eerste **maand-rapportage-template** in `Financiën/Rapportage/` opzet, of meteen een **kwartaal-template**? Suggestie: maand is laagdrempelig en levert snel inzicht. Kwartaal is strategischer maar minder reactief."

2. **Welke maand vullen?**
   > "Welke maand wil je als eerste vullen? Standaard: **vorige afgesloten maand** (boekhouding is meestal compleet). Of we maken alleen de lege template klaar en jij vult hem bij de eerstvolgende maandafsluiting."

3. **Vergelijking met doel of vorige periode?**
   > "Wil je dat de rapportage de cijfers afzet tegen **je jaardoel** (uit Goals.md), tegen **vorige maand** (delta), of allebei? Standaard-suggestie: allebei, want delta laat trends zien en jaardoel laat zien of je on-track bent."

Markeer in het document een vervolgactie: na deze setup wordt skill `rapportage-builder` (A1) aangeroepen om de eerste echte rapportage te genereren.

### Stap 6: Cross-link met aangrenzende SCALE-stappen

In het output-document neem een aparte sectie "Cross-links en afhankelijkheden" op met:

| SCALE-stap | Hoe deze setup ermee verbindt |
|---|---|
| S12 Toolstack | Boekhoudpakket, betalingsplatform en bank staan in Toolstack. Wijziging in stack betekent update hier. |
| J1 KvK-administratie | Rechtsvorm bepaalt verwerking (eenmanszaak versus BV: andere balans en winstbelasting). |
| J2 BTW-administratie | BTW-regime bepaalt of omzet bruto of netto wordt gerapporteerd. |
| S11 Team en Rollen | Aantal FTE is input voor winst-per-medewerker. |
| A1 Rapportage Builder | Consumeert deze data-setup om maand- of kwartaalrapport te maken. |
| A2 Mission Control | Toont kerncijfers uit deze setup op dashboard. |
| A4 Beslissings Analyse | Leunt op marge per dienst en cashflow voor scenario-analyse. |
| L4 Finance Automatisering | Bouwt automatisering rond bronnen en frequenties uit deze setup. |
| E1 Dashboard Bouwer | Custom dashboard gebruikt deze data-definities als basis. |

### Stap 7: Document samenstellen

Gebruik het template uit `references/template-financiele-data.md` als skelet. Vul het volledig in met de uitkomsten uit pre-fill plus interview.

Sla op als:
```
{scope}/Collect/Financiele-Data.md
```
of:
```
{scope}/Financiën/Data-Setup.md
```
(afhankelijk van de keuze in blok 1)

Maak de bovenliggende map aan als die nog niet bestaat. Log dat dan in `Systeem/Structuur/Vault Changelog.md` (alleen als die conventie in deze vault geldt).

Frontmatter (verplicht):
```yaml
---
type: data-setup
bedrijf: <Naam>
onderwerp: Financiele Data Setup
versie: 1.0
status: actief
laatst-bijgewerkt: YYYY-MM-DD
scale-check: C3
boekhoudpakket: <Moneybird | e-Boekhouden | Exact | Snelstart | Twinfield | anders>
btw-regime: <21% standaard | 9% verlaagd | vrijgesteld | KOR | onbekend>
aantal-fte: <getal of "1 (solopreneur)">
rapportage-frequentie: <maandelijks | kwartaal | beide>
---
```

**Schrijfregels:**

- Werk in het **Nederlands**.
- **Geen marketing-superlatieven.** Geen "ultieme financiële data-stack", "perfecte rapportage-flow", "next-level cijfer-management". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Moneybird Premium, EUR 24 per maand, gekoppeld aan Stripe via webhook" is sterker dan "een boekhoudpakket met betaalkoppeling".
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Definities expliciet.** Bij elk cijfer: bron, berekening, frequentie. Niet "omzet" maar "netto omzet (excl. BTW), uit Moneybird, maandelijks afgesloten".
- **Markeer `[VERIFICEREN]`** op plekken waar geen bron of antwoord voor was. Beter een zichtbare gap dan een verzonnen detail.
- **Status-emoji's mogen** - actief 🟢, in opzet 🟡, gepland 🟠, niet van toepassing ⚪. Maakt scannen snel.
- **Bewaar bron-citaten letterlijk** waar de gebruiker een specifieke definitie of cijfer uit een externe bron heeft genoemd. In een aparte sectie "Brondocumenten" onderaan.
- **Privacy-let op:** zet **geen complete klantnamen, contractwaardes of debiteurensaldi per klant** in dit document. Werk met categorieën (top-5 klanten, klant-segment A/B/C) of geanonimiseerde verwijzingen. Het document is een data-setup, niet een klantregister.
- **Disclaimer onderaan:** voeg een korte slotparagraaf toe: *"Dit document is een data-setup en organisatorische documentatie, geen fiscaal of boekhoudkundig advies. Voor twijfel over verwerking, fiscale optimalisatie of complexe boekhoudvragen: verwijs door naar je boekhouder of administratiekantoor (bijvoorbeeld Fit In Finance)."*

### Stap 8: Logging en aanbevelingen

Logging (allemaal in dezelfde tool-call-ronde, niet later):

1. **Changelog bedrijf** - `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw: `Collect/Financiele-Data.md`, v1.0, financiële data-setup vastgelegd met N bronnen, M kerncijfers en frequentie-tabel"*.
2. **Daily** - als de vault een `Huddle/Daily/YYYY-MM-DD.md` heeft (geldt in Iwan's OS, niet alle vaults hebben dit), log onder *Gedaan vandaag → [Bedrijf]*. Sla over als die conventie niet bestaat.
3. **Vault Changelog** - als de map `Collect/` of `Financiën/` nieuw is aangemaakt en deze vault een `Systeem/Structuur/Vault Changelog.md` heeft, log dat daar ook.
4. **Goals-bestand** - als `{scope}/Directie/01 - Goals.md` een C3-doel of finance-rapportage-doel heeft: status bijwerken (✅), regel toevoegen aan het voortgangslog.
5. **Scale-audit-suggestie** - als er een audit-rapport in `Directie/Research/` staat waar C3 op ❌ of ⚠️ staat, stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:

1. **Direct doorrollen naar A1 Rapportage Builder.** De data-setup is de bron. De eerste echte maandrapportage volgt logisch direct erna. Stel voor om die in dezelfde week op te pakken.
2. **Cross-check met S12 Toolstack.** Als de Toolstack ouder is dan deze setup, stel voor Toolstack langs te lopen zodat het boekhoudpakket-record consistent blijft.
3. **Plan kwartaal-review van de data-setup zelf.** Bronnen wisselen (boekhouder, pakket, betalingsplatform), cijfers kunnen anders worden. Stel voor: ieder kwartaal 15 minuten om de setup te checken.
4. **Cross-check met J2 BTW-administratie.** Als BTW-regime in J2 anders is dan in deze setup is aangenomen (bv. KOR versus standaard), is rapportage-format anders. Vraag of J2 actueel is.
5. **L4 Finance Automatisering als doorkijk.** Zodra de setup een paar maanden draait en de frequenties stabiel zijn, is L4 (Finance Automatisering) een logische opvolger om handmatige stappen weg te halen.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle 6 tegelijk neerzetten. Wacht op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in Toolstack, Financiën, Juridisch of Directie staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **S12 Toolstack is verplichte cross-check.** Boekhoudpakket, betalingsplatform en bank moeten matchen met wat in Toolstack staat. Zo niet, log de mismatch en stel voor Toolstack bij te werken.
- **Definities zijn de waarde van het document.** Een cijfer zonder bron, berekening of frequentie is geen kerncijfer maar een gerucht. Wees streng op dit punt.
- **Schrijf nooit zomaar over een bestaande setup heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Privacy boven volledigheid.** Werk met categorieën, niet met individuele klantnamen of contractwaardes. Een data-setup is geen klantregister.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe bronnen.** Een Moneybird-export of Stripe-CSV bespaart 60-70% van het uitvraag-werk en maakt de setup precies.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een bron-naam, een berekening, een eigenaar) als het te abstract blijft.
- **Geen fiscaal of boekhoudkundig advies.** Verwijs door naar een boekhouder of Fit In Finance bij elke vraag die richting verwerking, fiscale optimalisatie of jaarrekening gaat.
- **Geen marketing-trucjes.** Geen "imagine if...", geen rhetorische vragen aan het begin van een sectie. Recht voor zijn raap.
- **Mik op werkbare diepte, niet op het audit-minimum.** Het document moet aan elke latere SCALE-stap (A1, A2, A4, L4, E1) alle context geven om mee te denken. Halve antwoorden voldoen niet.

## Voorbeeld-output

Zie [`references/template-financiele-data.md`](references/template-financiele-data.md) voor de exacte structuur die de skill oplevert: bronnen-tabel, kerncijfer-definities per categorie, frequentie-matrix, consumenten-overzicht, cross-link naar S12, J1, J2 en aangrenzende A-, L- en E-stappen.

## Changelog

### 1.1.0 — 2026-05-11

- Split-stack instructies toegevoegd voor multi-bron setups (bijv. boekhouding + factuur-tool + bank apart).

### 1.0.0 — initiele release

- Eerste productie-versie.
