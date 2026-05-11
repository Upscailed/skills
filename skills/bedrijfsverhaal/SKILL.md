---
name: bedrijfsverhaal
title: "Bedrijfsverhaal"
description: "Helpt een ondernemer in 30 tot 45 minuten het verhaal van zijn of haar bedrijf op papier te zetten via een gestructureerd interview in 5 blokken (aanleiding, wat je ziet bij klanten, mensen om je heen, naam, persoonlijk waarom). Begint altijd met een scan van bestaande documenten in de vault zodat dubbel werk wordt voorkomen. Output: een mens-eigen verhaal van 500 tot 1000 woorden in premium-warme stijl, opgeslagen als Directie/Playbook/Bedrijfsverhaal.md, direct herbruikbaar voor website-About, LinkedIn-bedrijfspagina, eerste klantgesprek en pitch decks. Activeer altijd wanneer iemand zegt: 'maak een bedrijfsverhaal', 'origin story schrijven', 'verhaal van mijn bedrijf', 'About-pagina tekst', 'waarom bestaat mijn bedrijf', 'ons verhaal op papier zetten', 'help mij vertellen waarom ik begonnen ben', 'how-it-started document'. Triggert ook bij 'S7 dichten' of 'gat in SCALE-audit voor verhaal'."
category: structure
tags: [verhaal, origin-story, structure, brand, communicatie, scale-framework, s7]
estimatedTime: "30-45 minuten"
version: "1.1.0"
author: Upscailed
license: MIT
---

# Bedrijfsverhaal

## Doel

Helpt een ondernemer om in 30 tot 45 minuten het verhaal van zijn of haar bedrijf op papier te zetten. Niet als marketingtekst, wel als de bron-van-waarheid waar alle communicatie op kan leunen: de website-About-pagina, de LinkedIn-bedrijfspagina, het eerste klantgesprek, een pitch deck, een workshop-introductie.

De skill werkt via een gestructureerd interview in **5 blokken**, één voor één, zodat de ondernemer per blok kan antwoorden zonder overspoeld te worden. Vóór het interview begint, scant de skill eerst de bestaande documenten in de vault zodat we niet vragen wat al ergens staat. Na het interview schrijft de skill het verhaal in een premium-warme stijl van 500 tot 1000 woorden, en slaat het op in `{scope}/Directie/Playbook/Bedrijfsverhaal.md` (of een sectie "Bedrijfsverhaal" in `00 - Overzicht.md` als die voorkeur heeft).

Resultaat: SCALE-audit S7 (Bedrijfsverhaal / Origin Story) springt van ❌ of ⚠️ naar ✅, en de ondernemer heeft één canonieke tekst die in alle communicatie hergebruikt kan worden.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  BEDRIJFSVERHAAL — SCALE-stap S7                          │
│  ~30-45 minuten · 5 interview-blokken                     │
└──────────────────────────────────────────────────────────┘

  Ik help je in 30 tot 45 minuten het verhaal van je bedrijf
  op papier te zetten. Niet als marketingtekst, wel als de
  bron waar al je communicatie op kan leunen: website-About,
  LinkedIn, eerste klantgesprek, pitch deck, workshop-intro.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 5 blokken interview (één per beurt, niet alles       │
  │    tegelijk):                                            │
  │      [1] Aanleiding & kantelpunt                        │
  │      [2] Wat zie je dat anderen niet zien               │
  │      [3] Mensen om je heen                              │
  │      [4] De naam                                         │
  │      [5] Persoonlijk waarom                             │
  │  • Vooraf scan ik je vault op alles wat al beschikbaar  │
  │    is (Goals, ICP, eerdere research, mentor-gesprekken) │
  │    en vraag ik je naar externe documenten — zodat we    │
  │    niets vragen wat al ergens staat                     │
  │  • Daarna schrijf ik het verhaal in premium-warme stijl │
  │    (500-1000 woorden) — Directie/Playbook/              │
  │    Bedrijfsverhaal.md                                    │
  └────────────────────────────────────────────────────────┘

  Heb je nog externe input (een eerdere About-pagina, blog
  over de oprichting, interview, oud pitch deck, LinkedIn-
  bedrijfspagina, website-tekst)? Dan kun je dat nu noemen,
  een URL plakken of tekst uploaden — ik haal eruit wat
  bruikbaar is voordat we het interview ingaan.
```

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  BEDRIJFSVERHAAL                                          │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Bronnen scannen   │  Wat staat er al?
   │                      │  (00-Overzicht, Goals,
   │                      │   research, meetings,
   │                      │   Over <stichter>)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Pre-fill tonen    │  Samenvatting van wat al
   │                      │  bekend is, ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Interview, blok   │  Per blok 1 vraag, wachten
   │    voor blok         │  op antwoord, dan volgende
   │                      │
   │  Blok 1: Aanleiding  │
   │  Blok 2: Wat je ziet │
   │  Blok 3: Mensen      │
   │  Blok 4: Naam        │
   │  Blok 5: Persoonlijk │
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Verhaal schrijven │  Premium-warme stijl,
   │                      │  500-1000 woorden
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Opslaan +         │  Directie/Playbook/Bedrijfsverhaal.md
   │    hergebruik-tips   │  + voorstel kanalen
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Maak een bedrijfsverhaal" of "schrijf ons verhaal"
- "Help me een origin story op papier zetten"
- "Ik wil de About-pagina van de website schrijven"
- "Waarom bestaat mijn bedrijf eigenlijk?"
- "Ik wil aan klanten beter kunnen uitleggen waarom ik dit doe"
- "Hoe vertel ik wat mij dreef toen ik begon?"
- "Het S7-gat in mijn SCALE-audit dichten" / "Bedrijfsverhaal voor S7"

Triggert NIET wanneer:
- De gebruiker een product- of dienstbeschrijving wil (gebruik dan een andere skill, bijv. een toekomstige `producten-pricing`)
- De gebruiker een Brand Guidelines wil opbouwen (gebruik `brand-guidelines`)
- De gebruiker zijn jaardoelen wil vastleggen (gebruik `doelen-coach`)

## Workflow

### Stap 1: Scope kiezen

Vraag aan welk bedrijf het verhaal hoort. Bied opties op basis van wat in de vault zichtbaar is:

- Elke `Bedrijven/[Bedrijf]/`-map die bestaat
- De directe bedrijfsnaam-map als top-level (bij solopreneurs)
- Of een opgegeven pad

Bevestig de gekozen scope voordat je doorgaat.

Controleer of er al een bestand bestaat:
- `{scope}/Directie/Playbook/Bedrijfsverhaal.md`
- of een sectie "Bedrijfsverhaal" of "Achtergrond" in `{scope}/Directie/00 - Overzicht.md`

Als er al een `Bedrijfsverhaal.md` bestaat: vraag of dit een **eerste versie** is (vorige overschrijven), een **update** (aanvullen op basis van wat er staat), of een **nieuwe iteratie** (oude archiveren als `Bedrijfsverhaal - archief YYYY-MM-DD.md`).

### Stap 2: Bestaande bronnen scannen

Lees systematisch de volgende documenten als ze bestaan, en vat daarna samen wat je gevonden hebt over wat al gezegd is over het verhaal:

| Bron | Wat je eruit haalt |
|---|---|
| `{scope}/Directie/00 - Overzicht.md` | Missie, propositie, doelgroep, status, naam-betekenis |
| `{scope}/Directie/01 - Goals.md` | Hoofd-Why, driejaarvisie, jaardoelen, hoofd-doel ("waar willen we naartoe") |
| `{scope}/Directie/Research/*.md` | Brainstorms, marktonderzoek, mentorgesprekken |
| `{scope}/Directie/Meetings/*.md` | Sleutelgesprekken met partners, mentoren, eerste klanten |
| `{scope}/Directie/Playbook/Brand Guidelines.md` | Persoonlijkheid, stijl, woordkeuze die het verhaal moet ademen |
| **Optioneel:** een stichter-profiel of "Over [Naam]"-bestand als de gebruiker zo'n bestand heeft (vraag actief — paden variëren per vault: `Persoonlijk/Over [Naam].md`, `{scope}/Directie/Over [Eigenaar].md`, of een About-pagina-URL). Skip stilletjes als nergens te vinden. | Achtergrond stichter, visie, waarden, gezin, hobby's |
| `{scope}/Directie/Playbook/ICP.md` of een centraal ICP-bestand als die in de vault zit | Doelgroep + pijnpunten + niet-ideale klanten |
| **Optioneel:** een cross-bedrijf strategie-bestand als de gebruiker meerdere bedrijven heeft (vraag actief). Skip stilletjes als enkel-bedrijf-context. | Cross-bedrijf richting, dwarsverbanden |
| **Optioneel:** een centraal afsprakenbestand met personen-namen (vraag actief — bv. `Persoonlijk/Afspraken AI.md` of een Notion-page). Skip stilletjes als dit nergens bestaat. | Mede-oprichters, mentoren, rollen |

Maak een interne aantekening per bron: wat er staat, en wat er specifiek raakt aan het verhaal.

**Plus: extern materiaal opvragen.** Vraag aan het einde van deze stap actief of de gebruiker externe documenten of bronnen heeft die het verhaal voeden — een eerdere About-pagina (URL), een blogpost over de oprichting, een interview, een ouder pitch-deck, een LinkedIn-bedrijfspagina, een website-tekst. URL's mag je via web-fetch ophalen, PDF's of geplakte tekst mag de gebruiker direct aanleveren. Voeg alles toe aan de samenvatting in stap 3 — voor veel ondernemers staat een groot deel van hun verhaal al ergens, alleen versnipperd.

### Stap 3: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je al gevonden hebt, gegroepeerd per thema:

- **Aanleiding & visie:** wat staat er al over de why
- **Doelgroep & pijn:** wat is er al bekend over wie ze helpen en waarmee
- **Mensen:** mede-oprichters, mentoren, rollen
- **Naam:** als de naam een betekenis heeft of een rebrand-historie
- **Methodiek/aanpak:** als het bedrijf een eigen framework heeft
- **Persoonlijke context:** uit het stichter-profiel

Vraag bevestiging: "Klopt dit beeld? Wil je nog iets toevoegen of corrigeren voordat we de gaten gaan invullen?"

Dit voorkomt dat het interview vragen stelt waarvan het antwoord al ergens in de vault staat.

### Stap 4: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**. Wacht op het antwoord. Dán pas het volgende blok. Niet alle blokken tegelijk neerzetten, dat overweldigt.

**Blok 1 — Aanleiding & kantelpunt**
> "Was er een specifiek moment of gesprek dat het kantelpunt vormde van *'ik gebruik dit zelf'* of *'ik denk hierover na'* naar *'dit ga ik aan andere mensen aanbieden'*? Een ervaring met een klant, een opmerking die bleef plakken, een artikel dat het kwartje deed vallen? Of is het meer een geleidelijk besef geweest dat over maanden of jaren is gegroeid?"

Doel: een opening voor het verhaal die voelt als een echte aanleiding, niet als marketingpraat.

**Blok 2 — Wat zie je dat anderen niet zien**
> "Vanuit jouw werk en netwerk zie je iets dat veel anderen niet zien, of nog niet zien. Welke pijn, inefficiëntie of gemiste kans van klanten/MKB-ondernemers/jouw doelgroep ken je zo goed omdat je hem keer op keer ziet langskomen? Probeer een of twee voorbeelden te noemen die je écht herkent uit de praktijk."

Doel: concrete observaties die lezers laten denken *"hé, dat ben ik"*.

Voorbeelden om te tonen ter inspiratie als de ondernemer abstract blijft:
- "Ze typen elke maand dezelfde mail uit"
- "Ze hebben rapportages waarvan ze pas drie weken te laat zien dat er iets mis ging"
- "Ze besteden zaterdagochtend nog uren aan offertes terwijl het ook in 10 minuten kan"

**Blok 3 — Mensen om je heen**
> "Welke mensen staan er rond dit bedrijf, en hoe zijn ze in beeld gekomen? Mede-oprichters, mentoren, eerste klanten, vroege ondersteuners. Per persoon kort: hoe ken je hem of haar, wat brengt diegene dat jij niet hebt, en waarom is hij/zij belangrijk voor het verhaal?"

Doel: laat zien dat het bedrijf niet uit het niets ontstaat, maar uit een netwerk van betekenisvolle relaties.

Specifieke vraag voor de skill: vraag door op **hoe** mensen elkaar leren kennen (concreet moment of context, bijv. "via sport", "via een netwerkavond", "via een gemeenschappelijke kennis"). Die details maken het verhaal warm.

**Blok 4 — De naam**
> "Hoe is de naam van het bedrijf ontstaan? Was er een moment van *'ja, dit is het'*? Een paar opties die je tegen je netwerk hebt aangehouden? Een betekenis achter de letters of klanken? En als de naam ooit gewijzigd is (rebrand): wat zat daarachter?"

Doel: de naam als betekenisdrager, niet als willekeurige label.

Skip dit blok als de naam triviaal is (bijv. de eigen achternaam zonder verhaal). Vraag dat eerst: "Heeft de naam een betekenis of geschiedenis die je wilt vertellen, of is het de kortste route geweest?"

**Blok 5 — Het persoonlijke waarom**
> "De bedrijfsvisie kennen we al uit de Goals. Maar een goed verhaal raakt ook aan de menskant: als dit bedrijf over een paar jaar staat zoals jij het voor je ziet, wat doe je dán wat je nu nog niet doet? Welke ruimte win je terug, en waar wil je die voor inzetten? Mag heel concreet: tijd met gezin, een hobby, reizen, vrijwilligerswerk, geloof, sport, iets anders."

Doel: de menselijke laag die het verhaal van marketing-tekst naar mens-eigen tekst tilt.

**Optionele Blok 6 — Wat dit voor klanten betekent (alleen als nog niet helder uit Blok 1-2)**
> "Als je het verhaal afsluit, wat is dan het ene zinnetje dat je een klant wilt meegeven? Niet wat jij verkoopt, wel wat jij hen gunt."

Gebruik dit alleen als de eerste 5 blokken nog geen heldere gunning of belofte voor de klant hebben opgeleverd.

### Stap 5: Het verhaal schrijven

Schrijf het verhaal in **premium-warme stijl**. Lengte: 500 tot 1000 woorden. Houd je aan de Brand Guidelines van het bedrijf in kwestie als die er zijn. Voorbeeld (Upscailed-toepassing): warm, ambitieus, rustig, geen schreeuwerig AI-hype-jargon. Pas dit per bedrijf aan op basis van de eigen Brand Guidelines en Tone of Voice.

**Structuur (als richtlijn, niet als keurslijf):**

1. **Opening** — De vraag/aanleiding waar het mee begon. Direct concreet, geen *"In een wereld waarin..."*.
2. **De ontdekking** — Wat de stichter ontdekte (vaardigheid, inzicht, methodiek).
3. **Wat hij/zij om zich heen ziet** — Concrete observaties bij de doelgroep. Met voorbeelden.
4. **Mede-oprichters** — Hoe het team is ontstaan. Concrete details (waar, wanneer, hoe).
5. **Mentoren / steun-figuren** — Wie helpt zonder mede-eigenaar te zijn.
6. **De naam** — Korte sectie met betekenis en eventuele rebrand-historie.
7. **De methodiek/aanpak** — Wat is uniek aan hoe dit bedrijf werkt.
8. **Waar dit naartoe wil** — Visie 3 tot 5 jaar vooruit, gekoppeld aan Goals.
9. **Persoonlijk waarom** — Wat het persoonlijk oplevert voor de stichter(s).
10. **Slot** — Eén regel die de belofte voor klanten samenbalt.

**Schrijfregels:**

- Werk in het **Nederlands**, tenzij de Brand Guidelines anders voorschrijven.
- **Geen em-dashes** (—). Gebruik gewone losse zinnen, komma's of haakjes.
- **Geen marketing-superlatieven** ("revolutionair", "disruptief", "next-level", "game-changing"). Hou het feitelijk en menselijk.
- **Concrete details** > abstracte beweringen. Voorbeeld (uit Upscailed-toepassing): *"Ramon kwam wekelijks sporten in Iwan's thuis-gym"* > *"Ramon werd benaderd voor samenwerking"*. Voor jouw bedrijf: vervang met concrete situaties uit je eigen ontstaansgeschiedenis.
- **Tweede persoon vermijden** in het hoofdverhaal. Schrijf in derde persoon (eigen + medeoprichter-namen), of in eerste persoon als de ondernemer dat wil ("ik begon...", "wij ontdekten..."). Vraag bij Stap 3 welke vorm de voorkeur heeft.
- **Kop-zinnen kort** (3 tot 6 woorden) en in eigen stijl, niet generiek ("De aanleiding" ja, "Hoofdstuk 1" nee).
- **Storytelling-volgorde** belangrijker dan strikte chronologie.

### Stap 6: Opslaan + hergebruik-tips

Sla het verhaal op als `{scope}/Directie/Playbook/Bedrijfsverhaal.md` (maak de Playbook-map aan als die nog niet bestaat).

Frontmatter:
```yaml
---
type: playbook
bedrijf: <Naam>
onderwerp: Bedrijfsverhaal
status: definitief (v1.0)
versie: 1.0
laatst bijgewerkt: YYYY-MM-DD
---
```

Onderaan een sectie **"Hergebruik van dit verhaal"** met concrete suggesties per kanaal:

- Welke secties geschikt voor de website-About (lange en korte versie)
- Welke alinea als korte versie voor LinkedIn-bedrijfspagina (~120 woorden)
- Hoe in te zetten bij eerste klantgesprek
- Welke onderdelen voor pitch deck
- Eventueel workshop-introductie of speech-opener

Plus een sectie **"Bijhouden"** die uitlegt dat het verhaal een levend document is, en welke mijlpalen aanleiding zijn voor een update (eerste klant, eerste partnership, BV-oprichting, naam-wijziging, nieuwe medeoprichter).

Logging:
1. Werk het bedrijfs-changelog bij: `{scope}/Directie/Changelog.md` (of `Persoonlijk/Changelog.md` voor cross-bedrijf).
2. Werk de daily van vandaag bij onder *Gedaan vandaag → [Bedrijf]*.
3. Als de scope een Goals-bestand heeft met S7-doel: vink die af / werk status bij.
4. Als er een SCALE-audit in `Directie/Research/` staat met S7 op ❌ of ⚠️: stel voor om de audit opnieuw te draaien om de update zichtbaar te maken in de score.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in de vault staat. Pre-fill-validatie in Stap 3 voorkomt dat.
- **Schrijf nooit zomaar over een bestaand `Bedrijfsverhaal.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Concreet > abstract.** Bij elk antwoord: vraag een keer door op een concreet detail (een naam, een plek, een datum, een voorbeeld) als het te abstract blijft. Eén keer doorvragen, niet drie keer.
- **Respect voor de stichter's stem.** Het verhaal moet voelen alsof hij of zij het zelf had kunnen schrijven. Niet alsof er een tekstschrijver bovenop is gezet.
- **Geen marketing-trucjes.** Geen "imagine if...", geen "what if...", geen rhetorische vragen aan het begin van een sectie. Recht voor zijn raap, warm.
- **150 woorden minimum** voor SCALE-audit S7. Doel hier is 500 tot 1000.

## Voorbeeld-output

Zie [`Bedrijven/Upscailed/Directie/Playbook/Bedrijfsverhaal.md`](../../Directie/Playbook/Bedrijfsverhaal.md) — het bedrijfsverhaal van Upscailed, geschreven met deze skill als eerste live test-case op 2026-05-08.

Wat dat voorbeeld goed laat zien:
- Concrete data en namen (datum rebrand, naam Ramon, naam Siebren, locatie thuis-gym)
- Persoonlijke laag (Mirjam, kinderen, CrossFit, De Ark, ideale dag van 6:00 tot 12:00)
- Ijsberg-metafoor uit Iwans eigen woorden
- Brug van pijn-bij-MKB → eigen oplossing → wat de klant gegund wordt
- Hergebruik-sectie met 5 concrete kanalen
