---
name: btw-administratie
title: "BTW Administratie"
description: "Helpt een Nederlandse ondernemer in 15 tot 25 minuten zijn BTW-status volledig en correct vastleggen in één canoniek document: `{scope}/Juridisch/BTW-administratie.md`. Dit is SCALE-stap J2 (Juridisch) en dichtgooien hiervan voorkomt dat AI-werk, facturen en jaarrekening op gokwerk leunen. De skill werkt in 5 blokken (Scope + bestaand bestand, BTW-status en regime, Aangifte en verlegging, Buitenland en OSS, Recente aangiftes + deadlines), één blok per beurt zodat de gebruiker niet wordt overweldigd. Vóór het interview begint, scant de skill diep wat al beschikbaar is in de vault (KvK-administratie, Directie/Overzicht, Financiën, eerdere BTW-bestanden) én vraagt actief naar externe documenten (BTW-beschikking belastingdienst, KOR-aanmelding, OSS-registratie). De skill ondersteunt expliciet vier regimes: standaard 21%, verlaagd 9%, BTW-vrijgesteld (specifieke branches als zorg, onderwijs of financieel), en de kleineondernemersregeling (KOR) onder 20.000 euro omzet. Vault-onafhankelijk: geen aannames over een specifieke mapnaam of vault-eigenaar, alleen over de SCALE-Juridisch-conventie (`Juridisch/`). Activeer altijd wanneer iemand zegt: 'BTW vastleggen', 'BTW-administratie', 'BTW-registratie vastleggen', 'BTW-regime documenteren', 'BTW-nummer documenteren', 'BTW-vrijgesteld documenteren', 'KOR vastleggen', 'kleineondernemersregeling documenteren', 'J2 dichten', 'gat in SCALE-audit voor BTW', 'gap J2', 'mijn BTW-status op één plek', of bij elke expliciete verwijzing naar J2 of `BTW-administratie.md`. Belangrijk: dit is documentatie, geen fiscaal advies."
category: operations
tags: [juridisch, btw, fiscaal, administratie, kor, oss, scale-framework, j2]
estimatedTime: "15 tot 25 minuten"
version: "1.1.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# BTW Administratie

## Doel

Helpt een Nederlandse ondernemer om in 15 tot 25 minuten zijn **BTW-status** volledig en juist vast te leggen in één canoniek document: `{scope}/Juridisch/BTW-administratie.md`. Dit is SCALE-stap J2 (Juridisch) en de basis voor alle facturen, aangiftes en boekhouding van het bedrijf.

*Waarom dit fundamenteel is.* Het BTW-regime van een onderneming bepaalt hoe iedere factuur eruitziet, welke aangiftes moeten worden ingediend, welke deadlines gelden en wat er op de balans gebeurt. Eén verkeerde aanname (bijvoorbeeld stilzwijgend KOR gebruiken terwijl de omzet over de grens van 20.000 euro is) kan navordering, boetes en aansprakelijkheid opleveren. Door de status op één plek vast te leggen, weet de AI bij elke vraag direct welk regime van toepassing is en kan elke factuur, offerte en rapportage daar consistent op leunen.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit J2 vraagt minimaal het BTW-nummer in een juridisch document. Die drempel haal je in twee minuten met één regel tekst, maar dan mis je het regime, de frequentie, de deadlines en de eventuele bijzondere registraties (KOR, OSS, verlegde BTW). Deze skill mikt op een **compleet** dossier: vier regimes expliciet ondersteund, deadlines per kwartaal, en cross-link naar KvK en jaarrekening.

Resultaat: SCALE-audit J2 springt van ❌ of ⚠️ naar ✅, én het document is direct herbruikbaar voor facturatie, accountant en bij de eerste BTW-aangifte van het nieuwe kwartaal.

**Disclaimer:** dit document is administratieve documentatie, geen fiscaal advies. Bij twijfel over het juiste regime, een grensgeval (zoals net onder of boven de KOR-grens), bijzondere branches, internationale verkopen of een belastingcontrole verwijst de skill expliciet naar een fiscaal adviseur of administratiekantoor (bijvoorbeeld Fit In Finance).

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  BTW ADMINISTRATIE - SCALE-stap J2 (Juridisch)            │
│  ~15-25 minuten · 5 interview-blokken                     │
└──────────────────────────────────────────────────────────┘

  In 15 tot 25 minuten leggen we je BTW-status volledig vast
  in één canoniek document. Daarna weet elke factuur, AI-tool
  en aangifte welk regime geldt en welke deadlines gelden.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 5 blokken interview (één per beurt, niet alles       │
  │    tegelijk), gemiddeld 2-5 minuten per blok            │
  │  • Per blok 1-3 korte vragen, altijd met een            │
  │    aanbevolen standaard erbij                           │
  │  • Vooraf scan ik je vault (KvK-administratie,          │
  │    Directie/Overzicht, Financiën) plus externe          │
  │    documenten die je aanlevert, zodat we niets vragen   │
  │    wat je al ergens hebt staan                          │
  │  • Daarna lever ik een gevuld BTW-administratie.md op   │
  │    plus drie aanbevelingen voor opvolging               │
  └────────────────────────────────────────────────────────┘

  De 5 blokken:
  [1] Scope + bestaand bestand
  [2] BTW-status en regime  (21% / 9% / vrijgesteld / KOR)
  [3] Aangifte-frequentie + verlegde BTW
  [4] Buitenland + OSS-registratie (e-commerce EU)
  [5] Recente aangiftes + deadlines

  Heb je externe documenten klaar (BTW-beschikking van de
  Belastingdienst, KOR-aanmelding, OSS-registratie, recente
  aangifte-bevestiging)? Dan kun je die nu noemen of uploaden.

  Let op: dit is administratieve documentatie, geen fiscaal
  advies. Bij twijfel over je regime verwijs ik je door naar
  een fiscaal adviseur of administratiekantoor.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  BTW ADMINISTRATIE - J2 · 15-25 min · 5 blokken           │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  KvK-administratie,
   │    (auto-discover)   │  Overzicht, Financien,
   │                      │  eerdere BTW-bestanden
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  BTW-beschikking,
   │                      │  KOR-aanmelding,
   │                      │  OSS-registratie,
   │                      │  recente aangifte
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per blok, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, blok   │  5 blokken,
   │    voor blok         │  1-3 vragen elk
   │                      │  [1] Scope
   │                      │  [2] Status + regime
   │                      │  [3] Aangifte + BTW
   │                      │      verlegging
   │                      │  [4] Buitenland + OSS
   │                      │  [5] Aangiftes +
   │                      │      deadlines
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Schrijven +       │  Juridisch/
   │    opslaan           │  BTW-administratie.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Logging +         │  Changelog +
   │    aanbevelingen     │  3 vervolgstappen
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "BTW vastleggen" / "BTW-administratie maken" / "BTW-administratie opstellen"
- "BTW-registratie vastleggen" / "BTW-nummer documenteren"
- "BTW-regime documenteren" / "BTW-status op één plek"
- "BTW-vrijgesteld documenteren" / "wij vallen onder vrijstelling"
- "KOR vastleggen" / "kleineondernemersregeling documenteren"
- "OSS registratie documenteren" / "EU-BTW vastleggen"
- "J2 dichten" / "gap J2" / "gat in SCALE-audit voor BTW"

Triggert NIET wanneer:
- De gebruiker een **BTW-aangifte zelf wil indienen**. Die wordt in een boekhoudpakket of bij de Belastingdienst gedaan, niet in dit document.
- De gebruiker **fiscaal advies** wil over keuze tussen regimes. Verwijs door naar Fit In Finance of een eigen fiscaal adviseur.
- De gebruiker een **KvK-document** wil bouwen. Gebruik skill `kvk-administratie` (J1).
- De gebruiker **algemene voorwaarden** of **privacyverklaring** wil. Gebruik `algemene-voorwaarden` (J3) of `privacyverklaring` (J4).
- Het bedrijf is **persoonlijk of niet-zakelijk** zonder onderneming bij de KvK. Dan is BTW niet van toepassing.
- De gebruiker een **internationale BTW-strategie** wil opzetten met optimalisatie tussen lidstaten. Dat is fiscaal advieswerk, niet documentatie.

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de BTW-administratie wordt vastgelegd. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Juridisch/`, `Directie/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Juridisch/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van `os-builder`) waar `Juridisch/` nog leeg is

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze BTW-administratie voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bijvoorbeeld de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Juridisch/` of `Directie/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Juridisch/BTW-administratie.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `BTW-administratie - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

Maak de map `Juridisch/` aan als die nog niet bestaat. Log dat dan in `Systeem/Structuur/Vault Changelog.md` (alleen als die conventie in deze vault geldt; sla over als de map of dat bestand niet bestaat).

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, geen hard-coded absolute paden.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Juridisch/BTW-administratie.md` (huidige versie als die bestaat) | Bestaande BTW-status, regime, deadlines |
| `Juridisch/KvK-administratie.md` (als bestaat) | BTW-ID indien al gekoppeld, KvK-nummer, vestigingsadres, rechtsvorm, SBI-code |
| `Juridisch/KvK Administratie.md` (alternatieve naam, als bestaat) | Idem |
| `Directie/00 - Overzicht.md` | Bedrijfsnaam, type dienstverlening, omzetorde-grootte, branche |
| `Directie/01 - Goals.md` | Omzetdoel voor lopend jaar (relevant voor KOR-grens van 20.000 euro) |
| `Financiën/` (als bestaat) | Recente jaarrekening, omzet vorig jaar, factuurpatronen |
| `Financiën/Rapportage/` (als bestaat) | Kwartaalrapportages, jaarrekening |
| `Juridisch/BTW-beschikking.pdf` of `Juridisch/Documenten/BTW-beschikking.pdf` | Officiële beschikking van de Belastingdienst |
| `Juridisch/KOR-beschikking.pdf` of `Juridisch/Documenten/KOR-beschikking.pdf` | Officiële KOR-aanmeldbevestiging |
| `Juridisch/OSS-registratie.pdf` (als bestaat) | OSS-bevestiging voor e-commerce EU |

Maak per gevonden bron een korte interne aantekening: welk van de 5 blokken het raakt en wat de relevante kerngegevens zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

Vul daarna onderstaand intern overzicht in:

- Handelsnaam: [uit vault of leeg]
- Rechtsvorm: [BV / eenmanszaak / VOF / etc. uit KvK-administratie of leeg]
- KvK-nummer: [uit vault of "nog niet beschikbaar"]
- BTW-identificatienummer: [uit vault of "nog niet beschikbaar"]
- Indicatie regime: [21% standaard / 9% verlaagd / vrijgesteld / KOR / onbekend]
- Indicatie omzetorde-grootte: [uit Financiën of Goals, relevant voor KOR-grens]
- Indicatie buitenland-omzet: [uit Financiën of Sales, relevant voor OSS]

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe documenten heeft die meegenomen kunnen worden. Maak duidelijk dat dit via meerdere paden kan:

- **PDF-upload**. Officiële Belastingdienst-stukken zijn de **belangrijkste bron** voor dit dossier:
  - BTW-beschikking (eerste registratie als BTW-ondernemer)
  - KOR-aanmeldbevestiging
  - OSS-registratiebevestiging (One Stop Shop voor e-commerce EU)
  - Recente BTW-aangifte-bevestiging
  - Eventuele correctie- of naheffingsaanslagen
- **Tekst plakken**, bijvoorbeeld een e-mail of brief van de Belastingdienst, een fragment uit een gesprek met de accountant
- **URL**, eventueel een verwijzing naar een online portaal (Mijn Belastingdienst) waarvan de gebruiker de gegevens kan voorlezen of typen (niet automatisch ophalen, want privacygevoelig)
- **Bestaande bestanden in vault**, als de gebruiker eerder iets in `Financiën/` heeft genoteerd

Concrete vraag aan gebruiker:
> "Heb je officiële documenten van de Belastingdienst over BTW? Bijvoorbeeld de oorspronkelijke BTW-beschikking, een KOR-aanmeldbevestiging, OSS-registratiebevestiging of een recente aangifte-bevestiging? Je mag een PDF uploaden of de relevante regels plakken. Een paar zinnen direct uit de Belastingdienst-stukken is veel waardevoller dan herinneren uit je hoofd, omdat regimes en datums vaak misonthouden worden."

Per aangeleverde bron:
- **PDF**: lees de inhoud, extract BTW-ID, eventuele beschikkingsdatum, regime en aangifte-frequentie
- **Geplakte tekst**: behandel als bewijsstuk, kopieer relevante zinnen letterlijk in een sectie "Brondocumenten" van het output-bestand
- **URL/portaal**: noteer alleen wat de gebruiker zelf overneemt

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4. Markeer in dat geval velden waar geen bron voor is met `[VERIFICEREN]` zodat de gebruiker later kan aanvullen.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 5 blokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat én de gebruiker bevestigen of de informatie correct is begrepen.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] SCOPE
      Bedrijf: {Naam}, rechtsvorm: {BV/EZ/VOF}
      Pad: {scope}
      Bron: KvK-administratie, Directie/Overzicht

  [2] BTW-STATUS EN REGIME
      BTW-ID: NL...B01 (gevonden in KvK-administratie)
      Vermoed regime: standaard 21%
      Bron: BTW-beschikking 2023 (geupload)

  [3] AANGIFTE EN VERLEGGING
      Frequentie: kwartaal (gevonden in BTW-beschikking)
      Verlegde BTW (B2B internationaal): nog niet bekend

  [4] BUITENLAND + OSS
      Buitenland-omzet: nog niet bekend
      OSS-registratie: geen document gevonden

  [5] AANGIFTES + DEADLINES
      Laatste aangifte gevonden in vault: Q3 2025, ingediend 2025-10-22
      Volgende deadline: Q4 2025 vóór 2026-01-31

  GATEN waar ik nog vragen voor heb:
  - Blok 2: bevestiging dat regime klopt
  - Blok 3: of er B2B-leveringen aan buitenlandse zakelijke klanten zijn
  - Blok 4: wel/geen verkopen aan EU-particulieren

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat. **Een verkeerde aanname over het regime kan boetes opleveren.** Laat de gebruiker dus expliciet bevestigen welk regime van toepassing is, en flag eventuele inconsistenties (bijvoorbeeld: pre-fill suggereert KOR maar omzet in Financiën is boven 20.000 euro).

### Stap 5: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**. Wacht op het antwoord, dan pas het volgende blok. Niet alle blokken tegelijk neerzetten.

Per blok: 1 tot 3 vragen, afhankelijk van hoe gevuld de pre-fill al was. Als een blok in pre-fill al rijk gevuld is, stel je alleen een check-vraag ("klopt dit ook?"). Als het blok leeg is, stel je 2-3 open vragen om het te vullen. **Altijd een aanbevolen standaard meegeven** bij elke vraag, zodat de gebruiker snel kan bevestigen of corrigeren.

#### Blok 1: Scope en bestaand bestand

Behandeld in stap 1, hier alleen een korte bevestiging:
> "We leggen de BTW-administratie vast voor {Bedrijfsnaam} op `{scope}/Juridisch/BTW-administratie.md`. Klopt dit?"

#### Blok 2: BTW-status en regime

**Wat we vastleggen:** of het bedrijf BTW-plichtig is, welk regime van toepassing is, en wat de redenen zijn. Vier mogelijkheden expliciet uitvragen.

Kernvragen (kies wat relevant is):

1. **BTW-identificatienummer.** Zo nodig vragen:
   > "Wat is je BTW-identificatienummer (begint met NL en eindigt meestal op B01)? Vaak ook te vinden op je facturen of op `Mijn Belastingdienst`."

2. **Welk regime is van toepassing?** Bied de vier opties expliciet aan, met aanbevolen standaard "21% standaard" voor dienstverleners:
   > "Welk regime is van toepassing op jullie omzet? Voor de meeste B2B-dienstverleners is dit het **standaard 21%-tarief**. Andere opties: **9% verlaagd** (specifieke goederen en diensten als boeken, voedingsmiddelen, persoonlijke verzorging), **BTW-vrijgesteld** (alleen specifieke branches, denk aan zorg, onderwijs, financiële diensten, sociale en culturele instellingen), of **kleineondernemersregeling (KOR)** als de jaaromzet onder 20.000 euro blijft. Welke geldt?"
   
   - **Bij 9%-keuze:** vraag om welke diensten of producten het gaat (verlaagd tarief geldt per item, niet per bedrijf, dus een bedrijf kan tegelijk 21% en 9% factureren).
   - **Bij vrijgesteld-keuze:** vraag expliciet naar de **reden van vrijstelling**:
     > "Op basis waarvan ben je BTW-vrijgesteld? Vrijstelling geldt alleen voor specifieke branches (medische zorg, onderwijs, financiële dienstverlening, sociaal-cultureel werk, journalistiek, etc.). Wat is bij jullie van toepassing en heb je daar een beschikking van de Belastingdienst voor?"
     Als de gebruiker twijfelt of niet zeker weet of vrijstelling werkelijk geldt: **flag dit als risico** en verwijs naar een fiscaal adviseur. Een ten onrechte gebruikte vrijstelling levert navordering op.
   - **Bij KOR-keuze:** check omzetorde-grootte:
     > "Kleineondernemersregeling vraagt expliciet aanmelding bij de Belastingdienst en geldt alleen als je jaaromzet onder 20.000 euro blijft. Heb je de KOR-aanmelding gedaan en goedgekeurd gekregen? En blijft je omzet over 2026 verwachte onder de 20.000 euro?"
     Bij overschrijding: KOR vervalt **direct** vanaf het moment dat de grens wordt overschreden, en je moet terug naar standaard 21%. Markeer dit risico in het document.

3. **Datum van eerste BTW-registratie / KOR-aanmelding.** Voor het dossier.

#### Blok 3: Aangifte-frequentie en verlegde BTW

**Wat we vastleggen:** hoe vaak aangifte wordt gedaan en of er gewerkt wordt met verlegde BTW (B2B leveringen aan buitenlandse zakelijke klanten).

Kernvragen:

1. **Aangifte-frequentie.** Bied opties met standaard:
   > "Hoe vaak doe je BTW-aangifte? Voor de meeste ondernemers staat dit op **per kwartaal** (de Belastingdienst-default). Andere opties: **maandelijks** (als je vaak teruggave krijgt en sneller liquide wilt), of **jaarlijks** (alleen bij weinig omzet en goedkeuring van de Belastingdienst). Welke staat ingesteld?"

2. **Verlegde BTW.** Alleen relevant voor B2B met buitenlandse zakelijke klanten:
   > "Lever je diensten of goederen aan zakelijke klanten buiten Nederland (binnen of buiten de EU)? Bij zakelijke klanten met een geldig BTW-ID in het buitenland wordt vaak **BTW verlegd**: jij factureert 0% en de klant geeft het in zijn eigen land aan. Geldt dat voor jullie en zo ja, voor welk type klanten ongeveer?"
   Niet van toepassing? Markeren als "n.v.t." en doorgaan.

3. **Boekhoudpakket en aangifteweg.** Optionele check:
   > "Met welk boekhoudpakket of dienstverlener doe je de aangifte? (Bijv. Moneybird, e-Boekhouden, je administratiekantoor, of direct via Mijn Belastingdienst.) Goed om vast te leggen voor doorgeefroutes en wachtwoordbeheer."

#### Blok 4: Buitenland en OSS-registratie

**Wat we vastleggen:** of het bedrijf onder de OSS-regeling valt (One Stop Shop, voor e-commerce verkopen aan EU-particulieren) en welke buitenlandse registraties relevant zijn.

Kernvragen:

1. **Verkopen aan EU-particulieren.** Vraag specifiek:
   > "Verkoop je goederen of digitale diensten aan particulieren in andere EU-landen (geen bedrijven, maar consumenten)? Vanaf 10.000 euro omzet per jaar over EU-grenzen heen ben je verplicht om **OSS-registratie** te doen (One Stop Shop). Daarmee draag je de BTW van die landen via Nederland af in één aangifte. Is dat van toepassing en heb je je geregistreerd?"
   Niet van toepassing? "n.v.t." en doorgaan.

2. **Registraties in buitenland.** Alleen relevant bij voorraad in buitenland of B2C-verkoop boven OSS-drempels:
   > "Heb je voorraad of een vaste vestiging in andere EU-landen? Dan kan een lokale BTW-registratie nodig zijn. Geldt dat voor jullie?"

3. **Import en intracommunautaire verwerving.** Alleen kort:
   > "Koop je goederen of diensten in vanuit het buitenland (EU of buiten EU)? Dan zit BTW vaak op verlegging-basis. Hoofdlijn vastleggen: heb je relevante volumes vanuit buitenland?"

#### Blok 5: Recente aangiftes en deadlines

**Wat we vastleggen:** wanneer de laatste aangifte is gedaan, en welke deadlines komen.

Kernvragen:

1. **Laatste aangifte.** Datum en periode:
   > "Wanneer was je laatste BTW-aangifte en over welke periode (welk kwartaal of welke maand)?"

2. **Eerstvolgende deadline.** Aangifte-deadline is altijd **één maand na afloop van het tijdvak**:
   - Q1 (jan-mrt) → deadline 30 april
   - Q2 (apr-jun) → deadline 31 juli
   - Q3 (jul-sep) → deadline 31 oktober
   - Q4 (okt-dec) → deadline 31 januari volgend jaar
   
   Bij maandaangifte: telkens de laatste dag van de maand erna.
   
   Bereken automatisch en bevestig:
   > "Op basis van kwartaalaangifte is je eerstvolgende deadline: {datum}. Klopt dat?"

3. **Eventuele open punten of correcties.** Optioneel:
   > "Zijn er nog openstaande aangiftes, suppleties (correcties op eerdere aangiftes), of een lopende controle van de Belastingdienst? Goed om vast te leggen zodat we daar zicht op houden."

### Stap 6: Document samenstellen

Gebruik het template uit `references/template-btw-administratie.md` als skelet. Vul het volledig in met de uitkomsten uit pre-fill plus interview.

Sla op als:
```
{scope}/Juridisch/BTW-administratie.md
```

Maak de `Juridisch/`-map aan als die nog niet bestaat. Log dat dan ook in `Systeem/Structuur/Vault Changelog.md` als die conventie in deze vault geldt (sla over als die niet bestaat).

Frontmatter (verplicht):
```yaml
---
type: juridisch
bedrijf: <Naam>
onderwerp: BTW Administratie
versie: 1.0
status: concept
laatst-bijgewerkt: YYYY-MM-DD
scale-check: J2
btw-regime: <21% standaard | 9% verlaagd | vrijgesteld | KOR>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**.
- **Geen marketing-superlatieven.** Feitelijk en administratief.
- **Geen em-dashes.** Gebruik komma's, haakjes of losse zinnen.
- **Concrete cijfers en datums.** Geen "ergens vorig kwartaal", wel "Q3 2025, ingediend op 22 oktober 2025".
- **Markeer `[VERIFICEREN]`** op alle plaatsen waar de vault of externe documenten geen gegevens hadden en de gebruiker later moet aanvullen. Beter een zichtbare gap dan een verzonnen detail.
- **Bewaar bron-citaten letterlijk** in een sectie "Brondocumenten" onderaan, zodat een latere lezer (of accountant) kan zien op welke beschikking iets gebaseerd is.
- **Risico-vermeldingen expliciet maken.** Als er een twijfelgeval is (KOR-grens dichtbij, vrijstelling-aanname zonder beschikking, onduidelijke OSS-situatie), neem dat op in een eigen sectie "Aandachtspunten en risico's".

### Stap 7: Logging en aanbevelingen

Logging (allemaal in dezelfde tool-call-ronde):

1. **Changelog bedrijf:** `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw: `Juridisch/BTW-administratie.md`, v1.0, BTW-status volledig vastgelegd, regime {gekozen regime}, eerstvolgende aangifte-deadline {datum}"*.
2. **Daily:** als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (geldt in Iwan's OS, niet alle vaults hebben dit), log onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Vault Changelog:** als de map `Juridisch/` nieuw is aangemaakt en deze vault een `Systeem/Structuur/Vault Changelog.md` heeft, log dat daar ook.
4. **Scale-audit-suggestie:** als er een audit-rapport in `Directie/Research/` staat waar J2 op ❌ of ⚠️ staat, stel voor de audit opnieuw te draaien.

Geef daarna **drie concrete aanbevelingen** voor opvolging:

1. **Deadline-bewaking.** Voeg de eerstvolgende aangifte-deadline toe als terugkerende taak in `02 - Tasks.md` of in de agenda. Voor kwartaalaangifte: vier herinneringen per jaar, telkens een week vóór de deadline.
2. **Brondocumenten op orde.** Als nog geen BTW-beschikking en (indien van toepassing) KOR- of OSS-bevestiging in de vault staan: verzamel die alsnog en plaats ze in `{scope}/Juridisch/Documenten/`. Officiële Belastingdienst-stukken zijn de enige onbetwistbare bron bij een controle of geschil.
3. **Periodieke check op regime.** Vooral bij KOR (omzet-grens 20.000 euro) en bij groeiend buitenland-volume (OSS-grens 10.000 euro EU-omzet): zet één keer per kwartaal een korte check in om te zien of het regime nog past. Verkeerde aannames hier zijn onder de meest voorkomende oorzaken van naheffingen.

Bij **twijfel over regime of grensgeval**: noem expliciet de doorverwijzing naar een fiscaal adviseur (bijvoorbeeld Fit In Finance) of de eigen accountant. Deze skill is documentatie, geen advies.

## Externe of fictieve klant modus

Niet elke gebruiker is een van Iwan's bedrijven met een ingerichte vault. Als de skill wordt aangeroepen voor een extern bedrijf, een fictieve case of een evaluatie:

- Skip de vault-scan stap (Stap 2). Gebruik wat in het prompt staat als enige bron.
- Sla het uitgebreide 5-blokken-interview over of comprimeer het tot één korte vragenronde, afhankelijk van wat de opdracht vraagt.
- Vul ontbrekende administratieve velden in met realistische defaults plus expliciete `[VERIFICEREN]`-marker. Defaults voor Nederlandse B2B-dienstverleners (standaard 21%-regime, kwartaalaangifte, geen verlegging, geen OSS) zijn altijd safe.
- Schrijf de deliverable naar het opgegeven output-pad, niet naar `{scope}/...`-paden in een vault die niet bestaat.
- Verwijs naar gerelateerde SCALE-skills (J1 KvK, J3 Algemene Voorwaarden, J4 Privacyverklaring) in een aparte sectie "Aanbevolen vervolgstappen", zonder ze automatisch uit te voeren.
- Skip changelog-, daily- en vault-mutaties die normaal in Stap 7 gebeuren.
- Sluit af met een "Open punten ter verificatie"-blok dat alle [VERIFICEREN]-velden op één plek lijst, met expliciete vermelding dat dit administratieve documentatie is en geen fiscaal advies.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaand `BTW-administratie.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Defaults tonen.** Altijd een aanbevolen standaard meegeven bij elke vraag, zodat de gebruiker snel kan bevestigen of aanpassen.
- **Verkeerd regime = risico.** Bij elk regime-antwoord doorvragen op bewijs (beschikking, omzet-grens, branche-grond). Geen aannames doen op basis van "ik denk".
- **KOR-grens bewaken.** Als omzet (uit Financiën of Goals) dicht bij of boven 20.000 euro ligt, flag dit expliciet en stel voor om met een adviseur te checken.
- **Vrijstelling alleen met grond.** Bij keuze "BTW-vrijgesteld" verplicht doorvragen op branche (zorg, onderwijs, financieel, etc.) en beschikking. Zonder grond verwijzen naar fiscaal adviseur.
- **`[VERIFICEREN]` zichtbaar laten** in het document voor velden waar geen bron voor was. Beter een open punt dan een verzonnen detail.
- **Geen fiscaal advies.** Altijd de disclaimer opnemen en bij twijfel verwijzen naar Fit In Finance of de eigen accountant.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, multi-business vaults, en versgemaakte SCALE-skeletten. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Brondocumenten letterlijk citeren.** Als de gebruiker een BTW-beschikking heeft geupload, neem de relevante regels letterlijk over in de sectie Brondocumenten. Reproduceer geen interpretatie zonder originele tekst.

## Voorbeeld-output

Zie [`references/template-btw-administratie.md`](references/template-btw-administratie.md) voor de exacte structuur die de skill oplevert.

## Changelog

### 1.1.0 — 2026-05-11

- Nieuwe sectie "Externe of fictieve klant modus" met fiscaal-administratieve defaults.

### 1.0.0 — initiele release

- Eerste productie-versie.
