---
name: sop-interviewer
title: "SOP Interviewer"
description: "Helpt een ondernemer in 30 tot 60 minuten zijn of haar kernprocessen vast te leggen als Standard Operating Procedures (SOPs). Dit is SCALE-stap 10 (Structure): de stap waarin het werk van het bedrijf van losse handelingen wordt omgezet in herhaalbare, overdraagbare, automatiseerbare procedures. De skill begint met een keuze-blok waarin 3 tot 5 meest waardevolle SOPs voor dit bedrijf worden geselecteerd uit de gangbare kandidaten (klant-onboarding, dienstverlening-uitvoering, klant-offboarding, factuur- en debiteurencyclus, lead-opvolging, klacht-afhandeling, content-publicatie, maandafsluiting, etc.). Daarna interviewt de skill per gekozen proces in een vaste set blokken: identiteit en doel, frequentie en trigger, eigenaar en betrokkenen, genummerde stappen, beslispunten, tools en systemen, doorlooptijd en SLA, output en kwaliteits-check, faal-scenario's en escalatie, en automatiseringskansen. Ieder proces krijgt een eigen bestand in `{scope}/Operations/Processen/{ProcesNaam}.md` met genummerde stappen (1., 2., ...) van minimaal 80 woorden, plus een index-README in `{scope}/Operations/Processen/README.md` die alle SOPs aan elkaar koppelt en linkt aan de klantreis-fases (S9) en de rol-eigenaren (S11). Vóór het interview begint scant de skill diep wat al beschikbaar is: bestaande SOPs in Operations/Processen, een eventuele klantreis in Directie/Playbook/Klantreis.md (welke fase activeert welk proces?), de Team.md in HR/ (welke rol is eigenaar?), de Toolstack in IT/Toolstack.md (welke tools worden gebruikt?), en externe documenten die de gebruiker aanlevert (oude proceshandleidingen, work-instructions, screenshots van checklists, mailflows, video-walkthroughs). De skill werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam, persoonlijke profielen of vault-eigenaar, alleen over de SCALE-Structure-conventie (`Operations/Processen/`, `Directie/`, `HR/`, etc.). Activeer altijd wanneer iemand zegt: 'wat zijn mijn werkprocessen', 'SOP vastleggen', 'SOP maken', 'proces uitwerken', 'werkproces beschrijven', 'standard operating procedure', 'procedure documenteren', 'mijn klant-onboarding op papier', 'factuur-flow vastleggen', 'maandafsluiting beschrijven', 'standaardwerk vastleggen', 'S10 dichten in SCALE-audit', 'gap S10', 'Operations/Processen aanvullen', 'mijn werkprocessen in kaart brengen', 'wat doe ik elke maand opnieuw', 'overdrachtsdocument maken voor mijn werk'. Triggert ook bij iedere expliciete verwijzing naar S10 of `Operations/Processen/`."
category: operations
tags: [sop, processen, werkprocessen, standard-operating-procedure, operations, structure, scale-framework, s10, automatisering-input]
estimatedTime: "30 tot 60 minuten (3 tot 5 SOPs in één sessie)"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# SOP Interviewer

## Doel

Helpt een ondernemer om in 30 tot 60 minuten zijn of haar **kernprocessen** vast te leggen als **Standard Operating Procedures (SOPs)** in `{scope}/Operations/Processen/`. Dit is SCALE-stap 10 (Structure): de stap waarin het werk van losse handelingen verandert in herhaalbare, overdraagbare en automatiseerbare procedures.

*Waarom dit fundamenteel is.* Zolang processen alleen in iemands hoofd zitten, is het bedrijf afhankelijk van die persoon. Een SOP maakt werk **kopieerbaar**: een freelancer, een VA, een nieuwe medewerker, of een AI-agent kan het oppakken zonder constant te moeten terugvragen. Daarnaast is een goede SOP de **enige bruikbare input voor automatisering**: zonder genummerde stappen, beslispunten en tool-koppeling kun je niets bouwen wat het werk overneemt.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit S10 stelt dat minimaal één proces moet bestaan met genummerde stappen (1., 2., ...) en langer dan 80 woorden. Die drempel haal je in 10 minuten met een halve checklist, maar dan heb je geen bruikbare SOP. Deze skill mikt op een **rijke** SOP: doel, trigger, eigenaar, frequentie, genummerde stappen, beslispunten, tools, doorlooptijd, kwaliteits-check, faal-scenario's en automatiseringskansen. Per gekozen proces.

*Waarom de keuze vooraan staat.* Een bedrijf heeft tientallen processen. Niet alle hebben dezelfde waarde om vast te leggen. De skill start daarom met een keuze-blok dat 3 tot 5 meest impactvolle SOPs uitkiest op basis van: frequentie (hoe vaak draait het?), tijd-investering (hoeveel uur kost het per keer?), foutgevoeligheid (hoe vaak gaat het mis?), en overdraagbaarheid (hoe groot is de kans dat iemand anders het overneemt of dat AI delen automatiseert?).

Resultaat: SCALE-audit S10 springt van ❌ of ⚠️ naar ✅, plus de SOPs zijn direct herbruikbaar als input voor **L1 (SOP Automatiseren)** en als operationele anker-punten voor **S9 Klantreis** (wanneer activeert welke fase welk proces) en **S11 Team** (welke rol is eigenaar van welk proces).

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  SOP INTERVIEWER — SCALE-stap 10 (Structure)              │
│  ~30-60 minuten · 3-5 SOPs in één sessie                  │
└──────────────────────────────────────────────────────────┘

  In 30 tot 60 minuten zetten we jouw kernprocessen om in
  Standard Operating Procedures: genummerde stappen, eigenaar,
  trigger, tools, doorlooptijd en faal-scenario's per proces.
  Bruikbaar voor overdracht aan freelancer/VA/AI én directe
  input voor L1 (SOP Automatiseren).

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • Eerst kiezen we samen welke 3 tot 5 SOPs we deze     │
  │    sessie vastleggen (uit ~10 kandidaten, gerangschikt  │
  │    op frequentie + tijd-investering + foutgevoeligheid) │
  │  • Vooraf scan ik wat al in je vault staat:             │
  │      Operations/Processen (bestaande SOPs)              │
  │      Directie/Playbook/Klantreis.md (welke fase = welk  │
  │        proces?)                                          │
  │      HR/Team.md (wie is eigenaar?)                       │
  │      IT/Toolstack.md (welke tools?)                      │
  │  • Externe documenten die je aanlevert (proces-          │
  │    handleidingen, work-instructions, oude SOPs,          │
  │    screenshots van checklists, mailflows) lees ik mee    │
  │  • Per gekozen proces ~5-10 minuten interview in 10      │
  │    vaste blokken (één blok per beurt, niet alles         │
  │    tegelijk):                                            │
  │      [1] Identiteit & doel                               │
  │      [2] Frequentie & trigger                            │
  │      [3] Eigenaar & betrokkenen                          │
  │      [4] Genummerde stappen                              │
  │      [5] Beslispunten                                    │
  │      [6] Tools & systemen                                │
  │      [7] Doorlooptijd & SLA                              │
  │      [8] Output & kwaliteits-check                       │
  │      [9] Faal-scenario's & escalatie                     │
  │      [10] Automatiseringskansen                          │
  │  • Output: één bestand per SOP in Operations/Processen/  │
  │    plus een index-README met cross-links naar S9 / S11   │
  └────────────────────────────────────────────────────────┘

  Veelvoorkomende SOP-kandidaten (kies straks 3 tot 5):
  [a] Klant-onboarding         [b] Dienstverlening uitvoeren
  [c] Klant-offboarding        [d] Factuur- & debiteuren-cyclus
  [e] Lead-opvolging           [f] Klacht-afhandeling
  [g] Content publicatie       [h] Maandafsluiting (admin)
  [i] Offerte uitbrengen       [j] Nieuwe medewerker/freelancer

  Heb je externe documenten klaar? Bijvoorbeeld bestaande
  proces-handleidingen, work-instructions, checklists,
  screenshots van mailflows, of korte video-walkthroughs?
  Dan kun je die nu noemen, plakken of uploaden. Hoe meer
  bronnen, hoe rijker het pre-fill.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  SOP INTERVIEWER — S10 · 30-60 min · 3-5 SOPs             │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Operations/Processen,
   │    (auto-discover)   │  Klantreis, Team,
   │                      │  Toolstack, Sales,
   │                      │  Klantenservice
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Proces-handleidingen,
   │                      │  work-instructions,
   │                      │  checklists, mailflows,
   │                      │  video-walkthroughs
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. SOP-keuze         │  Top 10 kandidaten
   │                      │  gerangschikt op
   │                      │  frequentie + impact
   │                      │  Kies 3 tot 5
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Pre-fill tonen    │  Wat al bekend is per
   │                      │  gekozen proces
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Interview, proces │  Per proces 10 blokken:
   │    voor proces       │  [1] Identiteit & doel
   │                      │  [2] Frequentie & trigger
   │                      │  [3] Eigenaar & betrokkenen
   │                      │  [4] Genummerde stappen
   │                      │  [5] Beslispunten
   │                      │  [6] Tools & systemen
   │                      │  [7] Doorlooptijd & SLA
   │                      │  [8] Output & kwaliteits-check
   │                      │  [9] Faal-scenario's
   │                      │  [10] Automatiseringskansen
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Operations/Processen/
   │    opslaan per SOP   │  {ProcesNaam}.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Index-README      │  Operations/Processen/
   │    bijwerken         │  README.md (alle SOPs)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Logging +         │  Changelog + hint
   │    vervolg-          │  naar L1 (SOP
   │    suggesties        │  Automatiseren)
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Wat zijn mijn werkprocessen" / "mijn werkprocessen in kaart brengen"
- "SOP vastleggen" / "SOP maken" / "standard operating procedure"
- "Proces uitwerken" / "werkproces beschrijven" / "procedure documenteren"
- "Mijn klant-onboarding op papier" / "factuur-flow vastleggen"
- "Maandafsluiting beschrijven" / "standaardwerk vastleggen"
- "S10 dichten in SCALE-audit" / "gap S10"
- "Operations/Processen aanvullen" / "Operations/Processen leeg"
- "Wat doe ik elke maand opnieuw" / "overdrachtsdocument maken voor mijn werk"

Triggert NIET wanneer:
- De gebruiker een **klantreis** wil mappen (gebruik `klantreis` — S9; klantreis is het wanneer, SOP is het hoe)
- De gebruiker een **team of rolverdeling** wil vastleggen (gebruik `team-en-rollen` — S11; SOPs verwijzen wel naar eigenaren, maar leggen de rollen niet zelf vast)
- De gebruiker een **toolstack** wil inventariseren (gebruik `toolstack-inventarisatie` — S12; SOPs verwijzen naar tools, maar inventariseren ze niet zelf)
- De gebruiker een **automatisering of agent** wil bouwen (gebruik later `sop-automatiseren` — L1; eerst de SOP, dán de automatisering)
- De gebruiker alleen een **eenmalig project-plan** wil (een SOP is voor herhaalbaar werk, niet voor eenmalige projecten)
- De gebruiker een **proces-flowchart of BPMN-diagram** wil tekenen (deze skill levert tekstuele SOPs op, geen visuele flowcharts)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de SOPs gemaakt moeten worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Operations/`, `Directie/`, `HR/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Operations/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van `os-builder`) waar `Operations/Processen/` nog leeg is

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze SOPs voor zijn?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Operations/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Operations/Processen/` al bestaande SOPs bevat:
- Map bestaat niet of is leeg → eerste batch SOPs, doorgaan
- Map bevat al SOPs → toon kort welke bestaan en vraag of de sessie **aanvullend** is (nieuwe processen toevoegen) of **iteratie** (bestaande SOPs herzien — dan archiveer de oude versies als `{ProcesNaam} - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven)

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard SCALE-Structure-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Operations/Processen/*.md` | Bestaande SOPs (welke processen zijn al gedocumenteerd, op welk diepte-niveau?) |
| `Operations/Processen/README.md` | Bestaande SOP-index (welke processen zijn al gemapped op fases of eigenaren?) |
| `Operations/*` | Niet-SOP operationele documenten (overdracht-notities, kwaliteitschecks, planningsdocumenten) |
| `Directie/Playbook/Klantreis.md` | Klantreis-fases — welke fase activeert welk proces? Kandidaten voor SOPs |
| `Directie/Playbook/Producten.md` (of `Aanbod.md`) | Per pakket: welke uitvoer-processen horen erbij? |
| `Directie/00 - Overzicht.md` | Bedrijf-context, fase, kernactiviteit (welke processen passen bij dit type bedrijf?) |
| `Directie/Research/*.md` | Eerder proces-onderzoek, audit-rapporten, optimalisatie-notities |
| `HR/Team.md` | Rol-eigenaren — wie is straks owner van welk proces? Cross-link naar S11 |
| `IT/Toolstack.md` | Welke tools worden gebruikt en door welke rol? Cross-link naar S12 |
| `Sales/*` | Lead-opvolging, offerte-flow, verkoop-stappen (kandidaten voor SOPs) |
| `Klantenservice/*` | Klacht-afhandeling, FAQ, escalatie-paden (kandidaten voor SOPs) |
| `Financiën/*` | Factuur-cyclus, debiteurenbeheer, maandafsluiting (kandidaten voor SOPs) |
| `Marketing/Content Roadmap.md` | Content-publicatieproces (kandidaat voor SOP) |

Maak per gevonden bron een korte interne aantekening: welke proces-kandidaat het raakt, en wat de relevante kerninzichten zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Werk met wat er is.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. SOP-specifieke bronnen die vaak goud waard zijn:

- **Oude proces-handleidingen** of work-instructions (Word, PDF, Notion-pages)
- **Checklists** die al in gebruik zijn (papier, Trello, Asana, Notion, ClickUp)
- **Mailflows of e-mail-templates** voor onboarding, opvolging, factuurherinnering
- **Screenshots van bestaande dashboards of CRM-stadia** die de stappen weerspiegelen
- **Video-walkthroughs of Loom-opnames** van eerder uitleg-aan-een-VA of -aan-een-medewerker
- **Klant-onboarding-pakketten** of welkomstmails
- **SLA-documenten of klantcontracten** (geven doorlooptijd-eisen en kwaliteits-eisen aan)
- **Eerder geprobeerde automatiseringen** die niet werkten (handig om te zien waar de huidige flow stokt)
- **Boekhouder- of accountant-instructies** (voor finance-processen)

Concrete vraag aan gebruiker:
> "Heb je externe documenten of bronnen waaruit ik kan putten? Bijvoorbeeld een bestaande proces-handleiding, een checklist die je al gebruikt, een onboarding-mailreeks, een screenshot van je CRM-stappen, een Loom-walkthrough, of een SLA-document? Je mag URL's noemen, bestanden uploaden of tekst plakken. Hoe meer bronnen, hoe rijker het pre-fill."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen
- **PDF/document**: lees de inhoud, vat samen wat relevant is per proces-kandidaat
- **Geplakte tekst**: behandel als research-input
- **Screenshot**: lees de visuele info (stappen, stadia, fase-namen) en koppel aan proces-kandidaten
- **Video**: vraag de gebruiker om een korte schriftelijke samenvatting of een transcript

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: SOP-keuze (top 10 kandidaten naar 3 tot 5 gekozen)

**Kernregel:** een bedrijf heeft tientallen processen, maar niet alle hebben dezelfde waarde om vast te leggen. Dit is hét moment om samen met de gebruiker de **3 tot 5 meest impactvolle SOPs** te kiezen voor deze sessie.

Toon de gebruiker een lijst van standaard SOP-kandidaten, aangevuld met wat je uit vault-scan en externe documenten hebt afgeleid. Rangschik op een ruwe waarde-score (frequentie × tijd-investering × foutgevoeligheid × overdraagbaarheid).

**Standaard SOP-kandidaten:**

| Proces | Typische frequentie | Typische impact |
|---|---|---|
| **Klant-onboarding** | Per nieuwe klant | Hoog: bepaalt eerste indruk, voorkomt verwachtings-mismatch |
| **Dienstverlening uitvoeren** | Per klant per cyclus | Hoog: kern van het bedrijf, vaakste herhaling |
| **Klant-offboarding** | Bij einde traject | Middel-hoog: bepaalt retentie en referral |
| **Factuur- en debiteurencyclus** | Maandelijks | Hoog: cashflow, foutgevoelig |
| **Lead-opvolging** | Per lead | Hoog: directe omzet-link |
| **Offerte uitbrengen** | Per kans | Middel-hoog: standaardiseert kwaliteit |
| **Klacht-afhandeling** | Per klacht | Middel: zeldzaam maar impact-rijk |
| **Content publicatie** | Wekelijks | Middel: hoge herhaling, automatiseerbaar |
| **Maandafsluiting (admin)** | Maandelijks | Middel-hoog: voorkomt achterstand |
| **Nieuwe medewerker of freelancer onboarden** | Bij groei | Middel: belangrijker naarmate bedrijf groeit |

Aanvullingen op deze lijst zijn welkom als de gebruiker een specifiek proces in het hoofd heeft dat hier niet bij staat. Voorbeelden uit specifieke branches: **boekjaar-afsluiting** (administratiekantoor), **collectie-launch** (kleding), **DCA-uitvoering** (Bitcoin-advies), **workshop-uitvoering** (training/consultancy).

Concrete keuze-vraag aan gebruiker:
> "Welke 3 tot 5 processen wil je in deze sessie vastleggen? Mijn voorstel op basis van wat ik zie:
> 1. [Top kandidaat met argumentatie]
> 2. [Tweede kandidaat met argumentatie]
> 3. [Derde kandidaat met argumentatie]
> 4. [Optioneel vierde]
> 5. [Optioneel vijfde]
>
> Wil je deze volgorde aanhouden, of wissel jij sommige er voor in?"

Wacht op bevestiging voordat je naar stap 5 gaat. **Niet meer dan 5 SOPs per sessie** — anders verliest het diepte en raakt de gebruiker uitgeput.

### Stap 5: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per gekozen proces**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] KLANT-ONBOARDING
      Eigenaar: Iwan (uit Team.md, rol Operations)
      Trigger: contract getekend (uit Klantreis.md fase 4)
      Tools: Stripe, Moneybird, gedeelde Drive-folder
      Stappen al deels in: Operations/Processen/Onboarding -
        oud.md (4 stappen, niet genummerd)
      Bron: Klantreis.md fase 5, oude SOP, onboarding-mailreeks

  [2] FACTUUR-CYCLUS
      Eigenaar: Iwan + boekhouder (uit Team.md)
      Frequentie: maandelijks rond de 1e
      Tools: Moneybird, e-Boekhouden
      Bron: Toolstack.md, maandelijkse herinnering in Tasks

  [3] LEAD-OPVOLGING
      Eigenaar: Iwan
      Trigger: nieuwe lead in CRM
      Bron: Sales/Tolken RTGS-folder met voorbeelden

  GATEN waar ik nog vragen voor heb:
  - Onboarding: doorlooptijd en kwaliteits-check ontbreken
  - Factuur-cyclus: faal-scenario's en escalatie onbekend
  - Lead-opvolging: timing-regels en automatiseringskans

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we per proces de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 6 gaat.

### Stap 6: Interview, proces voor proces

**Kernregel:** behandel **één proces per beurt**, en binnen dat proces **één blok per beurt**. Wacht op het antwoord, dán pas het volgende blok. Niet alle blokken tegelijk neerzetten, dat overweldigt en levert oppervlakkige SOPs op.

Per proces 10 vaste blokken. Per blok 1 tot 3 kernvragen, afhankelijk van hoe rijk de pre-fill al was. Als een blok via pre-fill volledig gevuld is, stel je alleen een check-vraag ("klopt dit?"). Als een blok leeg is, stel je de volledige set.

#### Blok 1 — Identiteit en doel

**Wat we vastleggen:** wat dit proces is in één zin, en welk doel het dient voor het bedrijf en voor de klant.

Kernvragen:
1. Wat is de officiële naam van dit proces? (Korte, herkenbare naam — bv. "Klant-onboarding nieuwe boekhoudklant", niet "Onboarding-proces v2 finaal".)
2. Wat is het doel van dit proces in één zin? Wat is het resultaat dat we ermee bereiken voor het bedrijf én voor de klant?
3. Wat zou er misgaan als dit proces helemaal niet zou bestaan? (Dwingt de waarde scherp te formuleren.)

#### Blok 2 — Frequentie en trigger

**Wat we vastleggen:** hoe vaak dit proces draait en wat het in gang zet.

Kernvragen:
1. Hoe vaak draait dit proces? (Per klant, per maand, per week, on-demand, etc. Concreet aantal per jaar als mogelijk.)
2. Wat is de **trigger** die het proces start? (Een actie: "contract getekend", "1e van de maand", "nieuwe lead in CRM", "klacht binnengekomen via mail", etc. Niet een vaag begrip.)
3. Wie of wat geeft het startsignaal? (Een persoon, een systeem-melding, een automatische cron, een handmatige check?)

#### Blok 3 — Eigenaar en betrokkenen

**Wat we vastleggen:** wie eind-eigenaar is, plus alle rollen die meebewegen. Direct gekoppeld aan S11 Team.

Kernvragen:
1. Wie is **eind-eigenaar** van dit proces? (Eén persoon of rol, niet meerdere. Verwijs naar Team.md als die bestaat.)
2. Wie zijn de overige betrokkenen, en in welke stappen komen ze in beeld? (Persoon, rol, of extern: boekhouder, jurist, freelancer, VA.)
3. Wie is de **back-up** als de eind-eigenaar uitvalt? (Belangrijk voor continuïteit; vaak vergeten.)

Cross-link: als `HR/Team.md` bestaat, koppel rolnamen letterlijk. Als die niet bestaat, noteer ze als platte rolnamen en stel voor om later met `team-en-rollen` (S11) op te bouwen.

#### Blok 4 — Genummerde stappen

**Wat we vastleggen:** het hart van de SOP. Genummerde stappen (1., 2., 3., ...) die iemand anders zonder vragen kan navolgen.

**Kernregel voor dit blok:** vraag de stappen één voor één uit, of laat de gebruiker ze in één bericht plaatsen en doe dan een ronde verfijning. Mik op **6 tot 15 stappen** per proces. Onder de 6 is meestal te grof; boven de 15 is meestal door-detaillering die niet meer in een SOP thuishoort (dan eerder een sub-proces splitsen).

Kernvragen:
1. Wat is de eerste stap nadat de trigger is afgegaan? Beschrijf het in één concrete handeling.
2. Wat is de stap daarna? (Herhaal tot het proces eindigt bij de output van blok 8.)
3. Per stap: wie voert het uit, en met welk hulpmiddel (tool, document, contact)?

**Schrijfregels voor de stappen:**
- **Genummerd** (1., 2., 3., ...). Hier wordt niet op afgeweken — de audit eist het en het maakt overdracht mogelijk.
- **Werkwoord aan het begin** ("Open Moneybird", "Stuur welkomstmail", "Controleer of factuur is verzonden") — geen abstracte hoofdregels.
- **Eén handeling per stap.** Combineer niet twee acties in één stap. Liever twee korte stappen dan één lange.
- **Concrete tool of locatie** als die relevant is ("in Moneybird onder Facturen → Nieuw", niet "in het boekhoudsysteem").
- **Geen interne jargon** dat een buitenstaander niet snapt. Indien jargon onmisbaar, voeg een korte uitleg toe in haakjes.

#### Blok 5 — Beslispunten

**Wat we vastleggen:** plekken in het proces waar de uitvoerder een **keuze** moet maken, met de criteria die de keuze bepalen.

Kernvragen:
1. Zijn er stappen waar de uitvoerder een keuze moet maken? (Bv. "als bedrag boven X → ander tarief", "als klant niet reageert binnen 3 dagen → herinnering", "als type klant = B2B → contract met optie XYZ".)
2. Per beslispunt: wat zijn de mogelijke opties, en welk criterium bepaalt de keuze?
3. Wie mag deze beslissing nemen, en moet er bij sommige nog overleg of goedkeuring?

Lever op als korte tabel: **Stap-nummer | Beslispunt | Criteria | Mogelijke uitkomsten**. Als er geen beslispunten zijn, noteer "Geen — proces is lineair zonder keuze-momenten".

#### Blok 6 — Tools en systemen

**Wat we vastleggen:** alle software, kanalen en documenten die in het proces voorkomen. Direct gekoppeld aan S12 Toolstack.

Kernvragen:
1. Welke tools komen in dit proces voor? (Lijst ze op: bv. "Moneybird, Stripe, Gmail, gedeelde Drive-folder, Calendly".)
2. Per tool: in welke stap wordt hij gebruikt, en met welk doel?
3. Zijn er **handmatige overdracht-momenten** tussen tools? (Bv. "kopieer factuurnummer uit Moneybird naar Stripe" — die zijn typische automatiseringskansen voor L1.)

Cross-link: als `IT/Toolstack.md` bestaat, koppel tool-namen letterlijk. Als die niet bestaat, noteer ze als platte tool-namen en stel voor om later met `toolstack-inventarisatie` (S12) op te bouwen.

#### Blok 7 — Doorlooptijd en SLA

**Wat we vastleggen:** hoelang het proces duurt, en welke deadlines of beloftes er aan de klant of intern gemaakt zijn.

Kernvragen:
1. Hoelang duurt het hele proces van trigger tot afronding? (Realistisch, niet optimistisch. Zone: minuten / uren / dagen / weken.)
2. Hoeveel **werkuren** kost het, los van de doorlooptijd? (Bv. doorlooptijd 5 dagen, daadwerkelijke werktijd 90 minuten.)
3. Zijn er **SLA-eisen of klantbeloften** die de doorlooptijd bepalen? (Bv. "reactietijd binnen 24 uur", "factuur binnen 5 werkdagen na maandeind".)

Lever doorlooptijd op als concreet getal of zone, niet als "doorgaans wel snel".

#### Blok 8 — Output en kwaliteits-check

**Wat we vastleggen:** wat het proces oplevert, en hoe je toetst of het goed is gedaan.

Kernvragen:
1. Wat is de **output** van dit proces? (Een document, een verstuurde mail, een ingerichte tool, een gegevens-update, een opgeleverde dienst.)
2. Hoe weet je dat het proces **goed is uitgevoerd**? (Welke check doe je, of welke meting?)
3. Wie controleert de kwaliteit? (Uitvoerder zelf, een collega, de klant?)

Lever de kwaliteits-check op als concrete actie ("offerte twee keer gelezen voor verzenden, één keer voor inhoudelijke en één keer voor spelling"), niet als abstract begrip ("goed lezen voor verzending").

#### Blok 9 — Faal-scenario's en escalatie

**Wat we vastleggen:** wat er kan misgaan, hoe je het detecteert, en wat dan de escalatiepad is.

Kernvragen:
1. Wat zijn de **drie meest voorkomende faal-scenario's** in dit proces? (Bv. "factuur per ongeluk te laat verstuurd", "klant reageert niet op herinnering", "Stripe-betaling weigert".)
2. Per faal-scenario: hoe detecteer je het, en wat is de eerste herstel-actie?
3. Wanneer wordt er **opgeschaald** (naar back-up, naar eigenaar bedrijf, naar externe partij), en via welk kanaal?

Lever op als korte tabel: **Faal-scenario | Detectie | Eerste actie | Escalatie**.

#### Blok 10 — Automatiseringskansen

**Wat we vastleggen:** waar in dit proces AI, scripts of automatisering werk kunnen overnemen. Directe input voor L1.

Kernvragen:
1. Welke stappen voelen **repetitief en regelgebonden**? (Goede kandidaten voor automatisering.)
2. Welke stappen kosten **onevenredig veel tijd** vergeleken met de waarde die ze toevoegen?
3. Welke stappen heb je **eerder al geprobeerd te automatiseren**, en wat ging daar mis? (Voorkomt herhalen van foute aanpak.)

Lever op als korte tabel: **Stap-nummer | Type kans (skill / script / agent / e-mailflow / no-code) | Verwacht effect | Eerstvolgende actie**. Bij geen kansen: noteer "Volledig menselijk oordeel, geen automatisering zinvol".

Sluit het proces af met een korte samenvatting van de meest impactvolle automatisering. Deze landt later in de L1-skill (`sop-automatiseren`).

### Stap 7: Schrijven en opslaan per SOP

Gebruik het template uit `references/template-sop.md` als skelet voor elke SOP. Vul het met de uitkomsten uit pre-fill plus interview.

Sla elke SOP op als:
```
{scope}/Operations/Processen/{ProcesNaam}.md
```

Voorbeeld-namen:
- `Klant Onboarding.md`
- `Factuur en Debiteurencyclus.md`
- `Lead Opvolging.md`
- `Maandafsluiting Administratie.md`
- `Content Publicatie LinkedIn.md`

**Vermijd in bestandsnamen:** speciale karakters (`|`, `#`, `^`, `[`, `]`) — die breken Obsidian-wikilinks. Gebruik spaties of liggende streepjes.

Maak de `Operations/Processen/`-map aan als die nog niet bestaat.

Frontmatter (verplicht, per SOP):
```yaml
---
type: sop
proces: <Naam>
bedrijf: <Naam>
eigenaar: <Persoon of rol>
frequentie: <Per klant | Maandelijks | Wekelijks | On-demand | ...>
doorlooptijd: <Concrete zone>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S10
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "perfecte flow", "naadloze ervaring", "best-in-class procedure". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** Een specifieke tool-stap ("Moneybird → Facturen → Nieuw") is sterker dan een vage instructie ("maak een factuur aan in het boekhoudsysteem").
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Korte sectiekoppen** (3 tot 6 woorden) in vaste volgorde — zo blijven SOPs herkenbaar over alle processen heen.
- **Werkwoord-eerst in stappen** ("Open ...", "Controleer ...", "Verstuur ...").
- **Stappen zijn altijd genummerd** (1., 2., 3., ...). Bullet-lijsten zijn niet toegestaan voor de stappen-sectie — de audit eist genummerd, en een opvolger moet weten waar hij is.
- **Tools letterlijk benoemen** met hun productnaam. Niet "het boekhoudprogramma" als het Moneybird is.

### Stap 8: Index-README bijwerken

Maak of update `{scope}/Operations/Processen/README.md` als index van alle SOPs. Dit voorkomt dat de map een ongeordende verzameling losse bestanden wordt en geeft de cross-links naar S9 (Klantreis), S11 (Team) en L1 (Automatisering) op één plek.

**Structuur van de README:**

1. **Inleiding** (1 alinea): wat is `Operations/Processen/`, wat staat hier wel en niet, link naar de skill die hem gevuld heeft.
2. **Tabel met alle SOPs:** Proces | Eigenaar | Frequentie | Doorlooptijd | Klantreis-fase | Automatisering-kans | Link.
3. **Cross-link sectie:** korte verwijzing naar `Klantreis.md` (S9), `Team.md` (S11), `Toolstack.md` (S12), en `Operations/Processen/_l1-automatiseringskansen.md` (L1) als die bestaat.

Als de README al bestaat: lees hem eerst, en **voeg nieuwe SOPs toe in de tabel** zonder de bestaande rijen te overschrijven. Update de "laatst-bijgewerkt"-datum.

### Stap 9: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Operations/Processen/{ProcesNaam}.md` plus README — v1.0, X SOPs ingevuld in één sessie"*.
2. **Daily** — als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (deze conventie geldt in Iwan's OS, niet alle vaults hebben hem), log dan onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie** — als er een audit-rapport in `Directie/Research/` staat waar S10 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien zodat de score springt.

Vervolgsuggesties die je altijd noemt:
- **Cross-link naar L1 (SOP Automatiseren):** elk proces met automatiseringskansen uit blok 10 is directe input voor L1. Stel voor om met de eerste hoogst-scorende kans aan de slag te gaan zodra de SOP staat.
- **Cross-link naar S9 (Klantreis):** elke SOP koppelt aan een fase in de klantreis. Als `Klantreis.md` nog niet bestaat, stel voor met `klantreis` (S9) een kaart te maken die laat zien wanneer welk proces actief is.
- **Cross-link naar S11 (Team):** elke SOP heeft een eigenaar. Als `Team.md` nog niet bestaat, stel voor met `team-en-rollen` (S11) de rol-eigenaren formeel vast te leggen.
- **Cross-link naar S12 (Toolstack):** elke SOP refereert tools. Als `Toolstack.md` nog niet bestaat, stel voor om die met `toolstack-inventarisatie` (S12) op te bouwen voor consistente cross-referencing.
- **Vervolg-sessie voor resterende SOPs:** als er nog kandidaten op de keuze-lijst staan die deze sessie niet zijn behandeld, stel voor om een tweede sessie te plannen voor de volgende 3 tot 5.
- **Review-ritme:** een SOP veroudert. Stel voor de SOPs te updaten bij elk van deze gebeurtenissen: nieuwe tool in het proces, structurele wijziging in een stap, eigenaar-wissel, of een opgetreden faal-scenario dat niet in de SOP stond.

## Belangrijke regels

- **Eén proces per beurt, één blok per beurt** in het interview. Niet alle blokken tegelijk neerzetten, niet meerdere processen tegelijk uitvragen. Wachten op antwoord, dan pas door.
- **Maximaal 5 SOPs per sessie.** Boven dat aantal verdwijnt de diepte en raakt de gebruiker uitgeput. Liever twee sessies van vijf, dan één sessie van tien half-uitgewerkte SOPs.
- **Stappen zijn altijd genummerd (1., 2., 3., ...).** Geen bullet-lijst, geen prozategdaling. De audit eist het en een opvolger moet de stap kunnen volgen.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 5 voorkomt dat.
- **Schrijf nooit zomaar over een bestaande SOP heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Concreet > abstract.** Een stap als "verstuur factuur" is te vaag; "Open Moneybird → Facturen → Nieuw → vul klantgegevens + dienst + bedrag → klik Verzend" is een SOP-waardige stap.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs met een single-business vault, voor mensen met een multi-business vault, en voor klanten die net hun SCALE-skelet hebben opgezet. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe documenten.** Veel ondernemers hebben hun processen al deels in een Word-document, een Trello-bord, een Notion-page of een Loom-video. Halen we dat niet op, dan typen ze het opnieuw.
- **Eigenaar is verplicht.** Geen SOP zonder één concrete eigenaar. Bij "we doen het met ons tweeën" doorvragen op één eind-verantwoordelijke plus één back-up.
- **Tool-namen letterlijk.** "Moneybird", niet "het boekhoudprogramma". Voor automatisering moet de SOP machine-leesbaar genoeg zijn.
- **Beslispunten zijn ook stappen.** Vergeet ze niet als losse rij in blok 5 op te nemen — een SOP zonder keuze-momenten levert later geen bruikbare automatisering op.
- **Faal-scenario's zijn niet eng.** Een SOP die alleen het happy-path beschrijft is half af. Wie de drie zwaarste fout-paden niet kent, kan ook niet beoordelen of automatisering veilig is.
- **Mik op rijke diepte, niet op het audit-minimum.** Minstens 6 genummerde stappen per SOP, alle 10 blokken ingevuld, niet drie processen met alleen stappen en niets eromheen.

## Voorbeeld-output

Zie [`references/template-sop.md`](references/template-sop.md) voor de exacte structuur die de skill per SOP oplevert: frontmatter, 10 secties (identiteit, frequentie, eigenaar, stappen, beslispunten, tools, doorlooptijd, output, faal-scenario's, automatisering), plus cross-link-blok naar S9/S11/S12/L1.
