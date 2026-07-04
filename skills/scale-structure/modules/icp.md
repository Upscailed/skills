# ICP, Ideal Customer Profile (module van scale-structure)

> Bron-skill: `icp` | SCALE-code: S4 | Versie: 1.0.0 | Geschatte tijd: 30 tot 45 minuten

---

# ICP, Ideal Customer Profile

## Doel

Helpt een ondernemer om in 30 tot 45 minuten zijn **ideale klant** scherp vast te leggen in één canoniek document: `{scope}/Directie/Playbook/ICP.md`. Dit is SCALE-stap 4 (Structure) en het document waarmee alle latere marketing, sales en productkeuzes gericht worden.

*Waarom dit fundamenteel is.* Een bedrijf dat iedereen wil bedienen, bedient niemand. Zonder ICP zwabbert marketing tussen doelgroepen, valt content plat, sluiten verkoopgesprekken slecht aan op de werkelijke pijn en wordt elke klant even belangrijk behandeld terwijl 20 procent van de klanten 80 procent van de marge oplevert. Mét ICP heeft iedereen in het bedrijf, en elke AI die meedenkt, één scherp beeld in zijn hoofd: dit is voor wie wij hier zijn, en dit is voor wie expliciet niet.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit S4 stelt dat het ICP-bestand per scope minimaal 80 woorden moet bevatten met zowel een pijn- als een oplossing-beschrijving. Die drempel haal je in tien minuten met halve antwoorden, maar dan heb je geen werkbaar profiel. Deze skill mikt op een **rijk** document: 8 blokken met genoeg diepte dat marketing, sales en content er werkelijk op kunnen sturen, en dat je in een sales-gesprek binnen drie minuten weet of iemand wel of niet jouw klant is.

*Waarom ICP twee subjects heeft.* Goede ICP-werkstukken werken op twee niveaus tegelijk: de **harde kenmerken** (firmografie, demografie, branche) leveren een lijst om op te filteren in een CRM of LinkedIn Sales Navigator, en de **zachte kenmerken** (waarden, denkpatronen, levensfase, emotie) leveren de taal en de empathie voor content, advertenties en eerste klantgesprekken. Pakken we maar één van die twee, dan is het document of een spreadsheet zonder ziel, of een verhalend essay zonder filterregels.

Resultaat: SCALE-audit S4 springt van ❌ of ⚠️ naar ✅ én het document is direct bruikbaar voor S3 (Tone of Voice), C2 (CRM Setup), C6 (Concurrentie-research), M1-M4 (Marketing-aanwezigheid en content) en V1 (Salesproces).

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  ICP, SCALE-stap 4 (Structure)                            │
│  ~30-45 minuten · 8 interview-blokken                     │
└──────────────────────────────────────────────────────────┘

  In 30 tot 45 minuten leggen we vast wie precies de ideale
  klant is van je bedrijf, in welke segmenten, met welke pijn,
  op welk moment ze gaan zoeken en wie er expliciet GEEN
  klant is. Dit document stuurt vanaf nu marketing, sales,
  content en productkeuzes.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 8 blokken interview (één per beurt, niet alles       │
  │    tegelijk), gemiddeld 3-6 minuten per blok            │
  │  • Per blok 2-4 korte vragen                            │
  │  • Bij meerdere klantsegmenten doorlopen we het         │
  │    interview iteratief: eerst segment 1 helemaal,       │
  │    daarna segment 2, enz. (max 3 segmenten aanbevolen)  │
  │  • Vooraf scan ik diep wat er al in je vault staat plus │
  │    externe documenten die je aanlevert, zodat we niets  │
  │    vragen wat je al ergens hebt opgeschreven of in een  │
  │    klantgesprek hebt geleerd                            │
  │  • Daarna lever ik een gevuld ICP.md op dat je nog mag  │
  │    bijschaven                                           │
  └────────────────────────────────────────────────────────┘

  De 8 blokken:
  [1] Scope en segmenten      [2] Harde kenmerken
  [3] Zachte kenmerken        [4] Pijnpunten
  [5] Triggers en momenten    [6] Beslissingsproces
  [7] Niet-ideale klant       [8] Verificatie en bewijs

  Heb je externe bronnen klaar (website-URL, sales-CRM-export,
  klant-interview-notities, marktonderzoek, AI-scan-rapport,
  eerdere persona-documenten, content-archief, salesgesprekken,
  klanttevredenheid-data)? Dan kun je die nu noemen of uploaden,
  ik haal er alles bruikbaar uit voordat we aan het interview
  beginnen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  ICP, S4 · 30-45 min · 8 blokken                          │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Wat staat er al
   │    (auto-discover)   │  in Directie/,
   │                      │  Sales/, Marketing/?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Website, CRM,
   │                      │  klant-interviews,
   │                      │  marktonderzoek
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per blok, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Segment-keuze     │  1, 2 of 3
   │                      │  segmenten?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Interview, blok   │  8 blokken,
   │    voor blok, per    │  2-4 vragen elk
   │    segment iteratief │  [1] Scope
   │                      │  [2] Harde kenmerken
   │                      │  [3] Zachte kenmerken
   │                      │  [4] Pijnpunten
   │                      │  [5] Triggers
   │                      │  [6] Beslissingsproces
   │                      │  [7] Niet-ideaal
   │                      │  [8] Verificatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Directie/Playbook/
   │    opslaan           │  ICP.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    vervolg-          │  hint naar
   │    suggesties        │  S3/C2/C6/M1-4
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Maak een ICP" / "schrijf een ICP-document"
- "Ideale klant beschrijven" / "wie is onze klant precies"
- "Doelgroep aanscherpen" / "klantsegmenten uitwerken"
- "Voor wie doen we dit eigenlijk" / "aan wie verkopen we"
- "Persona schrijven" / "klantprofiel maken"
- "Sweet spot bepalen" / "ideale klant op een rij"
- "S4 dichten in SCALE-audit" / "gap S4"
- "Ideal customer profile" / "klantbeschrijving uitwerken"

Triggert NIET wanneer:
- De gebruiker een **bedrijfsoverzicht** wil opbouwen (gebruik `bedrijfsoverzicht`, S1, blok 3 raakt doelgroep maar op overzichtsniveau)
- De gebruiker een **brand-document** wil opbouwen (gebruik `brand-guidelines`, S2)
- De gebruiker een **tone of voice** wil vastleggen (gebruik `tone-of-voice`, S3, leunt op ICP maar is een ander document)
- De gebruiker een **bedrijfsverhaal / origin story** wil schrijven (gebruik `bedrijfsverhaal`, S7)
- De gebruiker een **concurrentie-analyse** wil maken (gebruik `concurrentie-research`, C6, complementair maar apart)
- De gebruiker een **klantreis** wil mappen (gebruik `klantreis-mapper`, S9, leunt op ICP maar gaat over fasen, niet over personen)
- De gebruiker een **producten- of pricing-document** wil (gebruik S8-skill)
- De gebruiker een **salesproces** wil bouwen (gebruik `salesproces-builder`, V1, gebruikt ICP als input)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad het ICP-document gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam, elke gebruiker heeft een andere setup.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Directie/`, `Marketing/`, `Sales/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Directie/`, `Bedrijven/Naam/Marketing/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Directie/Playbook/`

Vraag de gebruiker:
1. Voor welk bedrijf is dit ICP?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Directie/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Directie/Playbook/ICP.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen of segment toevoegen) of **nieuwe iteratie** (oude archiveren als `ICP - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is over de doelgroep. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard SCALE-Structure-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Directie/Playbook/ICP.md` (huidige versie als die bestaat) | Bestaande segmenten, eerder werk |
| `Directie/00 - Overzicht.md` | Bedrijfs-context, eerste doelgroep-schets (S1-blok 3) |
| `Directie/01 - Goals.md` | Aantal-klant-doelen, segment-keuzes voor het jaar |
| `Directie/Playbook/Brand Guidelines.md` | Wie het bedrijf wil aanspreken, positionering |
| `Directie/Playbook/Tone of Voice.md` | Aannames over hoe de klant praat en denkt |
| `Directie/Playbook/Bedrijfsverhaal.md` | Voor wie het bedrijf ooit is opgezet, oprichtersmotivatie |
| `Directie/Research/concurrentie*.md` | Doelgroep-keuzes van concurrenten |
| `Directie/Research/marktanalyse*.md` of `Directie/Research/marktonderzoek*.md` | Marktomvang, segmentbeschrijvingen |
| `Directie/Research/klant*.md` of `Directie/Research/persona*.md` | Eerder klantonderzoek |
| `Sales/` (subfolders, lead-bestanden) | Daadwerkelijke kenmerken van leads en klanten |
| `Sales/CRM-export*.csv` of vergelijkbaar | Hard data over wie er nu klant is |
| `Marketing/Content Roadmap.md` | Voor wie content wordt gemaakt |
| `Marketing/LinkedIn/` of vergelijkbaar | Reacties, conversies, doelgroep-feedback |
| `Klantenservice/` | Tickets, klachten, terugkerende vragen (= pijnpunten) |
| `Directie/Meetings/*.md` | Klantgesprekken, sales-calls, feedback-sessies |

Maak per gevonden bron een korte interne aantekening: welke van de 8 blokken het raakt, voor welk segment het relevant is, en wat de relevante kerninzichten zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes, niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is. Veel ondernemers hebben nooit eerder een ICP opgesteld; dan is de bedrijfsoverzicht-blok-3 vaak de enige interne bron.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Bij ICP is dit extra waardevol: veel van de scherpste klantbeelden zitten in **mondelinge kennis** of in **systemen buiten de vault** (CRM, website-analytics, mailprovider, sales-tool). Maak duidelijk dat dit kan via meerdere paden:

- **URL** (website van het bedrijf, klant-cases of testimonials online, LinkedIn-bedrijfspagina)
- **CSV/export** (CRM-export met huidige klanten, Mailchimp-segmenten, factuur-export voor branche-analyse)
- **PDF-upload** (marktonderzoek, persona-documenten van een marketingbureau, AI-scan-rapport, klanttevredenheidsonderzoek)
- **Tekst plakken** (klant-interview transcripten, sales-gesprek-notities, reviews, getuigenissen, e-mail-correspondentie met een ideale klant)
- **Bestaande bestanden in vault** buiten Directie/ die context geven (Sales-leadprofielen, klantenservice-tickets, content-reacties)

Concrete vraag aan gebruiker:
> "Voor een goed ICP put ik graag uit zoveel mogelijk bronnen. Heb je een of meer van het volgende beschikbaar? Een **website-URL** (waar staat nu wie je bedient?), een **CRM-export** of klantenlijst (welke types klanten heb je nu werkelijk?), **klant-interview transcripten** of sales-gesprek-notities (wat zeggen ze zelf?), **marktonderzoek** of een eerder **persona-document**, of een **klanttevredenheid-rapport**. Hoe meer bronnen, hoe scherper het profiel."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen, scan op doelgroep-uitspraken, "voor wie"-passages, testimonial-namen en branches, USP-formuleringen
- **CSV/lijst**: tel per branche, omzet-bandbreedte, bedrijfsgrootte, rechtsvorm, en kijk waar de werkelijke zwaartepunten zitten (in plaats van de gewenste)
- **PDF/document**: lees de inhoud, vat samen wat relevant is per blok en per segment
- **Geplakte tekst** (klant-interview, testimonial): noteer letterlijke citaten, die hebben taalkundige waarde voor het Zachte-kenmerken-blok en voor pijnpunten

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4. Maar geef wel het signaal: "Geen probleem, we werken met wat je intern hebt. Een vervolgactie kan zijn om 3-5 klant-interviews in te plannen en dit document daarna te verrijken."

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 8 blokken**, en (als er meerdere segmenten lijken te zijn) **gegroepeerd per segment**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  AANTAL SEGMENTEN (voorlopig)
      Lijkt er minstens 2 te zijn:
      A. "Stabiele basisklant" (klein, voorspelbaar)
      B. "Groeiklant" (groter, marge-rijk)
      Bron: bedrijfsoverzicht-blok-3, CRM-export

  [1] SCOPE EN SEGMENTEN
      Bedrijf, 2 segmenten geïdentificeerd
      Bron: Directie/00 - Overzicht.md, sales-CRM-export

  [2] HARDE KENMERKEN (per segment)
      A. ZZP, omzet <€50k, 5-10 facturen/mnd
      B. EZ/VOF/BV, omzet €50k+, 25+ facturen/mnd
      Bron: CRM-export, klantenlijst-analyse

  [3] ZACHTE KENMERKEN
      Tijdsbewust, geen techweerstand, vertrouwt graag
      Bron: testimonials op website

  [4] PIJNPUNTEN
      "Avonden achter de administratie", "geen overzicht",
      "angst voor Belastingdienst"
      Bron: klant-interview-notities, klantenservice-tickets

  [5] TRIGGERS (gat, weinig gevonden)
  [6] BESLISSINGSPROCES (gat, niets gevonden)
  [7] NIET-IDEALE KLANT (gat, alleen impliciet)
  [8] VERIFICATIE (bron: CRM-export aanwezig)

  GATEN waar ik nog vragen voor heb:
  - Blok 5: triggers en koop-momenten niet expliciet
  - Blok 6: beslissingsproces (wie beslist, wie beïnvloedt) leeg
  - Blok 7: niet-ideale klanten alleen impliciet, niet expliciet
  - Aanvullingen op zachte kenmerken per segment

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Segment-keuze

Vraag de gebruiker concreet hoeveel segmenten in dit ICP komen, en hoe ze (voorlopig) heten. **Drie segmenten is een redelijk maximum**, meer wordt onhanteerbaar in marketing en sales. Als de pre-fill 4+ segmenten suggereert, daag uit om er in te dikken: "Welke twee zijn op dit moment je marge-rijkste? De anderen kun je later toevoegen."

Vraag aan gebruiker:
1. Hoeveel segmenten heeft je ICP? (1, 2 of 3 aanbevolen)
2. Geef ze elk een korte werknaam zodat we het over hetzelfde hebben (bv. "Stabiele basisklant", "Groeiklant met team", "Instellingen en stichtingen").
3. Welk segment is de primaire hoofdfocus voor de komende 6-12 maanden? Dat segment krijgt de meeste aandacht in het interview.

Bevestig de segment-werknamen voor je doorgaat.

### Stap 6: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**, en bij meerdere segmenten loopt blok 2 tot en met 6 **iteratief per segment**. Wacht op het antwoord, dán pas het volgende blok. Niet alle blokken tegelijk neerzetten, dat overweldigt. Bij iteratief werken: zeg expliciet welk segment in beeld is ("We gaan nu segment A: 'Stabiele basisklant' verder uitwerken, blok 2 Harde kenmerken").

Per blok: 2 tot 4 vragen, afhankelijk van hoe gevuld de pre-fill al was. Als een blok in pre-fill al rijk gevuld is, stel je 1 check-vraag en 1 verdiepingsvraag. Als het blok leeg is, stel je 3-4 open vragen om het te vullen.

#### Blok 1, Scope en segmenten (één keer voor het hele ICP)

**Wat we vastleggen:** de korte kern-alinea bovenaan het document. Wie de ideale klant is, in welke segmenten, op welk marktgebied, in één opvallend leesbare paragraaf.

Kernvragen:
1. Beschrijf in 4-6 zinnen wie jouw ideale klant is, in spreektaal, zonder marketing-termen. Stel je voor dat een familielid vraagt "voor wie werk je dan eigenlijk?"
2. Welke segmenten zitten erin (1, 2 of 3), en welke namen geven we ze?
3. Op welk geografisch gebied bedien je deze klanten? (Hyperlokaal, regionaal, landelijk, internationaal?)
4. Bedien je deze klanten online, fysiek, of hybride?

#### Blok 2, Harde kenmerken (per segment)

**Wat we vastleggen:** de filterbare kenmerken waarmee iemand uit een CRM-rapport of LinkedIn Sales Navigator kan worden gehaald. Cijfers, branches, rechtsvorm, leeftijd, locatie, bedrijfsgrootte.

Kernvragen (per segment):
1. Wat is de **bedrijfsgrootte** (aantal medewerkers, omzet-bandbreedte, leeftijd van het bedrijf)?
2. Welke **rechtsvorm** is typisch (eenmanszaak, VOF, BV, stichting, instelling)?
3. In welke **branches** zit deze klant typisch? Maak een wel-lijst en, als het helpt, een niet-lijst.
4. Wat zijn de **demografische kenmerken** als de klant een persoon is (leeftijd, levensfase, geslacht-verdeling indien relevant, opleidingsniveau, geografische spreiding)?

Bij B2B is meestal firmografie+contactpersoon-demografie relevant; bij B2C alleen demografie.

#### Blok 3, Zachte kenmerken (per segment)

**Wat we vastleggen:** hoe de klant denkt, voelt, wat hij waardevol vindt. Het verhalende portret dat sales en marketing voedt.

Kernvragen (per segment):
1. Wat zijn de **waarden** of overtuigingen van deze klant? Wat vindt hij belangrijk?
2. Hoe is zijn **denkpatroon** (analytisch en cijfermatig, intuïtief, voorzichtig, snel-beslissend)?
3. Welke **levensfase of bedrijfsfase** zit hij in en hoe kleurt dat zijn keuzes (jonge kinderen, net opgestart, vlak voor overdracht, etc.)?
4. Welke **media en bronnen** consumeert hij? (LinkedIn, vakbladen, podcasts, boeken, conferenties, waar haalt hij zijn informatie?)

Citaten zijn hier goud waard. Als er klant-interviews of testimonials in pre-fill zaten, plak letterlijke uitspraken in het document.

#### Blok 4, Pijnpunten (per segment)

**Wat we vastleggen:** wat de klant probeert weg te lopen. Splits in **praktische pijn** (tijd, geld, fouten, last) en **emotionele pijn** (angst, schaamte, eenzaamheid, frustratie). Beide zijn nodig om in marketing taal te raken.

Kernvragen (per segment):
1. Wat zijn de **praktische problemen** die deze klant in zijn werk of leven heeft, die jouw aanbod oplost?
2. Wat zijn de **emotionele lagen** onder die praktische pijn? (Angst, schuldgevoel, schaamte, eenzaamheid, frustratie, gebrek aan controle.)
3. Welke **gevolgen** ervaart deze klant als het probleem onopgelost blijft? Wat verliest hij dan (tijd, geld, relaties, rust)?
4. Welke **eerdere oplossingen** heeft deze klant geprobeerd, en waarom werkten die niet?

#### Blok 5, Triggers en koop-momenten (per segment)

**Wat we vastleggen:** wanneer deze klant gaat zoeken. Mensen wisselen of kopen zelden spontaan, ze wisselen op **momenten van beweging**.

Kernvragen (per segment):
1. Welke gebeurtenissen zetten deze klant in beweging om actief naar een oplossing te zoeken? (Bv. groei, verlies van vorige leverancier, deadline, persoonlijke verandering, regelgevingswijziging.)
2. Welke **seizoenen of momenten in het jaar** zijn typisch hoog-vraag? (Januari rondom jaarwissel, Q4 budget-cycles, voor de zomer, vlak na deadlines.)
3. Welke **interne signalen** geven de klant zelf, vlak voordat hij gaat zoeken? (Klagen tegen partner, een specifieke zin tegen vrienden, posten op LinkedIn over iets, googlen op een specifieke term.)
4. Welke **waar zoeken ze**? (Google, een aanbeveling van een collega, LinkedIn-content, een specifiek netwerk, een marktplaats.)

Triggers zijn de scharnier tussen ICP en marketing-timing. Wie ze niet kent, marketeert op random momenten.

#### Blok 6, Beslissingsproces (per segment)

**Wat we vastleggen:** wie binnen de organisatie (of het huishouden) wat doet in het beslissingstraject. Voor B2B vaak een DMU (Decision Making Unit) van 3-7 personen, voor B2C soms ook samen met partner.

Kernvragen (per segment):
1. Wie is de **beslisser** (heeft eindstem over of het wel of niet doorgaat)?
2. Wie zijn de **beïnvloeders** (geven advies, hebben veto-recht op deelaspecten, vertegenwoordigen een belang)?
3. Wie zijn de **gebruikers** (mensen die met het uiteindelijke product/dienst werken)?
4. Welke **bezwaren of zorgen** heeft de klant gewoonlijk vlak voor de aankoop, en hoe haal je die weg?

Bij B2C-bedrijven: vaak gezamenlijke beslissing met partner, of een specifieke fase ("eerst zelf overdenken, dan tegen partner aan houden"). Bij B2B: typeer de rol van CFO, operationeel directeur, eindgebruiker, et cetera.

#### Blok 7, Niet-ideale klant (één keer, voor het hele ICP)

**Wat we vastleggen:** wie expliciet **geen** klant is. Een ICP zonder anti-segmenten is een ICP zonder scherpte. Dit blok is even waardevol als de andere: het beschermt het bedrijf tegen verkeerde klanten.

Kernvragen:
1. Welke **branches, sectoren of bedrijfstypes** bedien je expliciet niet, en waarom niet?
2. Welke **omzet-, leeftijd- of grootte-grenzen** maken iemand niet-ideaal? (Te klein om rendabel, te groot om met onze structuur te bedienen, te jong-in-de-business om door onze processen heen te komen, etc.)
3. Welke **persoonlijkheids- of werkwijze-patronen** signaleren in een eerste gesprek dat het geen match wordt? (Bv. "vraagt direct om korting", "wil alles zelf controleren", "verwacht 24/7 bereikbaarheid".)
4. Welke **verwachtingen of behoeften** kun je gewoon niet waarmaken, hoe graag je ook zou willen? (Hier is eerlijkheid sterker dan poging tot bedienen.)

#### Blok 8, Verificatie en bewijsbronnen (één keer, voor het hele ICP)

**Wat we vastleggen:** waarop dit ICP is gebaseerd, en hoe we het de komende periode gaan toetsen en bijschaven. Zonder bewijsspoor wordt een ICP een fantasie die niemand later durft te updaten.

Kernvragen:
1. Op welke **bronnen** is dit ICP gebaseerd? (Klant-interviews, sales-data, CRM-analyse, marktonderzoek, eigen ervaring, testimonials, et cetera.)
2. Welke **bewijzen** ondersteunen de keuzes (Bv. "70% van huidige klanten is vrouw", "gemiddelde omzet is €78k", "5 klant-interviews uitgevoerd in 2026-Q1").
3. Welke **aannames** zitten er nog in die je nog niet kunt onderbouwen, en hoe ga je die de komende 3-6 maanden toetsen?
4. Hoe vaak ga je dit document **reviewen en updaten**? (Aanbevolen: minstens jaarlijks, en altijd na 5+ nieuwe klanten of een fundamentele marktshift.)

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-icp.md` als skelet. Vul het met de uitkomsten uit pre-fill + interview.

Sla op als:
```
{scope}/Directie/Playbook/ICP.md
```

Maak de `Directie/Playbook/`-map aan als die nog niet bestaat (normaal door `os-builder` aangemaakt).

Frontmatter (verplicht):
```yaml
---
type: icp
bedrijf: <Naam>
status: <fase>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S4
aantal-segmenten: <1|2|3>
bron: <korte samenvatting van bronnen, bv. "Pre-fill uit vault + 3 klant-interviews + CRM-export 2026-Q1">
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "revolutionair", "disruptief", "next-level", "game-changing". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** Een specifiek segment ("dienstverlenende ondernemer, eenmanszaak/VOF/BV met €50k+ omzet en 25+ facturen per maand") is sterker dan een vaag begrip ("MKB").
- **Geen em-dashes.** Gebruik komma's, haakjes, dubbele punten of losse zinnen.
- **Korte koppen** (3 tot 6 woorden) in eigen stijl, niet generiek.
- **Derde persoon** in het hoofdoverzicht; tweede persoon ("jij") alleen in eventuele marketing-haakjes of citaten.
- **Citaten letterlijk** als ze uit klant-interviews of testimonials komen. Bewaar de stem van de klant.
- **Pas op met "iedereen die...".** Specifiek mag, vaag niet.
- **Pas op met overlap tussen segmenten.** Twee segmenten die hetzelfde lijken zijn één segment in vermomming.

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** in `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Directie/Playbook/ICP.md`, v1.0, 8 blokken ingevuld voor N segment(en) op basis van interview en pre-fill"*.
2. **Daily** als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (deze conventie geldt in Iwan's OS, niet alle vaults hebben hem), log dan onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie** als er een audit-rapport in `Directie/Research/` staat waar S4 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien zodat de score springt.

Vervolgsuggesties die je altijd noemt:
- **Verken de aangrenzende SCALE-checks:**
  - **S1 Bedrijfsoverzicht:** als blok 3 daar nog vaag is, gebruik dit ICP om die sectie te verrijken.
  - **S3 Tone of Voice:** leunt op het zachte-kenmerken-blok van dit ICP. Stel voor om die skill direct te draaien.
  - **C2 CRM Setup:** gebruik de harde kenmerken hieruit als filtervelden in het CRM.
  - **C6 Concurrentie-research:** vergelijk wat concurrenten doen voor dezelfde ICP.
  - **M1-M4 Marketing:** content, advertenties en social-presence richten zich op deze ICP.
  - **V1 Salesproces:** eerste gespreksvraag is meestal: "Past dit gesprek bij ons ICP?"
- **Plan klant-interviews:** als blok 8 (Verificatie) leunt op vermoedens in plaats van bewijs, stel voor om 3-5 klant-interviews te plannen om het ICP te toetsen.
- **Bijhouden:** dit is een levend document. Update bij elke 5 nieuwe klanten, of na een fundamentele markt- of strategieshift.

## Belangrijke regels

- **Eén blok per beurt** in het interview, en bij meerdere segmenten **iteratief per segment** door blok 2 tot en met 6. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaand `ICP.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden. Een ICP-document bevat vaak maanden klantonderzoek-werk.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een specifieke klant die past, een werkelijke omzet-grens, een echt citaat) als het te abstract blijft.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs met een single-business vault, voor mensen met een multi-business vault, en voor klanten die door Upscailed begeleid net hun SCALE-skelet hebben opgezet. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe documenten en data.** Veel van de scherpste klantbeelden zitten in CRM, klantgesprekken en testimonials. Halen we dat niet op, dan blijft het ICP een vermoeden.
- **Onderscheid wens-klant van werkelijke klant.** Een ICP moet niet alleen beschrijven wie je *zou willen* bedienen, maar ook (en vooral) wie je nu werkelijk *wel* succesvol bedient. CRM-data is daarvoor onmisbaar.
- **Maximaal 3 segmenten.** Meer wordt onhanteerbaar in marketing en sales. Daag uit om in te dikken als pre-fill suggereert dat er meer zijn.
- **Niet-ideale klant is even belangrijk.** Een ICP zonder anti-segmenten is een ICP zonder scherpte. Blok 7 mag niet worden overgeslagen.
- **Citaten letterlijk bewaren.** Klantencitaten en testimonial-quotes zijn taalkundig goud voor marketing en sales. Plak ze letterlijk in het document, niet geparafraseerd.
- **Respecteer de stem van de ondernemer.** Het ICP moet voelen alsof hij het zelf had kunnen schrijven na 50 klantgesprekken, niet alsof er een tekstschrijver bovenop is gezet.
- **Geen psychografische trucjes.** Geen "Maslow-piramides", "DISC-profielen" of generieke persona-templates. Schrijf in concrete observatie, niet in marketing-cliché.
- **Mik op rijke diepte, niet op het audit-minimum.** Het document moet aan marketing, sales, content én AI alle context geven om gericht te werken. Halve antwoorden voldoen niet.

## Cross-link met andere SCALE-skills

- **S1, Bedrijfsoverzicht** (`bedrijfsoverzicht`): blok 3 (Doelgroep) is daar op overzichtsniveau; dit ICP is de uitwerking. Verwijs heen en weer.
- **S3, Tone of Voice** (`tone-of-voice`): leunt zwaar op zachte kenmerken uit dit ICP. Draai die skill direct na deze.
- **S7, Bedrijfsverhaal** (`bedrijfsverhaal`): "voor wie is dit bedrijf opgezet?" raakt blok 1 hier.
- **C6, Concurrentie-research** (`concurrentie-research`): wat doen concurrenten voor dezelfde ICP? Goede vervolgstap.
- **V1, Salesproces** (later op te leveren): gebruikt dit ICP als ingangsfilter in het eerste gesprek.

## Voorbeeld-output

Zie [`references/template-icp.md`](references/template-icp.md) voor de exacte structuur die de skill oplevert.
