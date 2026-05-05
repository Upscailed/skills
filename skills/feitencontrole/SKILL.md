---
name: feitencontrole
title: "Feitencontrole"
description: "Controleert systematisch elke feitelijke claim in een tekst op juistheid. Zoekt externe bronnen ter verificatie. Triggert op: feitencheck, fact check, controleer dit, klopt dit, verifieer."
category: research
tags: [research, verificatie, fact-check, content, kwaliteit]
estimatedTime: "10-30 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
---

# Feitencontrole

## Doel

Controleert systematisch elke feitelijke claim in een tekst. Zoekt externe bronnen ter verificatie en geeft een rapport met categorieën (volledig waar, grotendeels waar, niet verifieerbaar, onjuist). Drie gebruiksscenario's: AI-gegenereerde content controleren, je eigen werk controleren, en andermans content controleren.

## Visuele Flow

```
┌─────────────────────────────────────────────────────────┐
│  FEITENCONTROLE                                          │
└─────────────┬───────────────────────────────────────────┘
              ▼
   ┌─────────────────────┐
   │ 1. Claims           │  Identificeer alle
   │    extraheren       │  feitelijke claims
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 2. Bronnen          │  Zoek verificatie per
   │    zoeken           │  claim via web search
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 3. Beoordelen       │  Categoriseer elke
   │                     │  claim op juistheid
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 4. Rapport          │  Overzichtelijk rapport
   │    opleveren        │  met aanbevelingen
   └─────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer de gebruiker:
- Wil weten of claims in een tekst kloppen
- AI-gegenereerde content wil verifiëren voor publicatie
- Zegt: "check dit", "klopt dit?", "feitencheck", "fact check", "verifieer dit"
- Content klaarmaakt voor publicatie en zekerheid wil over de feiten

## Workflow

### Stap 1: Claims extraheren

Lees de tekst en maak een genummerde lijst van alle feitelijke claims. Dit zijn:
- Statistieken en cijfers
- Datums en tijdlijnen
- Citaten (wie zei wat)
- Oorzaak-gevolgrelaties
- Vergelijkingen ("X is groter/beter/sneller dan Y")
- Definities of verklaringen
- Historische feiten

**Negeer** meningen, voorspellingen en subjectieve uitspraken, die zijn niet verifieerbaar.

### Stap 2: Bronnen zoeken

Zoek per claim naar betrouwbare bronnen ter verificatie:
- **Primaire bronnen** : officiële websites, overheidsdata, wetenschappelijke publicaties
- **Secundaire bronnen** : gevestigde nieuwsmedia, vakbladen, Wikipedia
- **Vermijd** : social media, onbekende blogs, forums

Noteer per claim:
- De bron die je hebt gevonden
- Of de bron de claim bevestigt, tegenspreekt of nuanceert

### Stap 3: Beoordelen

Categoriseer elke claim:

| Categorie | Betekenis | Symbool |
|---|---|---|
| Volledig waar | Bevestigd door betrouwbare bron(nen) | ✅ |
| Grotendeels waar | Kern klopt, maar detail wijkt af | 🟡 |
| Niet verifieerbaar | Geen betrouwbare bron gevonden | ⚪ |
| Onjuist | Tegengesproken door betrouwbare bron(nen) | ❌ |
| Verouderd | Was waar, maar is inmiddels achterhaald | 🔄 |

### Stap 4: Rapport opleveren

Lever een rapport op in dit formaat:

```markdown
# Feitencontrole, [Titel/onderwerp]

**Datum:** YYYY-MM-DD
**Bron:** [Waar komt de tekst vandaan?]
**Totaal claims:** [X]

## Samenvatting
- ✅ Volledig waar: [X]
- 🟡 Grotendeels waar: [X]
- ⚪ Niet verifieerbaar: [X]
- ❌ Onjuist: [X]
- 🔄 Verouderd: [X]

**Betrouwbaarheidsscore:** [X/10]

## Detail per claim

### Claim 1: "[exacte claim]"
- **Oordeel:** ✅/🟡/⚪/❌/🔄
- **Bron:** [URL of referentie]
- **Toelichting:** [Korte uitleg]

### Claim 2: "[exacte claim]"
...

## Aanbevelingen
- [Welke claims moeten worden aangepast?]
- [Welke claims hebben extra verificatie nodig?]
```

## Drie gebruiksscenario's

### 1. AI-gegenereerde content controleren

Vooral belangrijk bij:
- Cijfers en statistieken (AI hallucineert regelmatig)
- Datums en namen
- Technische claims

### 2. Eigen werk controleren

Voor publicatie van:
- Blogposts en artikelen
- LinkedIn-content
- Presentaties en workshops

### 3. Andermans content controleren

Nuttig bij:
- Research en bronmateriaal
- Klantteksten die je moet beoordelen
- Nieuws en artikelen die je wilt delen

## Integratie met andere skills

Gebruik deze skill als voorlaatste stap in content-workflows:
1. Content schrijven
2. **Feitencontrole** uitvoeren
3. Vermenselijker of redactie toepassen
4. Publiceren

## Belangrijke regels

- **Wees eerlijk** : markeer claims als "niet verifieerbaar" als je geen bron vindt, in plaats van te gokken
- **Gebruik recente bronnen** : geef de voorkeur aan bronnen van de laatste 2 jaar
- **Vermeld altijd de bron** : geen oordeel zonder referentie
