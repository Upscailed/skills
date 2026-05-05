# Post-setup Checklist

Sjabloon voor het eindrapport dat de skill aan het einde van de setup levert. Vul placeholders in op basis van de antwoorden uit de vragen-flow.

## Het rapport

Lever het in deze volgorde, in chat aan de gebruiker. Houd het scanbaar.

---

### 🎉 OS opgezet

**Locatie:** `{{vault-pad}}`
**Aangemaakt:** {{aantal-mappen}} mappen, {{aantal-bestanden}} bestanden
**Voor:** {{Naam}} ({{ondernemers-vorm}})
**Bedrijven:** {{bedrijven-lijst}}

Open je vault-map met je code-editor (VS Code, Cursor, Obsidian) of start een nieuwe Claude Code sessie in de map om te beginnen.

---

### Stap 1: Pak de basis op (essentieel, 30 tot 60 minuten)

Zonder deze context kan je AI niet veel met je OS. Dit is dus geen "leuk om te doen" maar het fundament.

**A. Vul je profiel aan**

Open `Persoonlijk/00 - Over {{Naam}}.md` en vul minimaal in:
- **Visie** : 2 tot 3 zinnen over wat je in dit leven wilt bereiken en waarom je onderneemt. AI gebruikt dit om voorstellen op je richting af te stemmen.
- **Waarden** : 3 tot 5 kernwaarden. Bepaalt welke kansen je wel of niet pakt.
- **Werkstijl** : hoe werk je het liefst? Solo, in sprints, vroege ochtenden? AI gebruikt dit om planningen te maken die bij jou passen.
- **Achtergrond** : 1 alinea over hoe je hier bent gekomen. Helpt AI om de juiste toon te kiezen.

**B. Vul de bedrijfs-overzichten aan**

Voor elk bedrijf, open `{{prefix}}/Directie/00 - Overzicht.md`:
- **Missie** : waarom bestaat dit bedrijf?
- **Aanbod** : 3 tot 5 bullets met wat je verkoopt
- **KPI's** : 3 tot 7 meetbare cijfers waar je op stuurt (omzet, marge, klanten, conversie, etc.)
- **Kanalen** : hoe bereik je klanten?

**C. Stel je doelen op**

Open `Persoonlijk/01 - Goals.md` en de `{{prefix}}/Directie/01 - Goals.md` per bedrijf. Vul 1 tot 3 doelen voor {{jaar}}, met meetbare targets. Zonder doelen kan AI je niet helpen sturen of prioriteren.

**D. Leg je werkafspraken vast**

Open `Persoonlijk/Afspraken AI.md`. Voeg toe:
- Specifieke woorden of taal die je liever niet gebruikt
- Hoe vaak je gestoord wil worden voor bevestiging (laag/middel/hoog)
- Vaste tijden waarop je AI-tools wil draaien (bv. dagstart om 09:00)

---

### Stap 2: Geef je AI scherpere context (1 tot 3 uur, gespreid over een week)

Dit zijn de stukken die je AI van "behulpzaam" naar "scherp" tillen. Niet allemaal in één keer.

**Per bedrijf:**

- **ICP** in `Persoonlijk/ICP.md` : wie is je ideale klant per bedrijf? Pijnpunten, kanalen, triggers, bezwaren.
- **Brand guidelines** : visuele identiteit, kleuren, typografie. Tip: gebruik de skill `brand-guidelines` uit deze bibliotheek voor een interactief proces.
- **Tone of voice** : hoe communiceer je? Tip: gebruik de skill `tone-of-voice`.

**Cross-bedrijf (alleen bij meerdere bedrijven):**

- **Strategie** in `Persoonlijk/Strategie.md` : hoe verhouden je bedrijven zich? Welke synergiën? Lange termijn?

---

### Stap 3: Begin met loggen (vandaag nog, 5 minuten)

De OS wordt waardevol door gebruik. Maak vandaag je eerste daily.

```bash
# Vanuit je vault-map
mkdir -p Huddle/Daily
cp "Systeem/Templates/Daily Log.md" "Huddle/Daily/{{datum-vandaag}}.md"
```

Open dat bestand, vul je focus van vandaag in, plus 1 tot 3 acties. Sluit aan het einde van de dag af met een korte reflectie.

Doe dit een week en je zult merken dat AI veel beter kan helpen met "wat moet ik vandaag doen" omdat hij een patroon kan zien.

---

### Stap 4: Vervolg-skills die nu waardevol zijn

Wanneer je de basis hebt staan, kun je deze skills oppakken voor specifieke onderwerpen:

- **`brand-guidelines`** : interactief je visuele identiteit per bedrijf opbouwen
- **`tone-of-voice`** : per bedrijf je communicatiestijl vastleggen
- **`prompt-optimaliseerder`** : je eerste prompts scherpzetten zodat je betere AI-output krijgt
- **`feitencontrole`** : voor wanneer je content gaat publiceren en zekerheid wilt over de feiten

Alle skills staan op [github.com/Upscailed/skills](https://github.com/Upscailed/skills) en op [upscailed.nl/skills](https://upscailed.nl/skills).

---

### Stap 5: Onderhoud (doorlopend)

Eens per maand:
- Doorloop je doelen, werk de status bij
- Lees je changelogs door om te zien wat er gebeurd is
- Schoon `Persoonlijk/Inbox.md` op

Eens per kwartaal:
- Uitgebreide goals-review
- Kijk of de mappenstructuur nog past, of dat je iets wilt herorganiseren

---

### Vragen die ik je nu stel om door te gaan

Sluit het rapport af met een keuzeblok:

1. "Zal ik nu beginnen met `Persoonlijk/00 - Over {{Naam}}.md` invullen?" Bied opties:
   - "Ja, vraag me door en vul direct in"
   - "Nee, ik vul het zelf in. Bedankt."
   - "Ik wil eerst de bedrijfs-overzichten doen"

Wat de gebruiker ook kiest: respecteer het. Push niet naar meer werk dan ze willen.
