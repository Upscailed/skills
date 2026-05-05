# Templates

Alle starter-bestanden die de skill aanmaakt. Elke template heeft duidelijke placeholders die je vervangt op basis van de antwoorden uit de vragen-flow.

## Placeholder-conventie

- `{{naam}}` : voornaam van de gebruiker
- `{{Bedrijf}}` : exacte bedrijfsnaam (Hoofdletter)
- `{{bedrijf-slug}}` : kleine letters, koppeltekens (bv. "fit-in-finance")
- `{{datum}}` : ISO-formaat YYYY-MM-DD
- `{{jaar}}` : YYYY
- `{{bedrijven-lijst}}` : door komma's gescheiden lijst van bedrijfsnamen
- `{{bedrijven-bullets}}` : Markdown-bullets met bedrijven en korte propositie
- `{{aantal-bedrijven}}` : getal (1, 2, 3, ...)
- `{{prefix}}` : "Bedrijven/[Bedrijf]" bij N bedrijven, of "[Bedrijf]" bij 1 bedrijf
- `{{ondernemers-vorm}}` : "solopreneur", "portfolio-ondernemer", "oprichter met team", etc.

---

## TEMPLATE: CLAUDE.md (vault-root)

```markdown
# {{Naam}}-OS — Second Brain

Je werkt in {{Naam}}'s Second Brain / Operating System. Dit is de centrale kennisbasis voor {{aantal-bedrijven}} {{bedrijf-of-bedrijven}} en persoonlijke projecten.

## {{Bedrijf-of-bedrijven-koptekst}}

{{Naam}} is {{ondernemers-vorm}} en runt {{aantal-bedrijven}} {{bedrijf-of-bedrijven}}:
{{bedrijven-bullets}}

## Vault Structuur

### {{Bedrijven-of-bedrijfsnaam-koptekst}}

Elk bedrijf heeft dezelfde 10 afdelingen, gebaseerd op standaard bedrijfsfuncties:

```
{{prefix}}/
├── Directie/              ← strategie, koersbepaling, besluitvorming, visie
│   ├── 00 - Overzicht.md  (missie, doelgroep, ICP, status)
│   ├── 01 - Goals.md      (jaardoelen + voortgang)
│   ├── 02 - Tasks.md      (actielijst)
│   └── Changelog.md       (alle wijzigingen, nieuwste bovenaan)
├── Financiën/             ← boekhouding, facturatie, belastingen, cashflow
├── Sales/                 ← acquisitie, offertes, klantrelaties
├── Marketing/             ← branding, content, campagnes
├── Operations/            ← dienstverlening, productie, processen
├── Klantenservice/        ← vragen, klachten, nazorg
├── HR/                    ← werving, contracten, teamontwikkeling
├── IT/                    ← systemen, software, AI-Tools, Skills
├── Inkoop/                ← leveranciers, voorraad, logistiek
├── Juridisch/             ← contracten, AVG, regelgeving
└── Projects/              ← lopende projecten
```

Niet elke afdeling is direct relevant. De mappen bestaan zodat informatie altijd op de juiste plek terechtkomt.

### Persoonlijk/ — {{Naam}} als persoon én cross-bedrijf

```
Persoonlijk/
├── 00 - Over {{Naam}}.md      (profiel, visie, waarden)
├── 01 - Goals.md              (persoonlijke doelen)
├── 02 - Tasks.md              (persoonlijke acties)
├── Inbox.md                   (ongesorteerde acties)
├── Changelog.md               (persoonlijke wijzigingen)
├── Strategie.md               (cross-bedrijf visie)
├── ICP.md                     (Ideal Customer Profile per bedrijf)
├── Afspraken AI.md            (werkafspraken voor de AI)
├── AI-Tools Overzicht.md      (centraal overzicht)
├── Skills Overzicht.md        (centraal overzicht)
├── Skills/                    (persoonlijke en gedeelde skills)
├── AI-Tools/                  (persoonlijke tools)
├── Projects/, Research/, Resources/, Goals/
```

### Huddle/ — periodieke reviews

- `Huddle/Daily/YYYY-MM-DD.md` — dagelijkse logs
- `Huddle/Weekly/` — wekelijkse reviews
- `Huddle/Monthly/` — maandelijkse en kwartaalreviews

### Systeem/ — de motor

- `Systeem/Templates/` — alle sjablonen (Daily Log, Weekly Review, Project, Goal)
- `Systeem/Structuur/Vault Structuur.md` — deze structuur, gedocumenteerd
- `Systeem/Structuur/Vault Changelog.md` — vault-brede wijzigingen

## Regels voor de AI

### Bij het LEZEN van informatie

1. Begin altijd bij dit bestand (CLAUDE.md) voor navigatie
2. Lees `Persoonlijk/Afspraken AI.md` voor werkafspraken
3. Lees `Persoonlijk/00 - Over {{Naam}}.md` voor persoonlijke context
4. Lees `{{prefix}}/Directie/00 - Overzicht.md` voor bedrijfscontext
5. Check `{{prefix}}/Directie/02 - Tasks.md` voor lopende acties
6. Check `Huddle/Daily/` voor recente activiteiten

### Bij het OPSLAAN van informatie

| Type | Locatie |
|---|---|
| Nieuwe actie | `{{prefix}}/Directie/02 - Tasks.md` of `Persoonlijk/Inbox.md` bij twijfel |
| Vergadernotities | `Persoonlijk/Intelligence/Meetings/YYYY-MM-DD - [Onderwerp].md` |
| Beslissing | `Persoonlijk/Intelligence/Beslissingen/YYYY-MM-DD - [Onderwerp].md` |
| Nieuw project | `{{prefix}}/Projects/[Projectnaam]/README.md` |
| Dagelijks log | `Huddle/Daily/YYYY-MM-DD.md` |
| Research bedrijfsspecifiek | `{{prefix}}/Directie/Research/[Onderwerp].md` |
| Research cross-bedrijf | `Persoonlijk/Research/[Onderwerp].md` |
| Marketing post | `{{prefix}}/Marketing/LinkedIn/YYYY-MM-DD - [Onderwerp]/` |

Mappen worden aangemaakt zodra ze nodig zijn. Bestaat een verwezen map nog niet, maak hem aan en log in `Systeem/Structuur/Vault Changelog.md`.

### Changelog bijhouden (KRITIEK)

Elke wijziging meteen loggen, niet later. Het is de enige manier waarop weekly/monthly reviews een compleet beeld geven.

| Wijziging | Changelog |
|---|---|
| Bestand binnen één bedrijf | `{{prefix}}/Directie/Changelog.md` |
| Persoonlijke of cross-bedrijf wijziging | `Persoonlijk/Changelog.md` |
| Vault-brede structuurwijziging | `Systeem/Structuur/Vault Changelog.md` |

Format:
```
## YYYY-MM-DD

- **Nieuw/Bijgewerkt/Verplaatst/Verwijderd:** `pad/naar/bestand` — beschrijving
```

Nieuwste datum-blok bovenaan.

### Naamgeving

- Datums: `YYYY-MM-DD`
- Bestanden: Nederlandse titels, spaties toegestaan
- Vermijd `|`, `#`, `^`, `[`, `]` in bestandsnamen (Obsidian-conflict)

### Belangrijk

- Schrijf in het Nederlands tenzij anders gevraagd
- Bij twijfel waar iets hoort: vraag het
- Houd actielijsten actueel: vink af wat klaar is
- Verstuur nooit automatisch e-mails, alleen klaarzetten als concept
- Gebruik "actie" niet "taak" of "to do"
- Gebruik geen em-dashes in communicatie of bestanden
```

---

## TEMPLATE: Persoonlijk/00 - Over {{Naam}}.md

```markdown
# Over {{Naam}}

> [[Persoonlijk/01 - Goals|Goals]] · [[Persoonlijk/02 - Tasks|Tasks]] · [[Persoonlijk/Inbox|Inbox]]

## Profiel

- **Naam:** {{Volledige naam}}
- **Rol:** {{ondernemers-vorm}}
{{bedrijven-link-regel}}

## Gezin

<!-- Vul aan als je dit relevant vindt voor je AI-context. AI begrijpt jou beter als hij weet wie er nog meer prioriteit krijgt in jouw agenda. -->

## Levensstijl

<!-- Wat doe je naast werk? Hobbies, sport, gemeenschap? Helpt AI om voorstellen te doen die bij je leven passen. -->

## Visie

<!-- 2-3 zinnen: wat wil je in dit leven bereiken? Waarom onderneem je? -->

## Waarden

- 
- 
- 

## Achtergrond

<!-- Korte versie van je verhaal: hoe ben je hier gekomen? -->

## Werkstijl

- 
- 
- 

## Doelen ({{jaar}})

<!-- 1 tot 3 hoofddoelen voor dit jaar. Per bedrijf één regel. -->

---
## Zie ook
- [[Persoonlijk/Strategie|Strategie]]
- [[Persoonlijk/Skills Overzicht|Skills Overzicht]]
```

---

## TEMPLATE: Persoonlijk/01 - Goals.md

```markdown
---
type: goals
bedrijf: Persoonlijk
jaar: {{jaar}}
---

# Persoonlijke doelen {{jaar}}

## Doel 1: {{Naam van het doel}}

**Beschrijving:** Wat wil je bereiken?

### Meetbaar target

| Indicator | Start | Huidig | Doel | % |
|-----------|-------|--------|------|---|
|  |  |  |  | 0% |

### Status

- **Voortgang:** 🟢 Op schema / 🟡 Aandacht nodig / 🔴 Achter
- **Toelichting:** 

### Voortgangslog

| Datum | Update | Status |
|-------|--------|--------|
|  |  |  |

---

## Doel 2: ...
```

---

## TEMPLATE: Persoonlijk/02 - Tasks.md

```markdown
---
type: tasks
bedrijf: Persoonlijk
---

# Acties — Persoonlijk

> [[Persoonlijk/00 - Over {{Naam}}|Over]] · [[Persoonlijk/01 - Goals|Goals]] · [[Persoonlijk/Inbox|Inbox]]

## Te Doen

- [ ] 

## Bezig

## Afgerond

## Ideeën

> Losse persoonlijke ideeën. Wordt een idee omgezet naar actie of project? Verwijder het hier.

- 
```

---

## TEMPLATE: Persoonlijk/Inbox.md

```markdown
---
type: inbox
---

# Inbox

> Ongesorteerde acties en ideeën die nog moeten worden geplaatst. Verplaats naar het juiste Tasks-bestand zodra duidelijk is waar het hoort.

## Acties

## Ideeën
```

---

## TEMPLATE: Persoonlijk/Changelog.md

```markdown
---
type: changelog
---

# Persoonlijk Changelog

Persoonlijke wijzigingen en cross-bedrijf updates. Nieuwste bovenaan.

Zie ook:
- `Systeem/Structuur/Vault Changelog.md` voor vault-brede structuurwijzigingen
- `{{prefix}}/Directie/Changelog.md` voor bedrijfsspecifieke wijzigingen

---

## {{datum}}

- **Nieuw:** OS opgezet via `os-builder` skill. Vault-structuur, CLAUDE.md, persoonlijke en bedrijfsbestanden klaargezet.
```

---

## TEMPLATE: Persoonlijk/Afspraken AI.md

```markdown
# Afspraken met AI

> [[Persoonlijk/Strategie|Strategie]] · [[Persoonlijk/ICP|ICP]] · [[Persoonlijk/Skills Overzicht|Skills]]

Vaste werkafspraken die de AI altijd raadpleegt bij het interpreteren van berichten van {{Naam}}.

## Aliassen en afkortingen

| {{Naam}} zegt | {{Naam}} bedoelt |
|---|---|
| "actie" | Een nieuw actiepunt toevoegen aan het juiste Tasks-bestand |
| "acties" | De actielijst van een bedrijf of de inbox |

## Schrijfstijl

**Geen em-dashes (—).** Gebruik in plaats daarvan een komma, dubbele punt, of nieuwe zin.

Geldt voor: chat-berichten, markdown, e-mails, code-commentaar. Geen uitzonderingen.

## Werkafspraken

- Schrijf in het Nederlands tenzij ik expliciet om Engels of een andere taal vraag
- Verstuur nooit automatisch e-mails. Alleen klaarzetten als tekst, ik druk zelf op verzenden
- Gebruik "actie" niet "taak" of "to do"
- Bij twijfel waar iets hoort: vraag het, doe geen stille aanname

## Aanvullen

Voeg hier nieuwe werkafspraken toe zodra ze ontstaan. Liever hier dan in losse memory-notities.
```

---

## TEMPLATE: Persoonlijk/Strategie.md (alleen bij meerdere bedrijven)

```markdown
# Strategie

Cross-bedrijf visie. Hoe verhouden de {{aantal-bedrijven}} bedrijven zich tot elkaar? Welke synergiën zijn er? Waar zit de groei?

## Hoofdvisie

<!-- 1 alinea: wat is je overkoepelende doel? -->

## Per bedrijf, in één zin

{{bedrijven-bullets}}

## Synergie

<!-- Welke bedrijven versterken elkaar? Hoe? -->

## Strategische keuzes {{jaar}}

- 
- 
- 

## Lange termijn (3-5 jaar)

<!-- Waar wil je heen? -->
```

---

## TEMPLATE: Persoonlijk/ICP.md

```markdown
# Ideal Customer Profile (ICP)

Per bedrijf: wie is de ideale klant? Wat zijn hun pijnpunten en hoe los jij die op?

{{ICP-secties-per-bedrijf}}
```

ICP-sectie per bedrijf (template):
```markdown
## {{Bedrijf}}

### Wie

- **Demografie:** 
- **Bedrijfsgrootte/levensfase:** 
- **Kanalen waar ze zitten:** 

### Pijn

- 
- 

### Onze oplossing in hun woorden

<!-- Hoe zou de klant zelf beschrijven wat jij voor hen doet? -->

### Triggers (wanneer worden ze klant?)

- 

### Bezwaren

- 
```

---

## TEMPLATE: {{prefix}}/Directie/00 - Overzicht.md

```markdown
# {{Bedrijf}}

> [[{{prefix}}/Directie/01 - Goals|Goals]] · [[{{prefix}}/Directie/02 - Tasks|Tasks]] · [[Persoonlijk/Strategie|Strategie]] · [[Persoonlijk/ICP|ICP]]

## Overzicht

{{propositie}}

## Missie

<!-- Waarom bestaat dit bedrijf? Welk probleem los je op? -->

## Doelgroep

{{doelgroep}}

## Aanbod

- 
- 
- 

## Status

**{{fase}}** — <!-- korte toelichting bij de fase -->

## KPI's

| KPI | Beschrijving | Status |
|---|---|---|
|  |  |  |

## Kanalen

<!-- Waar bereik je klanten? Website, social, netwerk, partnerships -->

---
## Afdelingen

### Marketing
- 

### Sales
- 

### Operations
- 

### IT (AI-Tools, Skills)
- 

### Projects
- 
```

---

## TEMPLATE: {{prefix}}/Directie/01 - Goals.md

(zelfde structuur als Persoonlijk/01 - Goals.md, maar met `bedrijf: {{Bedrijf}}` in frontmatter)

---

## TEMPLATE: {{prefix}}/Directie/02 - Tasks.md

```markdown
---
type: tasks
bedrijf: {{Bedrijf}}
---

# Acties — {{Bedrijf}}

> [[{{prefix}}/Directie/00 - Overzicht|Overzicht]] · [[{{prefix}}/Directie/01 - Goals|Goals]] · [[Persoonlijk/Inbox|Inbox]]

## Te Doen

- [ ] 

## Bezig

## Afgerond

## Ideeën

> Losse ideeën voor {{Bedrijf}}. Wordt een idee omgezet naar actie of project? Verwijder het dan hier.

- 

---
## Zie ook
- [[{{prefix}}/Directie/01 - Goals|Goals]]
```

---

## TEMPLATE: {{prefix}}/Directie/Changelog.md

```markdown
---
type: changelog
bedrijf: {{Bedrijf}}
---

# {{Bedrijf}} Changelog

Wijzigingen binnen {{Bedrijf}}. Nieuwste bovenaan.

Zie ook:
- `Systeem/Structuur/Vault Changelog.md` voor vault-brede wijzigingen
- `Persoonlijk/Changelog.md` voor cross-bedrijf wijzigingen

---

## {{datum}}

- **Nieuw:** Bedrijfsstructuur opgezet via `os-builder` skill. 10 afdelingen + Projects aangemaakt, plus 00-Overzicht, 01-Goals, 02-Tasks en deze Changelog.
```

---

## TEMPLATE: {{prefix}}/IT/Skills/README.md

```markdown
# {{Bedrijf}} Skills

Bedrijfsspecifieke skills voor {{Bedrijf}}. Persoonlijke en gedeelde skills staan in `Persoonlijk/Skills/`.

## Beschikbare skills

_Nog geen eigen skills. Voeg toe wanneer je een bedrijfsspecifiek proces wilt vastleggen._

## Verwante gedeelde skills

- [[Persoonlijk/Skills/README|Persoonlijke en gedeelde skills]]
```

---

## TEMPLATE: {{prefix}}/IT/AI-Tools/README.md

```markdown
# {{Bedrijf}} AI-Tools

Bedrijfsspecifieke AI-tools voor {{Bedrijf}}. Centraal overzicht in `Persoonlijk/AI-Tools Overzicht.md`.

## Beschikbare tools

_Nog geen tools._
```

---

## TEMPLATE: Systeem/Templates/Daily Log.md

```markdown
# {{date}}

## Focus vandaag

<!-- Eén zin: wat is het belangrijkste resultaat dat je vandaag wilt bereiken? -->

## Acties

<!-- Acties voor vandaag, per bedrijf gegroepeerd. Afvinken als gedaan: - [x]. Niet gedaan einde dag: verplaats naar Tasks. -->

{{daily-bedrijf-secties}}

### Persoonlijk
- [ ] 

## Klantcontact en financiële signalen

<!-- Nieuwe leads, offertes, facturen, betalingen, bijzonderheden. Alleen invullen als er iets speelt. -->

- 

## Gedaan vandaag

{{daily-bedrijf-secties-gedaan}}

### Persoonlijk
- 

## Blokkades en beslissingen

<!-- Waar loop je vast? Welke beslissing moet genomen worden? -->

- 

## Automatische acties

<!-- Hieronder worden automatisch uitgevoerde acties gelogd (scheduled tasks, skills). Sorteer chronologisch: oudste boven, nieuwste onder. -->

## Reflectie

<!-- 1-2 zinnen: hoe ging de dag? Wat neem je mee naar morgen? -->
```

`{{daily-bedrijf-secties}}` wordt voor elk bedrijf:
```
### {{Bedrijf}}
- [ ] 

```

---

## TEMPLATE: Systeem/Templates/Weekly Review.md

```markdown
# Weekly Review {{week}}

**Periode:** {{datum-van}} tot {{datum-tot}}

## Hoogtepunten

- 

## Voortgang per bedrijf

{{bedrijf-secties}}

### Persoonlijk

- 

## Belangrijkste leerpunten

- 

## Focus volgende week

- 

## Stand van zaken doelen

| Doel | Status | Voortgang |
|---|---|---|
|  | 🟢/🟡/🔴 | x% |
```

---

## TEMPLATE: Systeem/Templates/Project.md

```markdown
---
type: project
bedrijf: ""
status: actief
startdatum:
deadline:
---

# {{Projectnaam}}

## Info

- **Bedrijf:** 
- **Status:** Niet gestart / In progress / Afgerond
- **Startdatum:** 
- **Deadline:** 

## Doel

<!-- Wat moet dit project opleveren? -->

## Scope

<!-- Wat valt er wel en niet binnen dit project? -->

## Acties

- [ ] 

## Notities

<!-- Relevante informatie, links, context -->
```

---

## TEMPLATE: Systeem/Templates/Goal.md

```markdown
---
type: goal
bedrijf: ""
jaar: {{jaar}}
---

# {{Naam van het doel}}

**Beschrijving:** Wat wil je bereiken?

## Meetbaar target

| Indicator | Start | Huidig | Doel | % |
|---|---|---|---|---|
|  |  |  |  | 0% |

## Status

- **Voortgang:** 🟢 Op schema / 🟡 Aandacht nodig / 🔴 Achter
- **Toelichting:** 

## Voortgangslog

| Datum | Update | Status |
|---|---|---|
|  |  |  |
```

---

## TEMPLATE: Systeem/Structuur/Vault Structuur.md

```markdown
# Vault Structuur

Documentatie van de vault-structuur. Onderhouden door `Systeem/Structuur/Vault Changelog.md`.

## Top-level mappen

```
{{Naam}}-OS/
├── CLAUDE.md
{{prefix-tree}}
├── Persoonlijk/
├── Huddle/
└── Systeem/
```

## Werkwijze

Mappen worden pas aangemaakt zodra ze nodig zijn. Wanneer een nieuwe map ontstaat: log de wijziging in `Systeem/Structuur/Vault Changelog.md` en werk dit document bij.

## Bedrijven en hun afdelingen

Zie `CLAUDE.md` voor de complete uitleg van de 10 standaard-afdelingen per bedrijf.
```

---

## TEMPLATE: Systeem/Structuur/Vault Changelog.md

```markdown
# Vault Changelog

Vault-brede structuurwijzigingen (mappen aanmaken/hernoemen/verwijderen, top-level wijzigingen). Nieuwste bovenaan.

---

## {{datum}}

- **Nieuw:** Vault-structuur opgezet via `os-builder` skill. Top-level mappen aangemaakt: {{prefix}}, `Persoonlijk/`, `Huddle/`, `Systeem/`. CLAUDE.md gegenereerd. Templates geplaatst in `Systeem/Templates/`. Per bedrijf 10 afdelingen + Projects aangemaakt.
```
