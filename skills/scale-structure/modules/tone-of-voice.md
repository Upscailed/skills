# Tone of Voice (module van scale-structure)

> Bron-skill: `tone-of-voice` | SCALE-code: S3 | Versie: 2.2.0 | Geschatte tijd: 45-60 minuten

---

# Tone of Voice

## Doel

Helpt een ondernemer in 45 tot 60 minuten een compleet Tone of Voice-document op te stellen dat als bron-van-waarheid dient voor alle communicatie van het bedrijf: website-teksten, social posts, e-mails, klantgesprekken, productpagina's, advertenties. Geen vaag stijldocument, wel een werkbare gids met concrete voorbeeldzinnen, per kanaal en per situatie.

De skill werkt via een gestructureerd interview in **6 blokken**, één voor één, zodat de ondernemer per blok kan antwoorden zonder overspoeld te worden. Vóór het interview begint, scant de skill eerst de bestaande documenten in de vault, zodat we niet vragen wat al ergens staat. Na het interview stelt de skill het Tone of Voice-document op en slaat het op als `{scope}/Directie/Playbook/Tone of Voice.md`.

Resultaat: SCALE-audit S3 (Tone of Voice) springt van ❌ of ⚠️ naar ✅, en de ondernemer heeft één canoniek document waar elke tekstmaker (mens of AI) zich op kan baseren.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  TONE OF VOICE — SCALE-stap S3                            │
│  ~45-60 minuten · 6 interview-blokken                     │
└──────────────────────────────────────────────────────────┘

  Ik help je in 45 tot 60 minuten een compleet Tone of Voice-
  document op te stellen dat als bron-van-waarheid dient voor
  al je communicatie: website, social, e-mail, klantgesprekken,
  advertenties.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 6 blokken interview (één per beurt, niet alles       │
  │    tegelijk): Persoon · Dimensies · Taalgebruik ·       │
  │    Kanalen · Situaties · Schrijfregels                  │
  │  • Per blok 1-4 keuzevragen — je klikt opties aan       │
  │  • Vooraf scan ik bestaande bronnen (Brand Guidelines,  │
  │    Bedrijfsverhaal, ICP, eerdere content) zodat we      │
  │    niets vragen wat al ergens staat                     │
  │  • 3 voorbeeldteksten ter check (post, e-mail, web)     │
  │  • Output: Directie/Playbook/Tone of Voice.md           │
  │    (1500-3000 woorden, incl. Quick Reference Card)      │
  └────────────────────────────────────────────────────────┘

  Heb je nog externe input (eigen content waar je trots op
  bent, een merk-met-vergelijkbare-stem die je inspireert,
  een eerdere ToV-poging)? Dan kun je dat nu noemen.
```

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  TONE OF VOICE                                            │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Bronnen scannen   │  Wat staat er al?
   │                      │  (Brand Guidelines, ICP,
   │                      │   Bedrijfsverhaal,
   │                      │   00-Overzicht, posts)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Pre-fill tonen    │  Samenvatting van wat al
   │                      │  bekend is, ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Interview, blok   │  Per blok wachten op
   │    voor blok         │  antwoord, dan volgende
   │                      │
   │  Blok 1: Persoon     │
   │  Blok 2: Dimensies   │
   │  Blok 3: Taalgebruik │
   │  Blok 4: Kanalen     │
   │  Blok 5: Situaties   │
   │  Blok 6: Regels      │
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Do's & Don'ts     │  Minimaal 5+5 met
   │    samenstellen      │  "zo wel" / "zo niet"-paren
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Merkstem-check    │  3 voorbeeldteksten
   │                      │  testen + bijslijpen
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Document opslaan  │  Directie/Playbook/
   │    + hergebruik-tips │    Tone of Voice.md
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Maak een tone of voice voor mijn bedrijf"
- "Hoe moet mijn merk klinken?"
- "Help me een communicatiestijl bepalen"
- "Ik wil schrijfregels voor mijn team / mijn AI / mezelf"
- "Onze teksten voelen overal anders aan, kun je dat fixen?"
- "Do's en don'ts voor onze content"
- "Ons merk moet consistent overkomen op alle kanalen"
- "S3-gat in mijn SCALE-audit dichten" / "Tone of Voice voor S3"

Triggert NIET wanneer:
- De gebruiker een Brand Guidelines wil opbouwen, dus inclusief kleuren, typografie, logo (gebruik dan `brand-guidelines` of breid die skill uit)
- De gebruiker één losse tekst wil herschrijven (gebruik dan een tekstschrijver-skill, niet deze gids)
- De gebruiker een bedrijfsverhaal wil schrijven (gebruik `bedrijfsverhaal`)
- De gebruiker zijn ICP wil definiëren (gebruik `icp-builder` als die bestaat, of beschrijf eerst de doelgroep)

## Workflow

### Stap 1: Scope kiezen

Vraag aan welk bedrijf de tone of voice hoort. Bied opties op basis van wat in de vault zichtbaar is:

- Elke `Bedrijven/[Bedrijf]/`-map die bestaat
- De directe bedrijfsnaam-map als top-level (bij solopreneurs)
- Of een opgegeven pad

Bevestig de gekozen scope voordat je doorgaat.

Controleer of er al een bestand bestaat: `{scope}/Directie/Playbook/Tone of Voice.md`.

Als er al een bestand bestaat: vraag of dit een **eerste versie** is (vorige overschrijven), een **update** (aanvullen op basis van wat er staat), of een **nieuwe iteratie** (oude archiveren als `Tone of Voice - archief YYYY-MM-DD.md`).

### Stap 2: Bestaande bronnen scannen

Lees systematisch deze documenten als ze bestaan. Maak een interne aantekening per bron, zodat het interview later geen vragen herhaalt waarvan het antwoord al ergens staat.

| Bron | Wat je eruit haalt |
|---|---|
| `{scope}/Directie/00 - Overzicht.md` | Missie, propositie, doelgroep, status, naam |
| `{scope}/Directie/Playbook/Brand Guidelines.md` | Merkpersoonlijkheid, kernwaarden, kleurpalet (sfeer), bestaande do's/don'ts |
| `{scope}/Directie/Playbook/Bedrijfsverhaal.md` | Schrijfstijl-indicaties uit het verhaal zelf, woordkeuze, persoonlijkheid van de stichter |
| `Persoonlijk/ICP.md` (sectie van het bedrijf) of `{scope}/Directie/Playbook/ICP.md` | Doelgroep, pijnpunten, taalniveau, aanspreking |
| `{scope}/Marketing/` (oude posts, nieuwsbrieven) | Bestaande stijl, terugkerende woorden, voorbeelden van wat werkt |
| `{scope}/Directie/Playbook/` (overige playbook-bestanden) | Algemene communicatieafspraken |
| **Optioneel:** een stichter-profiel of "Over [Naam]"-bestand als de gebruiker zo'n bestand heeft (vraag actief, paden variëren per vault — bv. `Persoonlijk/Over [Naam].md`, `{scope}/Directie/Over [Eigenaar].md`, of een About-pagina-URL) | Persoonlijke stem, taalgebruik in eigen content. Skip stilletjes als dit nergens te vinden is. |

Als de scope een SCALE-audit-rapport heeft in `{scope}/Directie/Research/`: lees ook welke status S3 heeft, en de eventuele motivatie waarom S3 nu ⚠️ of ❌ is. Dat geeft context voor wat in deze ronde extra aandacht verdient.

### Stap 3: Pre-fill tonen ter validatie

Toon de ondernemer een korte samenvatting van wat je al gevonden hebt, gegroepeerd per thema:

- **Persoonlijkheid:** welke karaktertrekken al impliciet of expliciet rondzingen
- **Doelgroep & aanspreking:** wie de lezer is en hoe hij/zij vermoedelijk aangesproken wil worden
- **Bestaande stijl-signalen:** uit posts en het Bedrijfsverhaal: zinsbouw, woordkeuze, jargon-niveau, gebruik van humor
- **Wat ontbreekt:** welke onderdelen van een ToV-document nog volledig open staan

Vraag bevestiging: "Klopt dit beeld? Wil je iets toevoegen of bijstellen voordat we het interview ingaan?"

Dit voorkomt dat het interview vragen stelt waarvan het antwoord al ergens in de vault staat, en zet meteen de juiste richting.

### Stap 4: Interview, blok voor blok

**Kernregel 1:** stel **één blok per beurt**. Wacht op het antwoord. Dán pas het volgende blok. Niet alle blokken tegelijk neerzetten, dat overweldigt.

**Kernregel 2:** gebruik **altijd** de `AskUserQuestion`-tool voor elke vraag in het interview, ook voor 'kleine' bevestigingen ("klopt dit?"). Geen open vragen meer in de chat. Ondernemer kan klikken in plaats van typen, dat verlaagt drempel en versnelt de flow. De tool voegt automatisch een "Other"-optie toe, dus die hoef je niet zelf in te bouwen.

**Format-regels voor de vragen:**
- 1 tot 4 vragen per AskUserQuestion-call (de tool ondersteunt max 4 tegelijk)
- Per vraag 2 tot 4 antwoord-opties (de tool ondersteunt max 4)
- Bij lijsten waar meer opties relevant zijn (zoals karaktertrekken, kanalen): groepeer in 4 thematische clusters, of doe meerdere rondes
- Zet je aanbeveling als **eerste** optie met "(Aanbevolen)" achter de label, op basis van wat je in Stap 2 hebt gevonden
- Gebruik `multiSelect: true` waar meerdere antwoorden logisch zijn (karaktertrekken, kanalen, situaties)
- Header per vraag: korte chip-label van max 12 tekens (bv. "Persoonlijkheid", "Aanspreking", "Humor")

**Blok 1 — Merkpersoonlijkheid**

> "Als je merk een persoon was, wie zou dat zijn? Ik bedoel niet letterlijk een bekend persoon, wel een type. Welke karaktertrekken horen erbij, en welke horen er beslist NIET bij?"

Drie deelvragen via keuzeblokken:
1. Type-archetype (de betrouwbare expert, de enthousiaste vriend, de stoere vernieuwer, de warme helper, de gedreven coach, Anders)
2. 3 tot 5 karaktertrekken die wél passen (multiSelect: betrouwbaar, toegankelijk, vakkundig, vernieuwend, warm, direct, gedurfd, speels, authentiek, inspirerend, rustig, ambitieus, Anders)
3. 2 tot 3 karaktertrekken die absoluut NIET passen (multiSelect: afstandelijk, saai, arrogant, kinderachtig, ouderwets, agressief, schreeuwerig, vlak, Anders)

Stel na de antwoorden een merkpersona samen, 3 tot 4 zinnen, een mini-portret. Schrijf één voorbeeldzin in deze stem. Vraag bevestiging.

**Blok 2 — Tone of Voice-dimensies**

> "Nu positioneren we het merk op de belangrijkste communicatie-assen. Dit maakt de tone of voice concreet en meetbaar. Per as schuif je een knop tussen twee uitersten."

Zeven schalen, in 2 rondes (max 4 per AskUserQuestion-call):

**Ronde 1:**
1. Formeel ↔ Informeel (5 punten)
2. Serieus ↔ Speels (5 punten)
3. Zakelijk ↔ Persoonlijk (5 punten)
4. Bescheiden ↔ Zelfverzekerd (5 punten)

**Ronde 2:**
5. Traditioneel ↔ Vernieuwend (5 punten)
6. Afstandelijk ↔ Warm (5 punten)
7. Eenvoudig ↔ Vakkundig (5 punten)

Per as: geef ter inspiratie twee voorbeeldzinnen die het verschil tonen. Bijv. bij Formeel ↔ Informeel:
- Formeel: "Wij informeren u graag over onze dienstverlening."
- Informeel: "Hee, leuk dat je kijkt wat we voor je kunnen betekenen."

Vat na ronde 2 samen welke positie het merk inneemt, plus één voorbeeldzin die alle dimensies tegelijk respecteert. Vraag bevestiging.

**Blok 3 — Taalgebruik & woordkeuze**

> "Hier wordt het praktisch. Welke woorden en zinnen passen bij het merk, en welke vermijden we?"

Vier keuzeblokken:
1. Aanspreking (jij, u, afwisselend, geen directe aanspreking, Anders)
2. Vakjargon (vermijden en uitleggen in gewone taal, jargon mag mits uitgelegd, jargon mag omdat de doelgroep het kent, Anders)
3. Zinslengte (kort en puntig max 15 woorden, gemiddeld 15 tot 25 woorden, langer en verhalend, mix, Anders)
4. Humor (nee liever niet, subtiele knipoog af en toe, warm en herkenbaar ja, droog en gevat ja, Anders)

Vervolgvragen (optioneel, alleen als relevant voor de scope):
5. Emoji's (nooit, spaarzaam op social, regelmatig past bij stijl, Anders)
6. Engelse woorden (vermijden alles Nederlands, alleen als geen goed Nederlands alternatief, prima doelgroep is gewend, Anders)

Stel na deze stap voor:
- 10 tot 15 **power words** die passen bij het merk (woorden die je graag gebruikt)
- 5 tot 8 **verboden woorden** die het merk nooit zou gebruiken

Vraag feedback en pas aan.

**Blok 4 — Per kanaal**

> "Elk kanaal heeft zijn eigen dynamiek, maar de kern van de stem blijft hetzelfde. Welke kanalen zijn voor jou belangrijk, en wat verschilt per kanaal?"

Twee deelvragen:
1. Welke kanalen (multiSelect: website, LinkedIn, Instagram, Facebook, TikTok, YouTube, e-mail / nieuwsbrief, advertenties, telefoon / persoonlijk, podcast, Anders)
2. Per gekozen kanaal: welk type content overheerst (bijv. korte updates, lange educatieve posts, productfoto's, video)

Werk per gekozen kanaal uit:
- Eén alinea richtlijn (lengte, toon-accent, format-specifieks zoals hashtags, emoji's, CTA-stijl)
- Eén voorbeeldtekst in de tot nu toe vastgestelde stem

Doe dit in blokken van 2 tot 3 kanalen per ronde als de ondernemer er veel kiest. Vraag bevestiging per blok.

Sluit Blok 4 af met: "Wat blijft altijd hetzelfde op elk kanaal?" en "Wat verschilt per kanaal?". Vat in 3 tot 5 bullets samen.

**Blok 5 — Per situatie**

> "Hoe een merk klinkt hangt ook af van de situatie. Goed nieuws delen vraagt een andere toon dan een klacht beantwoorden. Welke situaties komen bij jou veel voor?"

Eén keuzeblok:
1. Welke situaties (multiSelect: goed nieuws delen, slecht nieuws of fouten communiceren, klachten beantwoorden, verkopen of overtuigen, informeren en uitleggen, inspireren en motiveren, hulp aanbieden, Anders)

Per gekozen situatie: schrijf één concrete voorbeeldtekst (2 tot 4 zinnen) in de vastgestelde stem. Doe dit in blokken van 2 tot 3 situaties per ronde.

**Blok 6 — Schrijfregels en stijldetails**

> "Tot slot de details. Consistentie in kleine dingen maakt het verschil tussen amateur en professioneel."

Vier keuzeblokken:
1. Hoofdletters in koppen (alleen eerste woord (Aanbevolen), elk belangrijk woord, alles lowercase, Anders)
2. Getallen (altijd uitschrijven, tot 10 uitschrijven daarna cijfers (Aanbevolen), altijd cijfers, Anders)
3. Actief of passief (actief 'wij helpen jou' (Aanbevolen), passief 'je wordt geholpen', mix, Anders)
4. Em-dashes en streepjes (geen em-dashes (Aanbevolen, in lijn met Upscailed-conventie), wel gebruiken, alleen voor pauzes, Anders)

Extra (optioneel, één keuzeblok):
5. Andere stijlregels (maximale zinslengte, uitroeptekens, headerstijl, Anders)

### Stap 5: Do's & Don'ts samenstellen

Dit is het hart van het document. Hier maak je de tone of voice tastbaar.

Stel op basis van alle voorgaande keuzes:
- **Minimaal 5 do's** met voorbeeldzinnen
- **Minimaal 5 don'ts** met voorbeeldzinnen
- Per paar: een "zo wel" en een "zo niet" variant van dezelfde boodschap, zodat het verschil voelbaar wordt

Voorbeeldformat:
```
✅ DO: Schrijf in actieve zinnen.
   "Wij helpen MKB-ondernemers AI praktisch toepassen."
❌ DON'T: Vermijd passieve constructies.
   "MKB-ondernemers worden door ons geholpen met AI."
```

Presenteer de lijst en vraag via keuzeblok: "Kloppen deze do's & don'ts? Mist er iets, of moet er iets weg?"

Verfijn op basis van feedback. Doel is dat de lijst zelfstandig leesbaar is, dus zonder de rest van het document, en dat iemand binnen 2 minuten begrijpt hoe het merk klinkt.

**Minimum-eis voor SCALE-audit S3:** ten minste 1 Do en 1 Don't met voorbeeldzin. Met 5+5 zit je daar ruim boven.

### Stap 6: Merkstem-check

Nu testen we of de tone of voice werkt in de praktijk. Schrijf 3 voorbeeldteksten in de tot nu toe vastgestelde stem:

1. Een **social media post** (LinkedIn of het primaire kanaal van de ondernemer), 80 tot 150 woorden
2. Een **e-mail aan een klant** (welkomstmail, follow-up of klantvraag-reactie), 100 tot 200 woorden
3. Een **website-tekst** (een hero-paragraaf of een dienst-uitleg), 80 tot 150 woorden

Presenteer de drie teksten en vraag via keuzeblok:
"Hoe klinken deze voorbeeldteksten?"
- "Perfect, dit is onze stem"
- "Bijna goed, kleine aanpassingen"
- "Nog niet helemaal, wil meer feedback geven"
- "Anders, namelijk..."

Verfijn op basis van feedback. Loop maximaal 2 verfijn-rondes door, daarna landen op het document.

### Stap 7: Document opslaan + hergebruik-tips

Stel het complete Tone of Voice-document samen met deze structuur:

```markdown
# Tone of Voice — <Bedrijfsnaam>

## Quick Reference Card
- Tone of Voice in één zin
- 3 tot 5 kernwoorden van de merkstem
- De gouden regel: "Als je twijfelt, kies dan voor..."

## Merkpersoonlijkheid
- Type-archetype + 3 tot 4 zinnen persona-omschrijving
- Karaktertrekken die wél passen
- Karaktertrekken die NIET passen

## Tone of Voice-dimensies
| Dimensie | Positie | Voorbeeldzin |
|---|---|---|
| Formeel ↔ Informeel | ... | ... |
| (alle 7 dimensies) | | |

## Taalgebruik & woordkeuze
- Aanspreking
- Vakjargon
- Zinslengte
- Humor
- Emoji's (indien van toepassing)
- Engelse woorden
- Power words
- Verboden woorden

## Do's & Don'ts
5 tot 10 paren met voorbeeldzinnen, "zo wel" / "zo niet"

## Per kanaal
Per gekozen kanaal: richtlijn + voorbeeldtekst

## Per situatie
Per gekozen situatie: voorbeeldtekst

## Schrijfregels
- Hoofdletters
- Getallen
- Actief / passief
- Em-dashes
- Zinslengte-limiet
- Overige regels

## Voorbeeldteksten (uit de check)
De drie definitieve voorbeeldteksten (social, e-mail, website)

## Bijhouden
Korte sectie: deze ToV is een levend document. Update bij grote merkverandering, na 12 maanden, of als er aantoonbaar veel buiten de stem geschreven wordt.
```

Sla het op als `{scope}/Directie/Playbook/Tone of Voice.md` (maak de Playbook-map aan als die nog niet bestaat).

Frontmatter:
```yaml
---
type: playbook
bedrijf: <Naam>
onderwerp: Tone of Voice
status: definitief (v1.0)
versie: 1.0
laatst bijgewerkt: YYYY-MM-DD
---
```

Onderaan een sectie **"Hergebruik van dit document"** met concrete suggesties:

- Welk deel deel je met een tekstschrijver / content-collega / freelancer
- Welk deel hangt naast je beeldscherm of in Notion als snel-check
- Welk deel voer je in een AI-systeemprompt zodat je content-AI automatisch in deze stem schrijft
- Welk deel gebruik je als kwaliteitscheck voor bestaande website-teksten

**Logging:**
1. Werk het bedrijfs-changelog bij: `{scope}/Directie/Changelog.md`
2. Werk de daily van vandaag bij onder *Gedaan vandaag → [Bedrijf]*
3. Als de scope een SCALE-audit-rapport heeft met S3 op ❌ of ⚠️: stel voor om de audit opnieuw te draaien, of werk de status handmatig bij naar ✅
4. Als de scope een `01 - Goals.md` heeft met een ToV-doel voor dit kwartaal: vink af / werk status bij
5. Als er een `brand-guidelines`-skill nog niet gedraaid is (S2 nog open): wijs daar op, want ToV en Brand Guidelines versterken elkaar

## Schrijfregels voor het output-document

Wanneer je het Tone of Voice-document zelf opstelt (Stap 7):

- Werk in het **Nederlands**, tenzij de Brand Guidelines van het bedrijf anders voorschrijven
- **Geen em-dashes** (—) in de prose. Gebruik gewone losse zinnen, komma's of haakjes
- **Geen marketing-superlatieven** ("revolutionair", "disruptief", "next-level", "game-changing"). Hou het feitelijk en menselijk
- **Concrete voorbeelden** > abstracte beweringen. "Schrijf 'wij maken AI werkbaar voor MKB' niet 'wij ontsluiten transformatieve potentie'" > "vermijd vakjargon"
- **Tweede persoon (je / jij)** in het document zelf (de gids leest mee als instructie naar de ondernemer), tenzij het bedrijf u-vorm hanteert
- **Kop-zinnen kort** (3 tot 6 woorden), helder, eigen aan het merk
- **Tabellen waar het kan**: dimensies, do's/don'ts, kanaalrichtlijnen, power words versus verboden woorden

## Cold-start en fictieve-klant modus

De skill is ontworpen als beurtsgewijs gesprek met vault-pre-fill. Bij twee situaties werkt dat anders:

**Autonome / 1-shot run** (bijvoorbeeld voor evaluaties, bulk-bouw of als de gebruiker expliciet "doe alles in 1 keer" zegt):
- Sla het interview over en gebruik wat in het prompt staat als enige bron.
- Vul ontbrekende velden in met realistische defaults plus expliciete `[VERIFICEREN]`-marker.
- Lever de complete deliverable, niet alleen aanbevelingen.
- Voeg onderaan een sectie "Open punten" toe met alle [VERIFICEREN]-velden, zodat de gebruiker weet wat hij later moet bevestigen.

**Fictieve klant of cold-start (geen bestaande vault):**
- Vraag NIET naar bedrijfsgegevens die in een eerste gesprek logisch te achterhalen zijn; gebruik wat in het prompt staat plus defaults.
- Schrijf de deliverable in de gevraagde output-map, niet in `{scope}/...`-paden.
- Vermeld cross-links naar andere SCALE-stappen als `[VERIFICEREN]` zonder ze in te vullen.
- Skip changelog-updates en daily-log-updates die normaal aan het eind gebeuren.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in de vault staat. Pre-fill-validatie in Stap 3 voorkomt dat
- **Schrijf nooit zomaar over een bestaand Tone of Voice.md heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden
- **Voorbeeldzinnen, geen abstracte regels.** Bij elke keuze die de ondernemer maakt: schrijf direct één voorbeeldzin in die stijl, zodat het verschil voelbaar wordt
- **Eerlijk bij inconsistenties.** Als de ondernemer "warm en persoonlijk" kiest maar ook "formeel en zakelijk", wijs op de spanning en help kiezen
- **Concreet > vaag.** Bij elk antwoord: vraag één keer door op een concreet detail (een woord, een voorbeeldzin, een merk-met-vergelijkbare-stem) als het te abstract blijft. Eén keer doorvragen, niet drie keer
- **200 woorden minimum** voor SCALE-audit S3. Doel hier is een document van 1500 tot 3000 woorden, inclusief tabellen en voorbeelden
- **Minstens 1 Do en 1 Don't met voorbeeldzin** is de SCALE-audit-eis. Doel hier is 5 plus 5
- **Respect voor de stem van de ondernemer.** Als hij of zij in het interview een specifieke uitdrukking gebruikt die past bij het merk ("we maken AI werkbaar", "geen hype-machine"): vang die op en verwerk in het document

## Voorbeeld-output

Bij de eerste live test op deze skill: voer de skill uit op Upscailed-scope. De output landt in `Bedrijven/Upscailed/Directie/Playbook/Tone of Voice.md` en kan dan dienen als referentie-voorbeeld voor toekomstige iteraties van deze skill.

Wat een goed ToV-document laat zien:
- Quick Reference Card van max 1 A4 die je naast je scherm kunt hangen
- Per dimensie een echte voorbeeldzin, niet alleen een schaal-positie
- Do's en Don'ts die naar voorbeeldzinnen verwijzen, geen abstracte regels
- Per kanaal duidelijk wat verschilt, niet alleen wat hetzelfde blijft
- Hergebruik-sectie die de stap maakt van document naar dagelijkse praktijk

## Wat dit niet is

- Geen volledige Brand Guidelines. Visuele identiteit (kleuren, typografie, logo, beeldgebruik) hoort in de `brand-guidelines`-skill
- Geen tekstschrijver-skill. Deze gids legt de regels vast, schrijft niet zelf alle content voor het bedrijf
- Geen marketing-strategie. Hoe vaak je post, op welke momenten, met welke campagnes, dat is een andere skill (content-roadmap of marketing-strategie)
- Geen rebrand-skill. Bij een grote merkverandering eerst de positionering opnieuw bepalen, daarna ToV bijwerken

## Changelog

### 2.2.0 — 2026-05-11

- Nieuwe sectie "Cold-start en fictieve-klant modus".

### 2.0.0 — eerdere release

- Major herziening met nieuwe template-structuur.

### 1.0.0 — initiele release

- Eerste productie-versie.
