---
name: scale-audit
title: "SCALE Audit"
description: "Voert een volledige compleetheids-audit uit op een bedrijf of map binnen het SCALE-framework van Upscailed (Structure, Collect, Analyze, Leverage, Engineer). Loopt langs alle 5 lagen plus 3 cross-cutting domeinen (juridisch, marketing-aanwezigheid, sales-systeem), kijkt of de juiste bestanden bestaan EN of ze inhoudelijk gevuld zijn (geen placeholders), en levert een rapport met visuele statusbalken, percentages per laag, en de top 3 prioriteiten voor de komende maand. Ondersteunt 'niet van toepassing'-markering per scope, zodat persoonlijke mappen niet steeds dezelfde KvK/BTW-meldingen krijgen. Activeer altijd wanneer iemand zegt: 'doe een audit voor [bedrijf]', 'hoe compleet is mijn vault voor X', 'SCALE-status check', 'wat ontbreekt nog voor X', 'gap-analyse voor mijn business', 'voortgangscheck framework', 'business-readiness audit', 'compleetheidscheck op mijn bedrijf'. Triggert ook bij 'ben ik klaar om te lanceren', 'maandelijkse audit', 'is de basis op orde voor [bedrijf]'."
category: operations
tags: [audit, scale-framework, compleetheid, voortgang, gap-analyse, ondernemerschap]
estimatedTime: "10-25 minuten"
version: "1.0.2"
author: Upscailed
license: MIT
---

# SCALE Audit

## Doel

Loopt de mappen-structuur van een bedrijf (of een willekeurige scope, bv. een persoonlijke map) langs het SCALE-framework van Upscailed en levert een rapport met:

1. Een totale compleetheidsscore met visuele statusbalk
2. Per SCALE-laag een score en statusbalk
3. Per cross-cutting domein (juridisch, marketing-aanwezigheid, sales-systeem) een score
4. Detail-checklist met ✅ / ⚠️ / ❌ / n.v.t. per item
5. Top 3 prioriteiten voor de komende maand
6. Concrete vervolgskills die nu de meeste impact hebben

De audit is bedoeld om maandelijks te draaien (de skill stelt aan het einde voor om een scheduled task aan te maken), zodat je voortgang ziet per laag.

## Visuele Flow

```
┌─────────────────────────────────────────────────────────┐
│  SCALE AUDIT                                             │
└─────────────┬───────────────────────────────────────────┘
              ▼
   ┌─────────────────────┐
   │ 1. Scope kiezen     │  Welk bedrijf of welke
   │                     │  map auditen we?
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 2. Config laden     │  Bestaat audit-config.md?
   │                     │  Welke items op n.v.t.?
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 3. Checklist lopen  │  Per laag: bestand bestaat?
   │                     │  Inhoud gevuld? Kwaliteit?
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 4. N.v.t. voorstel  │  Eerste run: vraag welke
   │    (eerste run)     │  items niet relevant zijn
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 5. Rapport schrijven│  Statusbalken, scores,
   │                     │  prioriteiten
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 6. Scheduled task   │  Voorstel: maandelijks
   │    voorstellen      │  automatisch laten lopen
   └─────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker:
- Een audit, gap-analyse of voortgangscheck wil voor een bedrijf in zijn vault
- Wil weten wat er nog ontbreekt om "klaar" te zijn voor lancering of voor een volgende fase
- Een maandelijkse health-check op zijn business wil draaien
- Vraagt of een specifieke laag (Structure, Collect, Analyze, Leverage, Engineer) op orde is

Triggert NIET wanneer:
- De gebruiker een technische security-audit wil op code (gebruik `upscailed-security-audit`)
- De gebruiker een nieuwe vault wil opzetten (gebruik `os-builder`)
- De gebruiker alleen één specifiek document wil opstellen (gebruik de specifieke skill: `tone-of-voice`, `brand-guidelines`)

## Belangrijke voorbereiding

Voordat je start, controleer of je in een filesystem-omgeving bent met leesrechten. De skill leest bestanden uit de gekozen scope om de checks uit te voeren. Schrijfrechten zijn ook nodig (voor `audit-config.md` en het rapport).

## Workflow

### Stap 1: Scope kiezen

Vraag de gebruiker welke map de audit-scope is. Geef concrete opties op basis van wat je in de vault ziet (kies geen scope zelf, vraag het).

**Vraagblok 1:**

1. "Welke map wil je auditen?" Bied opties:
   - Elke `Bedrijven/[Bedrijf]/`-map die bestaat (bij portfolio-ondernemers)
   - De directe bedrijfsnaam-map als top-level (bij solopreneurs met één bedrijf)
   - `Persoonlijk/`-map (voor de persoonlijke kant)
   - Eigen pad opgeven

Bevestig de gekozen scope voordat je doorgaat. Vermeld of er al een eerdere audit bestaat (zoek naar `[scope]/Directie/Research/*-SCALE Audit.md` of vergelijkbare locatie). Als er een eerdere is, noem datum en score.

### Stap 2: Audit-config laden

Zoek naar `[scope]/audit-config.md`. Dit bestand bevat per check of die op "niet van toepassing" staat voor deze scope, plus een korte reden.

- Als het bestand niet bestaat: ga door zonder n.v.t.-uitsluitingen, en plan na de audit een interactief voorstel om items te markeren (Stap 4).
- Als het bestand bestaat: parse de YAML-lijst van n.v.t.-items en sluit ze uit van de checklist.

Het format staat in `references/audit-config-template.md`.

### Stap 3: Checklist doorlopen

Lees `references/checklist.md` voor de complete lijst checks per laag. Deze bevat per item:
- **Pad**: waar het bestand of bewijs zou moeten staan
- **Existence-check**: bestaat het?
- **Quality-check**: heeft het inhoud (niet alleen placeholders, niet alleen `<!-- comments -->`, voldoet aan minimale kwaliteitseisen)?

Per check krijg je één van de volgende statussen:

| Status | Betekenis | Telt mee in score? |
|---|---|---|
| ✅ Geslaagd | Bestand bestaat, inhoud is gevuld, voldoet aan kwaliteit | Ja, als 1 |
| ⚠️ Begin gemaakt | Bestand bestaat maar inhoud is leeg/placeholder/te kort | Ja, als 0,5 |
| ❌ Ontbreekt | Bestand bestaat niet of is volledig leeg | Ja, als 0 |
| ⏭️ N.v.t. | Op n.v.t. gezet via audit-config | Nee (uitgesloten) |

Voor elke check: log wat je hebt gevonden en welke status je hebt toegekend, met een korte motivatie ("missie-veld bevat alleen `<!-- vul aan -->`-placeholder, dus ⚠️ in plaats van ✅"). Dit transparant maken helpt de gebruiker beslissen of ze het eens zijn met je beoordeling.

### Stap 4: N.v.t.-voorstel (alleen bij eerste run, of als config ontbreekt)

Als de scope geen `audit-config.md` heeft, of als je nieuwe checks tegenkomt die in de config nog niet voorkomen, stel dan voor om bepaalde items op n.v.t. te zetten. Doe dit op basis van patroon-herkenning:

- **Voor `Persoonlijk/`-mappen**: stel voor om juridisch (KvK, BTW, AV, klantcontract), sales-systeem, marketing-aanwezigheid, en bepaalde Collect-items (Sales-data, Klanttevredenheid) op n.v.t. te zetten. Iemand zonder bedrijf in deze map heeft die niet.
- **Voor `Bedrijven/[Bedrijf]/` in idee-fase**: stel voor om Leverage en Engineer-items op n.v.t. te zetten als het bedrijf nog geen producten of klanten heeft.
- **Voor opstart-bedrijven**: stel voor om sommige Collect-items (Productiedata, Personeelsdata) op n.v.t. te zetten als het bedrijf solopreneur is zonder personeel.

Bied per voorgestelde n.v.t.-markering een keuze: "Akkoord op n.v.t.", "Toch checken", "Anders". Sla de bevestigingen op in `[scope]/audit-config.md` voor toekomstige runs.

**Belangrijk**: dit is een voorstel, geen automatisch besluit. De gebruiker bepaalt.

### Stap 5: Rapport schrijven (markdown, HTML, en PDF)

Genereer het rapport in **drie formaten** parallel, omdat ze elk een andere rol vervullen:

- **Markdown** (`YYYY-MM-DD - SCALE Audit.md`) is de bron-van-waarheid die in de vault leeft, version control vriendelijk, en in elke editor te lezen.
- **HTML** (`YYYY-MM-DD - SCALE Audit.html`) is een visueel dashboard met progress bars en inklapbare detail-tabellen, ideaal om in een browser te bekijken.
- **PDF** (`YYYY-MM-DD - SCALE Audit.pdf`) is een A4 landscape versie met slimme page-breaks, ideaal om te delen of te printen. Detail-tabellen zijn altijd uitgeklapt zodat alle informatie zichtbaar is op papier.

Alle drie opslaan op dezelfde plek: `[scope]/Directie/Research/` (of `Persoonlijk/Research/` bij persoonlijke scope).

Het rapport bevat in beide formaten:
1. **Header**: scope, datum, vergelijking met vorige audit indien beschikbaar
2. **Hero/totaalscore**: groot percentage + balk + fractie (X van Y)
3. **Per-laag-overzicht**: per laag balk, percentage, fractie en "te gaan"
4. **Cross-cutting domeinen**: zelfde format als per-laag
5. **Belangrijkste inzicht**: één alinea over het patroon dat je ziet
6. **Top 3 prioriteiten**: gekozen op basis van impact
7. **Detail per laag**: complete lijst met status per item + motivatie
8. **Vervolgskills**: per gat een aanbevolen skill of actie

#### Notatie: percentage én aantal

Toon altijd **beide** zodat de gebruiker weet hoeveel werk nog nodig is:
- Hoofdscore: `43% (20 van 47 punten)`
- Per laag: `54% (6,5 van 12) · nog 5,5 te gaan`

**Getalformatting-regel** (belangrijk voor leesbaarheid):
- Gebruik komma's als decimaalteken (Nederlands), niet punten
- Toon de decimaal **alleen als hij betekenisvol is** (niet 0). Dus `6,5` en `2,5` blijven, maar `6,0` wordt `6` en `20,0` wordt `20`
- Bij halve punten (door ⚠️ = 0,5) krijg je vanzelf zinvolle decimalen, bij hele punten weglaten
- Geldt voor zowel "behaald" als "te gaan"-cijfers, en in alle drie de formaten (markdown, HTML, PDF)

#### Statusbalk-format (markdown)

Voor de markdown-versie: 20 Unicode-blokken voor de hoofdscore, 10 voor per-laag-balken. Volle blokken zijn `█`, lege zijn `░`. Bereken het aantal volle blokken als `floor(percentage / 5)` voor 20-blok en `floor(percentage / 10)` voor 10-blok.

```
████████░░░░░░░░░░░░ 43% — 20,0 van 47
```

Per laag in een tabel:
```
| Laag | Balk | Behaald | Te gaan | Status |
|---|---|---|---|---|
| S Structure | `█████░░░░░` 54% | 6,5 van 12 | 5,5 | ⚠️ |
```

#### Statusbalk-format (HTML)

Voor de HTML-versie: gebruik CSS-progress-bars. De template `references/report-template.html` definieert vier kleur-categorieën:
- `s-good` (≥80%): groen
- `s-decent` (50-79%): coral/peach
- `s-warn` (25-49%): amber
- `s-danger` (0-24%): rood

De hoofdscore krijgt een prominente coral gradient bar (Upscailed-merk). Per-laag-cards hebben kleinere bars in de juiste status-kleur.

#### HTML-genereren

Lees `references/report-template.html` als startpunt en vervang de placeholder-data met de actuele audit-data. De template is self-contained (inline CSS, geen externe dependencies behalve eventueel system fonts), zodat de HTML in elke browser opent zonder netwerkverbinding.

#### PDF-genereren

Voor de PDF-versie: gebruik `references/report-template-pdf.html` als startpunt. Deze template heeft een aparte structuur (geen `<details>` maar volledig uitgeklapte detail-tabellen, A4 landscape page-breaks, compactere typografie) zodat hij goed paginaert.

Stappen:
1. Vul de PDF-template met dezelfde data als de HTML-template (de placeholders zijn identiek)
2. Sla de gevulde HTML tijdelijk op als verborgen bestand: `[scope]/Directie/Research/.scale-audit-pdf-source.html`
3. Roep `scripts/html-to-pdf.sh` aan met die source en de gewenste PDF-output:
   ```bash
   bash scripts/html-to-pdf.sh \
     "[scope]/Directie/Research/.scale-audit-pdf-source.html" \
     "[scope]/Directie/Research/YYYY-MM-DD - SCALE Audit.pdf"
   ```
4. Verwijder de tijdelijke HTML-source na succesvolle PDF-generatie
5. Het script gebruikt headless Chrome (of Chromium, of wkhtmltopdf als fallback) en geeft een nette foutmelding als geen converter beschikbaar is

De PDF heeft 4 pagina's:
1. Cover + samenvatting (hero, insight, alle laag-cards)
2. Top 3 prioriteiten (3 kolommen)
3. Detail Laag S + C
4. Detail A + L + E + cross-cutting + scheduled task voorstel

Belangrijk: page-breaks worden gerespecteerd via `page-break-inside: avoid` op cards en tabellen. Dit voorkomt dat een card halverwege de pagina wordt afgesneden.

### Stap 6: Scheduled task voorstellen

Sluit af met een voorstel voor een maandelijkse scheduled task die deze audit automatisch draait op de 1ste van elke maand om 10:00.

Geef de gebruiker drie opties:
1. **Maandelijks** (1ste van de maand om 10:00) — aanbevolen voor maandritme
2. **Per kwartaal** (1ste van Q1, Q2, Q3, Q4) — voor wie minder vaak wil meten
3. **Geen scheduled task** — handmatig draaien wanneer gewenst

Bij keuze 1 of 2: gebruik de scheduled-tasks-tool als die beschikbaar is om de task aan te maken. Naam: `SCALE Audit - [Scope]`. Beschrijving: "Voert een maandelijkse SCALE-audit uit op [scope] en levert het rapport op in `[scope]/Directie/Research/`". Geef de exacte cron-expressie: `0 10 1 * *` voor maandelijks.

Sluit af met: "Je kan de audit ook tussentijds handmatig draaien door deze skill opnieuw aan te roepen."

## Diepere kwaliteitschecks (waarom dit waardevol is)

De skill kijkt niet alleen of een bestand bestaat, maar ook of het écht is ingevuld. Dit voorkomt dat je een 90%-score haalt terwijl er overal `<!-- vul aan -->` in staat.

Voor elke check in `references/checklist.md` staat een minimale kwaliteitseis. Voorbeelden:

- **Brand Guidelines**: bestand bestaat én bevat minimaal 100 woorden én bevat minstens één kleur-hex of typografie-regel (anders is het waarschijnlijk een lege placeholder)
- **Goals**: bestand bestaat én bevat een tabel met meetbare cijfers (geen lege cellen)
- **00 - Overzicht.md**: bestand bestaat én de secties Missie, Doelgroep, Aanbod en Status zijn elk minimaal 1 zin lang (geen `<!-- ... -->` of lege regel)
- **ICP**: in `Persoonlijk/ICP.md` is een sectie met de scope-naam aanwezig én de pijn- en oplossingsvelden zijn ingevuld

Wanneer een check faalt op de quality-eis maar slaagt op existence: status is ⚠️ (begin gemaakt) in plaats van ✅. Dit is belangrijk: het signaleert "je bent begonnen, maar de inhoud heeft nog werk nodig".

## Belangrijke regels

- Schrijf nooit over een bestaand audit-rapport heen. Sla op met datum in de naam.
- Vraag de gebruiker bevestiging voordat je een scheduled task aanmaakt.
- Als de scope niet de standaard mappenstructuur heeft (geen `Directie/`, `Operations/`, etc.), val terug op een flexibelere modus: vraag de gebruiker waar ze hun documenten typisch opslaan en pas de paden aan.
- Wees transparant over je beoordelingen. Voor elke ⚠️ of ❌: leg in één zin uit waarom.
- Als de gebruiker het oneens is met een score, respecteer dat en pas de status aan in de huidige run. Stel voor om een `audit-config.md` regel toe te voegen voor toekomstige runs.
- Werk in het Nederlands. Geen em-dashes in het rapport of de communicatie.
