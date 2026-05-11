---
type: skill-prd
skill-naam: "{kebab-case-slug}"
bedrijf: "{Bedrijfsnaam}"
scope: "{Pad binnen vault}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: E6
status: "{ontwerp / eerste-versie / test / productie}"
---

# Skill-PRD: {Titel van de skill}

> **Wat is dit document?** De PRD (Product Requirements Document) voor één nieuwe skill, opgesteld tijdens fase 4 van `skill-builder-coach`. Dit is de blauwdruk waaruit de eerste SKILL.md wordt geschreven (fase 5) en waarop getest wordt (fase 6). Bijschaven mag tijdens fase 7.

---

## 1. Naam en identiteit

| Veld | Waarde |
|---|---|
| **Slug (mapnaam = `name`)** | `{kebab-case-slug}` |
| **Titel (mens-leesbaar)** | "{Title Case Korte Naam}" |
| **Categorie** | {structure / collect / analyze / leverage / bouwen / juridisch / marketing / verkoop / operations / hr / klantenservice / it / finance / persoonlijk} |
| **Tags** | [{tag1}, {tag2}, {tag3}, scale-framework, e6] |
| **Geschatte tijd per sessie** | "{X tot Y minuten}" |
| **Author** | "{Bedrijfsnaam}" of "Upscailed" |
| **License** | MIT |
| **scaleFramework** | true als deze skill een SCALE-check dekt, anders weglaten |
| **scale-check** | {S1/S2/.../E6} als scaleFramework=true |

**Naamgevingsregels:**
- Kebab-case, max 30 tekens
- Beschrijvend zonder marketing-taal
- Geen versie-suffixen (v2, nieuw, beta), die horen in de `version`-frontmatter
- Voorbeelden: `klant-update-generator`, `weekend-recap`, `factuur-status-check`, `lead-scoring`
- NIET: `awesome-helper`, `super-tool`, `bedrijf-skill-v2`, `mijn-skill`

---

## 2. Doel (1-2 paragrafen)

**Wat:** {Wat doet de skill? In welke tijd? Met welk eindresultaat?}

**Voor wie:** {Wie is de eindgebruiker? Alleen de ondernemer? Een teamlid? Een klant?}

**Waarom:** {Waarom is dit nodig? Welke pijn lost het op? Welk terugkerend proces wordt hierdoor lichter?}

Voorbeeld:
> Helpt een ondernemer om in 15 tot 25 minuten een maandelijkse klantupdate-mail op te stellen, gebaseerd op de afgelopen 30 dagen aan activiteit in zijn vault (afgesloten projecten, openstaande facturen, klantfeedback). Voor de ondernemer zelf om eindredactie te doen en daarna te versturen. Zonder deze skill kost het maandelijks 2-3 uur om voor elke vaste klant een persoonlijke update te schrijven, en wordt het vaak vergeten.

---

## 3. Triggers (10-20 zinnen)

Welke uitspraken activeren de skill? Schrijf 10-20 variaties met verschillende formuleringen. Vergeet niet:
- Korte zinnen ("klantupdate")
- Lange zinnen ("ik moet voor mijn klanten weer eens een maand-update sturen")
- Formele zinnen ("genereer een maandelijkse klantcommunicatie")
- Informele zinnen ("klantmailtjes maken")
- Engelse varianten als de ondernemer mixed-language werkt
- Verwijzingen naar het bestand of pad waar output naartoe gaat
- Verwijzingen naar de SCALE-check als die er is

Voorbeelden (vervang met eigen):
```
- "Maak een maandelijkse klantupdate"
- "Schrijf een update voor mijn vaste klanten"
- "Klanten maandupdate"
- "Wat is er deze maand bij klant X gebeurd?"
- "Genereer een mail-recap voor mijn klantenkring"
- "Maandelijkse status-mail"
- "Ik moet mijn klanten weer eens bijpraten"
- "Klantbeheer maandupdate"
- "Generate monthly client update"
- "Update voor [klantnaam] over deze maand"
- "Mail-concept voor klant X"
- "Klant-recap mail"
- "Maandbrief klanten"
- "Wat is er voor klant Y veranderd deze maand?"
- "Klantencirculaire concept"
```

---

## 4. NIET-triggers (5-10 voorbeelden)

Welke aangrenzende behoeftes lijken erop maar horen ergens anders? Verwijs expliciet naar de wel-passende skill.

| Trigger die LIJKT op deze skill | Hoort eigenlijk bij |
|---|---|
| "Schrijf een nieuwsbrief voor mijn lijst" | `nieuwsbrief-setup` of `content-roadmap` (M3-M4) |
| "Onboarding-mail voor nieuwe klant" | `opvolg-flow` (V3) |
| "Sales-mail naar prospect" | `salesproces-builder` (V1) |
| "Klantcontract opstellen" | `klantcontract-template` (J5) |
| "Klant-rapport in Excel" | `rapportage-builder` (A1) |
| "Klant-portaal bouwen" | `klantportaal-scoping` (E4) |

---

## 5. Input, wat heeft de skill nodig om te draaien?

**Vault-bestanden** (welke?):
- `{scope}/{pad}`, {wat de skill eruit haalt}
- `{scope}/{pad}`, {wat de skill eruit haalt}

**Externe documenten** (optioneel):
- {Type document, bv. URL, PDF, geplakte tekst}

**Gebruikers-input** (interview-vragen):
1. {Vraag 1}
2. {Vraag 2}
3. {Vraag 3}

**Pre-fill-strategie:** {Hoe gaat de skill vault-content alvast samenvatten voordat hij vraagt? Korte beschrijving.}

---

## 6. Output, wat komt er uit?

**Output-type:** {Bestand / tabel / lijst / advies / mail-concept / dashboard-update}

**Output-pad** (als bestand):
```
{scope}/{pad/naar/output.md}
```

**Frontmatter** (als bestand):
```yaml
---
type: {output-type}
bedrijf: "{Bedrijfsnaam}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
---
```

**Verwachte lengte:** {Aantal regels of woorden globaal}

**Structuur:** {Welke secties komen erin? Korte opsomming.}

---

## 7. Workflow (3-8 stappen)

| # | Stap | Vraag of actie | Output van stap |
|---|---|---|---|
| 1 | Scope kiezen | "Voor welk bedrijf? Welk pad?" | Pad bevestigd |
| 2 | Vault scannen | Lees `{pad1}`, `{pad2}`, ... | Pre-fill-inventarisatie |
| 3 | Pre-fill tonen | "Klopt dit beeld?" | Validatie + correcties |
| 4 | Interview-blok 1 | "{Vraag}" | Antwoord op blok 1 |
| 5 | Interview-blok 2 | "{Vraag}" | Antwoord op blok 2 |
| ... | ... | ... | ... |
| n | Output schrijven | Schrijf naar `{output-pad}` | Bestand opgeslagen |
| n+1 | Logging | Changelog + daily | Skill afgerond |

**Belangrijke regel per workflow:** één blok of vraag per beurt, niet alles tegelijk. Wachten op antwoord, dan pas door.

---

## 8. Schrijfregels (voor de output)

| Onderwerp | Regel |
|---|---|
| **Taal** | Nederlands (of: Brand-Guidelines-conform) |
| **Toon** | {Formeel / persoonlijk / direct / coachend / etc.} |
| **Marketing-superlatieven** | Vermijden ("revolutionair", "next-level", "game-changing") |
| **Em-dashes** | Vermijden (gebruik komma's, haakjes of losse zinnen) |
| **Koppen** | 3-6 woorden, eigen stijl, niet generiek |
| **Persoon** | {Eerste / tweede / derde} persoon |
| **Concrete details** | Specifiek > abstract. Cijfers, namen, voorbeelden. |
| **Lengte** | {Globale richtlijn} |

---

## 9. Drie testprompts (verplicht, voor fase 6)

Drie expliciete voorbeeld-prompts waarmee getest wordt of de skill triggert + werkt. **Variatie is essentieel**, als alle drie identiek zijn, test je niets.

### Testprompt 1, Korte, directe vraag
```
"{Prompt 1 - korte versie, 1 zin}"
```
Verwachting: skill triggert, doorloopt workflow, levert output X.

### Testprompt 2, Conceptueel / vragend
```
"{Prompt 2 - meer vraag dan opdracht, langer, contextrijker}"
```
Verwachting: skill triggert, herkent de impliciete vraag, doorloopt workflow, levert output X.

### Testprompt 3, Impliciete / situationeel
```
"{Prompt 3 - beschrijft een situatie zonder expliciet om de skill te vragen}"
```
Verwachting: skill triggert óók hier, want de description-veld dekt deze framing.

---

## 10. Test-log (in te vullen tijdens fase 6 + 7)

### Fase 6, Eerste test

| # | Prompt | Triggerde? | Workflow liep? | Output klopt? | Score |
|---|---|---|---|---|---|
| 1 | {Prompt 1} | {Ja/Nee} | {Ja/Nee/Deels} | {Ja/Nee/Deels} | {✅/⚠️/❌} |
| 2 | {Prompt 2} | {Ja/Nee} | {Ja/Nee/Deels} | {Ja/Nee/Deels} | {✅/⚠️/❌} |
| 3 | {Prompt 3} | {Ja/Nee} | {Ja/Nee/Deels} | {Ja/Nee/Deels} | {✅/⚠️/❌} |

### Fase 7, Feedback per faal-punt

| Probleem | Fix in SKILL.md | Toegepast |
|---|---|---|
| {Probleem 1} | {Concrete wijziging} | {Ja/Nee} |
| {Probleem 2} | {Concrete wijziging} | {Ja/Nee} |
| {Probleem 3} | {Concrete wijziging} | {Ja/Nee} |

**Regel:** max 3 wijzigingen per fix-ronde, max 3 fix-rondes per sessie.

### Fase 6 (herhaald na fix), Tweede test

| # | Prompt | Triggerde? | Workflow liep? | Output klopt? | Score |
|---|---|---|---|---|---|
| 1 | {Prompt 1} | | | | |
| 2 | {Prompt 2} | | | | |
| 3 | {Prompt 3} | | | | |

---

## 11. Referentie-skills (voor inspiratie tijdens fase 5)

Welke bestaande Upscailed-skills lijken qua patroon op deze nieuwe skill? Lijst kort:

- **Lijkt op:** [`{bestaande-skill}`](../{bestaande-skill}/SKILL.md), {waarom: zelfde categorie / zelfde patroon}
- **Lijkt op:** [`{bestaande-skill}`](../{bestaande-skill}/SKILL.md), {waarom}

---

## 12. Aanvulling op Skills Overzicht (template-snippet)

Voeg na publicatie (fase 8) onderstaande regel toe aan `{scope}/IT/Skills/README.md` én aan `Persoonlijk/Skills Overzicht.md`:

```markdown
| `{slug}` | {Titel} | {Korte beschrijving in 1 zin} | `{scope}/IT/Skills/{slug}/` | {Categorie} | v1.0.0 |
```

---

## 13. Open punten

- [ ] PRD compleet ingevuld
- [ ] Eerste versie SKILL.md geschreven
- [ ] 3 testprompts opgesteld
- [ ] Fase 6, eerste test gedraaid
- [ ] Fase 7, feedback verwerkt
- [ ] Fase 8, polish + Skills Overzicht
- [ ] Changelog bijgewerkt
- [ ] Vault-test op echte case (post-sessie)
