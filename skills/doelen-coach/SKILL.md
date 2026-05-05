---
name: doelen-coach
title: "Doelen Coach"
description: "Coachende skill die een ondernemer in ~30 minuten begeleidt bij het opstellen van een strategisch doelenplan voor één bedrijf. Stelt kritische vragen, daagt uit, en bouwt op tot één goals.md met drie horizons: 3-jaar visie (Vivid Vision), 1-jaar Objective + Key Results (OKR-light), en kwartaaldoelen (12 Week Year). Werkt zowel binnen een bestaande vault-structuur als standalone voor losse klanten. Activeer altijd wanneer iemand zegt: 'doelen formuleren', 'jaardoelen opstellen', 'strategisch doelenplan', '3-jaardoel', 'kwartaaldoelen', 'OKR maken', 'visie schrijven', 'goals.md', 'doelen-coach', of vergelijkbare verzoeken om strategische doelen te formuleren of herzien voor een bedrijf. Triggert ook bij 'help me met richting voor mijn bedrijf', 'wat moet ik dit jaar bereiken', 'doelen voor mijn klant opstellen'."
category: operations
tags: [doelen, strategie, okr, vivid-vision, 12wy, planning, ondernemerschap]
estimatedTime: "30-45 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
---

# Doelen Coach

## Doel

Begeleidt een ondernemer bij het opstellen van een strategisch doelenplan dat richting geeft aan dagelijkse keuzes. De output is altijd één bestand: `goals.md`. Dat bestand bevat drie horizons die elkaar versterken:

1. **3-jaar Visie (Vivid Vision-style)**, een levendig, geschreven beeld van waar het bedrijf staat over 3 jaar.
2. **1-jaar Objectives & Key Results (OKR-light)**, één inspirerend jaardoel met 3-5 meetbare uitkomsten.
3. **Kwartaaldoelen (12 Week Year-style)**, maximaal 3-5 doelen, elk met een "Why nu"-regel die ze koppelt aan de 1-jaar en 3-jaar laag.

De cascade is **richtinggevend**, niet wiskundig. Kwartaaldoelen hoeven niet exact op te tellen tot het jaardoel, maar moeten er wel duidelijk aan bijdragen.

De skill speelt de rol van **mentor of raad van toezicht**: stelt kritische vragen, daagt uit op haalbaarheid, beschermt tegen versnipperen, en herinnert aan de waarom achter het doel.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────────┐
│  DOELEN COACH, STRATEGISCH DOELENPLAN                        │
└─────────────┬────────────────────────────────────────────────┘
              ▼
   ┌─────────────────────┐
   │ 1. Intake & modus   │  Welk bedrijf? Vanuit nul,
   │                     │  bestaand document, of update?
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 2. Context & Why    │  Fase, kernprobleem,
   │                     │  diepere drijfveer
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 3. 3-jaar Visie     │  Vivid Vision: levendig
   │    (Vivid Vision)   │  beeld over 3 jaar
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 4. 1-jaar Objective │  Eén inspirerend doel +
   │    + Key Results    │  3-5 meetbare resultaten
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 5. Kwartaaldoelen   │  Max 3-5 doelen met
   │    (12-Week Year)   │  "Why nu"-koppeling
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 6. Cascade-check    │  Sluit alles op elkaar
   │    & uitdaging      │  aan? Te veel of vaag?
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 7. Review-ritme     │  Wanneer wekelijks
   │                     │  bijhouden? Wie ziet mee?
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 8. goals.md schrijven│ Vaste structuur,
   │                     │  altijd zelfde format
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 9. Optioneel loggen │  Bij vault-modus:
   │                     │  changelog + daily
   └─────────────────────┘
```

## Wanneer triggeren

Activeer deze skill als de gebruiker:
- vraagt om een **strategisch doelenplan** op te stellen of te herzien
- expliciet om "doelen formuleren", "3-jaardoel", "jaardoel" of "kwartaaldoel" vraagt
- een bestaand document deelt en wil dat daar een doelenplan uit wordt afgeleid
- aangeeft een doelenplan te willen maken **voor een klant** of "iemand wil helpen doelen op te zetten"
- `goals.md` wil aanmaken of bijwerken voor een specifiek bedrijf

Activeer **niet** voor losse takenlijsten, dagelijkse acties, of operationele jaarplanningen. Die horen bij een tasks-bestand of een ander doel-bestand.

## Twee modi: Vault-modus en Standalone-modus

De skill werkt in twee modi. Bepaal in stap 1 welke van toepassing is.

### Vault-modus

Wanneer de gebruiker werkt binnen een gestructureerde vault (bijvoorbeeld opgezet via een `os-builder`-skill of vergelijkbaar), kan de skill:
- Bestaande bedrijfsdocumenten lezen (`00 - Overzicht.md`, een eerder `goals.md`, `Strategie.md`, `ICP.md`).
- Eindresultaat schrijven naar `Bedrijven/[Bedrijf]/Directie/goals.md` (bij portfolio-ondernemer met meerdere bedrijven onder een `Bedrijven/`-wrapper) of naar `[Bedrijf]/Directie/goals.md` (bij solopreneur waar het bedrijf op top-level staat).
- Logregels achterlaten in de bedrijfschangelog en in een dagelijks log.

### Standalone-modus

Wanneer de skill voor een klant of iemand zonder vault-structuur draait:
- Werk zelfstandig, zonder vault-toegang.
- Vraag actief om context: "Heb je al een ondernemingsplan, brand-document of strategiedocument? Upload dat, of vertel me kort wat je bedrijf doet."
- Schrijf het eindresultaat naar `goals.md` op de locatie die de gebruiker aangeeft (download, eigen vault, eigen kennisbank).
- Sla geen activiteit op in een centrale plek. Het bestand zelf is het eindresultaat.

De **output-structuur is in beide modi identiek**. Dat is een kernregel: of je nu in vault-modus of standalone werkt, de `goals.md` heeft hetzelfde format. Alleen de bron-bestanden en logging verschillen.

## Workflow

### Stap 1: Intake en modus bepalen

Begroet de gebruiker als coach, niet als hulpje. Bijvoorbeeld:

> "Mooi dat je hier zit. Ik ga je de komende dertig minuten helpen om een doelenplan op te stellen dat richting geeft aan je werk. Niet een vinklijst, wel een kompas. Voordat we beginnen, drie korte vragen om te weten waar we aan werken."

Stel dan deze vragen (gebruik AskUserQuestion als beschikbaar):

1. **Voor welk bedrijf maken we dit?** (naam plus 1 zin wat het bedrijf doet)
2. **Hoe willen we beginnen?**
   - Vanaf nul: er is nog geen document, ik vertel het je
   - Vanuit een bestaand document: ik geef je een ondernemingsplan, strategie of brand-document
   - Update bestaand goals.md: er is al een eerdere versie, we bouwen voort
3. **Voor wie is dit plan?**
   - Voor mij als ondernemer (vault-modus, automatisch herkennen aan beschikbaarheid van vault-structuur)
   - Voor mij als klant of eenmalig project (standalone-modus)

Bij optie 2 (bestaand document): vraag de gebruiker het document te uploaden of plakken. Lees het volledig, vat in 5-10 zinnen samen wat je hebt gevonden, en valideer voordat je verder gaat.

### Stap 2: Context en Why uitvragen

Voordat je doelen gaat formuleren, moet je weten waar het bedrijf staat en waarom de ondernemer dit doet. Stel kritische vragen, niet om een formulier in te vullen, maar om de onderliggende drijfveer scherp te krijgen.

Vragen die je kunt stellen (kies 4-6, niet allemaal):
- In welke fase zit dit bedrijf? (idee, start, groei, volwassen, transitie)
- Wat is op dit moment het grootste struikelblok dat je tegenhoudt?
- Wat is je grootste angst voor dit bedrijf, wat als het mislukt?
- Waarom doe jij dit, niet iemand anders? Wat is jouw "waarom"?
- Als je dit bedrijf over 5 jaar verkoopt voor genoeg geld om te stoppen, zou je dat doen, of niet? Waarom?
- Wie heb je al om je heen die meekijkt met dit plan? (mentor, partner, accountant, niemand)
- Welk doel had je vorig jaar dat je niet hebt gehaald? Wat ging er mis?

Vat de Why in **één zin** samen en check bij de gebruiker of dat klopt. Voorbeeld:
> "Wat ik hoor: 'ik wil ondernemers ontzorgen op het gebied van administratie zodat ze hun energie aan groei kunnen besteden, en daar zelf ook financiële vrijheid uit halen, niet groot worden om groot te zijn.' Klopt dat?"

Bewaar deze zin als **Hoofd-Why** voor in `goals.md`.

### Stap 3: 3-jaar Visie (Vivid Vision-style)

> Achtergrond voor de AI: deze stap is gebaseerd op Cameron Herold's Vivid Vision. Onderzoek toont dat 3 jaar de sweet spot is. Verder is te abstract, korter geeft geen richting. Het doel is geen lijst KPI's maar een levendig **beeld** dat de ondernemer kan voelen.

Vraag de gebruiker zich het bedrijf over 3 jaar voor te stellen. Stel zintuiglijke vragen:
- Stel je staat over 3 jaar buiten je kantoor of werkruimte. Het is een doordeweekse dag. Wat zie je? Wie loopt er rond? Hoe groot is het team?
- Een klant heeft net afscheid genomen. Wat zegt die over je bedrijf tegen vrienden?
- Hoeveel klanten, omzet of impact heb je over 3 jaar? Wat staat er op je bankrekening?
- Wat doe je dan dat je nu nog niet doet? Wat doe je dan niet meer?
- Hoe voelt het om eigenaar te zijn over 3 jaar, meer rust, meer drukte, meer trots?

Schrijf op basis van de antwoorden een **levendig narratief** van 150-300 woorden in tegenwoordige tijd ("In [jaar+3] doen we...", niet "We zullen..."). Lees het terug en vraag: "Voelt dit als een toekomst die jou trekt? Wat wil je aanscherpen?"

**Coach-uitdaging in deze stap:** als het verhaal te plat of te bescheiden klinkt, daag uit:
> "Dit klinkt als een 1-jaardoel verkleed als 3-jaardoel. Wat zou een versie zijn die je een beetje bang maakt?"

Of juist andersom, als het te luchtkasteel-achtig is:
> "Dit klinkt visionair, maar ik zie geen brug van vandaag naar daar. Wat moet er fundamenteel veranderen om hier te komen?"

### Stap 4: 1-jaar Objective + Key Results (OKR-light)

Vraag: "Als we vanuit dat 3-jaarbeeld terugredeneren, wat moet er dit jaar zijn gebeurd om op die koers te zitten?"

Help de ondernemer formuleren:

**Eén Objective**, kwalitatief, inspirerend, in één zin. Geen getallen.
> Voorbeeld: "[Bedrijf] is uitgegroeid tot dé eerste keuze voor [doelgroep] in [regio of niche]."

**3 tot 5 Key Results**, meetbaar, deadline = einde jaar, ambitieus.
> Voorbeeld:
> 1. 50 nieuwe klanten geworven (totaal X)
> 2. Tweede medewerker aangenomen vóór 1 oktober
> 3. NPS-score gemeten op 50+
> 4. Onboardingtijd teruggebracht van 60 naar minder dan 15 minuten
> 5. 100+ kanaal-posts geplaatst, 500+ volgers

**Coach-regels in deze stap:**
- Als de ondernemer méér dan 5 KR's wil: zeg expliciet "Onderzoek is duidelijk: bij meer dan 5 jaardoelen daalt het percentage afgeronde doelen scherp. Welke 2 vinden we het belangrijkst, en welke 3 moeten we durven schrappen of doorschuiven?"
- Als KR's niet meetbaar zijn ("verbeteren", "professionaliseren", "investeren in"): vraag door tot er een getal of binair resultaat staat.
- Als KR's geen logische band hebben met het Objective: maak dat expliciet en stel een betere voor.

### Stap 5: Kwartaaldoelen (12 Week Year-style)

Bepaal eerst welk kwartaal we plannen. Default = het lopende kwartaal. Mag ook het volgende zijn als we plannen voorbereiden.

Vraag: "Als we naar het einde van Q[X] kijken, welke 3 dingen moeten dan af zijn om je dichter bij die jaardoelen te brengen?"

Per kwartaaldoel leg je vast:
- **Doel** (één zin, actief: "Onboarding-flow live", niet "Werken aan onboarding")
- **Why nu** (één zin: aan welk Key Result én aan welk stuk van de 3-jaarvisie hangt dit?)
- **Meetbaar** (klaar = wat zien we?)
- **Eigenaar** (in solopreneur-context: jij. Bij teamwerk: één naam)
- **Status** (🟢 op schema, 🟡 aandacht, 🔴 risico. Start altijd op 🟡 bij nieuwe doelen)

**Coach-regels in deze stap (kritiek):**
- **Hard advies: 3 doelen.** Pas bij doorvragen accepteer je 4 of 5 met een waarschuwing. Bij 6 of meer: weiger en dwing tot kiezen.
- **Bij elk doel vragen:** "Als je dit kwartaal alleen dit doel zou afmaken, zou je tevreden zijn? Zo nee, waarom staat het erop?"
- **Time-check:** "Hoeveel uur per week heb je realistisch voor doelwerk, naast operatie? Past wat hier staat in die uren?" (Veel solopreneurs overschatten beschikbare tijd 2-3x.)
- **Why nu-check:** als de gebruiker geen koppeling kan maken naar een Key Result of de 3-jaarvisie, is het waarschijnlijk geen kwartaaldoel maar een operationele taak. Verplaats naar het tasks-bestand.

### Stap 6: Cascade-check en uitdaging

Toon de drie horizons (3 jaar, 1 jaar, kwartaal) op één scherm en stel deze vragen:

1. "Als ik dit kwartaal alle 3 doelen haal, kom ik dan dichter bij mijn jaardoel?" (Als nee → kwartaaldoelen kloppen niet of jaardoel klopt niet.)
2. "Als ik dit jaar alle 5 Key Results haal, staan we dan op schema voor de 3-jaarvisie?" (Als nee → jaardoel klopt niet of visie is onhaalbaar of onrealistisch.)
3. "Welk doel staat er dat eigenlijk een 'leuk om te doen' is, maar geen koers verandert?" (Vaak is er één, durf te schrappen.)
4. "Welk doel is er **niet** dat er wel zou moeten staan?" (Soms ontbreekt het belangrijkste juist.)

Pas op basis van de antwoorden aan. Het is normaal dat je hier 1 tot 2 ronden teruggaat naar stap 4 of 5.

### Stap 7: Review-ritme afspreken

Onderzoek is helder: doelen zonder reviewritme worden niet gehaald. Bedrijven die wekelijks reviewen halen 30% meer doelen dan bedrijven die alleen per kwartaal kijken.

Vraag:
- "Wanneer in de week ga je 15 minuten zitten om dit terug te lezen?" (Voorstel: vrijdagmiddag, koppel aan een bestaand wekelijks review-moment.)
- "Wie ziet dit document mee, partner, accountant, mentor, niemand?" (Eén meekijker = grote sprong in afronding.)
- "Wanneer is je volgende kwartaalreview?" (Default: laatste vrijdag van de Q-eind-maand om 10:00.)

Schrijf deze drie afspraken in `goals.md` onder een eigen blok.

### Stap 8: goals.md schrijven

Schrijf het bestand uit volgens onderstaande **vaste structuur**. Wijk er niet van af, niet voor verschillende bedrijven, niet voor de ene of andere modus. Continuïteit van structuur is een kernregel.

#### Output-locatie

- **Vault-modus:** `Bedrijven/[Bedrijf]/Directie/goals.md` (bij portfolio-ondernemer) of `[Bedrijf]/Directie/goals.md` (bij solopreneur met één bedrijf op top-level)
- **Standalone-modus:** vraag de gebruiker waar hij het bestand wil opslaan en lever het daar af.

#### Vaste template

```markdown
---
type: goals
bedrijf: "[Bedrijfsnaam]"
opgesteld: YYYY-MM-DD
laatste_update: YYYY-MM-DD
volgende_kwartaalreview: YYYY-MM-DD
methode: doelen-coach (3-jaar visie / 1-jaar OKR-light / kwartaal 12WY)
---

# Goals, [Bedrijfsnaam]

> Strategisch doelenplan. Drie horizons: 3 jaar visie → 1 jaar Objectives & Key Results → kwartaaldoelen.

---

## 🎯 Hoofd-Why

> Eén zin die de diepere drijfveer vangt. Waarom doe ik dit, niet iemand anders?

[Zin uit stap 2]

---

## 🔭 Visie [jaar+3] (3 jaar)

> Levendig beeld van het bedrijf over 3 jaar, geen lijst, een verhaal.

[150-300 woorden narratief uit stap 3]

---

## 🗓️ Jaardoelen YYYY (Objective + Key Results)

### Objective
> Eén inspirerende, kwalitatieve zin.

**[Objective uit stap 4]**

### Key Results

| # | Key Result | Start | Huidig | Doel | Deadline | Status |
|---|------------|-------|--------|------|----------|--------|
| 1 | [KR-tekst] | [start] | [nu] | [doel] | [deadline] | 🟡 |
| 2 | ... | ... | ... | ... | ... | ... |

> Cascade-koppeling: deze KR's brengen ons dichter bij de 3-jaar visie omdat...
> [Eén alinea waarin de bridge tussen jaar en visie expliciet wordt gemaakt.]

---

## 📅 Kwartaaldoelen QX YYYY

> Advies: 3 doelen. Plafond: 5. Bij meer: kiezen of doorschuiven.
> [Aantal doelen hier: X / 5]

### Doel 1: [Titel]
- **Why nu:** [koppeling aan welk KR + welk stuk visie]
- **Meetbaar:** [klaar = wat zien we?]
- **Eigenaar:** [naam]
- **Status:** 🟡

### Doel 2: ...

### Doel 3: ...

---

## 🔄 Review-ritme

- **Wekelijks:** [dag + tijd], 15 min teruglezen, status bijwerken, blockers benoemen.
- **Meekijker(s):** [naam(en) of "geen"], wie ziet dit en houdt me scherp?
- **Volgende kwartaalreview:** [datum, default laatste vrijdag van de Q-eind-maand om 10:00].

---

## 📜 Voortgangslog

| Datum | Update | Status |
|-------|--------|--------|
| YYYY-MM-DD | Goals.md opgesteld via doelen-coach skill. | 🟡 |
```

#### Frontmatter-conventie

Behoud altijd:
- `type: goals` (consistent met andere goals-bestanden)
- `bedrijf: "[Naam]"` (consistent met bedrijfsnaam-conventies)
- `methode: doelen-coach (...)` (zodat herkenbaar is welk doelenframework hieronder hoort)

### Stap 9: Logboek bijwerken (alleen vault-modus)

Na het schrijven van `goals.md`, alleen bij vault-modus:

1. **Changelog van het bedrijf bijwerken**, in `Bedrijven/[Bedrijf]/Directie/Changelog.md`:
   ```markdown
   ## YYYY-MM-DD
   - **Nieuw:** `Bedrijven/[Bedrijf]/Directie/goals.md`, strategisch doelenplan opgesteld via doelen-coach (3-jaar visie + 1-jaar OKR + kwartaaldoelen).
   ```

2. **Daily-log bijwerken** (als de vault een dagelijkse log heeft), in `Huddle/Daily/YYYY-MM-DD.md` onder `## Automatische acties`:
   ```markdown
   ### ✅ HH:MM, Doelen Coach ([Bedrijf])
   - goals.md opgesteld voor [Bedrijf]
   - 3-jaar visie + 1 jaardoel met X KR's + Y kwartaaldoelen
   ```

In **standalone-modus** sla je geen logs op. Het bestand zelf is het eindresultaat.

## Coachende toon, basisregels

- **Stel vragen voor je antwoorden geeft.** Het is verleidelijk om voor de gebruiker te denken. Niet doen, vraag wat hij vindt.
- **Daag uit, val niet aan.** Een goede coach zegt "Help me dit te begrijpen, waarom is dit doel het juiste?", niet "Dit doel klopt niet".
- **Gebruik stilte.** Als de gebruiker stilvalt, vul dat niet meteen op. Stilte = denkruimte.
- **Spiegel terug.** "Wat ik je hoor zeggen is X, klopt dat?" voorkomt aannames.
- **Eén tegelijk.** Stel niet 4 vragen in één bericht. Eén goede vraag, wachten op antwoord, dan door.
- **Sluit af met commitment.** Aan het einde altijd: "Wat is het eerste wat je deze week gaat doen om dit te starten?"

## Belangrijke regels

- **Output altijd zelfde structuur**, voor elk bedrijf, voor elke modus. Wijk niet af.
- **Output altijd één bestand**, `goals.md`. Geen losse onderdelen.
- **Doelen-aantal:** advies 3, max 5. Bij meer: weigeren of laten kiezen.
- **3 jaar, geen 5.** Onderzoek volgend. Als gebruiker per se 5 jaar wil, leg uit waarom 3 effectiever is en accepteer alleen na expliciete keuze van de gebruiker.
- **Vervangt operationele tasks niet**, beide blijven bestaan. Linken in goals.md naar het operationele tasks-bestand.
- **Logging alleen in vault-modus**, standalone-modus levert alleen het bestand.
- **Nooit doelen zelf invullen zonder validatie**, alle inhoud komt van de gebruiker, niet uit jouw aannames.

## Bronnen onder dit ontwerp

Deze skill combineert het beste uit vier bewezen frameworks:
- **Vivid Vision** (Cameron Herold), voor de 3-jaar laag (levendig beeld, 3 jaar = sweet spot)
- **OKR** (Doerr / Google), voor de 1-jaar laag (één Objective + 3-5 meetbare KR's)
- **12 Week Year** (Brian Moran), voor kwartaal-executie (max 3, weekly rhythm)
- **Onderzoek over goal-failure**, Atlassian (14→3 KR's = 90% afronding), Dominican University (geschreven doelen = 42% meer kans), American Society for Training and Development (70% van doelen wordt nooit meer bekeken)

De cascade is bewust **richtinggevend** in plaats van wiskundig optellend. Reden: bij solopreneurs en MKB werken strikte numerieke cascades zelden, Q1 heeft vaak veel voorbereidingswerk dat zich pas in Q3-Q4 uitbetaalt.
