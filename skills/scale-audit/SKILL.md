---
name: scale-audit
title: "SCALE Audit"
description: "Voert een volledige compleetheids-audit uit op een bedrijf of map binnen het SCALE-framework van Upscailed (Structure, Collect, Analyze, Leverage, Engineer). Loopt langs alle 5 lagen plus 3 cross-cutting domeinen (juridisch, marketing-aanwezigheid, sales-systeem), kijkt of de juiste bestanden bestaan EN of ze inhoudelijk gevuld zijn (geen placeholders), en levert een rapport met visuele statusbalken, percentages per laag, en de top 3 prioriteiten voor de komende maand. Ondersteunt 'niet van toepassing'-markering per scope, zodat persoonlijke mappen niet steeds dezelfde KvK/BTW-meldingen krijgen. Activeer altijd wanneer iemand zegt: 'doe een audit voor [bedrijf]', 'hoe compleet is mijn vault voor X', 'SCALE-status check', 'wat ontbreekt nog voor X', 'gap-analyse voor mijn business', 'voortgangscheck framework', 'business-readiness audit', 'compleetheidscheck op mijn bedrijf'. Triggert ook bij 'ben ik klaar om te lanceren', 'maandelijkse audit', 'is de basis op orde voor [bedrijf]'."
category: operations
tags: [audit, scale-framework, compleetheid, voortgang, gap-analyse, ondernemerschap]
estimatedTime: "10-25 minuten"
version: "1.0.0"
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

### Stap 5: Rapport schrijven

Genereer het rapport volgens `references/report-template.md`. Sla op in `[scope]/Directie/Research/YYYY-MM-DD - SCALE Audit.md` (of bij `Persoonlijk/` in `Persoonlijk/Research/YYYY-MM-DD - SCALE Audit.md`).

Het rapport heeft:
1. **Header**: scope, datum, vergelijking met vorige audit indien beschikbaar
2. **Visuele samenvatting**: totale statusbalk + per-laag-balken
3. **Top 3 prioriteiten**: gekozen op basis van impact (welke laag is het meest achter, welke check geeft het grootste fundament voor andere checks)
4. **Detail per laag**: complete lijst met status per item + korte motivatie waar relevant
5. **Vervolgskills**: per gat een aanbevolen skill (bv. `tone-of-voice` voor ontbrekende ToV)

#### Statusbalk-format

Gebruik 20 Unicode-blokken voor de hoofdscore en per-laag-balken. Volle blokken zijn `█`, lege zijn `░`. Bereken het aantal volle blokken als `round(percentage / 5)` (elke 5% is 1 blok).

```
████████████░░░░░░░░ 60%
```

Per laag in een tabel, met een compactere balk (10 blokken) voor uitlijning:

```
| Laag | Status | Balk |
|---|---|---|
| S Structure | 80% ✅ | ████████░░ |
| C Collect   | 28% ⚠️ | ██░░░░░░░░ |
```

Voor de exacte mapping tussen percentage en blokken, zie `references/report-template.md`.

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
