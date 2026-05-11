---
name: team-en-rollen
title: "Team en Rollen"
description: "Helpt een ondernemer in 20 tot 45 minuten een Team.md op te bouwen waarin alle rollen in het bedrijf vastliggen: wie doet wat, wie beslist over wat, waar werk wordt doorgegeven (aan een ander persoon, een freelancer, een VA of AI) en hoeveel tijd elke rol kost. Werkt voor drie scope-varianten: een solopreneur die alle zes kernrollen zelf vervult (directie, sales, marketing, dienstverlening/productie, operations, finance), een micro-team van twee tot vijf mensen met verdeelde en dubbel-belaste rollen, en een klein MKB van vijf tot vijftien mensen met heldere units en een eigenaar-laag. De skill scant altijd eerst de bestaande vault (00-Overzicht, Goals, ICP, Strategie, Afspraken AI, KvK) op personen en rolvermeldingen zodat er nooit wordt gevraagd wat al ergens staat. Output: een gevuld bestand op pad `{scope}/HR/Team.md` waarin per rol staat wat de verantwoordelijkheden zijn, welke beslissingsbevoegdheid erbij hoort, op welke handoff-momenten werk overgaat, hoeveel uren per week eraan opgaan en hoe groot de AI-leverage-kans is, plus een cross-link met de Toolstack (S11 koppelt naar S12). Het doel: SCALE-audit S11 van ❌ of ⚠️ naar ✅, en een document dat in latere SCALE-stappen direct gebruikt kan worden voor Leverage-keuzes (welke pet kan ik gedeeltelijk afstaan?) en Engineer-keuzes (welk maatwerk ontlast welke rol?). Activeer altijd wanneer iemand zegt: 'team beschrijven', 'rollen uitwerken', 'wie doet wat in mijn bedrijf', 'organogram maken', 'verantwoordelijkheden vastleggen', 'wie beslist over wat', 'Team.md aanmaken', 'rolverdeling in kaart brengen', 'mijn petten op een rij zetten', 'S11 gat dichten in SCALE-audit', 'mijn rollen mappen voor AI-overdracht', 'welke pet kan ik afstaan'. Triggert ook bij vragen over verantwoordelijkheidsgebieden binnen een bedrijfsstructuur (sales, marketing, productie, finance, ops) en bij iedere expliciete verwijzing naar S11 of HR/Team.md."
category: structure
tags: [team, rollen, structure, hr, organogram, scale-framework, s11]
estimatedTime: "20 tot 45 minuten"
version: "1.1.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Team en Rollen

## Doel

Helpt een ondernemer om in 20 tot 45 minuten zijn of haar **rolverdeling** vast te leggen in één canoniek document: `{scope}/HR/Team.md`. Dat document is niet zomaar een organogram. Het is de bron-van-waarheid voor:

- **Wie doet wat** (rolnaam, eigenaar, verantwoordelijkheden)
- **Wie beslist** (mandaat, budget-grens, eindstem)
- **Waar werk overgaat** (handoff-momenten — aan een collega, een freelancer, een VA, of AI)
- **Hoeveel tijd elke rol kost** (uren per week, ruwe inschatting)
- **Waar AI-leverage zit** (laag, middel, hoog — input voor stap L van SCALE)

*Waarom dit fundamenteel is.* In de SCALE-volgorde is S11 vaak de stap die het verschil maakt tussen *"AI helpt me met losse taken"* en *"AI ontlast me structureel"*. Pas als je rollen helder hebt, kun je een rol gedeeltelijk afstaan zonder dat het bedrijf in de war raakt. Zonder Team.md eindigt elke automatisering bij *"ja maar wie krijgt dan dit signaal?"*.

Resultaat: SCALE-audit S11 springt van ❌ of ⚠️ naar ✅, en het document is direct herbruikbaar voor SCALE-stappen L (Leverage) en E (Engineer).

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  TEAM EN ROLLEN — SCALE-stap S11                          │
│  ~20-45 minuten · variant-afhankelijk                     │
└──────────────────────────────────────────────────────────┘

  Ik help je in 20 tot 45 minuten een Team.md op te bouwen
  waarin alle rollen vastliggen: wie doet wat, wie beslist,
  waar werk overgaat (aan persoon, freelancer, VA of AI) en
  hoeveel tijd elke rol kost. Direct input voor SCALE-stap L
  (Leverage), om te zien welke pet je gedeeltelijk kunt
  afstaan.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • Eerst kies ik samen met jou de variant:              │
  │      [A] Solopreneur (1 persoon, 6 kernrollen)          │
  │      [B] Micro-team (2-5 mensen + rollen-matrix)        │
  │      [C] Klein MKB (5-15, units + beslislaag)           │
  │  • Vooraf scan ik bestaande bronnen (Goals, Bedrijfs-   │
  │    verhaal, eventuele eerdere Team.md, optioneel een    │
  │    afsprakenbestand met personen-namen)                 │
  │  • Daarna interview, één rol of persoon per beurt:      │
  │      Variant A: 6 rollen, ~4 vragen elk                 │
  │      Variant B: per persoon ~4 vragen + matrix          │
  │      Variant C: per unit + sleutelpersonen + mandaten   │
  │  • Output: HR/Team.md met cross-link naar S12 Toolstack │
  └────────────────────────────────────────────────────────┘

  Heb je nog externe input (organogram, LinkedIn-profielen
  van mede-eigenaren, bestaande functiebeschrijvingen)?
  Dan kun je dat nu noemen of plakken.
```

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  TEAM EN ROLLEN — S11                                     │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Variant bepalen   │  A. Solopreneur (1 pers)
   │                      │  B. Micro-team (2 tot 5)
   │                      │  C. Klein MKB (5 tot 15)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Bronnen scannen   │  00-Overzicht, Goals,
   │                      │  ICP, Strategie,
   │                      │  Afspraken AI, KvK
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is per rol
   │                      │  of persoon, ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, rol    │  Per rol vier vragen:
   │    voor rol          │  - Verantwoordelijkheden
   │                      │  - Beslissingsbevoegdheid
   │                      │  - Handoffs (wanneer/aan wie)
   │                      │  - Tijdsbesteding per week
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. AI-leverage-kans  │  Per rol een ruwe score
   │                      │  (laag / middel / hoog),
   │                      │  met een korte motivatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Cross-link S12    │  Per rol bijhorende tools,
   │    (Toolstack)       │  of placeholder als S12
   │                      │  nog niet bestaat
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Schrijven +       │  HR/Team.md aanmaken
   │    opslaan           │  Frontmatter + secties
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Logging +         │  Changelog + daily +
   │    vervolgsuggesties │  hint richting Leverage
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Beschrijf het team" of "wie doet wat in dit bedrijf"
- "Werk de rollen uit", "rolverdeling in kaart brengen"
- "Maak een organogram"
- "Leg verantwoordelijkheden vast" of "wie is verantwoordelijk voor wat"
- "Wie beslist over wat" / "beslissingsbevoegdheid vastleggen"
- "Maak een Team.md"
- "Welke petten zet ik op" / "mijn petten op een rij"
- "S11 gat dichten in SCALE-audit" / "Team en rollen voor SCALE"
- "Welke rollen kan ik straks afstaan aan AI of een VA"
- "Mijn rollen mappen voor automatisering"

Triggert NIET wanneer:
- Iemand een **vacaturetekst** wil schrijven (gebruik later een `vacature-schrijver`)
- Iemand een **arbeidscontract** wil opstellen (juridisch, gebruik later `klantcontract-template` of een HR-contract-skill)
- Iemand **salarisadministratie** of urenregistratie wil opzetten (operationeel)
- Iemand **onboardingsmails** of een **personeelsgesprek** wil voorbereiden (latere HR-skills)
- Iemand alleen wil weten hoeveel taken een AI van een specifieke rol kan overnemen *zonder* eerst de rollen vast te leggen (dan eerst deze skill, dan een Leverage-skill)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf de Team.md gemaakt wordt. Bied opties op basis van wat in de vault zichtbaar is:
- Elke `Bedrijven/[Bedrijf]/`-map die bestaat
- De Upscailed-kluis-root als die de werkmap is
- Of een expliciet pad

Bevestig de gekozen scope voordat je doorgaat.

Controleer of er al een bestand bestaat:
- `{scope}/HR/Team.md`

Als die al bestaat: vraag of dit een **eerste versie** is (overschrijven), een **update** (aanvullen op basis van wat er staat), of een **nieuwe iteratie** (oude versie archiveren als `Team - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven).

### Stap 2: Variant bepalen

Vraag het aantal mensen in het bedrijf en stel op basis daarvan een variant voor. Bevestig de keuze.

| Variant | Aantal personen | Hoofdperspectief | Template |
|---|---|---|---|
| **A. Solopreneur** | 1 | Eén persoon vervult zes kernrollen | `references/template-solopreneur.md` |
| **B. Micro-team** | 2 tot 5 | Rollen verdeeld + dubbel-belast, mentoren erbij | `references/template-micro-team.md` |
| **C. Klein MKB** | 5 tot 15 | Eigenaren + medewerkers in units, beslislaag | `references/template-klein-mkb.md` |

> Edge-cases: bij **freelancers met een vaste klus** behandel je ze als micro-team (B) maar markeer ze als "extern". Bij **bedrijven met sluimerende mede-oprichters** vraag je expliciet of ze deel uitmaken van Team.md of als adviseur worden vermeld.

### Stap 3: Bestaande bronnen scannen

Lees systematisch wat er al beschikbaar is. Sla per bron kort op wat je gevonden hebt — een persoon, een rol, een verantwoordelijkheid, of een beslissing.

| Bron | Wat je eruit haalt |
|---|---|
| `{scope}/Directie/00 - Overzicht.md` | Missie, doelgroep, status, eventueel oprichters |
| `{scope}/Directie/01 - Goals.md` | Wie als duo/team wordt genoemd, welke rollen impliciet zijn |
| `{scope}/Directie/Playbook/Bedrijfsverhaal.md` | Stichters, mede-oprichters, mentoren, hun rol in het verhaal |
| `{scope}/Directie/Playbook/Brand Guidelines.md` | Toon en stijl voor het document |
| `{scope}/IT/AI-Tools/` | Welke tools al bestaan (voor cross-link Toolstack) |
| `Persoonlijk/00 - Over Iwan.md` (of stichter-profiel) | Achtergrond hoofdpersoon, sterke kanten, voorkeuren |
| `Persoonlijk/Strategie.md` | Cross-bedrijf rollen (waar Iwan in meerdere bedrijven dezelfde pet draagt) |
| `Persoonlijk/ICP.md` | Doelgroep-context (kleurt sales- en marketing-rol) |
| **Optioneel:** een centraal afsprakenbestand met personen-namen als de gebruiker zo'n bestand heeft (vraag actief — paden variëren per vault: `Persoonlijk/Afspraken AI.md`, een Notion-page met team-info, of een ander document). Skip stilletjes als dit nergens bestaat. | Mede-oprichters, mentoren, externe steun (boekhouder, jurist) |

Bij **micro-team / klein MKB** ook checken:
- Of er een `{scope}/HR/`-map al gevuld is (CV's, profielen, vorige Team-versies)
- Of er medewerkers in andere bedrijven-mappen worden genoemd (cross-overs)

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je gevonden hebt, gegroepeerd per persoon én per rol. Vraag bevestiging:

> "Op basis van wat er al in je vault staat, zie ik dit beeld. Klopt het, en wil je nog iemand toevoegen of corrigeren voordat we per rol de gaten gaan invullen?"

Dit voorkomt dat het interview vragen stelt waarvan het antwoord al ergens staat.

**Voor variant A (solopreneur):** vat samen welke kernrollen je al impliciet in de vault hebt zien terugkomen. Bijvoorbeeld: *"In je Goals zie ik dat jij sales doet (acquisitie via netwerk) en marketing (LinkedIn). In je 00-Overzicht staat dat je de dienstverlening zelf uitvoert. De boekhouding wordt vanuit Fit In Finance gedaan. Bij Directie en Operations heb ik nog geen expliciete vermelding."*

**Voor variant B (micro-team):** lijst de personen op met wat al bekend is per persoon. Bijvoorbeeld: *"Ik zie Ramon als mede-eigenaar in het bedrijfsverhaal (sport-link, samen geneerden, vooral op AI-implementatie). Siebren als mentor (bedrijfskundig, geen mede-eigenaar). Iwan als hoofdpersoon."*

**Voor variant C (klein MKB):** lijst de **units** of teams die al uit bronnen blijken (bijv. "ik zie een sales-trio, een productie-team van 4, en jij + 1 op finance").

### Stap 5: Interview, rol voor rol

**Kernregel:** stel **één rol per beurt**. Vier vragen per rol, dán pas door naar de volgende rol. Niet alle zes rollen tegelijk neerzetten — dat overweldigt.

**Voor elke rol vier kernvragen:**

1. **Wat valt onder deze rol?** (Verantwoordelijkheden, in 3 tot 6 concrete onderwerpen — geen abstracties.)
2. **Wie beslist hier over wat?** (Beslissingsbevoegdheid: tot welk bedrag, met welke goedkeuring, voor welke contracten?)
3. **Waar gaat werk over naar iemand anders?** (Handoff: aan wie of wat, op welk moment. Voor solopreneur ook: aan freelancer, VA, AI.)
4. **Hoeveel tijd kost deze rol per week?** (Ruw cijfer. Geen exacte uren — een schatting in zone: 0-2u / 2-5u / 5-10u / 10-20u / 20+u.)

#### Variant A — Solopreneur: zes kernrollen

Loop de rollen in deze volgorde. Sla een rol over als de gebruiker zegt "die heb ik uitbesteed" en noteer aan wie.

1. **Directie** — strategie, koersbepaling, jaarplan, grote beslissingen
2. **Sales** — acquisitie, conversie, klantcontact tot ondertekening
3. **Marketing** — zichtbaarheid, content, social, e-mail, website
4. **Dienstverlening / Productie** — de **core delivery** (boekhouden bij FIF, AI-implementatie bij Upscailed, design + productie bij 4GIVN, Bitcoin-treasury-advies bij Freedom/21)
5. **Operations** — proces, administratie, klant-onboarding, klant-admin, contracten klaarzetten
6. **Finance** — boekhouden, facturatie, debiteuren, BTW, cashflow

> Belangrijk: bij solopreneur is *Dienstverlening* vaak de zwaarste rol (20+ uur per week). Probeer specifiek door te vragen waar binnen Dienstverlening de tijd opgaat — die input is goud voor latere Leverage-keuzes.

#### Variant B — Micro-team: per persoon plus rollen-matrix

In plaats van per rol, loop je hier **per persoon** door, met daarna een **gedeelde rollen-matrix**. Workflow:

1. **Persoon 1** — vier vragen: hoofd-rol(len), eindverantwoordelijk-voor, tijdsbesteding, beslissingsbevoegdheid. Plus achtergrond (1 zin).
2. **Persoon 2** — idem.
3. **Eventueel persoon 3-5** — idem.
4. **Externe steun** — mentoren, boekhouder, jurist, vaste freelancers. Per persoon: rol + frequentie + waarvoor.
5. **Rollen-matrix** — wie eigenaar is per kernrol, wie backup, waar de handoff zit. Werk de zes kernrollen af in een tabel.

#### Variant C — Klein MKB: units met eigenaren plus beslislaag

Voor 5 tot 15 mensen:

1. **Eigenaren / directie** — wie bezit het bedrijf en wie zit in de directie. Beslislaag uittekenen.
2. **Units / teams** — bijv. Sales (3 pers), Marketing (1 pers), Productie (4 pers), Operations (2 pers), Finance (1 pers). Per unit: aantal mensen, unit-eigenaar, hoofdtaak.
3. **Sleutelpersonen per unit** — alleen de mensen die structureel beslissen of een unieke vaardigheid hebben.
4. **Externe partners** — accountant, jurist, vaste freelancers, leveranciers in vaste rol.
5. **Mandaten-overzicht** — wie beslist over wat (budget, contracten, klanten, personeel).

> Belangrijk bij C: probeer niet álle medewerkers individueel uit te werken. Houd het op unit-niveau plus sleutelpersonen, anders kost het uren en gaat de zin van het document verloren.

### Stap 6: AI-leverage-kans

**Doel:** maak Team.md alvast bruikbaar voor SCALE-stap L (Leverage).

Voor elke rol (variant A) of voor elke unit/persoon-met-rolset (varianten B en C), bepaal samen een **AI-leverage-kans**: hoe groot is de kans dat AI binnen 6 tot 12 maanden een significant deel van die rol kan overnemen?

| Score | Wat het betekent |
|---|---|
| **Hoog** | 50% of meer van het werk kan binnen een jaar via skills / scripts / agents worden overgenomen, mits de juiste infra |
| **Middel** | 20-50% — een paar concrete deelflows overdraagbaar, kern blijft mens |
| **Laag** | Onder de 20% — vooral menselijk oordeel of fysiek werk |

Bij elke score één regel motivatie. Dit is geen exact-cijfer-spel — de waarde zit in het *gesprek* dat je voert om de score te bepalen. Vraag de gebruiker: *"Welk deel van deze rol zou je vandaag al willen afstaan als het kon, en wat houdt je nog tegen?"*

### Stap 7: Cross-link met Toolstack (S12)

Voor elke rol of unit: noem **welke tools die rol nu gebruikt**.

Twee paden:

- **Als S12 al gevuld is** (`{scope}/IT/Toolstack.md` bestaat): verwijs in Team.md per rol naar de relevante rijen. Eén regel volstaat: *"Tools: zie Toolstack — Moneybird, Stripe, e-Boekhouden, ..."*.
- **Als S12 nog niet gevuld is**: maak een kleine inline-tabel onderaan Team.md met tool + owner. Voeg een placeholder-regel toe: *"➡️ Volgende stap (S12): werk dit uit in `IT/Toolstack.md` met de skill `toolstack-inventarisatie`."*

> Cross-link redenering: S11 en S12 versterken elkaar. Een rol zonder tools is hol; een tool zonder owner is een risico. Door owner-tool-koppeling expliciet te maken, krijg je in Leverage-fase direct zicht op overdracht-kandidaten.

### Stap 8: Schrijven en opslaan

Gebruik het juiste template uit `references/`:
- Variant A → `references/template-solopreneur.md`
- Variant B → `references/template-micro-team.md`
- Variant C → `references/template-klein-mkb.md`

Vul het template met de antwoorden uit Stap 3 t/m 7 en sla op als:
```
{scope}/HR/Team.md
```

Maak de `HR/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: team-rollen
bedrijf: <Naam>
variant: solopreneur | micro-team | klein-mkb
aantal-personen: <getal>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S11
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Concreet > abstract.** "Iwan zet wekelijks een LinkedIn-post live" > "Iwan is verantwoordelijk voor zichtbaarheid".
- **Geen marketingtaal.** Geen "drijvende kracht", "spil van het bedrijf", "passievol toegewijd". Functioneel en feitelijk.
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Tijdsbesteding altijd ruw.** Zones, geen exacte uren (kosten anders te veel discussie en verouderen snel).

### Stap 9: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `HR/Team.md` — variant <X>, <N> rollen ingevuld"*.
2. **Daily** — als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md` in een Iwan-OS-stijl vault, of een Notion-daily-pagina), log dan een eenregelige melding plus link naar het nieuwe bestand onder *Gedaan vandaag → [Bedrijf]*. Skip als die conventie niet bestaat — het changelog-entry uit stap 1 is dan voldoende.
3. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een S11-doel of HR-doel heeft: status bijwerken (✅), regel toevoegen aan het voortgangslog.
4. **Scale-audit-suggestie** — als `{scope}/Directie/Research/` een audit-rapport bevat waar S11 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien om de update zichtbaar te maken in de totaalscore.

Vervolgsuggesties die je altijd noemt:
- **Eerst S12 dichten** als die nog ❌ is — Team.md + Toolstack samen geven het volle Structure-fundament.
- **Daarna Leverage-skills** — gebruik de AI-leverage-kans-kolom als startpunt: pak de eerste rol met score "Hoog" en kijk welke deelflow als eerste kan worden overgedragen.
- **Review-ritme** — een Team.md veroudert. Stel voor om hem te updaten bij elk van deze gebeurtenissen: nieuwe medewerker, structurele rolwissel, een rol die richting AI / VA wordt overgedragen, of bij de kwartaal-review.

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

- **Eén rol per beurt** in het interview (variant A) of één persoon per beurt (variant B/C). Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in de vault staat. Pre-fill-validatie in Stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaand `Team.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een naam, een drempel, een week-uren-cijfer, een tool) als het te abstract blijft. Niet drie keer.
- **Geen vergaderd-document.** Team.md is een werkdocument, geen formele HR-functionsbeschrijving. Korte regels, geen volledige zinnen-paragrafen.
- **Solopreneur is geen schande.** Vermijd taal die "in je eentje" als tijdelijk-onaf laat klinken. Een goed gevulde solopreneur-Team.md is een sterk uitgangspunt voor schaalvergroting.
- **Cross-link S12 verplicht.** Ook als S12 nog niet bestaat, sluit Team.md altijd af met een tools-sectie (placeholder of inline). Anders mist Leverage straks een kritieke schakel.

## Voorbeeld-output

Zie de drie referentie-templates onder `references/` voor de exacte structuur per variant. Eerste live test-case wordt opgeleverd in een vervolgsessie waarin de skill op één bedrijf wordt doorlopen.
