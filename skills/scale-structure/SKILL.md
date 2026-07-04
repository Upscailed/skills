---
name: scale-structure
title: "SCALE Structure"
description: "De Structure-laag van het SCALE-framework van Upscailed: het fundament van het bedrijf op papier, van identiteit en doelen via merk, doelgroep en aanbod tot processen, team en tools. Deze skill bundelt 12 modules die eerder losse skills waren: Bedrijfsoverzicht (S1), Doelen Coach (S5), Tone of Voice (S3), ICP (S4), Brand Guidelines Builder (S5), SWOT Analyse (S6), Bedrijfsverhaal (S7), Producten en Pricing (S8, dekt ook V2 in de Sales-kolom), Klantreis (S9), SOP Interviewer (S10), Team en Rollen (S11) en Toolstack Inventarisatie (S12). Elke module is een gestructureerd interview dat één canoniek document oplevert in de SCALE-Structure-conventie (Directie/, Directie/Playbook/, Operations/Processen/, HR/, IT/). Activeer wanneer iemand zegt: 'maak een bedrijfsoverzicht', 'wat is mijn bedrijf precies', 'beschrijf mijn bedrijf', 'vul 00 - Overzicht aan', 'doelen stellen', 'doelenplan maken', 'OKR's opstellen', 'jaardoelen of kwartaaldoelen bepalen', 'tone of voice maken', 'hoe moet mijn merk klinken', 'communicatiestijl bepalen', 'schrijfregels voor mijn bedrijf', 'maak een ICP', 'ideale klant beschrijven', 'doelgroep aanscherpen', 'persona schrijven', 'aan wie verkopen we', 'brand guidelines opstellen', 'huisstijl uitwerken', 'help me met branding', 'merkidentiteit of kleurenpalet bepalen', 'maak een SWOT', 'sterktes en zwaktes in kaart brengen', 'kansen en bedreigingen', 'maak een bedrijfsverhaal', 'origin story schrijven', 'About-pagina tekst', 'waarom bestaat mijn bedrijf', 'leg mijn pricing vast', 'pricing-tabel opstellen', 'tarievenlijst maken', 'mijn aanbod of pakketten uitwerken', 'klantreis mappen', 'customer journey uitwerken', 'touchpoints in kaart brengen', 'funnel uittekenen', 'SOP maken', 'werkproces beschrijven', 'procedure documenteren', 'mijn klant-onboarding op papier', 'team beschrijven', 'rollen uitwerken', 'wie doet wat in mijn bedrijf', 'organogram maken', 'welke pet kan ik afstaan', 'maak een toolstack', 'welke tools gebruik ik', 'software-overzicht', 'wat kost mijn software', 'shadow-IT in kaart'. Triggert ook bij iedere expliciete verwijzing naar S1 t/m S12 (Structure), V2 (pricing helder), 'gap S...' of 'S... dichten in SCALE-audit', en bij de canonieke bestandsnamen 00 - Overzicht.md, goals.md, Tone of Voice.md, ICP.md, Brand Guidelines, SWOT.md, Bedrijfsverhaal.md, Producten.md, Klantreis.md, Operations/Processen/, HR/Team.md en IT/Toolstack.md."
category: structure
tags: [scale-framework, structure, bedrijfsoverzicht, doelen, tone-of-voice, icp, branding, swot, bedrijfsverhaal, producten, pricing, klantreis, sop, team, toolstack]
estimatedTime: "10-45 minuten per module"
version: "1.0.0"
author: Upscailed
license: MIT
---

# SCALE Structure

## Doel

Structure is de eerste laag van het SCALE-framework van Upscailed: het fundament van het bedrijf, vastgelegd in canonieke documenten. Wie het bedrijf is (identiteit, verhaal, merk), waar het naartoe wil (doelen), voor wie het werkt (ICP), wat het verkoopt (producten en pricing), hoe de klant beweegt (klantreis) en hoe het werk loopt (SOPs, team, toolstack). Zonder deze laag moet een AI bij elke vraag opnieuw raden; mét deze laag kunnen alle latere SCALE-lagen (Collect, Analyze, Leverage, Engineer) op een vast fundament bouwen.

Dit is de gebundelde versie van 12 eerdere losse skills. Elke bron-skill leeft voort als module in `modules/`, met de volledige oorspronkelijke workflow. Deze SKILL.md is alleen de router: hij bepaalt welke module van toepassing is en laadt die.

## Modules

De volgorde hieronder is de aanbevolen doorloop-volgorde.

| Code | Module | Wat het oplevert | Bestand |
|------|--------|------------------|---------|
| S1 | Bedrijfsoverzicht | Canoniek bedrijfsoverzicht in `Directie/00 - Overzicht.md`: identiteit, missie, doelgroep, aanbod, KPI's, status | `modules/bedrijfsoverzicht.md` |
| S5 | Doelen Coach | Strategisch doelenplan in `Directie/goals.md`: 3-jaar visie, 1-jaar OKR-light, kwartaaldoelen | `modules/doelen-coach.md` |
| S3 | Tone of Voice | Tone of Voice-document in `Directie/Playbook/Tone of Voice.md`: merkstem, do's en don'ts, kanaalrichtlijnen | `modules/tone-of-voice.md` |
| S4 | ICP | Ideal Customer Profile in `Directie/Playbook/ICP.md`: segmenten, pijnpunten, triggers, niet-ideale klant | `modules/icp.md` |
| S5 | Brand Guidelines Builder | Professionele brand guidelines: merkidentiteit, kleurenpalet, typografie, visuele stijl | `modules/brand-guidelines.md` |
| S6 | SWOT Analyse | SWOT met cross-analyse in `Directie/Research/SWOT.md`: sterktes, zwaktes, kansen, bedreigingen, strategieën | `modules/swot-analyse.md` |
| S7 | Bedrijfsverhaal | Mens-eigen origin story (500-1000 woorden) in `Directie/Playbook/Bedrijfsverhaal.md` | `modules/bedrijfsverhaal.md` |
| S8 + V2 | Producten en Pricing | Producten- en pricing-document in `Directie/Playbook/Producten.md`: pakketten, prijzen, marges, upsells | `modules/producten-en-pricing.md` |
| S9 | Klantreis | Customer journey in `Directie/Playbook/Klantreis.md`: fases, touchpoints, pain points, decision moments | `modules/klantreis.md` |
| S10 | SOP Interviewer | 3 tot 5 SOPs in `Operations/Processen/` plus index-README, gekoppeld aan klantreis en rollen | `modules/sop-interviewer.md` |
| S11 | Team en Rollen | Rollenoverzicht in `HR/Team.md`: verantwoordelijkheden, beslissingsbevoegdheid, handoffs, AI-leverage-kansen | `modules/team-en-rollen.md` |
| S12 | Toolstack Inventarisatie | Toolstack-inventaris in `IT/Toolstack.md`: tools, kosten, owners, integraties, shadow-IT | `modules/toolstack-inventarisatie.md` |

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  SCALE STRUCTURE (router)                                 │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Intake of menu    │  Duidelijke vraag? Direct door.
   │                      │  Twijfel? Toon het menu met de
   │                      │  12 modules en de aanbevolen
   │                      │  doorloop-volgorde.
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Module kiezen     │  Match de vraag op één module
   │                      │  (S1 t/m S12, of V2 → S8).
   │                      │  Laad ALLEEN dat module-bestand.
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Module-workflow   │  Volg modules/<naam>.md exact:
   │    volgen            │  intro, bronnen-scan, pre-fill,
   │                      │  interview blok voor blok,
   │                      │  document opbouwen.
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Opslaan en        │  Resultaat op het canonieke pad
   │    vervolg-module    │  van de module. Stel daarna de
   │    voorstellen       │  logische vervolg-module voor,
   │                      │  of de volgende SCALE-laag.
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer iemand:

- Een **bedrijfsoverzicht** wil: "maak een bedrijfsoverzicht", "wat is mijn bedrijf precies", "beschrijf mijn bedrijf", "vul 00 - Overzicht aan", "mijn bedrijfscontext vastleggen voor AI" (S1)
- **Doelen** wil stellen: "doelenplan maken", "doelen stellen", "OKR's opstellen", "jaardoelen of kwartaaldoelen bepalen", "3-jaar visie uitwerken" (S5, Doelen Coach)
- Een **tone of voice** wil: "tone of voice maken", "hoe moet mijn merk klinken", "communicatiestijl bepalen", "schrijfregels voor mijn bedrijf", "do's en don'ts voor teksten" (S3)
- Een **ICP** wil: "maak een ICP", "ideale klant beschrijven", "doelgroep aanscherpen", "persona schrijven", "aan wie verkopen we" (S4)
- **Brand guidelines** wil: "brand guidelines opstellen", "huisstijl uitwerken", "help me met branding", "merkidentiteit", "kleurenpalet of typografie bepalen" (S5, Brand Guidelines Builder)
- Een **SWOT** wil: "maak een SWOT", "sterktes en zwaktes in kaart brengen", "kansen en bedreigingen", "cross-analyse maken" (S6)
- Een **bedrijfsverhaal** wil: "maak een bedrijfsverhaal", "origin story schrijven", "About-pagina tekst", "waarom bestaat mijn bedrijf" (S7)
- **Producten en pricing** wil vastleggen: "leg mijn pricing vast", "pricing-tabel opstellen", "tarievenlijst maken", "mijn aanbod of pakketten uitwerken", "wat reken ik voor X" (S8 en V2)
- De **klantreis** wil mappen: "klantreis mappen", "customer journey uitwerken", "touchpoints in kaart brengen", "funnel uittekenen", "waar valt mijn klant uit" (S9)
- **SOPs** wil vastleggen: "SOP maken", "werkproces beschrijven", "procedure documenteren", "mijn klant-onboarding op papier", "wat doe ik elke maand opnieuw" (S10)
- **Team en rollen** wil beschrijven: "team beschrijven", "rollen uitwerken", "wie doet wat in mijn bedrijf", "organogram maken", "welke pet kan ik afstaan" (S11)
- De **toolstack** wil inventariseren: "maak een toolstack", "welke tools gebruik ik", "software-overzicht", "wat kost mijn software", "shadow-IT in kaart" (S12)
- Verwijst naar een **SCALE-audit-gap** in de Structure-kolom: "S1 dichten", "gap S4", "S10 dichten in SCALE-audit", of naar V2 ("V2 pricing helder")
- Een van de **canonieke bestanden** noemt: `00 - Overzicht.md`, `goals.md`, `Tone of Voice.md`, `ICP.md`, `SWOT.md`, `Bedrijfsverhaal.md`, `Producten.md`, `Klantreis.md`, `Operations/Processen/`, `HR/Team.md`, `IT/Toolstack.md`

**Triggert NIET** bij:

- Data verzamelen en aansluiten (CRM, financiële data, marketing-data, mailflow): dat is `scale-collect`
- Analyses en rapportages op verzamelde data (dashboards, KPI-rapportage, benchmarking, feitencontrole): dat is `scale-analyze`
- Het inzetten van bestaande tools en AI op processen (automatisering, prompts, workflows): dat is `scale-leverage`
- Maatwerk bouwen (apps, portalen, integraties, MCP): dat is `scale-engineer`
- Marketing-uitvoering (content, nieuwsbrieven, social presence): dat is `scale-marketing`. Uitzondering: het definiëren van merk, tone of voice en ICP hoort wél hier
- Sales-uitvoering (salesproces, opvolg-flow, CRM-inrichting): dat is `scale-verkoop`. Uitzondering: pricing en aanbod vastleggen (S8/V2) hoort wél hier; `scale-verkoop` verwijst daarvoor naar deze skill
- Juridische documenten (voorwaarden, privacyverklaring, contracten): dat is `scale-juridisch`
- Een volledige nulmeting van het bedrijf over alle lagen: dat is `scale-audit`

## Werkwijze (router)

1. **Bepaal de module.** Lees de vraag en match op de tabel hierboven (onderwerp, S-code of canoniek bestand). Bij twijfel, of als de gebruiker breed vraagt ("help me met mijn fundament", "waar begin ik"): toon het menu met de 12 modules en de aanbevolen doorloop-volgorde, en laat de gebruiker kiezen.
2. **Laad alleen de gekozen module.** Lees dan ALLEEN het gekozen `modules/<naam>.md` en volg die workflow exact, van intro tot opslag. Laad niet alle modules tegelijk; de andere modules blijven ongelezen tot ze nodig zijn.
3. **Huisregels, geldig voor elke module:**
   - Start met een run-time intro: wat gaan we doen, hoeveel vragen of blokken, en de geschatte tijd van de module.
   - Pre-fill uit bestaande documenten voordat je vragen stelt: scan eerst de bronnen die de module noemt, en stel geen vragen waarvan het antwoord al ergens staat.
   - Stel check-vragen om gevonden informatie te valideren voordat je erop bouwt ("klopt het dat...?").
   - Sla het resultaat op waar de module dat voorschrijft (het canonieke pad in de SCALE-Structure-conventie).
4. **Stel na afronding de vervolg-stap voor.** Kies de logische vervolg-module uit de doorloop-volgorde (bijvoorbeeld: na S1 → Doelen Coach, na S4 → Brand Guidelines, na S9 → SOPs), of stel de volgende SCALE-laag voor als de Structure-laag compleet is.

## Samenhang

- `scale-collect`, `scale-analyze`, `scale-leverage` en `scale-engineer` bouwen op de documenten die deze skill oplevert: zonder Structure-fundament missen zij hun context.
- `scale-marketing` gebruikt Tone of Voice (S3), ICP (S4), Brand Guidelines (S5) en Bedrijfsverhaal (S7) als input voor alle content en campagnes.
- `scale-verkoop` leunt op ICP (S4), Producten en Pricing (S8/V2) en Klantreis (S9). Let op: de module `producten-en-pricing` raakt ook de verkoopkant (V2, pricing helder); `scale-verkoop` verwijst daarvoor naar deze skill in plaats van het zelf te doen.
- `scale-juridisch` gebruikt het Bedrijfsoverzicht (S1) en Producten (S8) als basis voor voorwaarden en contracten.
- `scale-audit` is de nulmeting die per Structure-stap (S1 t/m S12) vaststelt wat er ligt; de gaps die daaruit komen worden met de modules van deze skill gedicht, en na afronding zet de audit de status van die stap op ✅.
