---
name: scale-marketing
title: "SCALE Marketing"
description: "Het cross-cutting domein Marketing-aanwezigheid binnen het SCALE-framework van Upscailed: zichtbaar en vindbaar zijn voor de juiste doelgroep. Bundelt de vier marketing-stappen in één skill met vier modules: M1 Website Launch Check (website veilig en compleet live zetten via een checklist met 9 categorieën: content, SEO, privacy/AVG, performance, security, functioneel, analytics, pre-launch test, domain en DNS), M2 Social Presence Setup (social-aanwezigheidsplan: kanaalkeuze passend bij de ICP, profiel-checklist, posting-cadans, content-mix, engagement en KPI's), M3 Content Roadmap (werkbare content-roadmap: 4 weken concreet ingepland plus kwartaalthema's, pijlers en cadans per kanaal) en M4 Nieuwsbrief Setup (e-mail-nieuwsbrief opzetten: provider-keuze, sender-domein met SPF/DKIM/DMARC, template, signup en double-opt-in, segmentatie, cadans en concept voor editie 1). De router bepaalt welke module van toepassing is, laadt alleen die module en stelt na afronding de logische vervolg-module voor. Activeer wanneer iemand zegt: 'website launch check', 'site live zetten', 'pre-launch checklist', 'is mijn website klaar', 'check mijn website', 'go-live checklist website', 'kunnen we de site online zetten', 'social media opzetten', 'social-aanwezigheid bouwen', 'kanalen kiezen', 'welke social-platforms gebruik ik', 'LinkedIn bedrijfspagina inrichten', 'Instagram bio schrijven', 'posting-cadans bepalen', 'engagement-strategie', 'content planning', 'content roadmap', 'wat ga ik posten', 'redactiekalender', 'content-kalender maken', 'wat zet ik op LinkedIn', 'content-strategie uitwerken', 'thema's per kwartaal', 'nieuwsbrief opzetten', 'mailprovider kiezen', 'newsletter starten', 'e-mail-marketing inrichten', 'welkomstmail-flow bouwen', 'DKIM en SPF instellen', 'double-opt-in inrichten', 'eerste nieuwsbrief sturen', of bij iedere verwijzing naar M1, M2, M3, M4, 'gap M1' tot en met 'gap M4', 'M1 dichten in SCALE-audit' of de bestanden Website-Launch-Check.md, Social-Presence.md, Content Roadmap.md en Nieuwsbrief-Setup.md."
category: operations
tags: [scale-framework, marketing, website, launch, seo, social-media, linkedin, content, redactiekalender, nieuwsbrief, email, deliverability, avg, analytics]
estimatedTime: "10-45 minuten per module"
version: "1.0.0"
author: Upscailed
license: MIT
---

# SCALE Marketing

## Doel

Marketing-aanwezigheid is een van de drie cross-cutting domeinen van het SCALE-framework (naast Verkoop en Juridisch). Waar de vijf lagen (Structure, Collect, Analyze, Leverage, Engineer) het fundament en de motor van het bedrijf bouwen, zorgt dit domein ervoor dat het bedrijf **zichtbaar en vindbaar** is: een website die klaar is voor publiek, social-kanalen die passen bij de doelgroep, een content-plan dat consistentie afdwingt en een nieuwsbrief die van bezoekers relaties maakt.

Dit is de gebundelde versie van 4 eerdere losse skills: `website-launch-check`, `social-presence-setup`, `content-roadmap` en `nieuwsbrief-setup`. De inhoud van die skills leeft ongewijzigd voort als modules in `modules/`. Deze SKILL.md is alleen de router: hij kiest de juiste module en bewaakt de gezamenlijke huisregels.

De volgorde M1 tot en met M4 is de aanbevolen doorloop-volgorde: eerst de website op orde (M1), dan de kanalen eromheen (M2), dan een plan voor wat je daar plaatst (M3), en tot slot het kanaal dat je zelf bezit (M4).

## Modules

| Code | Module | Wat het oplevert | Bestand |
|------|--------|------------------|---------|
| M1 | Website Launch Check | Launch-checklist met 9 categorieën (content, SEO, AVG, performance, security, functioneel, analytics, pre-launch test, DNS), vastgelegd in `Marketing/Website-Launch-Check.md` | `modules/website-launch-check.md` |
| M2 | Social Presence Setup | Social-aanwezigheidsplan per kanaal (kanaalkeuze op ICP, profiel-checklist, cadans, content-mix, engagement, tools, KPI's) in `Marketing/Social-Presence.md` | `modules/social-presence-setup.md` |
| M3 | Content Roadmap | Content-roadmap met 4 weken concreet ingepland plus kwartaalthema's, pijlers en cadans per kanaal in `Marketing/Content Roadmap.md` | `modules/content-roadmap.md` |
| M4 | Nieuwsbrief Setup | Nieuwsbrief-fundament (provider, sender-domein met SPF/DKIM/DMARC, signup met double-opt-in, segmentatie, cadans) in `Marketing/Nieuwsbrief-Setup.md` plus concept editie 1 | `modules/nieuwsbrief-setup.md` |

## Visuele Flow

```
┌─────────────────────────────────────────────────────────┐
│  SCALE MARKETING                                         │
└─────────────┬───────────────────────────────────────────┘
              ▼
   ┌─────────────────────┐
   │ 1. Intake of menu   │  Vraag duidelijk over één
   │                     │  module? Zo niet: toon menu
   └──────────┬──────────┘  met aanbevolen volgorde
              ▼
   ┌─────────────────────┐
   │ 2. Module kiezen    │  M1 website, M2 social,
   │                     │  M3 content, M4 nieuwsbrief
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 3. Module-workflow  │  Lees alleen het gekozen
   │    volgen           │  modules/<naam>.md en volg
   └──────────┬──────────┘  die workflow exact
              ▼
   ┌─────────────────────┐
   │ 4. Opslaan en       │  Resultaat naar het canonieke
   │    vervolg-module   │  bestand, daarna de logische
   └─────────────────────┘  vervolg-module voorstellen
```

## Wanneer triggeren

- Iemand wil de **website live zetten** of checken: "website launch check", "site live zetten", "pre-launch checklist", "is mijn website klaar", "check mijn website", "go-live checklist website", "kunnen we de site online zetten", "wat moet er nog voor de launch" (M1)
- Iemand wil **social-kanalen opzetten**: "social media opzetten", "social-aanwezigheid bouwen", "kanalen kiezen", "welke social-platforms gebruik ik", "LinkedIn bedrijfspagina inrichten", "Instagram bio schrijven", "posting-cadans bepalen", "engagement-strategie" (M2)
- Iemand wil **content plannen**: "content planning", "content roadmap", "wat ga ik posten", "redactiekalender", "content-kalender maken", "wat zet ik op LinkedIn", "content-strategie uitwerken", "thema's per kwartaal", "van losse posts naar plan" (M3)
- Iemand wil een **nieuwsbrief starten**: "nieuwsbrief opzetten", "mailprovider kiezen", "newsletter starten", "e-mail-marketing inrichten", "welkomstmail-flow bouwen", "DKIM en SPF instellen", "double-opt-in inrichten", "eerste nieuwsbrief sturen" (M4)
- Iedere expliciete verwijzing naar **M1, M2, M3 of M4**, "gap M1" tot en met "gap M4", of "M-stap dichten in SCALE-audit"
- Verwijzingen naar de canonieke bestanden: `Website-Launch-Check.md`, `Social-Presence.md`, `Content Roadmap.md`, `Nieuwsbrief-Setup.md`
- Vragen rond domein/DNS/HTTPS/SEO/cookiebanner-readiness (M1), accountnaam-keuze of kanaal-doelgroep-match (M2), cadans per kanaal (M3), deliverability/open-rate/opt-in/mail-automations (M4)

**Triggert NIET bij:**

- **Merk en tone-of-voice ontwikkelen** (brand guidelines, huisstijl, schrijfstijl, ICP): dat is `scale-structure`. Marketing gebruikt die documenten, maar maakt ze niet.
- **Marketing-data en analytics inrichten** (meetplan, UTM-conventies, dashboards, website-analytics-tooling): dat is `scale-collect`. M1 checkt alleen of de analytics-events live staan.
- **Salesproces, CRM en opvolg-flows**: dat is `scale-verkoop`. Marketing levert de leads aan, verkoop pakt ze op.
- **Privacyverklaring, cookiestatement of algemene voorwaarden opstellen**: dat is `scale-juridisch`. M1 en M4 linken er alleen naar.
- **Compleetheids-audit of gap-analyse over het hele framework**: dat is `scale-audit`. Die verwijst bij gaps M1 tot en met M4 terug naar deze skill.

## Werkwijze (router)

1. **Bepaal de module.** Leid uit de vraag af welke module van toepassing is (zie de triggers hierboven). Bij twijfel, of als iemand generiek "marketing op orde brengen" vraagt: toon het menu uit de Modules-tabel en noem de aanbevolen volgorde (M1, M2, M3, M4). Laat de gebruiker kiezen.
2. **Laad alleen de gekozen module.** Lees uitsluitend het gekozen `modules/<naam>.md` en volg die workflow exact. Laad niet alle modules tegelijk; de andere modules blijven ongelezen tot ze nodig zijn.
3. **Huisregels per module:**
   - Start met een **run-time intro**: hoeveel vragen(blokken) komen er en wat is de geschatte tijd.
   - **Pre-fill eerst**: scan de bestaande documenten die de module noemt (Overzicht, Playbook, Marketing-map, Toolstack, enzovoort) voordat je vragen stelt.
   - Stel **check-vragen** om gevonden informatie te valideren in plaats van er blind vanuit te gaan.
   - **Sla het resultaat op** waar de module dat voorschrijft (het canonieke bestand in `Marketing/`).
4. **Stel na afronding de logische vervolg-module voor.** Standaard is dat de volgende in de reeks (na M1 volgt M2, na M2 volgt M3, na M3 volgt M4). Sla over wat al bestaat en gevuld is; na M4 is het domein rond en is een `scale-audit`-run de logische check.

## Samenhang

- **scale-structure**: marketing bouwt op het merk. S2 Brand Guidelines en S3 Tone of Voice bepalen hoe alles eruitziet en klinkt, S4 ICP bepaalt voor wie, S9 Klantreis bepaalt in welke fase welk kanaal werkt. Alle vier de modules pre-fillen hieruit.
- **scale-collect**: marketing bouwt op de data. C1 Marketing Data en C5 Website Analytics meten wat de marketing oplevert; M1 controleert of de C5-events live staan voordat de site lanceert.
- **scale-analyze**: de KPI's die M2 tot en met M4 vastleggen (engagement-rate, open-rate, click-rate) voeden de rapportages uit dit domein.
- **scale-leverage**: L3 Mailflow-Setup (opvolg-automatisering via mail) bouwt rechtstreeks voort op het M4-nieuwsbrief-fundament.
- **scale-engineer**: de toolstack (hosting, mailprovider, planning-tools) die de modules kiezen, landt in het toolstack-overzicht en de automatiseringen van dit domein.
- **scale-verkoop**: leads die via website, social en nieuwsbrief binnenkomen, landen in het salesproces en de opvolg-flow van het verkoop-domein.
- **scale-juridisch**: J4 Privacyverklaring is de AVG-schakel: M1 checkt de cookiebanner en de privacylink, M4 regelt double-opt-in en afmeld-compliance.
- **scale-audit**: de maandelijkse audit signaleert welke van M1 tot en met M4 nog open staan en verwijst voor het dichten van die gaps naar deze skill.
