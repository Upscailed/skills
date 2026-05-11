---
name: klantfeedback-collector
title: "Klantfeedback Collector"
description: "Helpt een ondernemer in 30 tot 45 minuten een werkend feedback-systeem op te zetten dat klant-signalen structureel ophaalt, op één plek verzamelt en omzet in opvolg-acties. Het kanonieke document landt op `Klantenservice/Feedback-Setup.md` (of `Collect/Klantfeedback.md` als de scope een Collect-map gebruikt). Dit is SCALE-stap C4 (Collect) en dekt de quality-eis: minimaal 3 reviews of feedbacks gedocumenteerd, of een actieve review-collectie-flow beschreven. De skill werkt via een gestructureerd interview in 6 blokken (Huidige situatie, Feedback-momenten in de klantreis, Feedback-types, Tools en kanalen, Datavlak, Opvolging en SLA), één blok per beurt zodat de gebruiker niet wordt overweldigd. Vóór het interview begint, scant de skill diep wat al beschikbaar is in de vault (Directie/Playbook/Klantreis.md voor feedback-momenten, Directie/Playbook/ICP.md voor segmenten, Klantenservice/ voor bestaande klachten, eerdere reviews in Marketing of Sales, NPS-data of CSAT-rapporten in Research) én vraagt actief naar externe documenten (Google Reviews-screenshots, Trustpilot-export, Typeform-resultaten, eerdere NPS-mails, klachten-tickets uit helpdesk, Klantenvertellen-paneel). Per feedback-moment legt de skill vast: kanaal, trigger, vraag-type (NPS/CSAT/open/review-prompt), tool, eigenaar, SLA voor reactie en wat met patroon-signalen gebeurt. De skill werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam, persoonlijke profielen of vault-eigenaar, alleen over de SCALE-conventie (`Directie/`, `Klantenservice/`, optioneel `Collect/`). Activeer altijd wanneer iemand zegt: 'klantfeedback verzamelen', 'reviews documenteren', 'NPS opzetten', 'CSAT meten', 'feedback-systeem inrichten', 'wat vinden klanten van ons', 'klanttevredenheid meten', 'review-flow bouwen', 'feedback-momenten in kaart', 'Trustpilot inrichten', 'Google reviews verzamelen', 'klachten-log opzetten', 'C4 dichten in SCALE-audit', 'gap C4', 'Feedback.md aanvullen', 'feedback verzamel-machine'. Triggert ook bij iedere expliciete verwijzing naar C4 of `Feedback-Setup.md`."
category: operations
tags: [klantfeedback, nps, csat, reviews, tevredenheid, collect, scale-framework, c4, klantenservice, voice-of-customer]
estimatedTime: "30 tot 45 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Klantfeedback Collector

## Doel

Helpt een ondernemer om in 30 tot 45 minuten een **werkend feedback-systeem** vast te leggen in één canoniek document: `{scope}/Klantenservice/Feedback-Setup.md` (of `{scope}/Collect/Klantfeedback.md` als de bedrijfs-root een Collect-map gebruikt). Dit is SCALE-stap C4 (Collect) en levert het kanaal waar de stem van de klant structureel binnenkomt, in plaats van als losse anekdote rond te zweven.

*Waarom dit fundamenteel is.* Veel ondernemers horen wel iets terug van klanten, maar het zit verspreid: een appje hier, een review daar, een mail die in de inbox verdwijnt. Zonder vast systeem mis je patronen, weet je niet hoe tevreden de gemiddelde klant is, en kun je niet sturen op verbetering. Een feedback-systeem maakt de stem van de klant **meetbaar en opvolgbaar**.

*Waarom dit een Collect-stap is, geen Marketing-stap.* Feedback verzamelen is fundamenteel data-verzameling: je legt een vast moment vast in de klantreis, een vast kanaal, een vast format, en zorgt dat alles op één plek terechtkomt. Pas daarna wordt het input voor SWOT (S6), Beslissings-analyse (A4) en marketing (testimonials, casestudies).

*Waarom de audit-drempel niet genoeg is.* SCALE-audit C4 stelt dat er minstens 3 reviews of feedbacks gedocumenteerd zijn, of een actieve review-collectie-flow beschreven is. Die drempel haal je door drie Google Reviews te kopiëren in een document. Deze skill mikt op een **werkend systeem**: vaste momenten in de klantreis, gekozen tools per moment, eigenaars en SLA's, plus de eerste 3 voorbeeld-feedbacks als startpunt.

Resultaat: SCALE-audit C4 springt van ❌ of ⚠️ naar ✅, plus het document is direct herbruikbaar als input voor S6 (SWOT, onder Strengths en Weaknesses), A4 (Beslissings-analyse, patronen in feedback), M3 (Content Roadmap, testimonials voor mid-funnel) en de Klantenservice-flow.

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  KLANTFEEDBACK COLLECTOR — SCALE-stap C4 (Collect)        │
│  ~30-45 minuten · 6 interview-blokken                     │
└──────────────────────────────────────────────────────────┘

  In 30 tot 45 minuten zetten we een feedback-systeem op
  waar klant-signalen structureel binnenkomen: NPS, CSAT,
  reviews, klachten en suggesties op één plek, met vaste
  momenten in de klantreis en duidelijke opvolg-acties.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 6 blokken interview (één per beurt, niet alles       │
  │    tegelijk) — gemiddeld 4-6 minuten per blok           │
  │  • Per blok 3-6 korte vragen                            │
  │  • Vooraf scan ik wat er al in je vault staat plus      │
  │    externe documenten die je aanlevert (Google Reviews, │
  │    Trustpilot, eerdere NPS-mails, helpdesk-tickets)     │
  │    — zo vragen we niet naar wat al ergens staat         │
  │  • Daarna lever ik een gevuld Feedback-Setup.md op met  │
  │    momenten-tabel, tools-keuze en eerste 3 voorbeeld-   │
  │    feedbacks zodat de audit-drempel direct gehaald is   │
  └────────────────────────────────────────────────────────┘

  De 6 blokken:
  [1] Huidige situatie       [2] Feedback-momenten
  [3] Feedback-types         [4] Tools en kanalen
  [5] Datavlak               [6] Opvolging en SLA

  Heb je externe documenten klaar? Bijvoorbeeld:
  • Google Reviews of Trustpilot-pagina-URL
  • Screenshots van eerdere NPS- of CSAT-mails
  • Klachten-log of helpdesk-export (Helpscout, Zendesk)
  • Typeform-/Tally-resultaten van eerder feedback-formulier
  • Klantgesprekken-transcripts of NPS-rapport
  • Klantenvertellen- of Kiyoh-paneel-gegevens

  Dan kun je die nu noemen of uploaden — hoe meer bronnen,
  hoe rijker het pre-fill.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  KLANTFEEDBACK COLLECTOR — C4 · 30-45 min · 6 blokken     │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   │                      │  Collect/ of
   │                      │  Klantenservice/?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Klantreis, ICP,
   │    (auto-discover)   │  bestaande reviews,
   │                      │  klachten-log,
   │                      │  NPS-data
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Google Reviews,
   │                      │  Trustpilot,
   │                      │  Typeform-export,
   │                      │  helpdesk-tickets
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend per
   │                      │  blok, ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, blok   │  6 blokken,
   │    voor blok         │  3-6 vragen elk
   │                      │  [1] Huidige situatie
   │                      │  [2] Feedback-momenten
   │                      │  [3] Feedback-types
   │                      │  [4] Tools en kanalen
   │                      │  [5] Datavlak
   │                      │  [6] Opvolging en SLA
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Eerste 3 feed-    │  Audit-drempel: 3
   │    backs verzamelen  │  bestaande reviews
   │                      │  of klant-uitspraken
   │                      │  ophalen
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Klantenservice/
   │    opslaan           │  Feedback-Setup.md
   │                      │  (of Collect/
   │                      │  Klantfeedback.md)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    vervolg-          │  hint naar S6 /
   │    suggesties        │  A4 / M3 / V3
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Klantfeedback verzamelen" / "feedback-systeem inrichten"
- "Reviews documenteren" / "Trustpilot inrichten" / "Google Reviews verzamelen"
- "NPS opzetten" / "CSAT meten" / "klanttevredenheid meten"
- "Wat vinden klanten van ons" / "feedback-momenten in kaart"
- "Klachten-log opzetten" / "klachten structureel bijhouden"
- "Review-flow bouwen" / "feedback verzamel-machine"
- "Feedback-Setup.md aanvullen" / "verbeter mijn feedback-proces"
- "C4 dichten in SCALE-audit" / "gap C4"

Triggert NIET wanneer:
- De gebruiker een **klantreis** wil mappen (gebruik `klantreis` — S9; deze C4-skill verwijst er wel naar voor de feedback-momenten)
- De gebruiker alleen een **enkele klacht** wil afhandelen (dat is operationele klantenservice, geen systeem-opzet)
- De gebruiker een **testimonial-pagina** wil ontwerpen voor de website (dat is een marketing-vervolg na C4)
- De gebruiker **markt-onderzoek** wil doen naar niet-klanten (dat is C6 Concurrentie-research of een aparte ICP-validatie)
- De gebruiker **operationele KPIs** wil definiëren los van klantfeedback (gebruik de C7-skill)
- De gebruiker een **CRM** wil inrichten (gebruik de C2-skill `crm-setup`; feedback kan wel in CRM landen maar is daar geen kerngebruik)

## Workflow

### Stap 1: Scope kiezen plus output-locatie

Vraag voor welk bedrijf en in welk pad het feedback-systeem opgezet moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Directie/`, `Klantenservice/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Directie/`, `Bedrijven/Naam/Klantenservice/`, etc.)
- Een vault die **Collect/** als aparte hoofdmap gebruikt (sommige SCALE-skeletten plaatsen Collect-output daar in plaats van in de operationele afdelingen)

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar dit feedback-systeem voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")
3. **Output-locatie:** voorkeur voor `Klantenservice/Feedback-Setup.md` of `Collect/Klantfeedback.md`?

Default-keuze voor output-locatie:
- Als `{scope}/Klantenservice/` al bestaat en `{scope}/Collect/` niet, gebruik `Klantenservice/Feedback-Setup.md`
- Als `{scope}/Collect/` bestaat, gebruik `Collect/Klantfeedback.md`
- Als geen van beide bestaat, gebruik `Klantenservice/Feedback-Setup.md` (de operationele afdeling waar feedback dagelijks landt)

Controleer daarna of het beoogde bestand al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Feedback-Setup - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Directie/Playbook/Klantreis.md` | Welke fases er zijn, waar feedback-momenten logisch landen (na onboarding, bij retention, etc.) |
| `Directie/Playbook/ICP.md` | Klant-segmenten en wat zij waarderen of frustrerend vinden |
| `Directie/Playbook/Producten.md` (of `Aanbod.md`) | Welke producten of pakketten een eigen CSAT-meting verdienen |
| `Directie/00 - Overzicht.md` | Bedrijfs-fase: idee, opstart, gevestigd, schaal (bepaalt feedback-volwassenheid) |
| `Directie/Research/*.md` | Eerdere NPS-rapporten, marktonderzoek, klantgesprekken-transcripts |
| `Klantenservice/*` | Bestaande klachten-logs, FAQ, tickets, opzeg-redenen |
| `Sales/*` | Reviews of testimonials die in salesgesprekken al worden gebruikt |
| `Marketing/Testimonials*` of `Marketing/Reviews*` | Marketing-gerichte reviews op website of social |
| `Operations/Processen/*.md` | Bestaande onboarding-, oplevering-, of opzeg-processen (vaak natuurlijke feedback-momenten) |
| `Collect/*` | Alles wat al onder de Collect-pijler bestaat (eerdere data-setups) |
| `Bestaand bestand op de beoogde output-locatie` | Vorige versie van dit feedback-document |

Maak per gevonden bron een korte interne aantekening: welk blok het raakt, en welke kerninzichten relevant zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Werk met wat er is.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. Feedback-specifieke bronnen die vaak goud waard zijn:

- **Google Business Profile-pagina** met huidige reviews — URL noemen, je leest de reviews direct uit
- **Trustpilot-, Klantenvertellen-, Kiyoh- of Feedback Company-pagina** — URL met huidige score plus review-archief
- **Branche-specifieke reviewsite** (bv. The Feedback Company, Capterra, G2, Beoordelingen.nl) — afhankelijk van type business
- **Eerdere NPS- of CSAT-mails** uit MailerLite, ActiveCampaign, Klaviyo, Delighted, Refiner, Hotjar — screenshot of export
- **Helpdesk-export** (Helpscout, Zendesk, Intercom, Freshdesk) — klachten, tickets, oplossing-tijd
- **Typeform-, Tally-, Google Forms- of Survicate-resultaten** van eerdere feedback-rondes
- **Klantgesprekken-transcripts** (Fireflies, Otter, Fathom) — daar zitten vaak ongestructureerde feedback-quotes in
- **Salesgesprekken-CRM-notities** (Pipedrive, HubSpot, Notion-CRM) — onboarding-feedback, win-loss-redenen
- **WhatsApp-/e-mailberichten** waarin een klant spontaan iets liet weten — kopieer-plakken kan
- **Klant-NPS-rapporten** of eerdere CX-onderzoeken die ergens als PDF rondzwerven

Concrete vraag aan gebruiker:
> "Heb je externe documenten of bronnen waaruit ik kan putten? Bijvoorbeeld een Google Business-URL, een Trustpilot-pagina, screenshots van eerdere NPS-mails, een export uit je helpdesk, Typeform-resultaten, of klantgesprekken-transcripts? Je mag URL's noemen, bestanden uploaden of tekst plakken. Hoe meer bronnen, hoe rijker het pre-fill, plus je hebt direct de eerste 3 feedbacks voor de audit-drempel."

Per aangeleverde bron:
- **URL** (Google Reviews, Trustpilot, etc.): gebruik web-fetch om de inhoud op te halen, scan op concrete reviews, NPS-cijfers, recurring thema's
- **PDF/document**: lees de inhoud, vat samen wat relevant is per blok
- **Geplakte tekst**: behandel als research-input
- **Screenshot van NPS-mail**: lees de visuele info (welke vraag, welk format, welke tool herkenbaar)
- **CRM-/helpdesk-export**: scan op opvallende patronen, top-3 klachten, top-3 lof

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per blok**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] HUIDIGE SITUATIE
      Geen vast systeem; reviews komen incidenteel binnen
      via mail. Wel 7 Google Reviews (gemiddeld 4.7) en
      4 spontane bedank-mails bewaard in Klantenservice/.
      Bron: Klantenservice/inbox.md, Google Business URL

  [2] FEEDBACK-MOMENTEN
      Klantreis bevat 7 fases. Logische momenten op basis
      van Klantreis.md: na onboarding (fase 5), na elk
      kwartaalgesprek (fase 6), bij opzegging (fase 7).
      Bron: Directie/Playbook/Klantreis.md

  [3] FEEDBACK-TYPES
      Nog niet gestructureerd. Wel impliciet: reviews
      (Google), klachten (helpdesk Helpscout), bedankjes
      (e-mail). NPS of CSAT ontbreekt.

  [4] TOOLS EN KANALEN
      Helpscout (klachten), Google Reviews (publiek),
      e-mail (alle anekdotische feedback).
      ActiveCampaign zit klaar maar wordt niet voor
      feedback gebruikt.

  [5] DATAVLAK
      Klachten in Helpscout met ticket-ID en status.
      Reviews handmatig gekopieerd. Geen centrale plek.

  [6] OPVOLGING EN SLA
      Klachten: SLA 4 uur op werkdagen.
      Reviews: geen actieve opvolging.

  EERSTE 3 FEEDBACKS gevonden:
  • Klant A (Google Review, 5 sterren, jan 2026): "..."
  • Klant B (e-mail, dec 2025): "..."
  • Klant C (helpdesk-ticket #1234, feb 2026): "..."

  GATEN waar ik nog vragen voor heb:
  - Blok 3: welk feedback-type wil je toevoegen (NPS, CSAT)?
  - Blok 4: welke tool gaat NPS doen — Delighted, Refiner,
    of in ActiveCampaign-flow?
  - Blok 6: SLA voor publieke negatieve review nog niet
    afgesproken

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**. Wacht op het antwoord, dán pas het volgende blok. Niet alle blokken tegelijk neerzetten, dat overweldigt.

Per blok: 3 tot 6 vragen, afhankelijk van hoe gevuld de pre-fill al was. Als een blok in pre-fill al rijk gevuld is, stel je check-vragen plus 1-2 verdiepingsvragen. Als een blok leeg is, stel je de volledige set.

#### Blok 1 — Huidige situatie

**Wat we vastleggen:** hoe feedback nu binnenkomt, waar het belandt, wat ermee gebeurt. Eerlijke nulmeting voordat je een systeem oplegt.

Kernvragen:
1. Krijg je nu structureel feedback van klanten, of gebeurt het incidenteel? Schat: hoeveel feedback-momenten per maand?
2. Waar komt feedback nu binnen? (E-mail, telefoon, WhatsApp, helpdesk, reviews-site, spontane klantgesprekken.)
3. Wat doe je er nu mee? Wordt het ergens vastgelegd, of verdwijnt het in een inbox?
4. Wat mis je het meest aan het huidige proces? (Geen overzicht, geen patronen, geen opvolging, geen meting.)

#### Blok 2 — Feedback-momenten in de klantreis

**Wat we vastleggen:** op welke momenten in de klantreis feedback opgehaald wordt. Cross-link naar S9 Klantreis is hier cruciaal.

Standaard-momenten die zinvol zijn voor de meeste bedrijven:

| Klantreis-fase | Feedback-moment | Wat je meet |
|---|---|---|
| Fase 5 — Onboarding | 7-14 dagen na start | Of de onboarding helder was, of eerste win behaald is |
| Fase 4 — Purchase / fase 5-overgang | Direct na oplevering eerste product of dienst | CSAT op die specifieke oplevering |
| Fase 6 — Service / Account Management | Kwartaal-check-in of jaarlijks | NPS, algemene tevredenheid, relatie-gezondheid |
| Fase 7 — Retention / Renewal | 30-60 dagen voor verlengbeslissing | Twijfels, verbeter-suggesties, upsell-mogelijkheden |
| Fase 7 — Opzegging | Bij elke opzegging | Reden van vertrek (kostbaarste data die je hebt) |
| Fase 6 — Klacht-resolutie | Direct na sluiten ticket | Of de klacht goed is afgehandeld, NPS-impact gemeten |

Kernvragen:
1. Welke van deze momenten voelen het meest relevant voor jouw business? (Pas aan; niet elk bedrijf heeft alle 6 nodig.)
2. Zijn er feedback-momenten **buiten deze lijst** die voor jouw business uniek zijn? (Bv. event-evaluatie, jaarlijkse community-meeting, demo-after-call, eerste 90 dagen.)
3. Welk moment is volgens jou nu het meest urgent — waar mis je het meeste signaal?
4. Wil je voor elk moment een ander feedback-type, of werk je met één centrale meting? (Bv. één NPS-mail per kwartaal voor alles, of CSAT per specifieke touchpoint.)

Maak de uiteindelijke lijst van feedback-momenten compact — 3 tot 6 momenten is realistisch voor een eerste versie. Meer wordt onbeheersbaar.

#### Blok 3 — Feedback-types

**Wat we vastleggen:** welke types feedback we per moment ophalen. Niet elk moment vraagt om hetzelfde type.

Kies uit dit menu (of voeg toe als jouw business een unieke type heeft):

| Feedback-type | Vraag-format | Wat je leert |
|---|---|---|
| **NPS** (Net Promoter Score) | "Hoe waarschijnlijk zou je ons aanbevelen, 0-10?" + open vraag waarom | Algemene relatie-gezondheid, promotor-detractor-balans |
| **CSAT** (Customer Satisfaction) | "Hoe tevreden ben je over [touchpoint X], 1-5?" + open vraag | Specifieke touchpoint-kwaliteit |
| **CES** (Customer Effort Score) | "Hoeveel moeite kostte het om [taak X] uit te voeren, 1-7?" | Wrijving in proces of product |
| **Review** (publiek) | "Wil je een review schrijven op Google/Trustpilot/Klantenvertellen?" | Sociaal bewijs voor marketing |
| **Open feedback** | "Wat had beter gekund? Wat ging goed?" | Kwalitatieve patronen, verrassende inzichten |
| **Klachten-log** | Gestructureerde ticket: probleem, ernst, status, oplossing | Operationele kwaliteit |
| **Suggestie-box** | "Heb je een idee voor verbetering?" | Product- en proces-roadmap |
| **Win-loss-interview** | Gesprek na opzegging of na verloren deal | Strategische blinde vlekken |

Kernvragen:
1. Welke types wil je inzetten? Een eerste versie van 2-3 types is genoeg, niet alles tegelijk.
2. Per moment uit blok 2: welk type past hier? (Bv. onboarding-moment = CSAT, kwartaal = NPS, opzegging = win-loss-interview.)
3. Hoe vaak wil je een review-prompt sturen? (Niet bij elke klant na elke aankoop; risico op review-fatigue.)
4. Wil je publieke reviews actief vragen, of vooral interne feedback? (Verschillende strategie, andere tools.)

#### Blok 4 — Tools en kanalen

**Wat we vastleggen:** welke concrete tools per feedback-type worden ingezet. Vermijd tool-explosie; één tool voor meerdere types is vaak realistischer.

Veelgebruikte tools per categorie:

| Categorie | Tools (voorbeeld) | Voor welk type |
|---|---|---|
| **Online formulieren** | Typeform, Tally, Google Forms, Survicate, Notion-form | NPS, CSAT, CES, open feedback, suggestie-box |
| **NPS-specifiek** | Delighted, Refiner, Promoter.io, Wootric, Hotjar Surveys | NPS, CSAT |
| **In-product** | Hotjar, Sprig, Refiner, custom Supabase-form | CSAT, CES, micro-feedback |
| **Publieke reviews** | Google Business, Trustpilot, Klantenvertellen, Kiyoh, The Feedback Company, Capterra (SaaS), G2 (SaaS) | Reviews |
| **Helpdesk en klachten** | Helpscout, Zendesk, Intercom, Freshdesk, custom Notion-/Linear-board | Klachten-log |
| **CRM-ingebouwd** | HubSpot, Pipedrive, Salesforce, Notion-CRM | Win-loss, account-feedback |
| **E-mail-flow** | ActiveCampaign, MailerLite, Klaviyo, Brevo | NPS-mail-flow, CSAT-trigger op event |
| **Gesprekken** | Fireflies, Otter, Fathom (auto-transcribe) | Win-loss-interview, kwartaal-call-transcripts |

Kernvragen:
1. Welke tools heb je nu al staan? (Liever bestaande tool inzetten dan nieuwe abonnement; vraag actief.)
2. Voor elk feedback-type uit blok 3: welke tool wordt drager? (Maak per type één keuze, geen overlap.)
3. Hoe stuurt de tool het feedback-verzoek? (Automatisch op event, handmatig na klantgesprek, op een vast moment in een mail-flow.)
4. Waar landen de antwoorden? (In de tool zelf, gespiegeld naar Notion of Airtable, of via webhook in een database.)
5. Heb je voorkeur voor één centrale verzamel-plek, of mag het verspreid blijven met overzicht via dit document? (Centraal is sterker maar duurder; verspreid is goedkoper maar vraagt discipline.)

#### Blok 5 — Datavlak

**Wat we vastleggen:** welke data minimaal vast worden gelegd per feedback-stuk, zodat patronen herkenbaar zijn en opvolging mogelijk is.

**Minimum-velden per feedback (audit-eis-niveau):**

| Veld | Wat | Voorbeeld |
|---|---|---|
| **Klant-ID** | Uniek nummer of e-mail | `klant-0042` of `naam@bedrijf.nl` |
| **Datum** | Wanneer feedback binnenkwam | `2026-05-11` |
| **Kanaal** | Via welke tool of platform | `Google Reviews`, `helpdesk-Helpscout-#1234`, `NPS-mail-Q2` |
| **Type** | NPS / CSAT / Review / Klacht / Open / Suggestie | `NPS` |
| **Score** | Numerieke score indien van toepassing | `9` (NPS) of `4.5` (CSAT) of leeg |
| **Open tekst** | Letterlijke quote van klant | `"De onboarding ging snel, eerste rapportage was..."` |
| **Segment** | ICP-segment (cross-link S4) | `B2B - administratie 50-100 klanten` |
| **Opvolg-actie** | Wat er met deze feedback gebeurt | `Review hergebruiken in casestudie`, `Klant terugbellen voor uitleg`, `Geen actie` |
| **Status** | open / in behandeling / gesloten | `gesloten` |
| **Eigenaar** | Wie is verantwoordelijk voor opvolging | `Iwan` of `Klantenservice-team` |

Optionele velden (afhankelijk van diepte):
- **Klantreis-fase** waar feedback uit komt (cross-link S9)
- **Product/pakket** waar feedback over gaat (cross-link S8)
- **Sentiment** (positief / neutraal / negatief) voor snelle scan
- **Tags** voor patronen (bv. `#offerte-proces`, `#reactietijd`, `#prijs`)

Kernvragen:
1. Welke van deze minimum-velden mis je nu? Wat is realistisch om vanaf dag 1 te vullen?
2. Waar komt deze tabel te staan? (Airtable, Notion-database, Google Sheets, eigen Supabase-tabel, of in dit document zelf voor de eerste 3 maanden.)
3. Wil je automatisch invoeren (webhook van NPS-tool naar Notion), of accepteer je handmatig kopieer-werk in de begin-fase?
4. Hoe vaak wil je dit dataset bekijken om patronen te zien? (Wekelijks, maandelijks, kwartaal — bepaalt rapportage-cadens.)

#### Blok 6 — Opvolging en SLA

**Wat we vastleggen:** wie wat doet wanneer een feedback binnenkomt. Zonder opvolging is feedback-verzamelen niks waard.

**SLA-categorieën:**

| Feedback-type | Standaard SLA voor eerste reactie | Wie ziet het |
|---|---|---|
| **Klacht (ernstig)** | 4 uur op werkdagen | Eigenaar of accountmanager |
| **Klacht (normaal)** | 24 uur | Klantenservice |
| **Negatieve publieke review (1-3 sterren)** | 24 uur | Eigenaar, ook publiek reageren |
| **Positieve publieke review (4-5 sterren)** | 72 uur (bedankje) | Marketing of klantenservice |
| **NPS-promotor (9-10)** | 72 uur (vraag om review of casestudy) | Marketing |
| **NPS-passief (7-8)** | 1 week (vraag om verbeter-suggestie) | Eigenaar |
| **NPS-detractor (0-6)** | 48 uur (persoonlijk contact) | Eigenaar of accountmanager |
| **Open feedback / suggestie** | 1 week (bedank + intern besluit) | Eigenaar |
| **Win-loss-interview** | Gepland gesprek binnen 2 weken na opzegging | Eigenaar |

Kernvragen:
1. Wie is **primair eigenaar** van inkomende feedback? Eén persoon, of een team? Bij solo-ondernemer: jij, met escalatie naar niemand.
2. Welke SLA's voelen realistisch voor jouw bedrijf? Pas de tabel hierboven aan; te ambitieus is contraproductief.
3. Wat gebeurt bij **terugkerende patronen**? (Bv. 3x dezelfde klacht in een maand → escalatie naar product- of proces-aanpassing.) Wie acteert daarop?
4. Hoe vaak bespreek je feedback intern? (Wekelijkse stand-up, maandelijkse review, kwartaal-evaluatie.)
5. Welke feedback wordt naar buiten gedeeld? (Reviews in marketing, NPS-cijfer publiek, casestudies, of blijft alles intern.)
6. Bij solo-ondernemer: hoe voorkom je dat feedback in jouw eigen inbox blijft hangen? (Vast moment in agenda, koppeling naar Tasks, etc.)

### Stap 6: Eerste 3 feedbacks verzamelen (audit-drempel)

Voor de C4-audit moeten minimaal 3 reviews of feedbacks gedocumenteerd zijn. Twee paden:

**Pad A — bestaande feedback ophalen.** Als er al reviews, mails of klachten zijn (uit stap 3 of stap 2), kopieer letterlijk 3 stuks naar het document met de minimum-velden uit blok 5 ingevuld. Geen herschrijven; de letterlijke klant-quote is de bron.

**Pad B — eerste ronde uitsturen.** Als er nog niets is: stel voor om vandaag een eerste mini-ronde te triggeren — bv. 5 oudste klanten een korte NPS-mail of vraag, of 3 recent geleverde klanten een CSAT-vraagje. Zet de tool klaar (concept-mail, formulier-link), de gebruiker drukt zelf op verzenden. Volg over 7 dagen op om de eerste 3 feedbacks toe te voegen.

Documenteer de gekozen feedbacks (of de open ronde) in het output-document onder de sectie `Eerste 3 feedbacks (audit-drempel)`.

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-feedback-collector.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus de 3 voorbeeld-feedbacks.

Sla op als (kies één van de twee, op basis van keuze in stap 1):
```
{scope}/Klantenservice/Feedback-Setup.md
```
of
```
{scope}/Collect/Klantfeedback.md
```

Maak de bovenliggende map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: feedback-systeem
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: C4
output-locatie: <Klantenservice/Feedback-Setup.md | Collect/Klantfeedback.md>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "naadloze feedback-ervaring", "ultieme tevredenheid". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Delighted-NPS-mail uit ActiveCampaign-flow 'kwartaal-NPS', verzonden op de 90e dag na onboarding-start" is sterker dan "een NPS-mail".
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Korte blok-koppen** (gewoon de blok-naam, niet creatief verzonnen).
- **Klant-quotes letterlijk overnemen** in de feedback-voorbeelden. Geen "geredigeerde" versie; de stem van de klant is de waarde.
- **Geen privacy-overtreding.** Klantnamen mogen alleen genoemd worden als de klant daar toestemming voor heeft gegeven (review-tekst is publiek, helpdesk-tickets vaak niet). Bij twijfel: anonimiseren tot `Klant A`, `Klant B`, `Klant C`.

**Visuele weergave in het document:**
- Eén tabel met feedback-momenten plus type, tool, eigenaar en SLA.
- Eén tabel met datavlak-velden plus voorbeeld.
- Eén ASCII-flow van "feedback binnen → registratie → opvolging → patroon-review" zodat de cyclus duidelijk is.
- Sectie `Eerste 3 feedbacks (audit-drempel)` met de bronnen.
- Cross-link-tabel naar S6, A4, M3, V3, S9, S4.

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Klantenservice/Feedback-Setup.md` (of `Collect/Klantfeedback.md`) — v1.0, feedback-systeem met X momenten en 3 voorbeeld-feedbacks opgeleverd, dekt SCALE C4"*.
2. **Daily** — als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (Iwan's OS-conventie, niet elke vault heeft hem), log onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie** — als er een audit-rapport in `Directie/Research/` staat waar C4 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien zodat de score springt.

Vervolgsuggesties die je altijd noemt:
- **Cross-link naar S9 Klantreis:** als de Retention- of Onboarding-fase in de klantreis nog geen expliciete feedback-touchpoints kent, stel voor om Klantreis.md aan te vullen.
- **Cross-link naar A4 Beslissings-analyse:** zodra er 20-30 feedbacks zijn verzameld, kun je met de A4-skill patronen analyseren (welke segmenten geven lage NPS, welke producten genereren klachten).
- **Cross-link naar M3 Content Roadmap:** positieve reviews en NPS-promotor-quotes zijn directe input voor mid-funnel content (casestudies, testimonials, social proof op website).
- **Cross-link naar V3 Opvolg-flow:** als de Retention-fase een geautomatiseerde opvolg-flow krijgt, hoort daar een vast NPS- of CSAT-moment in te zitten.
- **Cross-link naar Klantenservice-proces:** als er meer dan 5 klachten per maand binnenkomen, is een SOP voor klachtafhandeling (S10) zinvol.
- **Eerste meet-ronde:** als pad B uit stap 6 is gekozen, zet een herinnering op T+7 dagen om de eerste 3 antwoorden te verzamelen en in het document op te nemen.
- **Bijhouden:** dit is een levend document. Update bij elk nieuw feedback-moment, elke nieuwe tool, elke pattern-conclusie of NPS-shift.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Eerst output-locatie vragen** (Klantenservice/ of Collect/). Niet later corrigeren.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaande `Feedback-Setup.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Concreet > abstract.** Een specifieke tool plus flow-naam plus trigger is sterker dan "we sturen NPS-mails". Stap 6 (eerste 3 feedbacks) is hier ook voor: letterlijke quotes maken het document tastbaar.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs met een single-business vault, voor mensen met een multi-business vault, en voor klanten die net hun SCALE-skelet hebben opgezet. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe documenten.** Veel ondernemers hebben al reviews op Google, Trustpilot of branche-platform staan. Halen we die niet op, dan begint het document zonder echte klantstem.
- **Cross-link naar S9 Klantreis is essentieel.** Feedback-momenten zonder klantreis-context zijn losse formulieren. Maak in blok 2 expliciet welke fase elk moment raakt.
- **Tool-keuze proportioneel.** Een ondernemer met 10 klanten heeft geen Delighted-abonnement nodig; een Google Form plus handmatige e-mail volstaat. Forceer geen tool-stack; vraag naar volwassenheid en aantal klanten.
- **Privacy respecteren.** Klant-namen alleen noemen bij publieke reviews of expliciete toestemming. Helpdesk-tickets anonimiseren in dit document. Cross-link naar Privacyverklaring (J4) als feedback-data persoonsgegevens bevat.
- **Mik op werkend systeem, niet op het audit-minimum.** Drie reviews kopieren haalt de audit-drempel, maar levert geen werkend systeem. Minstens 3-6 feedback-momenten met type, tool, eigenaar en SLA, plus datavlak en opvolg-flow.
- **Geen ja-knikker.** Als de ondernemer een tool kiest die overkill is (bv. Salesforce Service Cloud voor 20 klanten) of te licht (alleen e-mail voor 500 klanten), benoem het en stel een proportioneel alternatief voor.

## Voorbeeld-output

Zie [`references/template-feedback-collector.md`](references/template-feedback-collector.md) voor de exacte structuur die de skill oplevert: momenten-tabel, datavlak-tabel, ASCII-cyclus, eerste 3 feedbacks en cross-link-tabel naar S6/A4/M3/V3/S9/S4.
