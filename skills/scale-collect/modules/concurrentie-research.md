# Concurrentie Research (module van scale-collect)

> Bron-skill: `concurrentie-research` | SCALE-code: C6 | Versie: 1.2.0 | Geschatte tijd: 20-40 minuten

---

# Concurrentie Research

## Doel

Brengt minimaal 3 directe concurrenten in kaart voor een Nederlands MKB-bedrijf. De skill scant de vault op wat al bekend is over het bedrijf (ICP, doelgroep, aanbod), stelt maximaal 2 gerichte aanvullende vragen en voert daarna actieve webresearch uit om concurrenten te vinden en te typeren. Het resultaat is een gestructureerd overzicht dat direct herbruikbaar is als input voor de SWOT-analyse (C6 → S6) en Benchmarking (C6 → A5).

## Run-time introductie (toon aan gebruiker bij start)

Voordat de research begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  CONCURRENTIE RESEARCH — SCALE-stap C6                    │
│  ~20-40 minuten · grotendeels geautomatiseerd             │
└──────────────────────────────────────────────────────────┘

  Ik breng minimaal 3 (liefst 5 tot 8) directe concurrenten
  voor je bedrijf in kaart, met een feitelijke typering per
  speler en kansen + bedreigingen als input voor je SWOT.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • Vooraf scan ik je vault op wat al bekend is          │
  │    (ICP, doelgroep, aanbod, eerdere research)           │
  │  • Maximaal 2 gerichte vragen aan jou — alleen als de   │
  │    zoekfocus of gewenste diepgang nog onduidelijk is    │
  │  • Daarna actieve webresearch (Google + websites)       │
  │  • Output: gestructureerde Concurrentie.md in           │
  │    Directie/Research/                                    │
  └────────────────────────────────────────────────────────┘

  Heb je nog externe input (een lijstje concurrenten dat je
  al kent, een marktrapport, een eerdere analyse)? Dan kun
  je dat nu noemen of plakken — ik neem het mee in stap 4.
```

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  CONCURRENTIE RESEARCH                                     │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  ICP, doelgroep, aanbod,
   │                      │  al bekende concurrenten
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Kort interview    │  Max. 2 vragen over
   │                      │  wat ontbreekt
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Webresearch       │  Actief zoeken naar
   │                      │  concurrenten + typeren
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Output            │  Gestructureerd overzicht,
   │    samenstellen      │  klaar voor S6 en A5
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Opslaan +         │  Directie/Research/
   │    aanbevelingen     │  Concurrentie.md
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Concurrenten in kaart brengen" of "competitor analyse"
- "Wie zijn mijn concurrenten?"
- "Marktscan uitvoeren" of "marktonderzoek"
- "C6 dichten" of "gat in SCALE-audit voor concurrentie"
- "SWOT voorbereiden" of "benchmarking starten" (want dit zijn directe afnemers)

Triggert NIET wanneer:
- De gebruiker een SWOT wil uitvoeren (gebruik dan skill `swot-analyse` — concurrentie-research is de voorbereiding)
- De gebruiker een benchmarking wil (gebruik skill `benchmarking` — concurrentie-research is de input)
- Er al een actueel Concurrentie.md bestaat en alleen 1 concurrent bijgewerkt moet worden (pas dan direct dat profiel aan)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf de concurrentieanalyse wordt uitgevoerd. Bied de zichtbare bedrijfsmappen in de vault aan als opties. Bevestig de scope voordat je verder gaat.

Controleer of er al een bestand bestaat op `{scope}/Directie/Research/Concurrentie.md`. Als dat zo is: vraag of dit een update is (aanvullen met nieuwe concurrenten of bestaande profielen bijwerken) of een frisse analyse (oud archiveren als `Concurrentie - archief YYYY-MM-DD.md`).

### Stap 2: Vault scannen

Lees de volgende bestanden systematisch en noteer intern wat je vindt:

| Bron | Wat je eruit haalt |
|---|---|
| `{scope}/Directie/00 - Overzicht.md` | Bedrijfsnaam, sector, aanbod, doelgroep, prijssegment, onderscheidend vermogen |
| `{scope}/Persoonlijk/ICP.md` of `{scope}/Marketing/ICP.md` (indien aanwezig) | Klantprofiel: functie, bedrijfsgrootte, pijnpunten, budget |
| `{scope}/Marketing/Brand Guidelines.md` (indien aanwezig) | Positionering, tone of voice, merkwaarden |
| `{scope}/Directie/Research/` (indien aanwezig) | Eerder gedaan marktonderzoek of concurrentiebevindingen |

Vul daarna onderstaand intern overzicht in:

- Sector / markt: [uit vault of leeg]
- Doelgroep (ICP-kern): [uit vault of leeg]
- Aanbod (kort): [uit vault]
- Prijssegment: [laag / midden / hoog / onbekend]
- Bekende concurrenten (al in vault): [namen of "geen"]
- Geografische focus: [Nederland / regio / internationaal]

### Stap 3: Kort interview

Stel alleen vragen over wat echt ontbreekt na de vault-scan. Maximaal 2 vragen, altijd met een aanbevolen standaard erbij.

**Vraag 1 — Zoekfocus (alleen als sector of doelgroep onduidelijk is):**
> "Op welke markt of niche moet ik me focussen bij het zoeken naar concurrenten? Bijvoorbeeld: '[sector] voor [doelgroep] in Nederland'. Dit helpt me gerichter te zoeken en irrelevante spelers buiten de deur te houden."

**Vraag 2 — Gewenste diepgang (altijd stellen als niet eerder aangegeven):**
> "Hoeveel concurrenten wil je in kaart brengen? De minimale SCALE-eis is 3. Gangbaar voor een goede marktoriëntatie is 5 tot 8. Wat past het beste bij jullie behoefte?"

Als beide punten al duidelijk zijn vanuit de vault of eerdere context: sla Stap 3 over.

### Stap 4: Webresearch

Voer actieve webresearch uit om concurrenten te vinden en te typeren. Gebruik de volgende aanpak:

**4a. Zoekstrategie — concurrent vinden**

Gebruik meerdere zoekopdrachten om verschillende typen concurrenten te vinden:

- `"[sector] [doelgroep] Nederland"` — directe spelers
- `"[aanbod] bureau Nederland"` of `"[dienst] bedrijf MKB"` — categorie-zoekopdracht
- `"alternatieven voor [bekende speler]"` — indirect / vervangers
- `"[sector] top bedrijven Nederland [jaar]"` — ranglijsten en overzichten

Gebruik voor elke gevonden naam WebFetch om de daadwerkelijke website te bezoeken. Noteer alleen concurrenten met een verifieerbare website-URL. Gebruik NOOIT placeholder-namen als "Aigency" of "Groei met AI" — als je de bedrijfsnaam niet kunt verifiëren via een websitebezoek, zoek verder. De waarde van deze skill zit in echte, actuele marktinformatie.

Als WebSearch of WebFetch niet beschikbaar zijn: stop dan bij Stap 4 en informeer de gebruiker dat deze tools vereist zijn (zie `compatibility` in de frontmatter). Gebruik GEEN trainingsdata als vervanging voor live webresearch — dit leidt tot verouderde of onverifieerbare profielen.

**4b. Per concurrent profileren**

Bezoek de website van elke concurrent en noteer:

| Veld | Wat je zoekt |
|---|---|
| Naam | Officiële handelsnaam |
| URL | Website |
| Kernpropositie | Wat claimen ze (tagline, homepage-hero) |
| Doelgroep | Wie bedienen ze (sector, bedrijfsgrootte, functie) |
| Aanbod | Welke diensten of producten |
| Prijsmodel | Vast / uur / abonnement / transparant / niet publiek |
| Zichtbare kanalen | Website, LinkedIn, Instagram, nieuwsbrief, etc. |
| Sterktes | Wat doen ze goed (UX, referenties, autoriteit, niche) |
| Zwaktes | Wat ontbreekt of lijkt zwak (verouderd, duur, breed) |

Voer dit uit voor minimaal 3 concurrenten, bij voorkeur 5 tot 8.

**4c. Typering per concurrent**

Geef elke concurrent een bondige typering in maximaal 2 zinnen: wie ze zijn, wie ze bedienen en wat ze onderscheidt (of juist niet).

### Stap 5: Output samenstellen

Genereer het onderstaande document volledig ingevuld. Voeg voor elke concurrent een apart profiel toe. Minimaal 3, maximaal zo veel als relevant voor de markt.

---

```markdown
---
type: research
bedrijf: [Bedrijfsnaam]
onderwerp: Concurrentie Research
versie: 1.0
status: concept
opgesteld: YYYY-MM-DD
scale_check: C6
herbruikbaar_voor: [S6 SWOT, A5 Benchmarking]
---

# Concurrentie Research — [Bedrijfsnaam]

**Opgesteld:** [datum] | **Sector:** [sector] | **Geografische focus:** [focus]

> Dit overzicht dient als input voor de SWOT-analyse (kansen en bedreigingen) en Benchmarking. Houd het actueel: reviseer minimaal 1x per jaar of bij grote marktontwikkelingen.

---

## Marktcontext

[2-3 zinnen over de markt: hoe groot, hoe vol, welke trends zichtbaar zijn op basis van het onderzoek. Schrijf feitelijk, geen aannames.]

---

## Concurrentieprofielen

### [Naam Concurrent 1]

**Website:** [URL]
**Typering:** [max. 2 zinnen — wie ze zijn en wat hen onderscheidt]

| Aspect | Bevinding |
|---|---|
| Doelgroep | [wie ze bedienen] |
| Aanbod | [kernproducten of -diensten] |
| Prijsmodel | [transparant / op aanvraag / abonnement / uurtarief] |
| Kanalen | [website / LinkedIn / nieuwsbrief / etc.] |
| Sterktes | [wat ze goed doen] |
| Zwaktes | [wat ontbreekt of kwetsbaar is] |

---

### [Naam Concurrent 2]

**Website:** [URL]
**Typering:** [max. 2 zinnen]

| Aspect | Bevinding |
|---|---|
| Doelgroep | |
| Aanbod | |
| Prijsmodel | |
| Kanalen | |
| Sterktes | |
| Zwaktes | |

---

### [Naam Concurrent 3]

**Website:** [URL]
**Typering:** [max. 2 zinnen]

| Aspect | Bevinding |
|---|---|
| Doelgroep | |
| Aanbod | |
| Prijsmodel | |
| Kanalen | |
| Sterktes | |
| Zwaktes | |

---

<!-- Voeg extra profielen toe als er meer dan 3 concurrenten zijn onderzocht -->

---

## Samenvattende analyse

### Kansen (input S6 — Opportunities)

- [Kans 1: iets wat concurrenten niet of slecht doen, of een segment dat onderbedeeld is]
- [Kans 2]
- [Kans 3]

### Bedreigingen (input S6 — Threats)

- [Bedreiging 1: een sterke positie van een concurrent, of een trend die in hun voordeel werkt]
- [Bedreiging 2]
- [Bedreiging 3]

### Benchmarkpunten (input A5 — Benchmarking)

De volgende aspecten zijn zinvol om periodiek te meten ten opzichte van concurrenten:

| Benchmarkpunt | Best in class | Eigen positie |
|---|---|---|
| [Bijv. Prijsniveau] | [Concurrent X] | [Eigen inschatting of VERIFICEREN] |
| [Bijv. Contentvolume] | [Concurrent Y] | |
| [Bijv. Klantbeoordelingen] | [Concurrent Z] | |

---

## Onderzoeksverantwoording

- **Onderzochte concurrenten:** [aantal]
- **Bronnen:** websitebezoeken, [eventueel: Google, LinkedIn, vergelijkingssites]
- **Datum onderzoek:** [YYYY-MM-DD]
- **Volgende revisie aanbevolen:** [YYYY-MM-DD, standaard +12 maanden]
```

---

### Stap 6: Opslaan + aanbevelingen

Sla het document op als `{scope}/Directie/Research/Concurrentie.md`. Maak de map `Directie/Research/` aan als die nog niet bestaat.

Voeg vervolgens een sectie `## Aanbevelingen` toe aan het einde van het document (VOOR je het opslaat of als laatste bewerking):

```markdown
## Aanbevelingen

1. **SWOT (→ S6):** gebruik de secties "Kansen" en "Bedreigingen" hierboven direct als input voor de SWOT-analyse via skill `swot-analyse`. Kopieer de punten naar het juiste kwadrant in Directie/Research/SWOT.md.
2. **Benchmarking (→ A5):** gebruik de tabel "Benchmarkpunten" als startpunt voor periodieke benchmark-metingen via skill `benchmarking`. Vul de kolom "Eigen positie" in na de eerste meting en reviseer per kwartaal.
3. **Revisie:** plan een terugkerende actie om dit document minimaal 1x per jaar bij te werken, of direct wanneer een concurrent een grote verandering doorvoert (nieuw aanbod, prijswijziging, fusie). Datum aanbevolen: [datum + 12 maanden].
```

De aanbevelingen gaan IN het document — niet alleen als chat-bericht. Dit zorgt dat toekomstige lezers van het document altijd weten wat de vervolgstappen zijn.

Logging:
1. Werk het changelog bij: `{scope}/Directie/Changelog.md`
2. Werk de daily van vandaag bij onder "Gedaan vandaag"
3. Als er een SCALE-audit staat met C6 op ❌ of ⚠️: stel voor om de audit opnieuw te draaien

## Externe of fictieve klant modus

Niet elke gebruiker is een van Iwan's bedrijven met een ingerichte vault. Als de skill wordt aangeroepen voor een extern bedrijf, een fictieve case of een evaluatie:

- Skip de vault-scan stap (Stap 2). Gebruik wat in het prompt staat (sector, doelgroep, aanbod) plus publieke kennis via WebSearch en WebFetch als enige bronnen.
- Bij ontbrekende context over de eigen positie of ICP: vul in met realistische aannames plus expliciete `[VERIFICEREN]`-marker. Concurrentie-profielen blijven feitelijk op basis van wat publiek vindbaar is.
- Schrijf de deliverable naar het opgegeven output-pad, niet naar `{scope}/...`-paden in een vault die niet bestaat.
- Verwijs naar gerelateerde SCALE-skills (S6 SWOT, A5 Benchmarking) in een aparte sectie "Aanbevolen vervolgstappen", zonder ze automatisch uit te voeren.
- Skip changelog-, daily- en vault-mutaties die normaal in Stap 6 gebeuren.
- Sluit af met een "Open punten ter verificatie"-blok dat alle [VERIFICEREN]-velden op één plek lijst, vooral voor niet-publieke gegevens (intern prijsmodel concurrent, klantomvang, marge).

## Belangrijke regels

- **Vault eerst.** Zoek nooit naar informatie die al in de vault staat. Bouw het concurrentieprofiel op vanuit wat al bekend is over het bedrijf.
- **Minimaal 3, liefst meer.** De SCALE-eis is 3 concurrenten. Streef naar 5-8 voor een bruikbaar beeld.
- **Webresearch altijd uitvoeren.** De skill mag en moet actief zoeken op internet. Vermeld bronnen transparant.
- **Typering altijd feitelijk.** Geen subjectieve oordelen ("slecht bedrijf"), alleen observeerbare feiten en redelijke inferenties.
- **Herbruikbaarheid bewaken.** De secties "Kansen", "Bedreigingen" en "Benchmarkpunten" zijn verplicht — ze zijn de brug naar S6 en A5.
- **Nooit overschrijven** zonder bevestiging als er al een Concurrentie.md bestaat.
- **[VERIFICEREN] zichtbaar laten** voor velden die niet publiekelijk beschikbaar waren (bijv. intern prijsmodel of klantomvang concurrent).
- **Geografische focus bewaken.** Focus standaard op Nederland. Vermeld expliciet als een concurrent alleen regionaal of internationaal actief is.

## Changelog

### 1.2.0 — 2026-05-11

- Nieuwe sectie "Externe of fictieve klant modus" met publieke kennis als bron.

### 1.0.0 — initiele release

- Eerste productie-versie.
