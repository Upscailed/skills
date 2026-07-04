---
name: scale-juridisch
title: "SCALE Juridisch"
description: "Het cross-cutting domein Juridisch en Fiscaal binnen het SCALE-framework van Upscailed: de zakelijke basis op orde brengen met KvK-gegevens, BTW-administratie, algemene voorwaarden, privacyverklaring/AVG, klantcontracten en verzekeringen. Deze skill bundelt 6 modules in de aanbevolen doorloop-volgorde: J1 KvK Administratie (ondernemingsgegevens, BTW-ID, RSIN, rechtsvorm, bestuurders in één canoniek document), J2 BTW Administratie (BTW-status en regime, KOR, OSS, aangiftes en deadlines), J3 Algemene Voorwaarden (15 artikelen voor Nederlandse B2B-dienstverlening), J4 Privacyverklaring (AVG-conform document met data, doel, retentie en rechten van betrokkenen), J5 Klantcontract Template (invulbaar contract met 14 secties op basis van standaard NL contractenrecht) en J6 Verzekeringen Overzicht (polissen-inventarisatie in 7 categorieen plus gap-analyse). Activeer wanneer iemand vraagt om KvK vastleggen, KvK-inschrijving documenteren, ondernemingsgegevens vastleggen, BTW-ID opslaan, rechtsvorm bevestigen, vestigingsadres of bestuurders documenteren, BTW vastleggen, BTW-administratie, BTW-regime documenteren, KOR of kleineondernemersregeling vastleggen, mijn BTW-status op één plek, algemene voorwaarden of AV opstellen, ik heb geen voorwaarden, wat gebeurt er als een klant niet betaalt zonder AV, privacyverklaring maken, AVG-document, privacy policy, klantcontract maken, opdrachtovereenkomst, dienstverleningsovereenkomst, modelcontract, raamcontract, verzekeringen vastleggen of documenteren, polissen op een rij, welke verzekeringen heb ik zakelijk, verzekeringen-check, beroepsaansprakelijkheid checken, cyber-verzekering bedrijf, of zegt: J1 tot en met J6 dichten, gap J1/J2/J3/J4/J5/J6, gat in SCALE-audit voor juridisch, de juridische basis op orde, mijn zakelijke basis regelen. Belangrijk: documentatie en sjablonen, geen vervanging van juridisch, fiscaal of verzekerings-advies."
category: operations
tags: [scale-framework, juridisch, kvk, btw, fiscaal, avg, privacy, av, voorwaarden, contracten, klantcontract, verzekeringen, polissen, aansprakelijkheid, risico]
estimatedTime: "10-45 minuten per module"
version: "1.0.0"
author: Upscailed
license: MIT
---

# SCALE Juridisch

## Doel

Juridisch en Fiscaal is een van de drie cross-cutting domeinen van het SCALE-framework van Upscailed (naast Marketing en Verkoop). Waar de vijf SCALE-lagen (Structure, Collect, Analyze, Leverage, Engineer) het bedrijf opbouwen, zorgt dit domein dat de zakelijke basis eronder klopt: wie je bent (KvK), hoe je fiscaal geregistreerd staat (BTW), onder welke voorwaarden je werkt (AV), hoe je met persoonsgegevens omgaat (privacyverklaring), wat je met klanten afspreekt (contract) en welke risico's zijn afgedekt (verzekeringen).

Deze skill is de gebundelde versie van 6 eerdere losse skills: `kvk-administratie`, `btw-administratie`, `algemene-voorwaarden`, `privacyverklaring`, `klantcontract-template` en `verzekeringen-overzicht`. Elke module leeft als eigen workflow-bestand in `modules/` en wordt pas geladen wanneer die gekozen is.

**Disclaimer:** deze skill levert documentatie en sjablonen op basis van standaard Nederlandse wet- en regelgeving. Het is geen vervanging van juridisch, fiscaal of verzekerings-advies. Bij hoog-risico contracten, complexe privacy-situaties of dekkings-beslissingen: laat het resultaat controleren door een jurist, fiscalist of onafhankelijke verzekeringsmakelaar.

## Modules

De volgorde J1 tot en met J6 is de aanbevolen doorloop-volgorde: J1 en J2 leveren de brongegevens waar J3, J4 en J5 op bouwen; J6 sluit af met het risico-overzicht.

| Code | Module | Wat het oplevert | Bestand |
|------|--------|------------------|---------|
| J1 | KvK Administratie | Ondernemingsgegevens (KvK-nummer, BTW-ID, RSIN, rechtsvorm, adres, SBI, bestuurders) in één canoniek document, pre-filled uit KvK-uittreksel | `modules/kvk-administratie.md` |
| J2 | BTW Administratie | BTW-status en regime (standaard, verlaagd, vrijgesteld, KOR), aangifte-ritme, verlegging, OSS en deadlines in `Juridisch/BTW-administratie.md` | `modules/btw-administratie.md` |
| J3 | Algemene Voorwaarden | Complete set AV van 15 artikelen voor Nederlandse B2B-dienstverlening, klaar voor offertes en contracten | `modules/algemene-voorwaarden.md` |
| J4 | Privacyverklaring | AVG-conforme privacyverklaring: welke data, doel, retentie, verwerkers en rechten van betrokkenen | `modules/privacyverklaring.md` |
| J5 | Klantcontract Template | Invulbaar klantcontract met 14 secties (scope, prijs, IP, aansprakelijkheid), per opdracht in te vullen | `modules/klantcontract-template.md` |
| J6 | Verzekeringen Overzicht | Polissen-inventarisatie in 7 categorieen plus gap-analyse op het risico-profiel | `modules/verzekeringen-overzicht.md` |

## Visuele Flow

```
┌─────────────────────────────────────────────────────────┐
│  SCALE JURIDISCH (router)                                │
└─────────────┬───────────────────────────────────────────┘
              ▼
   ┌─────────────────────┐
   │ 1. Intake of menu   │  Duidelijke vraag? Direct door.
   │                     │  Twijfel? Toon het J1-J6 menu
   │                     │  met de aanbevolen volgorde.
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 2. Module kiezen    │  Eén module (J1-J6) selecteren.
   │                     │  Alleen dat modules/-bestand
   │                     │  laden, nooit alle zes.
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 3. Module-workflow  │  Run-time intro, pre-fill uit
   │    volgen           │  de vault, check-vragen,
   │                     │  interview, document bouwen.
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 4. Opslaan +        │  Resultaat opslaan volgens de
   │    vervolg          │  module. Logische vervolg-
   │                     │  module (J-code) voorstellen.
   └─────────────────────┘
```

## Wanneer triggeren

- "KvK vastleggen", "KvK-inschrijving documenteren", "ondernemingsgegevens vastleggen", "BTW-ID opslaan", "rechtsvorm bevestigen", "mijn KvK-gegevens staan nergens" (J1)
- "BTW vastleggen", "BTW-administratie", "BTW-regime documenteren", "KOR vastleggen", "kleineondernemersregeling", "mijn BTW-status op één plek" (J2)
- "Algemene voorwaarden opstellen", "AV maken", "ik heb geen voorwaarden", "wat als een klant niet betaalt en er geen AV zijn" (J3)
- "Privacyverklaring maken", "AVG-document", "privacy policy" (J4)
- "Klantcontract maken", "opdrachtovereenkomst", "dienstverleningsovereenkomst", "modelcontract", "raamcontract" (J5)
- "Verzekeringen vastleggen", "polissen op een rij", "welke verzekeringen heb ik zakelijk", "verzekeringen-check", "beroepsaansprakelijkheid checken", "cyber-verzekering" (J6)
- Elke verwijzing naar "J1" tot en met "J6", "gap J[n]", "J[n] dichten", of "gat in SCALE-audit voor juridisch"
- "De juridische basis op orde", "zakelijke basis regelen", "juridisch domein doorlopen"

**Triggert NIET bij:**

- Bedrijfsfundament neerzetten (overzicht, ICP, doelen, producten): gebruik `scale-structure`
- Financiële data en boekhoud-koppelingen inrichten: gebruik `scale-collect` (financiele-data-setup)
- Facturatie- of finance-processen automatiseren: gebruik `scale-leverage` (finance-automatisering)
- De vraag "hoe compleet is mijn juridische basis" of een volledige gap-analyse over alle lagen: gebruik `scale-audit`
- Fiscaal advies over welk regime voordeliger is, juridische geschillen of claims: doorverwijzen naar fiscalist of jurist, dat valt buiten deze skill

## Werkwijze (router)

1. **Bepaal de module.** Leid uit de vraag af welke module (J1 tot en met J6) van toepassing is. Bij twijfel of bij een brede vraag ("regel mijn juridische basis"): toon het menu uit de Modules-tabel met de aanbevolen volgorde J1 → J6 en laat de gebruiker kiezen. Stel voor te starten bij de eerste module die nog ontbreekt.
2. **Laad alleen de gekozen module.** Lees uitsluitend het bijbehorende `modules/<naam>.md` en volg die workflow exact. Laad nooit alle modules tegelijk: dat vervuilt de context en de workflows zijn zelfstandig ontworpen.
3. **Huisregels per module.** Elke module volgt dezelfde spelregels:
   - Start met een run-time introductie: wat gaat er gebeuren, hoeveel vragen, geschatte tijd.
   - Pre-fill eerst uit bestaande documenten (vault-scan, KvK-uittreksel, eerdere J-documenten) voordat je vragen stelt.
   - Stel check-vragen om gevonden informatie te valideren in plaats van opnieuw uit te vragen.
   - Sla het resultaat op waar de module dat voorschrijft (doorgaans `{scope}/Juridisch/`).
4. **Stel de vervolg-module voor.** Na afronding: benoem de logische volgende stap. Standaard is dat de volgende J-code (na J1 volgt J2, enzovoort); na J6 is het domein rond en is een `scale-audit`-run de logische check.

## Samenhang

- **scale-structure**: levert het bedrijfsfundament (Overzicht, rechtsvorm-context, producten) waar J1 en J3 op pre-fillen.
- **scale-collect**: financiële data-inrichting sluit aan op J2 (BTW-aangiftes komen uit de boekhouding).
- **scale-analyze**: analyses gebruiken de juridische documenten als vaststaand kader (bijvoorbeeld aansprakelijkheids-grenzen).
- **scale-leverage**: automatiseringen rond facturatie en mailflows moeten kloppen met AV (J3) en privacyverklaring (J4).
- **scale-engineer**: gebouwde tools en portalen verwerken klantdata en leunen dus op J4 en de cyber-dekking uit J6.
- **scale-marketing**: website en campagnes verwijzen naar de privacyverklaring (J4) en de AV (J3).
- **scale-verkoop**: offertes en het salesproces leunen op AV (J3) en het klantcontract (J5).
- **scale-audit**: meet of J1 tot en met J6 bestaan en gevuld zijn; deze skill dicht de gaten die de audit vindt.
