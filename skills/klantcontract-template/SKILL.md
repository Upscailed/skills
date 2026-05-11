---
name: klantcontract-template
title: "Klantcontract Template"
description: "Stelt een invulbaar klantcontract-template op voor Nederlandse B2B-dienstverlening op basis van standaard NL contractenrecht. Scant de vault op bedrijfsgegevens, bestaande Algemene Voorwaarden (J3), KvK Administratie (J1) en Privacyverklaring (J4) en stelt 5 tot 7 gerichte vragen over scope, prijsmodel, doorlooptijd, IP en aansprakelijkheid. Levert een compleet contract met 14 secties, klaar om per opdracht in te vullen. Gebruik deze skill wanneer iemand vraagt om een klantcontract maken, opdrachtovereenkomst, klantcontract template, dienstverleningsovereenkomst, contract voor een klant, modelcontract, raamcontract, J5 dichten, of een gat in de SCALE-audit voor juridisch op J5 wil sluiten."
category: operations
tags: [juridisch, contract, klantcontract, opdrachtovereenkomst, scale-framework, j5]
estimatedTime: "25-40 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Klantcontract Template

## Doel

Levert een invulbaar klantcontract-template op voor Nederlandse B2B-dienstverlening, gebaseerd op standaard Nederlands contractenrecht (Boek 7 BW, opdrachtovereenkomst). De skill scant eerst de vault zodat bedrijfsgegevens, KvK-data, Algemene Voorwaarden en Privacyverklaring niet opnieuw ingetypt hoeven te worden, stelt daarna 5 tot 7 gerichte keuzes voor (prijsmodel, doorlooptijd, IP-overdracht), en levert een document op met 14 verplichte secties: partijen, aard van de opdracht, scope, prijs en facturatie, doorlooptijd, geheimhouding, intellectueel eigendom, AVG, aansprakelijkheid, overmacht, opzegging en ontbinding, geschillenregeling, toepasselijk recht, en ondertekening. Het contract verwijst expliciet naar de Algemene Voorwaarden (J3) als bijlage en naar de Privacyverklaring (J4).

**Let op:** dit is een sjabloon op basis van standaard NL contractenrecht. Laat het bij hoog-risico opdrachten door een jurist controleren.

## Run-time introductie

Bij het starten van de skill begint de assistent met deze intro voor de gebruiker:

> "Ik ga een klantcontract-template voor je opstellen dat je per opdracht kunt invullen. Eerst scan ik je vault op bedrijfsgegevens, KvK-administratie, Algemene Voorwaarden en Privacyverklaring zodat je daarover niets hoeft te herhalen. Daarna stel ik 5 tot 7 vragen over scope, prijsmodel, doorlooptijd, IP-overdracht en aansprakelijkheidsgrens. Het eindresultaat is een Word-achtig contract met 14 secties dat je per klant kunt aanpassen. Reken op 25 tot 40 minuten. Start ik?"

Pas na bevestiging van de gebruiker doorgaan naar Stap 1.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────────┐
│  KLANTCONTRACT TEMPLATE — Workflow                           │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  Stap 1: Scope kiezen                                        │
│  └─ Welk bedrijf? Bevestig pad.                              │
│  └─ Bestaat er al een template? Update of nieuw?             │
│                                                              │
│         ▼                                                    │
│  Stap 2: Vault scannen (geen vragen)                         │
│  └─ Directie/00 - Overzicht.md  → bedrijfsnaam, diensten     │
│  └─ Juridisch/KvK Administratie.md → KvK, vestiging          │
│  └─ Juridisch/Algemene Voorwaarden.md → AV-verwijzing        │
│  └─ Juridisch/Privacyverklaring.md → AVG-verwijzing          │
│  └─ Financiën/ → standaard betalingstermijn                  │
│  └─ Sales/ of Operations/ → bestaande contracten als bron    │
│                                                              │
│         ▼                                                    │
│  Stap 3: Interview — 5 tot 7 vragen                          │
│  ┌────────────────────────────────────────────┐              │
│  │ Q1: B2B of B2C?                            │              │
│  │ Q2: Prijsmodel (vast / maand / uur / mix)? │              │
│  │ Q3: Doorlooptijd (bepaalde / onbepaalde)?  │              │
│  │ Q4: IP-overdracht (ja of licentie)?        │              │
│  │ Q5: Aansprakelijkheidsgrens?               │              │
│  │ Q6: Opzegtermijn? (als doorlopend)         │              │
│  │ Q7: Specifieke geheimhoudingstermijn?      │              │
│  └────────────────────────────────────────────┘              │
│                                                              │
│         ▼                                                    │
│  Stap 4: Document samenstellen                               │
│  └─ 14 secties uit references/template-klantcontract.md      │
│  └─ Pre-fill alles uit vault                                 │
│  └─ Markeer onbekende velden als [INVULLEN PER OPDRACHT]     │
│                                                              │
│         ▼                                                    │
│  Stap 5: Opslaan + cross-link                                │
│  └─ {scope}/Juridisch/Klantcontract-template.md              │
│  └─ Verwijs naar AV (J3) + Privacyverklaring (J4)            │
│  └─ Update Changelog + Daily                                 │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

## Wanneer triggeren

Triggers waarop deze skill geactiveerd moet worden:

- "Maak een klantcontract"
- "Ik heb een contract-template nodig"
- "Opdrachtovereenkomst opstellen"
- "Klantcontract maken"
- "Klantcontract template"
- "Dienstverleningsovereenkomst"
- "Modelcontract opstellen"
- "Raamcontract"
- "J5 dichten" of "gat in SCALE-audit op J5"
- "Ik werk zonder contract, wil er een neerleggen"
- "Hoe regel ik IP-rechten bij een klantopdracht?"
- "Wat zet ik in een klantcontract?"

## Wanneer NIET triggeren

Niet activeren als de vraag eigenlijk over iets anders gaat:

- **Algemene Voorwaarden (J3):** gebruik dan de skill `algemene-voorwaarden`. Algemene Voorwaarden zijn algemeen geldig voor elke klant; een klantcontract is opdrachtspecifiek.
- **Privacyverklaring (J4):** gebruik dan de skill `privacyverklaring`.
- **Verwerkersovereenkomst:** valt buiten deze skill (specifiek AVG-instrument). Geef wel een korte verwijzing in het resultaat.
- **Geheimhoudingsverklaring (NDA) als zelfstandig document:** geheimhouding zit al in het contract. Een losse NDA is pas nodig in pre-contractuele fase; daarvoor is een andere skill.
- **Arbeidsovereenkomst:** dit is geen arbeidscontract, alleen B2B-opdracht.
- **B2C-overeenkomst:** waarschuw dat aanvullende consumentenbescherming (herroepingsrecht, informatieplicht) nodig is en bied aan een aangepaste versie te maken, maar gebruik dan een ander format dan deze B2B-template.

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf het klantcontract opgesteld wordt. Bied de zichtbare bedrijfsmappen in de vault aan als opties. Bevestig de scope voordat je verder gaat.

Controleer of er al een bestand bestaat op `{scope}/Juridisch/Klantcontract-template.md`. Als dat zo is:
- vraag of dit een update is (bestaande aanpassen) of een nieuwe versie (oude archiveren als `Klantcontract-template - archief YYYY-MM-DD.md`)
- als update: lees de oude template in en gebruik wat al goed staat als startpunt

### Stap 2: Vault scannen

Lees onderstaande bestanden systematisch en noteer intern wat je vindt. Vraag de gebruiker daarna NIETS over wat al uit de vault gehaald is.

| Bron | Wat je eruit haalt |
|---|---|
| `{scope}/Directie/00 - Overzicht.md` | Bedrijfsnaam, website, rechtsvorm, diensten, ICP |
| `{scope}/Juridisch/KvK Administratie.md` (als bestaat) | KvK-nummer, vestigingsadres, rechtsvorm, statutaire naam |
| `{scope}/Juridisch/Algemene Voorwaarden.md` (als bestaat) | Bestaat de AV? Versie? Verwijs er expliciet naar als bijlage |
| `{scope}/Juridisch/Privacyverklaring.md` (als bestaat) | Bestaat de privacyverklaring? Verwijzen voor AVG-artikel |
| `{scope}/Financiën/` (als bestaat) | Standaard betalingstermijn, factuurmoment |
| `{scope}/Sales/` of `{scope}/Operations/Processen/` | Bestaande offertes of contracten als referentiebron |
| `{scope}/Directie/Playbook/` | Tone of voice, ICP, mogelijke B2B-vs-B2C-signalen |

Vul daarna intern dit overzicht in:

- Handelsnaam: [uit vault of leeg]
- Statutaire naam: [uit vault of leeg]
- Rechtsvorm: [uit vault of leeg]
- Vestigingsadres: [uit vault of leeg]
- KvK-nummer: [uit vault of "nog niet beschikbaar"]
- Website: [uit vault of leeg]
- Standaard diensten (beknopt): [uit vault]
- Algemene Voorwaarden aanwezig: [ja/nee + versie als ja]
- Privacyverklaring aanwezig: [ja/nee]
- Standaard betalingstermijn: [uit vault of leeg]

### Stap 3: Kort interview

Stel maximaal 7 vragen, alleen over wat niet uit de vault gehaald kon worden. Altijd met een aanbevolen standaard erbij zodat de gebruiker snel kan bevestigen of aanpassen.

**Vraag 1 — Klanttype**
> "Is dit contract voor zakelijke klanten (B2B) of voor consumenten (B2C)? De standaard-template is gemaakt voor B2B-dienstverlening. Bij B2C gelden aanvullende verplichtingen (herroepingsrecht, informatieplicht consument). Wat is het?"

Als B2C: bevestig dat de gebruiker wil doorgaan met een B2C-aanpassing of doorverwijs naar een aparte skill. Bij doorgaan met B2C: noteer dat extra B2C-clausules toegevoegd moeten worden.

**Vraag 2 — Prijsmodel**
> "Hoe wordt de opdracht beprijsd? Kies de hoofdvariant — je kunt later per opdracht een ander model invullen:
> - **A. Vast bedrag eenmalig** (bijv. project met vaste scope)
> - **B. Vaste maandprijs** (bijv. abonnement, retainer, doorlopende dienst)
> - **C. Uurtarief** (bijv. consulting op nacalculatie)
> - **D. Hybride** (vast bedrag + uurtarief voor meerwerk)
>
> Wat is jullie hoofdmodel?"

Op basis van het antwoord: prijs-sectie aanpassen aan het gekozen model. Bij D: beide blokken opnemen.

**Vraag 3 — Doorlooptijd / contractduur**
> "Is de opdracht meestal voor **bepaalde tijd** (projectduur, met opleverdatum) of **onbepaalde tijd** (doorlopend, bijv. retainer of abonnement)? De standaard is bepaalde tijd voor projecten en onbepaalde tijd met opzegtermijn voor retainers. Wat geldt voor jullie standaard-opdracht?"

**Vraag 4 — Intellectueel eigendom**
> "Wat gebeurt er met het intellectueel eigendom van wat jullie opleveren?
> - **A. Volledige overdracht aan klant** (klant krijgt eigendom, jullie behouden alleen referentierecht)
> - **B. Licentie aan klant** (jullie behouden eigendom, klant krijgt gebruiksrecht voor afgesproken doel)
> - **C. Hybride** (klant krijgt eigendom van eindresultaat, jullie behouden eigendom van methodes/templates)
>
> Wat is de standaard? De Upscailed-standaard voor dienstverlening is C, omdat methodes herbruikbaar blijven."

**Vraag 5 — Aansprakelijkheidsgrens** (als niet uit AV)
> "Tot welk bedrag zijn jullie aansprakelijk bij toerekenbare tekortkoming? De standaard voor Nederlandse dienstverleners is: beperkt tot het factuurbedrag van de betreffende opdracht (of de afgelopen 6 maanden bij doorlopende opdrachten). Houden we deze standaard aan, of geldt iets anders?"

Als J3 al een AV bevat met aansprakelijkheidsclausule: verwijs daarnaar en sla vraag over.

**Vraag 6 — Opzegtermijn** (alleen bij onbepaalde tijd / Q3=onbepaalde)
> "Bij doorlopende opdrachten — welke opzegtermijn hanteren jullie? Standaard is **1 kalendermaand** voor beide partijen. Geldt dat hier ook, of iets anders (bijv. 2 of 3 maanden bij grotere retainers)?"

**Vraag 7 — Geheimhoudingsduur** (alleen vragen als gebruiker iets niet-standaards laat doorschemeren)
> "Geheimhouding geldt standaard tijdens én **5 jaar na** afloop van het contract. Wil je dat anders zetten (bijv. 2 jaar of onbeperkt)?"

Als alle vragen al beantwoord zijn via vault-scan: sla Stap 3 over en ga direct naar Stap 4.

### Stap 4: Document samenstellen

Gebruik het template uit `references/template-klantcontract.md` als basis. Vervang alle `[placeholders]` door werkelijke waarden uit de vault-scan en het interview. Markeer twee soorten placeholders verschillend:

- **`[VERIFICEREN]`** — vault had geen data, gebruiker moet eenmalig invullen voordat het template klaar is
- **`[INVULLEN PER OPDRACHT]`** — bewust leeg, per klantopdracht in te vullen (klantnaam, scope, prijs, deadline)

Pas het document aan op basis van de keuzes:

| Keuze | Aanpassing |
|---|---|
| Prijsmodel A (vast bedrag) | Sectie 4: alleen vast-bedrag-blok actief |
| Prijsmodel B (maandprijs) | Sectie 4: maandprijs-blok actief + automatische verlenging-clausule |
| Prijsmodel C (uurtarief) | Sectie 4: uurtarief-blok actief + ureninzicht-clausule |
| Prijsmodel D (hybride) | Sectie 4: vast-bedrag-blok + uurtarief-blok voor meerwerk |
| Bepaalde tijd | Sectie 5: opleverdatum en milestones-blok |
| Onbepaalde tijd | Sectie 5: aanvangsdatum + opzegtermijn-blok |
| IP volledig overdragen | Sectie 7: clausule "volledige overdracht" actief |
| IP licentie | Sectie 7: clausule "gebruikslicentie" actief |
| IP hybride | Sectie 7: clausule "hybride" actief (Upscailed-standaard) |

Sectie 8 (AVG): verwijs altijd expliciet naar de bestaande Privacyverklaring uit J4 als die in de vault staat.

Sectie 12 (toepasselijk recht): verwijs altijd naar de bestaande Algemene Voorwaarden uit J3 als die in de vault staan. Vermeld dat de AV als bijlage gelden.

### Stap 5: Opslaan en cross-link

Sla het document op als `{scope}/Juridisch/Klantcontract-template.md`. Maak de map `Juridisch/` aan als die nog niet bestaat — log dit dan ook in `Systeem/Structuur/Vault Changelog.md`.

Geef daarna drie concrete aanbevelingen:

1. **Gebruik per opdracht:** dit is een template. Maak per klantopdracht een kopie als `{scope}/Sales/Contracten/YYYY-MM-DD - [Klantnaam].md` en vul de `[INVULLEN PER OPDRACHT]`-velden in.
2. **AV als bijlage meesturen:** bij elke ondertekening de Algemene Voorwaarden (J3) als bijlage toevoegen, of als PDF via website-link beschikbaar maken. Zonder ondertekende AV-acceptatie zijn de algemene voorwaarden moeilijker te handhaven.
3. **Juristencheck bij hoog-risico opdrachten:** opdrachten boven €25.000, opdrachten met persoonsgegevens-verwerking of opdrachten met hoog IP-belang door een jurist laten controleren voordat ondertekend wordt.

Logging:
1. Werk het changelog bij: `{scope}/Directie/Changelog.md`
2. Werk de daily van vandaag bij onder "Gedaan vandaag"
3. Als de map `Juridisch/` nieuw aangemaakt is: log ook in `Systeem/Structuur/Vault Changelog.md`
4. Als er een SCALE-audit staat met J5 op ❌ of ⚠️: stel voor om de audit opnieuw te draaien

## Externe of fictieve klant modus

Niet elke gebruiker is een van Iwan's bedrijven met een ingerichte vault. Als de skill wordt aangeroepen voor een extern bedrijf, een fictieve case of een evaluatie:

- Skip de vault-scan stap (Stap 2). Gebruik wat in het prompt staat als enige bron.
- Vul ontbrekende juridische velden in met realistische defaults plus expliciete `[VERIFICEREN]`-marker. Defaults voor Nederlandse B2B-dienstverleners (prijsmodel vast bedrag of maandprijs, hybride IP-clausule, aansprakelijkheid beperkt tot factuurbedrag, 1 maand opzegtermijn, geheimhouding 5 jaar na afloop, Nederlands recht) zijn altijd safe.
- Gebruik `[INVULLEN PER OPDRACHT]` voor velden die per klant variëren, ongeacht of er een vault is.
- Schrijf de deliverable naar het opgegeven output-pad, niet naar `{scope}/...`-paden in een vault die niet bestaat.
- Verwijs naar gerelateerde SCALE-skills (J3 Algemene Voorwaarden, J4 Privacyverklaring) in een aparte sectie "Aanbevolen vervolgstappen", zonder ze automatisch uit te voeren. Vermeld expliciet dat het contract zonder J3 en J4 niet sluitend is.
- Skip changelog-, daily- en vault-mutaties die normaal in Stap 5 gebeuren.
- Sluit af met een "Open punten ter verificatie"-blok dat alle [VERIFICEREN]-velden op één plek lijst.

## Belangrijke regels

- **Vault eerst.** Vraag nooit naar iets dat al ergens in de vault staat. Maximaal 7 vragen, vaak minder.
- **Defaults tonen.** Altijd een aanbevolen standaard meegeven bij elke vraag, zodat de gebruiker snel kan bevestigen of aanpassen.
- **Geen juridisch advies.** Altijd de disclaimer aan de top van het output-document opnemen: "Dit is een sjabloon op basis van standaard NL contractenrecht. Laat het bij hoog-risico opdrachten door een jurist controleren."
- **Nooit overschrijven** zonder bevestiging als er al een klantcontract-template bestaat.
- **Twee soorten placeholders** gebruiken: `[VERIFICEREN]` voor gegevens die eenmalig nog ingevuld moeten worden, `[INVULLEN PER OPDRACHT]` voor velden die per klant variëren.
- **B2B-scope bewaken.** Standaard is dit een B2B-template. Bij B2C-signalen waarschuwen en uitleggen welke aanvullende artikelen nodig zijn.
- **Cross-link verplicht naar J3 + J4.** Het contract moet expliciet naar Algemene Voorwaarden (J3) en Privacyverklaring (J4) verwijzen als die in de vault aanwezig zijn. Staan ze er niet: signaleer aan de gebruiker dat J3 + J4 eerst af moeten zijn voor een sluitend juridisch geheel.
- **Geen marketing-superlatieven.** Het is een juridisch document. Geen "krachtig", "uitstekend", "ongekend".
