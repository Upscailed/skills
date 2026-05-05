---
name: prompt-optimaliseerder
title: "Prompt Optimaliseerder"
description: "Herschrijft rommelige of ongestructureerde prompts naar geoptimaliseerde, gestructureerde prompts volgens best practices. Triggert op: prompt verbeteren, prompt herschrijven, brain dump optimaliseren, prompt review."
category: productiviteit
tags: [prompts, optimalisatie, ai, productiviteit]
estimatedTime: "5-15 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
---

# Prompt Optimaliseerder

## Doel

Neemt een ongestructureerde brain dump, rommelige prompt of vaag verzoek en herschrijft dit naar een geoptimaliseerde, gestructureerde prompt volgens bewezen best practices. Verbetert direct de kwaliteit van alle AI-outputs door betere input te leveren.

## Visuele Flow

```
┌─────────────────────────────────────────────────────────┐
│  PROMPT OPTIMALISEERDER                                  │
└─────────────┬───────────────────────────────────────────┘
              ▼
   ┌─────────────────────┐
   │ 1. Origineel        │  Lees de originele prompt
   │    analyseren       │  of brain dump
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 2. Zwaktes          │  Identificeer wat er
   │    identificeren    │  beter kan
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 3. Herschrijven     │  Geoptimaliseerde versie
   │                     │  met uitleg
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 4. Vergelijking     │  Voor/na laten zien
   │    tonen            │  met verbeterpunten
   └─────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer de gebruiker:
- Een prompt wil verbeteren of herschrijven
- Een brain dump deelt die gestructureerd moet worden
- Zegt: "verbeter deze prompt", "herschrijf dit", "maak hier een goede prompt van"
- Een lange, ongestructureerde instructie geeft die geoptimaliseerd kan worden

## Workflow

### Stap 1: Origineel analyseren

Lees de originele prompt of brain dump en identificeer:
- Het beoogde doel (wat wil de gebruiker bereiken?)
- De doelgroep van de output
- Impliciete aannames
- Ontbrekende context

### Stap 2: Zwaktes identificeren

Controleer op veelvoorkomende prompt-problemen:
- **Vaagheid** : onduidelijke instructies, meerdere interpretaties mogelijk
- **Ontbrekende context** : wie, wat, waarom, voor wie?
- **Geen outputformaat** : geen specificatie van gewenst formaat of lengte
- **Geen rolbepaling** : geen expertise of perspectief gedefinieerd
- **Te breed** : probeert te veel tegelijk
- **Geen voorbeelden** : geen referentie van wat "goed" eruitziet
- **Geen beperkingen** : geen grenzen gesteld (lengte, stijl, toon)

### Stap 3: Herschrijven

Herschrijf de prompt met deze structuur:

```
## Rol
[Wie moet de AI zijn? Welke expertise?]

## Context
[Achtergrondinformatie die de AI nodig heeft]

## Opdracht
[Duidelijke, specifieke instructie]

## Vereisten
- [Eis 1]
- [Eis 2]
- [Eis 3]

## Outputformaat
[Gewenst formaat, lengte, stijl]

## Voorbeelden (optioneel)
[Voorbeeld van gewenste output]

## Beperkingen
[Wat moet de AI NIET doen?]
```

### Stap 4: Vergelijking tonen

Geef terug:
1. **Origineel**, de oorspronkelijke prompt
2. **Geoptimaliseerd**, de herschreven versie
3. **Wat is verbeterd**, korte opsomming van de verbeteringen

## Optimalisatieprincipes

### Duidelijkheid boven alles
- Elke zin heeft één betekenis
- Vermijd dubbelzinnige woorden
- Wees specifiek over verwachtingen

### Structuur verhoogt kwaliteit
- Gebruik koppen en secties
- Scheid instructie van context
- Geef voorrang aan de belangrijkste informatie

### Context is koning
- Vermeld altijd het doel
- Geef de doelgroep aan
- Deel relevante achtergrondinformatie

### Beperkingen voorkomen afdwaling
- Stel grenzen aan lengte
- Definieer wat je NIET wilt
- Geef aan welke aannames niet gemaakt mogen worden

## Belangrijke regels

- **Behoud de intentie** : de geoptimaliseerde prompt moet hetzelfde doel dienen
- **Voeg geen eigen inhoud toe** : optimaliseer de structuur, niet de boodschap
- **Taal afstemmen** : als de originele prompt Nederlands is, blijft de output Nederlands
