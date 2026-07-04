# Verzekeringen Overzicht (module van scale-juridisch)

> Bron-skill: `verzekeringen-overzicht` | SCALE-code: J6 | Versie: 1.0.0 | Geschatte tijd: 25 tot 50 minuten

---

# Verzekeringen Overzicht

## Doel

Helpt een Nederlandse MKB-ondernemer om in 25 tot 50 minuten een volledig overzicht van **zakelijke verzekeringen** op te bouwen in één canoniek document: `{scope}/Juridisch/Verzekeringen.md`. Dit is SCALE-stap J6 (Juridisch) en de bodemplaat van het risico-beheer dat al het latere ondernemen draagt.

*Waarom dit fundamenteel is.* Een verzekerings-overzicht is geen administratie-klusje. Het is de **fundamentele risico-kaart** van het bedrijf:

- **Dekking-helderheid** — je weet precies welke risico's zijn afgedekt en welke open staan. Bij een claim ben je niet zoekend in een mailbox of bij de makelaar; je hebt het polisnummer, dekkingsgrens en eigen risico binnen één minuut paraat.
- **Premie-overzicht** — totale jaarpremie zichtbaar plus opbouw per categorie. Soms zijn premies in 5 jaar dubbel zo hoog geworden zonder dat de dekking verbeterde — dat zie je alleen als je het overzicht hebt.
- **Verval-bewaking** — polis-einddata staan op één plek. Geen verrassende verlengingen meer, geen vergeten opzegtermijnen.
- **Risico-gaten** — een gap-analyse op basis van rechtsvorm, dienstverlening en data-gevoeligheid laat zien welke kritieke verzekeringen nog ontbreken.

*Wat je verliest zonder dit document.* Vier concrete pijnpunten die deze skill voorkomt:

1. **Onverzekerde claim.** Een aansprakelijkstelling komt binnen, je denkt dat je AVB hebt, blijkt te zijn opgezegd toen je naar een andere makelaar overstapte.
2. **Dubbele dekking.** Cyber via de IT-leverancier (bundel) én via een aparte cyberpolis — je betaalt twee keer voor hetzelfde risico.
3. **Verlopen polis.** De BAV liep stil af omdat de incasso veranderde, niemand zag het, de zaak ligt al 6 maanden zonder dekking.
4. **Ontbrekende kritieke dekking.** B2B-dienstverlener zonder BAV, IT-bedrijf zonder cyber, BV-bestuurder zonder D&O — drie veelvoorkomende blinde vlekken die in een schadescenario het bedrijf kunnen breken.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit J6 vraagt minimaal beroepsaansprakelijkheid en cyber genoemd of expliciet niet relevant verklaard. Die drempel haal je met halve antwoorden. Deze skill mikt op een **rijk** document: 7 categorieen met polis-details, einddata, premies, makelaar-koppeling en een risico-gerichte gap-analyse — zodat het overzicht direct bruikbaar is bij elke aansprakelijkstelling, elke verlenging en elke gesprek met een tussenpersoon.

Resultaat: SCALE-audit J6 springt van X of N.v.t. naar OK en het document is direct herbruikbaar bij elke schade-claim, polis-verlenging of risico-evaluatie.

**Belangrijke disclaimer.** Deze skill maakt een **inventarisatie**, geen verzekerings-advies. Voor de gap-analyse-conclusies wordt expliciet doorverwezen naar een onafhankelijke verzekeringsmakelaar of erkend financieel adviseur. De skill identificeert mogelijke gaten op basis van het risico-profiel, maar of een specifieke polis nodig is en welke dekkingsgrens past, is een gespecialiseerde inschatting.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  VERZEKERINGEN OVERZICHT — SCALE-stap J6 (Juridisch)      │
│  ~25-50 minuten · 7 categorieen + gap-analyse             │
└──────────────────────────────────────────────────────────┘

  In 25 tot 50 minuten brengen we elke zakelijke verzekering
  van je bedrijf in kaart: welke polissen er lopen, wat ze
  dekken, wat ze kosten en wat er nog ontbreekt. Dit document
  is de risico-kaart van je bedrijf en je eerste referentie
  bij elke schade-claim of polis-verlenging.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 7 verzekerings-categorieen (één per beurt, niet      │
  │    alles tegelijk) — gemiddeld 3-6 minuten per          │
  │    categorie                                            │
  │  • Per categorie: eerst de vraag of die relevant is     │
  │    voor jouw bedrijf, dan per polis 8 velden            │
  │    (maatschappij, polisnummer, dekking, eigen risico,   │
  │    premie, einddatum, makelaar, claims-status)          │
  │  • Vooraf scan ik bestaande bronnen (Juridisch/ voor    │
  │    polisbladen, 00-Overzicht voor rechtsvorm,           │
  │    Toolstack voor cyber-context, Team voor personeel)   │
  │  • Daarna een gap-analyse op basis van je risico-       │
  │    profiel — welke verzekeringen ontbreken mogelijk     │
  │  • Tot slot lever ik Juridisch/Verzekeringen.md op met  │
  │    premie-tabel, verval-kalender en cross-links         │
  └────────────────────────────────────────────────────────┘

  De 7 categorieen:
  [1] Aansprakelijkheid (AVB, BAV)
  [2] Inventaris en zaken (inventaris, gebouwen, goederen)
  [3] Mensen (verzuim, AOV, pensioen)
  [4] Voertuig en transport (bedrijfsauto, goederenvervoer)
  [5] Cyber (cyber-verzekering)
  [6] Rechtsbijstand (zakelijke rechtsbijstand)
  [7] Bestuurders (D&O voor BV-bestuurders)

  Heb je externe input klaar? Bijvoorbeeld:
  • Polisbladen als PDF (van je makelaar of direct van de
    verzekeraar)
  • Jaaroverzicht of premie-bundel van je verzekerings-
    makelaar
  • Boekhouding-categorie 'verzekeringspremies' of
    'assurantie' over de laatste 12 maanden
  • Banking-export gefilterd op verzekeringsmaatschappijen
    (Achmea, NN, ASR, Allianz, Aon, Marsh)

  Dan kun je dat nu noemen — hoe meer bronnen, hoe minder ik
  hoef uit te vragen.

  Disclaimer: dit is een inventarisatie, geen verzekerings-
  advies. Voor concrete dekking-keuzes verwijs ik naar een
  onafhankelijke verzekeringsmakelaar.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  VERZEKERINGEN OVERZICHT — J6 · 25-50 min · 7 categ.      │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Juridisch/ (polis-PDFs),
   │    (auto-discover)   │  00-Overzicht (rechtsvorm,
   │                      │  dienstverlening),
   │                      │  HR/Team.md (personeel),
   │                      │  IT/Toolstack.md (cyber-
   │                      │  context),
   │                      │  eerdere Verzekeringen.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Risico-profiel    │  Op basis van scan:
   │    bepalen           │  - rechtsvorm (EZ/BV)
   │                      │  - B2B of B2C
   │                      │  - klantdata? IT-tools?
   │                      │  - personeel?
   │                      │  - eigen pand/voertuig?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Externe docs?     │  Polisbladen,
   │                      │  makelaar-jaaroverzicht,
   │                      │  boekhoud-export
   │                      │  'verzekeringspremies'
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per categorie,
   │                      │  ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Interview, per    │  7 categorieen:
   │    categorie         │  [1] Aansprakelijkheid
   │                      │  [2] Inventaris/zaken
   │                      │  [3] Mensen
   │                      │  [4] Voertuig/transport
   │                      │  [5] Cyber
   │                      │  [6] Rechtsbijstand
   │                      │  [7] Bestuurders
   │                      │  Per categorie eerst:
   │                      │  relevant ja/nee?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Premie-overzicht  │  Jaar-totaal per
   │                      │  categorie + grand-
   │                      │  total
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Verval-kalender   │  Polis-einddata
   │                      │  gesorteerd op datum,
   │                      │  opzegtermijn per polis
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Gap-analyse       │  Risico-profiel vs
   │                      │  aanwezige polissen.
   │                      │  Wat ontbreekt mogelijk?
   │                      │  Verwijzing naar
   │                      │  makelaar.
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 10. Schrijven +      │  Juridisch/
   │     opslaan          │  Verzekeringen.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 11. Logging +        │  Changelog +
   │     vervolg-         │  cross-link hint J1,
   │     suggesties       │  S11, S12 + reminder
   │                      │  jaarlijkse review
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Verzekeringen vastleggen" / "verzekeringen documenteren"
- "Bedrijfsverzekeringen inventariseren" / "polissen op een rij"
- "Verzekeringen-overzicht" / "polis-overzicht"
- "Welke verzekeringen heb ik zakelijk" / "wat ben ik verzekerd"
- "Check mijn verzekeringen" / "verzekeringen-check"
- "J6 dichten in SCALE-audit" / "gap J6"
- "Juridisch/Verzekeringen.md aanmaken" / "Verzekeringen.md schrijven"
- "Risico-overzicht bedrijf" / "wat zijn mijn zakelijke risico's"
- "Beroepsaansprakelijkheid checken" / "BAV-polis"
- "Cyber-verzekering bedrijf" / "cyber-dekking checken"
- "AOV-polis vastleggen" / "bestuurdersaansprakelijkheid"
- "Polis-einddata op een rij" / "verzekerings-verval-kalender"

Triggert NIET wanneer:
- De gebruiker een **specifieke polis wil aanvragen of opzeggen** (gebruik dan rechtstreeks de makelaar of verzekeraar — deze skill catalogiseert, het sluit niets af en zegt niets op)
- De gebruiker **verzekerings-advies wil** (deze skill geeft geen advies, alleen overzicht plus gap-suggestie; voor advies altijd verwijzen naar onafhankelijke verzekeringsmakelaar)
- De gebruiker een **schade wil melden** (dat is een werkflow met de verzekeraar of makelaar zelf, niet een overzicht-document)
- De gebruiker een **prive-verzekering** wil documenteren (zorgverzekering, woonhuis, inboedel-prive) — deze skill gaat over **zakelijke** verzekeringen
- De gebruiker een **algemene voorwaarden** wil schrijven (gebruik `algemene-voorwaarden` — J3)
- De gebruiker een **privacyverklaring** wil schrijven (gebruik `privacyverklaring` — J4)
- De gebruiker een **klantcontract** wil schrijven (gebruik `klantcontract-template` — J5)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de verzekeringen-inventaris gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Juridisch/`, `Directie/`, `HR/`, `IT/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Juridisch/`, `Bedrijven/Naam/Directie/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Juridisch/Verzekeringen.md`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze verzekeringen-inventaris voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Juridisch/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Juridisch/Verzekeringen.md` al bestaat:
- Bestaat niet, eerste versie, doorgaan
- Bestaat wel, vraag of dit een **update** (aanvullen op basis van wat er staat) of **nieuwe iteratie** (oude archiveren als `Verzekeringen - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Juridisch/Verzekeringen.md` (huidige versie als die bestaat) | Bestaande polis-lijst, premie-tabel, gap-analyse |
| `Juridisch/` (overige bestanden, PDF's, polisbladen) | Genoemde polissen, dekkingsbedragen, polisnummers |
| `Juridisch/Polissen/` of `Juridisch/Verzekeringen/` (submap als die bestaat) | Aparte polisbladen per verzekering |
| `Directie/00 - Overzicht.md` | **Verplichte check** — rechtsvorm (EZ/BV/VOF), dienstverlening, klantcontext. Bepaalt risico-profiel. |
| `Directie/Research/*.md` | Eerder onderzoek naar verzekerings-keuzes, risico-analyses, makelaar-vergelijkingen |
| `HR/Team.md` (SCALE S11) | Aanwezigheid van personeel — bepaalt of verzuim-verzekering en pensioen-regeling relevant zijn |
| `IT/Toolstack.md` (SCALE S12) | Klantdata, cloud-tools, AI-tools — bepaalt of cyber-verzekering relevant is |
| `Operations/Processen/*.md` | Werkproces dat een risico zou kunnen creeren (productie, advies, opslag goederen, transport) |
| `Financien/Rapportage/*.md` | Boekhoud-categorie 'verzekeringspremies' of 'assurantie' als die in een rapport zit |

Maak per gevonden polis een korte interne aantekening: in welke categorie hij valt en welke kerngegevens al bekend zijn (maatschappij, polisnummer, dekking, premie).

**Belangrijk:** als een bron niet bestaat, skip stilletjes — niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

### Stap 3: Risico-profiel bepalen

Op basis van de vault-scan, bepaal het risico-profiel van het bedrijf. Dit stuurt de gap-analyse in stap 9 én bepaalt welke categorieen extra aandacht krijgen in het interview.

Vragen die je beantwoordt op basis van de scan (en die je expliciet aan de gebruiker valideert):

| Kenmerk | Bron | Gevolg voor verzekerings-behoefte |
|---|---|---|
| Rechtsvorm (EZ, ZZP, VOF, BV) | `Directie/00 - Overzicht.md` (SCALE J1) | BV-bestuurder: D&O (bestuurdersaansprakelijkheid) wordt relevant |
| B2B of B2C | `Directie/00 - Overzicht.md`, klantreis-doc | B2B-dienstverlener: BAV (beroepsaansprakelijkheid) wordt kritiek |
| Dienstverlening (advies, IT, ontwerp) | `Directie/00 - Overzicht.md` | Dienstverleners met advies-risico: BAV verplicht overwegen |
| Klantdata / persoonsgegevens | `IT/Toolstack.md` (SCALE S12), `Juridisch/Privacyverklaring.md` (J4) | Bedrijven met klantdata: cyber wordt kritiek |
| AI-/IT-tools in productie | `IT/Toolstack.md` categorie 9 | AI- of IT-dienstverlener: cyber én BAV beiden kritiek |
| Personeel in loondienst | `HR/Team.md` (SCALE S11) | Werkgever: verzuim/loondoorbetaling wordt verplicht |
| Eigen bedrijfsauto | `IT/Toolstack.md` of expliciete vermelding | Bedrijfsauto: WA + casco |
| Eigen bedrijfspand of huur-pand met inventaris | `Directie/00 - Overzicht.md`, `Operations/` | Eigen pand: gebouwenverzekering; inventaris: inventaris/goederen-polis |
| Goederen-voorraad of fysieke productie | `Operations/Processen/`, `Inkoop/` | Voorraad: goederen-verzekering; transport: goederenvervoer-polis |

Toon de gebruiker een korte samenvatting van het risico-profiel zoals jij dat hebt opgemaakt, met de gevolgen. Vraag bevestiging voordat je verder gaat:

> "Op basis van wat ik vind, lijkt het profiel: [bv. BV, B2B-dienstverlener, klantdata via SaaS-tools, 0 medewerkers in loondienst, geen eigen pand]. Dat betekent dat ik in de gap-analyse straks vooral let op: BAV, cyber, D&O. Klopt dit beeld, of wil je iets aanpassen?"

### Stap 4: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Bij verzekeringen zijn er vaak **gestructureerde bronnen** buiten de vault die het uitvraag-werk fors verkorten.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen waaruit ik kan putten? Bijvoorbeeld:
> - Polisbladen als PDF (per verzekeraar of via je makelaar). Eén PDF per polis is gemiddeld 5 tot 10 cruciale velden in één keer ingevuld.
> - Een jaaroverzicht of premie-bundel van je verzekeringsmakelaar (vaak een PDF of Excel met alle lopende polissen).
> - Boekhouding gefilterd op categorie 'verzekeringspremies', 'assurantie' of 'premies' over de laatste 12 maanden — alle premies in één lijst.
> - Een banking-export gefilterd op verzekerings-incasso's (kijk op herkenbare namen als Achmea, Nationale-Nederlanden, ASR, Allianz, Aon, Marsh, Schouten Zekerheid, Felison, Voogd & Voogd).
> - Een Excel of Notion-pagina waar je nu de verzekeringen bijhoudt (oude versie).
>
> Hoe meer bronnen, hoe minder ik hoef uit te vragen — en hoe kleiner de kans dat we een verlopen of vergeten polis missen."

Per aangeleverde bron:
- **Polisblad (PDF):** scan op polisnummer, maatschappij, soort verzekering, dekking, eigen risico, jaarpremie, ingangs- en einddatum, makelaar/tussenpersoon. Vrijwel alle 8 velden per polis komen hier vandaan.
- **Makelaar-jaaroverzicht:** meestal compleet voor lopende polissen, direct overnemen plus validatie aan gebruiker. Let op of het overzicht ook beeindigde of overgenomen polissen vermeldt.
- **Boekhoud-export:** geeft premies plus frequentie (maand/kwartaal/jaar) en de exacte maatschappij-naam. Match aan polissen die je al weet.
- **Banking-export:** breed dekkend voor "wat lopen er voor incasso's", met name nuttig om vergeten polissen op te sporen (incasso al jaren actief, niemand weet meer waarom).

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 5.

### Stap 5: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 7 categorieen**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] AANSPRAKELIJKHEID
      AVB via Achmea (polis 12345, EUR 480/jr)
      BAV via Aon (polis 67890, EUR 1.200/jr, einddatum 31-12-2026)
      Bron: Juridisch/Polissen/, boekhoud-export

  [2] INVENTARIS EN ZAKEN
      Geen polis gevonden — werk vanuit huis, geen voorraad
      Bron: 00-Overzicht (huiskantoor)

  [3] MENSEN
      AOV via Movir (polis 33333, EUR 4.800/jr)
      Bron: boekhoud-export
      → Geen verzuim-polis gevonden (klopt, 0 medewerkers in loondienst)

  [4] VOERTUIG EN TRANSPORT
      Geen bedrijfsauto, prive-auto gebruikt zakelijk
      Bron: 00-Overzicht

  ... (5 tot 7)

  GATEN waar ik nog vragen voor heb:
  - Categorie 5 (Cyber): geen cyber-polis gezien, risico-profiel
    indiceert wel behoefte (klantdata + AI-tools)
  - Categorie 7 (Bestuurders): rechtsvorm = BV, geen D&O gezien
  - Eigen risico's en dekkingsbedragen niet uit alle bronnen
    duidelijk

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 6 gaat.

### Stap 6: Interview, categorie voor categorie

**Kernregel:** loop **één categorie per beurt** af. Niet alle 7 tegelijk neerzetten. Per categorie eerst de vraag of die voor het bedrijf relevant is. Bij relevantie: alle bekende polissen langsgaan, eventueel ontbrekende polissen toevoegen, en pas dán door naar de volgende categorie.

**Voor elke polis acht kernvelden:**

1. **Maatschappij / verzekeraar** — bv. "Achmea (Centraal Beheer)" of "Allianz Benelux"
2. **Polisnummer** — exacte string, ook met streepjes of voorvoegsels
3. **Dekking-samenvatting** — wat is verzekerd, dekkingsgrens (bv. "AVB tot EUR 2.500.000 per aanspraak, EUR 5.000.000 per jaar")
4. **Eigen risico** — bedrag per claim (bv. "EUR 500 per gebeurtenis")
5. **Jaarpremie** — bedrag per jaar (vermeld of inclusief assurantiebelasting en zo ja, welk percentage)
6. **Einddatum / volgende verlengingsmoment** — datum waarop de polis afloopt of stilzwijgend verlengt
7. **Makelaar / tussenpersoon** — naam plus contactgegevens, of "rechtstreeks bij verzekeraar"
8. **Claims-status** — lopende of recente claims (laatste 5 jaar), of "geen claims"

Plus per polis optioneel:
- **Ingangsdatum** — wanneer de polis is gestart (relevant voor wachttijden, anciënniteit-korting)
- **Opzegtermijn** — bv. "2 maanden voor einddatum, daarna stilzwijgend per maand opzegbaar"
- **Premie-betaling** — maand/kwartaal/jaar, automatische incasso ja/nee

#### Categorie 1 — Aansprakelijkheid

De fundamentele aansprakelijkheids-laag.

Vraag: *"Welke aansprakelijkheids-verzekeringen heb je lopen, zakelijk?"*

Twee hoofdvormen:
- **AVB (Aansprakelijkheidsverzekering Bedrijven)** — algemene aansprakelijkheid, dekt schade aan personen of zaken die door je bedrijfsactiviteit ontstaat. Bijvoorbeeld: een klant glijdt uit op je kantoor, of een product valt op iemands voet. Vrijwel altijd relevant.
- **BAV (Beroepsaansprakelijkheidsverzekering)** — beroepsfouten en advies-aansprakelijkheid. **Kritiek voor dienstverleners zoals adviseurs, IT, ontwerp, consultants, juristen, accountants.** Dekt schade die ontstaat door advies of een dienst die fout uitpakt (verkeerd belastingadvies, IT-systeem dat faalt, advies dat tot verlies leidt).

Standaardvraag per polis:
> "Voor deze polis: welke verzekeraar, wat is het polisnummer, wat is de dekkingsgrens, wat is het eigen risico, wat is de jaarpremie, en wanneer loopt hij af? En staat hij via een makelaar?"

#### Categorie 2 — Inventaris en zaken

Verzekeringen voor fysieke zaken in het bedrijf.

Vraag: *"Heb je een inventaris-, goederen- of gebouwenverzekering lopen?"*

Mogelijke polissen:
- **Inventaris-/goederenverzekering** — laptop, kantoor-inventaris, voorraad. Vaak relevant zelfs vanuit huis (laptop-dekking).
- **Gebouwenverzekering** — **alleen relevant bij eigen pand**. Bij huur loopt dit via de verhuurder.
- **Goederenvervoer-verzekering** — als je goederen vervoert of laat vervoeren (overlapt met categorie 4).

Bij thuiswerker zonder voorraad of eigen pand: vaak n.v.t. — markeer dat expliciet.

#### Categorie 3 — Mensen

Verzekeringen rondom de mensen in het bedrijf (de ondernemer en eventueel personeel).

Vraag: *"Welke verzekeringen heb je rondom mensen — jezelf als ondernemer en eventueel personeel?"*

Mogelijke polissen:
- **Verzuim-/loondoorbetalings-verzekering** — **alleen relevant bij personeel in loondienst**. Verplichte dekking bij ziekte (eigen risico-jaren, daarna WIA).
- **AOV (Arbeidsongeschiktheidsverzekering)** — voor **de ondernemer zelf** (EZ/ZZP/DGA). Dekt inkomen bij arbeidsongeschiktheid. Vrijwillig maar vaak kritiek. Aanbieders: Movir, Aegon, ASR, Achmea, De Goudse, Allianz.
- **Pensioenregeling** — bij personeel meestal verplicht (Bpf of vrijwillig); voor ondernemer vrijwillig (lijfrente / pensioen-bv).
- **Ongevallen-verzekering** — soms aanvullend, eenmalige uitkering bij ongeval.

Cross-link met SCALE S11 (Team): als `HR/Team.md` 0 medewerkers in loondienst toont, sla verzuim-vraag stilletjes over en markeer als n.v.t.

#### Categorie 4 — Voertuig en transport

Verzekeringen rond voertuigen en goederenvervoer.

Vraag: *"Heb je een bedrijfsauto, bedrijfsvoertuig, of vervoer je zakelijk goederen?"*

Mogelijke polissen:
- **Bedrijfsauto** — WA (verplicht), WA+ of all-risk (vrijwillig). Per voertuig één polis.
- **Goederenvervoer** — als je goederen vervoert of laat vervoeren (vracht-CMR-dekking).
- **Werkmaterieel** — verzekering voor mobiele machines, gereedschap, tijdelijke installaties.

Bij ondernemer met prive-auto die zakelijk wordt gebruikt: vaak n.v.t. (loopt via de prive-polis met zakelijk-gebruik-clausule). Markeer dan expliciet "n.v.t. — gebruikt prive-auto, prive-polis dekt zakelijk gebruik".

#### Categorie 5 — Cyber

De jongste maar snelst groeiende verzekerings-categorie.

Vraag: *"Heb je een cyber-verzekering, en zo ja, wat dekt die?"*

**Cyber-verzekering** is **kritiek voor:**
- AI- en IT-dienstverleners (zoals Upscailed)
- Bedrijven die persoonsgegevens van klanten verwerken
- Bedrijven die online betaalverkeer afhandelen
- E-commerce
- Bedrijven afhankelijk van cloud-tools voor de productie

Dekking-elementen om uit te vragen:
- **Eerste-partij-schade** (eigen schade): herstel-kosten, data-recovery, omzetverlies door uitval
- **Derde-partij-schade** (aansprakelijkheid): claims van klanten wiens data is gelekt
- **Ransomware / cyber-extortion** dekking
- **AVG-boetes** (vaak beperkt of uitgesloten)
- **Forensisch onderzoek** en **PR-crisismanagement**

Cross-link met SCALE S12 (Toolstack): als `IT/Toolstack.md` veel SaaS-tools met klantdata toont, en geen cyber-polis aanwezig is, markeer dat als prioriteit in de gap-analyse.

Cross-link met SCALE J4 (Privacyverklaring): bedrijf is verwerkingsverantwoordelijke onder AVG → cyber-dekking sluit daar logisch op aan.

#### Categorie 6 — Rechtsbijstand

Juridische hulp bij geschillen.

Vraag: *"Heb je een zakelijke rechtsbijstand-verzekering?"*

Mogelijke polissen:
- **Zakelijke rechtsbijstand** — juridische hulp bij geschillen met klanten, leveranciers, overheid (belastingdienst, gemeente), arbeidsconflicten. Aanbieders: DAS, Arag, Achmea Rechtsbijstand, SRK.
- **Modules** binnen rechtsbijstand vaak: contractenrecht, incasso, arbeidsrecht, fiscaal, bestuursrecht.

Vraag per polis specifiek welke modules zijn meegenomen — verschil in dekking tussen "basis" en "compleet" is groot.

#### Categorie 7 — Bestuurders (D&O)

Bestuurdersaansprakelijkheid — **alleen relevant bij rechtsvormen met bestuurders (BV, NV, stichting, vereniging).**

Vraag: *"Heb je een bestuurdersaansprakelijkheid-verzekering (D&O)? Deze is relevant als je BV-bestuurder bent."*

**D&O (Directors and Officers)** dekt persoonlijke aansprakelijkheid van bestuurders van een rechtspersoon (BV, NV, stichting). Bij faillissement met onbehoorlijk bestuur kan een bestuurder hoofdelijk aansprakelijk worden gesteld door curator of belastingdienst. D&O dekt verdedigingskosten plus eventuele schade tot dekkingsgrens.

Bij EZ/ZZP: **n.v.t.** — er is geen rechtspersoon, dus geen bestuurdersaansprakelijkheid in juridische zin. Markeer expliciet als n.v.t. plus reden.

Bij BV: standaard meegenomen worden vragen rondom dekkingsgrens, uitlooprisico (claims uit oud bestuur), en of dochteronderneming meeverzekerd is.

### Stap 7: Premie-overzicht

Bouw een **tweetraps-premieoverzicht**:

**Tabel A: per polis**

Per polis: maatschappij, polisnummer, jaarpremie, einddatum.

**Tabel B: per categorie + grand-total**

| Categorie | Aantal polissen | Jaarpremie totaal | Aandeel in totaal |
|---|---|---|---|
| Aansprakelijkheid | N | EUR X | X% |
| Inventaris/zaken | N | EUR X | X% |
| Mensen | N | EUR X | X% |
| Voertuig/transport | N | EUR X | X% |
| Cyber | N | EUR X | X% |
| Rechtsbijstand | N | EUR X | X% |
| Bestuurders | N | EUR X | X% |
| **Grand-total** | **N** | **EUR X** | **100%** |

Belangrijke nuances bij premies:
- **Assurantiebelasting** standaardiseer of bedragen incl. of excl. zijn. In NL is dat 21% (kan in de toekomst veranderen). Vraag de gebruiker welk niveau hij hanteert en houd dat consistent.
- **Betalingstermijnen** noteer of premie maand/kwartaal/jaar wordt geïncasseerd — relevant voor cashflow.
- **Naverrekening** sommige polissen (AVB, BAV) hebben jaarlijkse naverrekening op basis van omzet of personeel — markeer dat.
- **Korting voor jaar-betaling** vaak 2-5% korting bij jaar-vooruitbetaling.

Sluit af met een korte analyse:
- Top-3 duurste polissen
- Categorie met grootste uitgave
- Eventuele waarschuwing als grand-total significant hoger of lager is dan branche-gemiddeld (zonder advies — alleen signaleren)

### Stap 8: Verval-kalender

Bouw een chronologische verval-kalender, gesorteerd op einddatum:

| Einddatum | Polis | Maatschappij | Jaarpremie | Opzegtermijn | Actie binnen |
|---|---|---|---|---|---|
| 2026-09-30 | AVB | Achmea | EUR 480 | 2 mnd | tot 2026-07-31 |
| 2026-12-31 | BAV | Aon | EUR 1.200 | 3 mnd | tot 2026-09-30 |
| 2027-01-15 | AOV | Movir | EUR 4.800 | 2 mnd | tot 2026-11-15 |

Doel: vóórkom dat een polis stilzwijgend verlengt voordat er een heroverweging is gemaakt.

Suggereer aan de gebruiker een **scheduled reminder** in te stellen 90 dagen voor de eerstvolgende einddatum, zodat hij tijdig de afweging kan maken om door, te wisselen of op te zeggen.

### Stap 9: Gap-analyse

Op basis van het **risico-profiel uit stap 3** en de **aanwezige polissen uit stap 6**, maak je een gap-analyse: welke verzekeringen zijn op basis van het risico-profiel mogelijk relevant maar nog niet aanwezig.

Gebruik onderstaande heuristieken (heuristieken, geen advies):

| Risico-profiel-kenmerk | Verzekering die mogelijk ontbreekt |
|---|---|
| B2B-dienstverlener (advies, IT, ontwerp) zonder BAV | **BAV — beroepsaansprakelijkheid** is voor advies-aansprakelijkheid vrijwel onmisbaar |
| Bedrijf met klantdata of SaaS-tools zonder cyber-polis | **Cyber-verzekering** wordt steeds vaker een minimumvereiste, zeker als je verwerker bent onder AVG |
| BV-bestuurder zonder D&O | **D&O — bestuurdersaansprakelijkheid** dekt persoonlijke aansprakelijkheid bij onbehoorlijk bestuur |
| Personeel in loondienst zonder verzuim-polis | **Verzuim-verzekering** dekt loondoorbetaling bij ziekte (loonkosten kunnen anders fors oplopen) |
| Ondernemer zonder AOV | **AOV** beschermt inkomen bij arbeidsongeschiktheid |
| Bedrijfsauto zonder casco | **Casco-uitbreiding** boven WA, zeker bij jongere of duurdere auto |
| Eigen pand zonder gebouwenverzekering | **Gebouwenverzekering** verplicht bij eigen pand |
| Goederen-voorraad zonder goederen-polis | **Inventaris- en goederen-verzekering** dekt voorraad bij brand, diefstal, waterschade |

Format van de gap-sectie:

```
## Gap-analyse (mogelijk ontbrekende dekking)

Op basis van het risico-profiel (zie samenvatting boven)
lijken de volgende verzekeringen mogelijk relevant maar nog
niet aanwezig:

1. **BAV (beroepsaansprakelijkheid)**
   Reden: B2B-dienstverlener met advies-werk (AI-implementatie).
   Risico bij ontbreken: claim van klant voor advies-fout valt
   buiten AVB. Eigen vermogen bij claim hoofdelijk aansprakelijk.

2. **Cyber-verzekering**
   Reden: klantdata in cloud-tools (zie Toolstack.md), bedrijf
   is verwerker onder AVG.
   Risico bij ontbreken: data-lek leidt tot AVG-boete plus
   claims van betroffen klanten.

3. **D&O (bestuurdersaansprakelijkheid)**
   Reden: rechtsvorm = BV (zie 00-Overzicht.md).
   Risico bij ontbreken: persoonlijke aansprakelijkheid bij
   onbehoorlijk bestuur, vooral relevant bij financiele
   problemen of conflicten met aandeelhouders.

> Disclaimer: bovenstaande zijn signaleringen, geen advies.
> Voor concrete dekking-keuzes (verzekeraar, dekkingsgrens,
> eigen risico, prijs) verwijs ik door naar een onafhankelijke
> verzekeringsmakelaar of erkend financieel adviseur. Een
> goede vergelijking neemt sectorrisico, omzet, klantcontract
> en eigen risicotolerantie mee — dat valt buiten de scope van
> deze inventarisatie.
```

**Belangrijk:** noem alleen verzekeringen die op basis van het profiel relevant zijn. Vermijd lange lijsten met irrelevante categorieen. Bij EZ-ondernemer zonder personeel hoef je geen verzuim-polis of D&O in de gap-analyse op te nemen.

### Stap 10: Schrijven en opslaan

Gebruik het template uit `references/template-verzekeringen.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus premie-overzicht plus verval-kalender plus gap-analyse.

Sla op als:
```
{scope}/Juridisch/Verzekeringen.md
```

Maak de `Juridisch/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: verzekeringen-overzicht
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: J6
aantal-polissen: <getal>
jaarpremie-totaal: <bedrag>
valuta: EUR
prijs-niveau: incl-assurantiebelasting | excl-assurantiebelasting
gap-analyse-uitgevoerd: ja
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "essentiele verzekeringsmix", "perfect afgestemde polis", "next-level dekking". Feitelijk en menselijk.
- **Concrete details boven abstracte beweringen.** "BAV via Aon, polis 67890, dekkingsgrens EUR 2.500.000 per aanspraak, eigen risico EUR 1.000, einddatum 31-12-2026" is sterker dan "een beroepsaansprakelijkheidsverzekering".
- **Geen em-dashes.** Gebruik komma's, haakjes of losse zinnen.
- **Tabelvorm waar mogelijk** — een verzekerings-overzicht is feitelijk een register, geen essay.
- **Bedragen consistent** — kies incl. of excl. assurantiebelasting en houd dat overal aan.
- **Status-emoji's mogen** — actief OK, in opzegging waarschuwing, beeindigd grijs. Gebruik zelfde-stijl als in `Toolstack.md` (groen / oranje / wit-bolletje) als de vault die conventie al hanteert; pas anders aan aan de vault-stijl.
- **Disclaimer-blok onderaan** — verplichte zin dat dit een inventarisatie is, geen advies, en dat concrete dekkingskeuzes via een onafhankelijke makelaar moeten gebeuren.

### Stap 11: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Juridisch/Verzekeringen.md` — v1.0, N polissen in 7 categorieen, jaarpremie totaal EUR X, gap-analyse: M mogelijke gaten geidentificeerd"*.
2. **Daily** — als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md` in een Iwan-OS-stijl vault, of een Notion-daily-pagina), log dan een eenregelige melding plus link naar het nieuwe bestand. Skip als die conventie niet bestaat.
3. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een J6-doel of Juridisch-doel heeft: status bijwerken (OK), regel toevoegen aan het voortgangslog.
4. **Scale-audit-suggestie** — als `{scope}/Directie/Research/` een audit-rapport bevat waar J6 op X of waarschuwing staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link met J1 (KvK-administratie)** — rechtsvorm bepaalt een deel van de verzekerings-behoefte (D&O alleen bij BV, etc.). Als `KvK.md` nog niet bestaat, suggereer eerst die skill.
- **Cross-link met S11 (Team)** — bij wijzigingen in personeel (aanname, ontslag) verandert de verzuim-verzekering-behoefte direct.
- **Cross-link met S12 (Toolstack)** — bij wijzigingen in tools en klantdata-verwerking verandert de cyber-behoefte.
- **Cross-link met J4 (Privacyverklaring)** — bedrijf is verwerkingsverantwoordelijke onder AVG → cyber-dekking is daar logisch op aansluitend.
- **Doorgroei richting makelaar-gesprek** — gap-analyse is input voor een gesprek met een onafhankelijke verzekeringsmakelaar. Stel voor de gap-analyse-sectie te mailen naar een makelaar als input voor concrete polisvergelijking.
- **Review-ritme** — een Verzekeringen-overzicht veroudert sneller dan andere SCALE-documenten omdat einddata wisselen en premies jaarlijks aanpassen. Stel voor: jaarlijkse review (rond eerstvolgende einddatum), of een scheduled reminder 90 dagen voor de eerstvolgende einddatum uit de verval-kalender.

## Belangrijke regels

- **Eén categorie per beurt** in het interview. Niet alle 7 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Per categorie eerst de relevantie-vraag.** Niet starten met polis-details. Een EZ zonder personeel hoeft geen verzuim-vragen te krijgen.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 5 voorkomt dat.
- **Risico-profiel-validatie is verplicht.** Stap 3 wordt altijd expliciet bevestigd voordat het interview begint. Een verkeerd risico-profiel maakt de gap-analyse waardeloos.
- **Geen verzekerings-advies geven.** Je signaleert mogelijke gaten op basis van profiel, maar je adviseert geen specifieke polis, maatschappij, dekkingsgrens of premie. De disclaimer is verplicht in de output.
- **Schrijf nooit zomaar over een bestaande `Verzekeringen.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Polisnummer en einddatum zijn ankerdata.** Als die ontbreken bij een polis: noteer expliciet "polisnummer onbekend, gebruiker checkt makelaar" — laat het niet leeg.
- **Concreet boven abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (dekkingsbedrag, exacte einddatum, jaarpremie) als het te vaag blijft ("ja, ik heb iets met aansprakelijkheid"). Een polis zonder polisnummer is geen polis voor dit overzicht.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe bronnen.** Eén polisblad-PDF of één boekhoud-export bespaart 70% van het uitvraag-werk.
- **Cyber krijgt extra aandacht bij IT/AI-profielen.** Voor een AI- of IT-dienstverlener is cyber geen optionele categorie. Als er geen polis is, dat expliciet in de gap-analyse benoemen met de Toolstack-context als argument.
- **D&O alleen bij BV/NV/stichting/vereniging.** Bij EZ/ZZP-ondernemer expliciet als n.v.t. markeren plus reden ("geen rechtspersoon, dus geen bestuurdersaansprakelijkheid in juridische zin").
- **Verval-kalender chronologisch sorteren.** Eerstvolgende einddatum bovenaan. Dat is het document dat de gebruiker maandelijks moet kunnen scannen.
- **Disclaimer in elke output.** De zin "dit is een inventarisatie, geen verzekerings-advies — voor concrete dekkingskeuzes verwijs naar onafhankelijke verzekeringsmakelaar" staat onderaan elk Verzekeringen.md-bestand.
- **Mik op rijke diepte, niet op het audit-minimum.** De audit vraagt BAV en cyber genoemd of expliciet n.v.t. Deze skill mikt op een **volledig risico-document** dat ook in een schade-claim of bij een makelaar-gesprek direct bruikbaar is.

## Voorbeeld-output

Zie [`references/template-verzekeringen.md`](references/template-verzekeringen.md) voor de exacte structuur die de skill oplevert: polis-tabel per categorie, premie-totaaltabel, chronologische verval-kalender, gap-analyse op basis van risico-profiel, cross-link naar J1, J4, S11, S12 en disclaimer-blok onderaan.
