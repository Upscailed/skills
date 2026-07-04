# SWOT Analyse (module van scale-structure)

> Bron-skill: `swot-analyse` | SCALE-code: S6 | Versie: 1.0.0 | Geschatte tijd: 30 tot 50 minuten

---

# SWOT Analyse

## Doel

Helpt een ondernemer om in 30 tot 50 minuten een **rijke SWOT-analyse** vast te leggen in één canoniek document: `{scope}/Directie/Research/SWOT.md`. Dit is SCALE-stap 6 (Structure) en de brug tussen het fundament (S1 Bedrijfsoverzicht, S2 Brand, S3 Tone of Voice, S4 ICP, S5 Jaardoelen) en alle latere strategische keuzes.

*Waarom de SWOT meer is dan een lijstje van vier kwadranten.* De meeste SWOT-analyses die ondernemers maken blijven steken in algemeenheden: "sterk team", "weinig tijd", "AI biedt kansen", "concurrentie groeit". Dat is geen strategisch beeld, dat is een dump. De waarde van een SWOT zit in twee dingen: (1) **concrete punten met bron**, zodat duidelijk is waarop een uitspraak rust (eigen observatie, klantfeedback, marktdata, concurrent-analyse), en (2) de **cross-analyse** waarin de vier kwadranten met elkaar in verband worden gebracht — sterkte × kans wordt een groei-strategie (SO), sterkte × bedreiging wordt een defensie-strategie (ST), zwakte × kans wordt een ontwikkel-strategie (WO), zwakte × bedreiging wordt een vermijd-strategie (WT). Zonder die cross-analyse is een SWOT alleen inventaris.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit S6 vraagt minimaal 2 bullet-items per kwadrant. Die drempel haal je in 10 minuten met halve antwoorden, maar dan heb je geen bruikbaar strategisch document. Deze skill mikt op 4 tot 7 punten per kwadrant met bron, plus een ingevulde cross-analyse-matrix en 2 tot 3 concrete strategische conclusies.

*De cross-link met `concurrentie-research` (C6).* De skill `concurrentie-research` levert in zijn output (`Directie/Research/Concurrentie.md`) twee secties die rechtstreeks als input dienen voor SWOT: "Kansen" en "Bedreigingen". Als die file bestaat, leest deze skill hem als eerste in en pre-fillt de O- en T-kwadranten met de daar genoemde punten. De ondernemer hoeft dat werk dus niet over te doen — hij valideert en breidt eventueel uit. Bestaat de file niet, dan adviseert de skill om eerst `concurrentie-research` te draaien (voor minstens een marktscan), maar blokkeert niet — de SWOT kan ook werken met alleen interview-input.

Resultaat: SCALE-audit S6 springt van ❌ of ⚠️ naar ✅ én het document is direct herbruikbaar als basis voor S5 jaardoelen-verfijning, voor strategische gesprekken, voor een mentor- of investeerderspresentatie, en voor de input van A1 Rapportage en A4 Beslissingsanalyse.

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  SWOT ANALYSE — SCALE-stap 6 (Structure)                  │
│  ~30-50 minuten · 5 interview-blokken                     │
└──────────────────────────────────────────────────────────┘

  In 30 tot 50 minuten leggen we een strategisch beeld van
  je bedrijf vast: 4 kwadranten plus de cross-analyse die
  van een lijstje een richting maakt.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 5 blokken interview (één per beurt, niet alles       │
  │    tegelijk) — gemiddeld 5-10 minuten per blok          │
  │  • Per kwadrant 4-7 concrete punten met bron            │
  │  • Cross-analyse-matrix (SO/ST/WO/WT) als brug naar     │
  │    concrete strategische conclusies                     │
  │  • Vooraf scan ik wat al in je vault staat — vooral     │
  │    Concurrentie.md als die er is, want dat levert       │
  │    direct Kansen en Bedreigingen op                     │
  │  • Daarna lever ik een gevuld SWOT.md op dat je nog     │
  │    mag bijschaven                                       │
  └────────────────────────────────────────────────────────┘

  De 5 blokken:
  [1] Strengths        [2] Weaknesses
  [3] Opportunities    [4] Threats
  [5] Cross-analyse + strategische conclusies

  Heb je externe documenten klaar (eerdere SWOT, business
  plan, mentor-gesprekken, klantfeedback, marktrapporten,
  jaarcijfers)? Dan kun je die nu noemen of plakken — ik
  haal er alles bruikbaar uit voordat we aan het interview
  beginnen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

Vraag daarbij specifiek of de gebruiker een recente `Concurrentie.md` heeft of er één wil draaien voordat we beginnen — dat scheelt aanzienlijk werk in blok 3 en 4.

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  SWOT ANALYSE — S6 · 30-50 min · 5 blokken                │
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
   │                      │  Vooral:
   │                      │  Research/Concurrentie.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Eerdere SWOT,
   │                      │  business plan,
   │                      │  klantfeedback,
   │                      │  marktrapporten
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per kwadrant, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, blok   │  5 blokken,
   │    voor blok         │  4-7 punten elk
   │                      │  [1] Strengths
   │                      │  [2] Weaknesses
   │                      │  [3] Opportunities
   │                      │  [4] Threats
   │                      │  [5] Cross-analyse
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Schrijven +       │  Directie/Research/
   │    opslaan           │  SWOT.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Logging +         │  Changelog +
   │    vervolg-          │  hint naar Goals
   │    suggesties        │  (S5) en C6/A5
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Maak een SWOT" / "SWOT analyse maken" / "SWOT opstellen"
- "Sterktes en zwaktes in kaart brengen"
- "Kansen en bedreigingen voor mijn bedrijf"
- "Strategische analyse maken" / "strategisch beeld vastleggen"
- "S6 dichten in SCALE-audit" / "gap S6"
- "Cross-analyse maken" / "SO ST WO WT strategieën"
- "Wat zijn onze sterktes" / "waar moeten we in verbeteren"
- "Welke kansen liggen er voor ons bedrijf"
- "Welke bedreigingen lopen we"
- Iedere expliciete verwijzing naar `Directie/Research/SWOT.md`

Triggert NIET wanneer:
- De gebruiker concurrenten in kaart wil brengen (gebruik `concurrentie-research` — dat is C6 en levert input voor SWOT)
- De gebruiker een **ICP** of klantsegmenten wil uitwerken (S4 — eigen skill)
- De gebruiker **jaardoelen** of strategische targets wil zetten (gebruik `doelen-coach` — S5; SWOT is wel een logische voorbereiding daarop)
- De gebruiker een **benchmarking** tegen concurrenten wil (gebruik `benchmarking` — A5; SWOT is breder dan alleen vergelijking)
- De gebruiker een **bedrijfsoverzicht** wil opbouwen (gebruik `bedrijfsoverzicht` — S1)
- Er al een actuele SWOT.md staat en alleen 1 punt bijgewerkt moet worden (pas dan direct dat punt aan)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de SWOT-analyse gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Directie/`, `Marketing/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Directie/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Directie/Research/`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze SWOT voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet — help me zoeken")

Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Directie/Research/SWOT.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `SWOT - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: alleen relatieve paden binnen de bedrijfs-root, niet hard-coded absolute paden.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt | Voedt kwadrant |
|---|---|---|
| `Directie/Research/Concurrentie.md` (output van skill `concurrentie-research`) | Marktcontext, "Kansen"-sectie, "Bedreigingen"-sectie, concurrentenprofielen met sterktes/zwaktes per speler | **O + T (primair)**, T via sterke concurrent-positie |
| `Directie/Research/SWOT.md` (huidige versie als die bestaat) | Eerder vastgelegde punten, om te vergelijken | Alle 4 |
| `Directie/00 - Overzicht.md` | Bedrijfsfase, propositie, KPI's, doelgroep, methodiek (sterktes-kandidaten in "Methodiek/werkfilosofie" en "Aanbod"), zwakte-kandidaten in "Status" als die opstart noemt | S + W |
| `Directie/Playbook/Brand Guidelines.md` | Merkpositionering, kernwaarden — vaak een sterkte | S |
| `Directie/Playbook/Tone of Voice.md` | Communicatieve onderscheiding | S |
| `Directie/Playbook/Bedrijfsverhaal.md` | Origin story, mede-oprichters, mentorinzichten — bron voor zowel S als W reflectie | S + W |
| `Directie/Playbook/ICP.md` (of `Marketing/ICP.md` of `Persoonlijk/ICP.md`) | Klantsegmenten + pijnpunten — voedt O als pijnpunten onderbedeeld zijn | O |
| `Directie/01 - Goals.md` | Strategische richting, zwakke punten worden vaak benoemd in toelichting bij rode/gele doelen | W |
| `Directie/02 - Tasks.md` | Lopende projecten — kan zowel sterkte (vooruitgang) als zwakte (achterstand) tonen | S + W |
| `Directie/Research/*.md` (overig) | Marktanalyses, AI-scan-rapporten, jaarcijfer-analyses | Allemaal |
| `Financien/Rapportage/*.md` (indien aanwezig) | Cijfermatige sterktes (hoge marge, lage churn) of zwaktes (lage MRR, hoge dependency) | S + W |
| `Klantenservice/*.md` (indien aanwezig) | Klant-feedback en klachten — directe input voor sterktes ("wat klanten waarderen") en zwaktes ("waar het wringt") | S + W |

**Belangrijk — concurrentie-research is de primaire pre-fill-bron voor O+T:**

Als `{scope}/Directie/Research/Concurrentie.md` bestaat:
1. Lees het volledig in
2. Extract de complete inhoud van de secties "## Kansen (input S6 — Opportunities)" en "## Bedreigingen (input S6 — Threats)" — die zijn expliciet bedoeld als SWOT-input
3. Gebruik die punten als startpunt voor kwadrant 3 (O) en 4 (T) in de pre-fill (stap 4)
4. Noteer ook welke concurrentenprofielen sterke punten hebben die voor jouw bedrijf juist een bedreiging vormen (bijv. "Concurrent X heeft sterke autoriteit op LinkedIn" → bedreiging voor eigen zichtbaarheid)

Als `Concurrentie.md` NIET bestaat:
- Skip stilletjes, maar noteer voor de slot-aanbeveling dat de O+T-kwadranten significant rijker zouden worden met een marktscan, en suggereer in stap 7 om `concurrentie-research` te draaien voordat de SWOT als "definitief" wordt gemarkeerd

Maak per gevonden bron een korte interne aantekening: welke van de 4 kwadranten het raakt, en wat de relevante kerninzichten zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes — niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. Vooral voor SWOT zijn dit krachtige bronnen die zelden in de vault staan:

- **Eerdere SWOT** (uit een vorig businessplan, een mentortraject, een AI-scan-rapport)
- **Business plan** (formele of informele versie — bevat vaak al inschattingen van sterktes/zwaktes)
- **Mentor- of coach-gesprekken** (transcripts, e-mails, samenvattingen — vaak de scherpste zwaktes-blootleggers)
- **Klantfeedback** (testimonials = bron voor sterktes; klachten en exitgesprekken = bron voor zwaktes)
- **Marktrapporten** (sector-rapporten, KvK-data, branche-onderzoek — bron voor kansen en bedreigingen)
- **Jaarcijfers / financiële analyses** (cijfermatige sterktes en zwaktes)
- **Externe AI-scan of audit** (Upscailed's scale-audit, of een externe consultant-scan)
- **Tekst plakken** uit een e-mail of strategie-sessie

Concrete vraag aan gebruiker:
> "Heb je externe documenten of bronnen waaruit ik kan putten? Bijvoorbeeld een eerdere SWOT, een business plan, mentor-gesprekken, klantfeedback (testimonials of klachten), marktrapporten, jaarcijfers of een AI-scan-rapport? Je mag een URL noemen, een bestand uploaden of tekst plakken. Voor SWOT zijn externe perspectieven cruciaal — de meeste blinde vlekken zitten in wat een ondernemer over zichzelf níet weet."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen
- **PDF/document**: lees de inhoud, vat samen wat relevant is per kwadrant
- **Geplakte tekst**: behandel als research-input

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 4 kwadranten**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [S] STRENGTHS (sterktes)
      • Punt 1 — bron: Directie/00 - Overzicht.md (methodiek-blok)
      • Punt 2 — bron: Directie/Playbook/Brand Guidelines.md
      • Punt 3 — bron: Klantfeedback (extern doc)

  [W] WEAKNESSES (zwaktes)
      • Punt 1 — bron: Directie/01 - Goals.md (rode doelen-toelichting)
      • Punt 2 — bron: eigen observatie / interview-thema

  [O] OPPORTUNITIES (kansen)
      • Punt 1 — bron: Directie/Research/Concurrentie.md → "Kansen"
      • Punt 2 — bron: Directie/Research/Concurrentie.md → "Kansen"
      • Punt 3 — bron: ICP-document (onderbedeeld pijnpunt)

  [T] THREATS (bedreigingen)
      • Punt 1 — bron: Directie/Research/Concurrentie.md → "Bedreigingen"
      • Punt 2 — bron: Directie/Research/Concurrentie.md → "Bedreigingen"

  GATEN waar ik nog vragen voor heb:
  - Weaknesses heeft slechts 2 punten — ik wil er minstens 4
  - Strengths bestaat uit features, ik mis de menselijke kant
    (waar laat jij klanten "wow" zeggen?)
  - Cross-analyse-blok komt sowieso na de eerste vier blokken

Klopt dit beeld? Wil je iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Als `Concurrentie.md` ontbrak: voeg expliciet toe:

```
LET OP: er staat nog geen Concurrentie.md in de vault. De
Opportunities- en Threats-kwadranten worden dan vooral uit
jouw eigen perceptie ingevuld. Dat kan, maar de O+T worden
significant rijker met een marktscan via de skill
'concurrentie-research'. Wil je die eerst draaien (~30 min)
of bouwen we de SWOT met wat we hebben?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**. Wacht op het antwoord, dán pas het volgende blok. Niet alle vier kwadranten tegelijk neerzetten, dat overweldigt en levert oppervlakkige punten op.

Per blok: 3 tot 6 vragen, afhankelijk van hoe gevuld de pre-fill al was. Als een kwadrant al rijk gevuld is uit pre-fill, stel je vooral check-vragen ("klopt dit ook?", "wat zou je toevoegen?"). Als een kwadrant leeg is, stel je open vragen om het te vullen tot 4-7 punten.

**Streefaantal per kwadrant: 4 tot 7 concrete punten met bron.** Niet 2 (te dun), niet 15 (te dun verspreid).

#### Blok 1 — Strengths (sterktes)

**Wat we vastleggen:** waar het bedrijf intern sterk in is. Interne factoren waar je controle over hebt.

Het verschil tussen een echte sterkte en marketing-praat: een sterkte is iets wat **concurrenten niet, of slechter, doen**, of wat de doelgroep concreet anders ervaart bij jou.

Kernvragen (kies wat relevant is):
1. Wat doen jullie aantoonbaar beter dan de concurrent? (Niet "wij zijn goed" — wat zien klanten écht anders?)
2. Welke vaardigheden, kennis of methodiek hebben jullie die niet gemakkelijk te kopiëren zijn?
3. Wat zeggen klanten consistent terug ("dat heeft me echt geholpen", "dat hadden andere bureaus niet")? Heb je een paar concrete uitspraken paraat?
4. Welke middelen, netwerken of posities hebben jullie die anderen niet hebben? (Klantenbase, IP, locatie, certificeringen, technologie)
5. Waar zit de menselijke sterkte (cultuur, drive, ervaring, persoonlijkheid van de eigenaar of het team)?
6. Per genoemde sterkte: kunnen we daar een concreet voorbeeld of bron bij plaatsen?

Voorbeelden van **goede** sterkte-formuleringen:
- "8 jaar verticale specialisatie in administratie voor tolken (90+ klanten in segment, geen concurrent met vergelijkbare diepgang)"
- "Eigen automatiseringen die maandritme 40% sneller maken dan handmatig (gemeten in 2025)"
- "Iwan persoonlijk schrijft, geen ghostwriter — herkenbare stem in alle content"

Voorbeelden van **slechte** sterkte-formuleringen (vermijden, doorvragen):
- "Wij zijn flexibel" (iedereen claimt dat)
- "Hoge kwaliteit" (waar blijkt dat uit?)
- "Goed team" (wat maakt het goed?)

#### Blok 2 — Weaknesses (zwaktes)

**Wat we vastleggen:** waar het bedrijf intern kwetsbaar is. Interne factoren waar je controle over hebt, maar nu nog onvoldoende invult.

Het taboe: ondernemers noemen graag "te weinig tijd" en stoppen daar. Dat is een symptoom, geen zwakte. Een echte zwakte is iets structureels dat blijft als de tijd-knelpunt zou wegvallen.

Kernvragen:
1. Waar lopen jullie keer op keer tegen aan, ook na pogingen om het op te lossen?
2. Wat zien klanten of prospects als jullie zwakke kant? (Pricing-perceptie, traagheid, beperkt aanbod, gebrek aan zichtbaarheid)
3. Welke vaardigheden, tools of capaciteit ontbreken? (Niet alleen "personeel" — ook concrete skills)
4. Waar zit de single-point-of-failure? (Eigenaar-afhankelijk, één klant te groot, één leverancier kritiek, één tool waar alles op rust)
5. Welke processen zijn er nog niet of nog niet gedocumenteerd, met risico als jij zou uitvallen?
6. Welke recent gemiste kansen of verloren klanten herinneren je waarom? (Vaak een directe pointer naar een zwakte)

Voorbeelden van **goede** zwakte-formuleringen:
- "Eigenaar-afhankelijk bedrijf: alle inhoudelijke kennis zit bij één persoon, geen documentatie van processen"
- "Geen consistente content-cadans (last 6 months: gemiddeld 1 LinkedIn-post per 2 weken, doelstelling was 2 per week)"
- "Geen meetbaar inzicht in waar leads vandaan komen (geen CRM, geen attribution)"

Voorbeelden van **slechte** zwakte-formuleringen (doorvragen):
- "Te weinig tijd" (symptoom — wat blijft er als de tijd er wel was?)
- "Marketing kan beter" (wat specifiek? zichtbaarheid, conversie, content-frequentie?)

#### Blok 3 — Opportunities (kansen)

**Wat we vastleggen:** externe ontwikkelingen die het bedrijf kan benutten. Externe factoren — buiten je directe controle, maar wel observeerbaar.

**Cross-link met `concurrentie-research`:** als `Concurrentie.md` bestaat, is de sectie "Kansen" daarin al expliciet bedoeld als input. Toon die punten als startpunt en vraag dan: "Welke wil je behouden, welke aanscherpen, welke ontbreken nog?"

Categorieën van kansen om langs te lopen:
1. **Marktontwikkelingen:** groeiende sectoren in je doelgroep, regelgeving die je dienst nodig maakt, technologische verschuivingen (AI-adoptie, automatisering)
2. **Concurrent-gaten:** segmenten die de concurrent niet bedient, prijspunten die niet ingevuld zijn, kanalen die concurrenten verwaarlozen
3. **Eigen positie te benutten:** een sterkte die je nu hebt maar nog niet commercieel verzilvert (bijv. expertise → cursus, methodiek → product)
4. **Nieuwe doelgroepen:** een aangrenzend segment dat lijkt op je huidige ICP maar nog niet bediend wordt
5. **Partnerships:** mogelijke samenwerkingen die kanalen of capaciteit toevoegen
6. **Tooling & schaal:** nieuwe tools (AI, automatisering) die je propositie schaalbaarder maken

Kernvragen:
1. Welke kansen die ik uit `Concurrentie.md` heb gehaald herken je het sterkst? Welke wil je verfijnen?
2. Welke marktontwikkeling in je sector zie je in de komende 12-24 maanden die in jullie voordeel werkt?
3. Is er een dienst of pakket dat jullie nu níet aanbieden, waar regelmatig naar gevraagd wordt?
4. Is er een doelgroep die op de huidige ICP lijkt maar nog niet actief bediend wordt?
5. Welke tool, technologie of methode kan jullie propositie significant schaalbaarder maken?

Voorbeelden van **goede** kans-formuleringen:
- "AI-implementatie in administratiekantoren is nog onontgonnen — wij hebben de combinatie van branche-kennis (8 jaar) en AI-expertise (Upscailed) die concurrenten missen"
- "Toename van zzp-tolken in Nederland: 12% groei in 2024 (KvK-data), terwijl geen enkele concurrent zich op deze niche specialiseert"
- "Stijgende vraag naar Bitcoin-treasury bij BV's: in 2024 verdubbeling van Nederlandse BV's met BTC op de balans"

Voorbeelden van **slechte** kans-formuleringen (doorvragen):
- "AI biedt kansen" (te abstract — welke AI-toepassing, voor welke klantgroep, in welke termijn?)
- "Meer marketing doen" (dat is een actie, geen externe kans)

#### Blok 4 — Threats (bedreigingen)

**Wat we vastleggen:** externe ontwikkelingen die het bedrijf bedreigen. Externe factoren — buiten je directe controle, maar wel observeerbaar.

**Cross-link met `concurrentie-research`:** als `Concurrentie.md` bestaat, is de sectie "Bedreigingen" daarin al expliciet bedoeld als input. Toon die punten als startpunt en vraag: "Welke wil je behouden, welke aanscherpen, welke ontbreken nog?"

Categorieën van bedreigingen om langs te lopen:
1. **Sterke concurrenten:** een speler met meer kapitaal, schaal of autoriteit die in jullie segment komt
2. **Markt-saturatie of -krimp:** je markt krimpt, of meer aanbieders chasen dezelfde klanten
3. **Regelgeving:** nieuwe wetten die jouw dienst raken (BTW-wijzigingen, AI Act, GDPR-aanscherping, sectorspecifieke wetgeving)
4. **Disrupters:** technologie of nieuwe modellen die jouw dienst minder relevant kunnen maken (DIY-software die het kantoor vervangt, AI die advies geeft, etc.)
5. **Klant-concentratie:** te grote afhankelijkheid van één of enkele klanten
6. **Leveranciers / platforms:** afhankelijkheid van een platform (Meta, Google, een SaaS) dat regels of prijzen kan wijzigen
7. **Talent / capaciteit:** schaarste aan personeel of skills die jij nodig hebt
8. **Macro-factoren:** rente, inflatie, geopolitiek — als die concreet doorwerkt in jullie segment

Kernvragen:
1. Welke bedreigingen uit `Concurrentie.md` zie je het scherpst? Welke wil je verfijnen?
2. Welke wetgeving of regelgeving kan in de komende 12-24 maanden je dienstverlening direct raken?
3. Is er een technologische of nieuwe-spelers-disruptie die jullie marktpositie kan ondermijnen?
4. Welke afhankelijkheid (klant, leverancier, platform, persoon) is op dit moment het meest kwetsbaar?
5. Welke macro-trend (rente, talent, energie, geopolitiek) raakt jullie segment direct?

Voorbeelden van **goede** bedreiging-formuleringen:
- "Toename van DIY-boekhoud-SaaS met AI-functies (e-Boekhouden, MoneyMonk, Bunq Boekhouden) kan kleinste klantsegment (<€50k omzet) afsnoepen binnen 2 jaar"
- "Aanscherping van AI Act (2026) kan AI-trainingsmateriaal-eisen aan dienstverleners als Upscailed toevoegen — compliance-kosten onbekend"
- "Klant-concentratie: top-5 klanten = 38% van omzet. Verlies van 1 grote klant = directe cashflow-impact"

Voorbeelden van **slechte** bedreiging-formuleringen (doorvragen):
- "Concurrentie wordt zwaarder" (welke concurrent specifiek, op welke as?)
- "AI verandert alles" (te abstract — wat raakt het concreet?)

#### Blok 5 — Cross-analyse en strategische conclusies

**Wat we vastleggen:** de brug van inventaris naar strategie. Per cel (SO, ST, WO, WT) één tot drie korte strategie-richtingen, en uiteindelijk 2 tot 3 concrete strategische conclusies.

De vier strategie-types:

| | Kansen (O) | Bedreigingen (T) |
|---|---|---|
| **Sterktes (S)** | **SO — Groei** (max-max): zet sterktes in om kansen te grijpen | **ST — Defensie** (max-min): zet sterktes in om bedreigingen te neutraliseren |
| **Zwaktes (W)** | **WO — Ontwikkel** (min-max): pak zwaktes aan zodat je kansen wél kunt grijpen | **WT — Vermijd** (min-min): minimaliseer zwaktes om bedreigingen niet te activeren |

Methode in dit blok:

1. Toon de 4 kwadranten naast elkaar.
2. Per cel (SO/ST/WO/WT): vraag de gebruiker welke 1-3 combinaties hem opvallen ("Welke sterkte × kans valt op? Wat zou je daarmee doen?").
3. Noteer per cel 1 tot 3 strategische ideeën. Niet meer — concreet houden.
4. Sluit af met **2 tot 3 strategische conclusies**: de meest urgente of impactvolle uit de matrix, vertaald naar concrete acties (niet "doe meer aan X" maar "in Q3 bouwen we Y zodat Z").

Kernvragen:
1. Kijkend naar je sterktes en kansen: welke combinatie maakt je hartslag hoger? Wat zou je doen als alles meezit?
2. Kijkend naar je sterktes en bedreigingen: welke bedreiging kun je actief afslaan met wat je al goed kunt?
3. Kijkend naar je zwaktes en kansen: welke zwakte mag je niet meer hebben, omdat hij je een grote kans kost?
4. Kijkend naar je zwaktes en bedreigingen: welke combinatie is een directe rode vlag? Wat moet je per direct vermijden of mitigeren?
5. Als je uit deze hele oefening drie concrete keuzes moet maken voor de komende 6 maanden — welke drie?

De **strategische conclusies** zijn de output waarmee de SWOT ook bruikbaar wordt als input voor `doelen-coach` (S5) — ze zijn de seeds voor jaardoelen die uit echte analyse komen, niet uit gevoel.

### Stap 6: Schrijven en opslaan

Gebruik het template uit `references/template-swot.md` als skelet. Vul het met de uitkomsten uit pre-fill + interview.

Sla op als:
```
{scope}/Directie/Research/SWOT.md
```

Maak de `Directie/Research/`-map aan als die nog niet bestaat (al zal die normaal door `os-builder` of door eerdere research-skills zijn aangemaakt).

Frontmatter (verplicht):
```yaml
---
type: swot
bedrijf: <Naam>
status: concept
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S6
bouwt-op:
  - "Directie/Research/Concurrentie.md (C6)"
voedt:
  - "Directie/01 - Goals.md (S5 — strategische conclusies als seeds voor doelen)"
  - "Directie/Research/Benchmarking.md (A5)"
  - "Directie/Research/Beslissingen.md (A4)"
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "revolutionair", "disruptief", "next-level", "game-changing", "ongekend". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** Een specifieke zwakte ("eigenaar is single-point-of-failure voor klantcommunicatie") is sterker dan een vaag begrip ("kwetsbaar team").
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Per punt een bron** in het document — kort, in cursief tussen haakjes, bijv. `(bron: klantfeedback Q1 2026)` of `(bron: Concurrentie.md)`.
- **Korte koppen** (3 tot 6 woorden) in eigen stijl, niet generiek.
- **4 tot 7 punten per kwadrant.** Als pre-fill na blok 1-4 nog onder de 4 zit, doorvragen. Als boven de 7 komt, prioriteren (de minst-onderscheidende eruit).
- **Cross-analyse-matrix volledig invullen** — geen lege cellen. Als een cel weinig oplevert, één regel motiveren ("Geen scherpe combinatie hier — eventueel later opnieuw kijken").
- **Strategische conclusies in actievorm.** Niet "we moeten meer doen aan marketing", wel "in Q3 2026 bouwen we een wekelijkse LinkedIn-cadans op basis van de inhoudelijke autoriteit uit blok-1-sterktes".

### Stap 7: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):

1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Directie/Research/SWOT.md` — v1.0, 4 kwadranten + cross-analyse + 3 strategische conclusies, gebaseerd op interview en Concurrentie.md"*.

2. **Daily** — als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (geldt in Iwan's OS, niet alle vaults hebben hem), log dan onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.

3. **Scale-audit-suggestie** — als er een audit-rapport in `Directie/Research/` staat waar S6 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien zodat de score springt.

Vervolgsuggesties die je altijd noemt:

- **Goals-koppeling (S5):** de strategische conclusies uit blok 5 zijn directe seeds voor jaardoelen. Stel voor om `doelen-coach` (skill voor S5) te draaien en de SWOT-conclusies als startpunt te gebruiken. Anders blijft de SWOT op de plank liggen.
- **Benchmarking (A5):** sterktes en zwaktes zijn een natuurlijke basis voor periodieke benchmarking tegen concurrenten. Verwijs naar skill `benchmarking` als die nog moet komen, en naar de "Benchmarkpunten"-tabel in `Concurrentie.md`.
- **Concurrentie-research (C6) draaien of bijwerken:** als geen `Concurrentie.md` bestond, is dit dé volgende stap. Als hij ouder is dan 6 maanden, suggereer revisie via skill `concurrentie-research` zodat de O+T-kwadranten actueel blijven.
- **Beslissingen-laag (A4):** koppel de strategische conclusies aan een beslissingsoverzicht (bijv. `Directie/Research/Beslissingen.md`) zodat de SWOT niet stand-alone blijft.
- **Bijhouden:** SWOT is een **levend document**. Minimaal 1x per jaar volledig herzien, tussentijds bijwerken bij grote shifts (rebrand, nieuwe wetgeving, nieuwe concurrent, fundamentele propositie-wijziging).

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle vier kwadranten tegelijk neerzetten. Wachten op antwoord, dan pas door. De cross-analyse (blok 5) is de essentie — niet overslaan.
- **Concurrentie.md eerst lezen, dan O+T pre-fillen.** Als die file bestaat, is daar 80% van het O+T-werk al gedaan. De ondernemer hoeft dat niet over te doen — hij valideert en breidt uit.
- **Geen Concurrentie.md? Suggereer hem eerst te draaien.** Niet blokkeren, maar het verschil in kwaliteit is significant. Maak dat expliciet bij de gebruiker.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaand `SWOT.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een klantcitaat, een cijfer, een voorbeeld) als het te abstract blijft. "Wij zijn flexibel" → "Waaruit blijkt dat, waar zien klanten dat?".
- **Per punt een bron.** Zonder bron is een punt niet falsifieerbaar en daarmee niet bruikbaar. Bron mag kort: "eigen observatie", "klantcitaat", "Concurrentie.md", "marktrapport KvK 2025".
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs met een single-business vault, voor mensen met een multi-business vault, en voor klanten die door Upscailed begeleid net hun SCALE-skelet hebben opgezet. Alleen relatieve paden binnen `{scope}`.
- **Vraag actief naar externe documenten.** Vooral klantfeedback en mentor-gesprekken zijn buiten-de-vault-bronnen die de SWOT scherper maken dan welke interne reflectie ook.
- **Respecteer de stem van de ondernemer.** De SWOT moet voelen alsof hij het zelf had kunnen schrijven, niet alsof een consultant het bovenop heeft gezet.
- **Cross-analyse is verplicht.** Een SWOT zonder cross-analyse is inventaris. De vier cellen (SO/ST/WO/WT) volledig invullen, ook als één cel kort blijft.
- **Strategische conclusies in actie-vorm.** Niet vaag ("aandacht voor marketing"), wel concreet ("Q3: wekelijkse LinkedIn-cadans bouwen op basis van inhoudelijke autoriteit uit S2").
- **Mik op rijke diepte, niet op het audit-minimum.** S6-audit vraagt 2 punten per kwadrant. Wij mikken op 4-7 per kwadrant, met bron, plus cross-analyse, plus strategische conclusies. Halve antwoorden voldoen niet.

## Voorbeeld-output

Zie [`references/template-swot.md`](references/template-swot.md) voor de exacte structuur die de skill oplevert: 4 kwadranten met punten + bron, cross-analyse-matrix met 4 cellen, en 2-3 strategische conclusies.
