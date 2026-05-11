---
name: opvolg-flow
title: "Opvolg-flow"
description: "Helpt een ondernemer in 30 tot 45 minuten een volledige opvolg- en nurture-flow voor warme leads vast te leggen in één canoniek document: `{scope}/Sales/Opvolg-flow.md`. Dit is SCALE-stap V3 (Verkoop) en levert vijf concrete flows op voor de meest voorkomende lead-states na initieel contact: (1) na demo of discovery, (2) na voorstel of offerte, (3) na 'denk er nog over' (langzaam-warm-houden), (4) na verloren deal (re-engagement) en (5) na 'te vroeg' (educatie-nurture). Per flow legt de skill vast: trigger-event (welke CRM-state of datum start de flow), tijdslijn (dag 0, +3d, +7d, +14d, etc.), kanaal-mix (e-mail, WhatsApp, LinkedIn-DM, telefoon), inhoud per touchpoint (geen 'even checken even spammen', wel waarde-toevoegend), exit-criterium (deal won, lost, opt-out) en eigenaar (sales-rep of automation). De skill scant eerst diep wat er al in de vault staat: `Sales/Salesproces.md` (V1) voor de fase-stadia, `Collect/CRM-setup.md` (C2) voor de pipeline-states die als trigger werken, `Directie/Playbook/ICP.md` (S4) voor wat een lead vermoedelijk waardeert per touchpoint, `Marketing/Content Roadmap.md` voor herbruikbare content, `Klantenservice/Klantfeedback.md` (C4) voor stem-van-de-klant in opvolgmails én `Juridisch/Privacyverklaring.md` (J4) voor opt-out en de 14-dagen-regel bij cold B2B-outreach. De skill werkt vault-onafhankelijk: geen aannames over een specifieke mapnaam, alleen over SCALE-Sales-conventie (`Sales/`, `Sales/Salesproces.md`, etc.). Activeer altijd wanneer iemand zegt: 'opvolg-flow', 'follow-up momenten', 'lead-nurturing', 'nurture-flow opzetten', 'wat doe ik na een demo', 'hoe volg ik op na een offerte', 'sales-cadence bouwen', 'lead niet laten verdwijnen', 'win-back flow', 'verloren deal opnieuw benaderen', 'sales-sequence', 'opvolg-reeks na voorstel', 'V3 dichten in SCALE-audit', 'gap V3', 'Opvolg-flow.md aanvullen'. Triggert ook bij iedere expliciete verwijzing naar V3 of `Opvolg-flow.md`."
category: operations
tags: [opvolg-flow, follow-up, nurture, verkoop, sales, lead-nurturing, scale-framework, v3]
estimatedTime: "30 tot 45 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Opvolg-flow

## Doel

Helpt een ondernemer om in 30 tot 45 minuten de **opvolg- en nurture-flow** van het bedrijf vast te leggen in één canoniek document: `{scope}/Sales/Opvolg-flow.md`. Dit is SCALE-stap V3 (Verkoop) en levert de geautomatiseerde of half-geautomatiseerde laag op die de Retention- en Consideration-fases van de klantreis concreet maakt.

*Waarom dit fundamenteel is.* Veel ondernemers werken hard om leads binnen te halen, maar laten ze daarna stilletjes verdwijnen omdat er geen vast opvolg-ritme is. "Ik zou ze nog terugbellen" wordt "ik heb het te druk" wordt "ze hebben blijkbaar geen interesse meer". Onderzoek wijst uit dat het overgrote deel van de B2B-deals na 5 tot 12 contactmomenten wordt gesloten, terwijl de meeste sales-reps na 1 of 2 stoppen. De opvolg-flow zet dit ritme op papier en in een tool, zodat het automatisch doorgaat zonder dat de ondernemer er telkens aan hoeft te denken.

*Waarom het de brug is.* SCALE-audit V1 (Salesproces) beschrijft hoe je een lead van eerste contact naar offerte brengt. S9 (Klantreis) toont de hele reis op kaartniveau. V3 (Opvolg-flow) detailleert wat er gebeurt **tussen** de actieve sales-momenten in: de tussenruimtes waar de meeste leads verloren gaan. C2 (CRM-setup) levert de pipeline-states aan die als trigger werken. C4 (Klantfeedback) levert de stem-van-de-klant aan voor opvolgmails. J4 (Privacyverklaring) bepaalt de AVG-grenzen van wat is toegestaan.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit V3 stelt dat minimaal 2 follow-up-momenten gedocumenteerd moeten zijn. Die drempel haal je in 5 minuten met "binnen 24 uur thank-you, na 1 week nog eens bellen", maar dan is er nog geen werkende flow. Deze skill mikt op een **volledig** document: vijf onderscheiden flows, elk met trigger, tijdslijn van 4 tot 8 touchpoints, kanaal-mix, inhoud-richtlijn per touchpoint, exit-criterium en eigenaar. Plus integratie met de gekozen CRM- en e-mailtool, en AVG-check.

Resultaat: SCALE-audit V3 springt van niet aanwezig of ⚠️ naar ✅, plus het document is direct herbruikbaar als input voor L3 (Mailflow Setup) die de flow geautomatiseerd uitvoert.

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  OPVOLG-FLOW — SCALE-stap V3 (Verkoop)                    │
│  ~30-45 minuten · 5 flows · 4-8 touchpoints per flow      │
└──────────────────────────────────────────────────────────┘

  In 30 tot 45 minuten leggen we vast hoe je warme leads
  opvolgt na het eerste contact. Niet één algemene reeks,
  maar vijf onderscheiden flows voor de meest voorkomende
  lead-states. Resultaat: niemand verdwijnt meer stil uit
  je pipeline.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • Eerst 2 vragen: welk bedrijf, en draait er al een    │
  │    sales-flow of beginnen we van nul?                   │
  │  • Daarna 5 flows (één per beurt, niet alles tegelijk)  │
  │    elk 4-6 minuten:                                     │
  │      [1] Na demo of discovery                           │
  │      [2] Na voorstel of offerte                         │
  │      [3] Na 'denk er nog over' (langzaam-warm)          │
  │      [4] Na verloren deal (re-engagement)               │
  │      [5] Na 'te vroeg' (educatie-nurture)               │
  │  • Per flow leg ik vast: trigger, tijdslijn, kanaal-    │
  │    mix, inhoud per touchpoint, exit-criterium, eigenaar │
  │  • Vooraf scan ik vault: Salesproces, CRM-setup, ICP,   │
  │    Content Roadmap, Klantfeedback, Privacyverklaring    │
  │  • Aan het eind: AVG-check (opt-out, 14-dagen-regel     │
  │    cold outreach, consumer-grens) plus tool-koppeling   │
  │  • Output: gevuld Opvolg-flow.md met flow-diagrammen,   │
  │    voorbeelden van mailtjes en cross-links              │
  └────────────────────────────────────────────────────────┘

  Heb je externe documenten klaar? Bijvoorbeeld:
  • Een bestaande sales-cadence of e-mailreeks
  • Voorbeelden van opvolgmails die werkten of niet
  • CRM-pipeline-screenshot met huidige states
  • Win-loss-analyse van laatste 5 deals
  • Verloren-deal-redenen lijst

  Dan kun je die nu noemen of plakken — hoe meer bronnen,
  hoe rijker het pre-fill.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  OPVOLG-FLOW — V3 · 30-45 min · 5 flows                   │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   │                      │  Bestaande flow ja/nee?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Salesproces (V1),
   │    (auto-discover)   │  CRM-setup (C2),
   │                      │  ICP (S4),
   │                      │  Klantreis (S9),
   │                      │  Content Roadmap (M3),
   │                      │  Klantfeedback (C4),
   │                      │  Privacyverklaring (J4)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Bestaande sales-cadence,
   │                      │  opvolgmails, CRM-pipeline,
   │                      │  win-loss-analyse,
   │                      │  verloren-deal-redenen
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend per
   │                      │  flow, ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, flow   │  5 flows,
   │    voor flow         │  4-7 vragen elk
   │                      │  [1] Na demo
   │                      │  [2] Na voorstel
   │                      │  [3] Denk er nog over
   │                      │  [4] Verloren deal
   │                      │  [5] Te vroeg
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. AVG-check         │  Opt-out,
   │                      │  14-dagen-regel,
   │                      │  consumer-grens
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Tool-keuze        │  CRM-automation,
   │                      │  e-mailtool,
   │                      │  handmatige werklist
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Schrijven +       │  {scope}/Sales/
   │    opslaan           │  Opvolg-flow.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Logging +         │  Changelog +
   │    vervolg-          │  hint naar L3
   │    suggesties        │  (Mailflow Setup)
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Opvolg-flow" / "follow-up momenten" / "lead-nurturing" / "nurture-flow opzetten"
- "Wat doe ik na een demo" / "hoe volg ik op na een offerte"
- "Sales-cadence bouwen" / "sales-sequence" / "opvolg-reeks na voorstel"
- "Lead niet laten verdwijnen" / "ik vergeet steeds op te volgen"
- "Win-back flow" / "verloren deal opnieuw benaderen" / "re-engagement"
- "V3 dichten in SCALE-audit" / "gap V3" / "Opvolg-flow.md aanvullen"

Triggert NIET wanneer:
- De gebruiker een **salesproces van eerste contact tot offerte** wil bouwen (gebruik V1 skill `salesproces-builder` — V1 detailleert de actieve sales-stappen, V3 detailleert de tussenruimtes en post-voorstel-fase)
- De gebruiker een **CRM wil opzetten** met pipeline-states (gebruik C2 skill `crm-setup` — V3 vooronderstelt dat de pipeline-states bestaan)
- De gebruiker de **hele klantreis** in kaart wil brengen (gebruik S9 skill `klantreis` — V3 zoomt alleen in op Consideration-naar-Purchase en Retention)
- De gebruiker een **mailflow voor onboarding van betalende klanten** wil (dat valt onder Onboarding-SOPs of een gerichte L3-mailflow, niet onder V3)
- De gebruiker enkel een **content-roadmap voor marketing** wil (gebruik M3 skill — content uit M3 wordt wel hergebruikt in V3 maar is niet hetzelfde document)
- De gebruiker een **welkomstmail-template** wil schrijven zonder de hele flow eromheen (dat is een losse copywrite-taak, geen V3)

## Workflow

### Stap 1: Scope kiezen plus bestaande-flow-check

Vraag voor welk bedrijf en in welk pad de opvolg-flow gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Sales/`, `Marketing/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Sales/`, etc.)

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze opvolg-flow voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")
3. **Bestaande flow:** draait er al een vorm van opvolg (handmatig, e-mailflow, sales-cadence in CRM) of beginnen we van nul?

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Sales/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Sales/Opvolg-flow.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Opvolg-flow - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Sales/Salesproces.md` (V1) | Fase-stadia, eigenaar per fase, welk moment is "ja", welk moment is "te vroeg" |
| `Sales/Pipeline.md` (mogelijk C2-output) | Bestaande CRM-stadia die als trigger werken (Discovery → Voorstel → Onderhandeling → Won/Lost) |
| `Collect/CRM-setup.md` (C2) | Gekozen CRM-tool plus pipeline-stadia plus automation-mogelijkheden |
| `Directie/Playbook/ICP.md` (S4) | Wat een lead vermoedelijk waardeert, welke triggers wel/niet werken per segment |
| `Directie/Playbook/Klantreis.md` (S9) | Consideration- en Retention-fase als bron voor flow [1], [2] en [4] |
| `Directie/Playbook/Producten.md` (S8) | Prijspunten en pakket-namen die in voorstel-opvolging genoemd worden |
| `Marketing/Content Roadmap.md` (M3) | Bestaande content die herbruikt kan worden in nurture-touchpoints (blog, casestudie, video) |
| `Marketing/Tone of Voice.md` (S3) | Stem en taal voor opvolgmails |
| `Klantenservice/Klantfeedback.md` (C4) of `Collect/Klantfeedback.md` | Stem-van-de-klant, veelgehoorde bezwaren, succesverhalen voor in opvolging |
| `Juridisch/Privacyverklaring.md` (J4) | AVG-grondslagen, opt-out-mechanismen, bewaartermijnen |
| `Sales/Win-loss-analyse.md` of `Directie/Research/Win-loss-*.md` | Waarom deals worden verloren, voor flow [4] re-engagement |

Maak per gevonden bron een korte interne aantekening: welke flow het raakt, en wat de relevante kerninzichten zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Werk met wat er is. Noteer ontbrekende bronnen aan het einde als gat.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. Opvolg-specifieke bronnen die vaak goud waard zijn:

- **Bestaande sales-cadence of e-mailreeks** (in MailerLite, ActiveCampaign, Mailchimp, Brevo, Beehiiv, HubSpot Sequences, Lemlist) — vaak deels al gebouwd
- **Voorbeelden van opvolgmails die werkten of niet** — copy plus context (wanneer gestuurd, wat was de respons)
- **CRM-pipeline-screenshot met huidige states** (HubSpot, Pipedrive, Salesforce, Notion, Trello) — toont aan welke stadium-overgangen je triggers kunt hangen
- **Win-loss-analyse** of een lijst van verloren-deal-redenen — bron voor flow [4]
- **LinkedIn-DM-templates of cold-outreach-scripts** — bron voor kanaal-mix
- **WhatsApp-Business-templates** als de business WhatsApp gebruikt
- **Marketing-automation-recepten** (Zapier, Make, n8n) die opvolging triggeren bij events

Concrete vraag aan gebruiker:
> "Heb je externe documenten waaruit ik kan putten? Bijvoorbeeld een bestaande sales-cadence, voorbeelden van opvolgmails (geslaagd of niet), een CRM-pipeline-screenshot, een win-loss-analyse, of LinkedIn-DM-templates? Je mag URL's noemen, bestanden uploaden of tekst plakken. Hoe meer bronnen, hoe rijker het pre-fill."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen
- **PDF/document**: lees de inhoud, vat samen wat relevant is per flow
- **Geplakte tekst**: behandel als research-input
- **Screenshot**: lees de visuele info (pipeline-stadia, e-mail-naam) en koppel aan flow-blokken

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per flow**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] NA DEMO OF DISCOVERY
      Huidige praktijk: thank-you-mail handmatig binnen 1 dag,
      voorstel volgt 3-5 dagen later
      Trigger CRM: stadium-overgang "Discovery → Voorstel"
      Bron: Salesproces.md, CRM-screenshot

  [2] NA VOORSTEL
      Huidige praktijk: 1 belmoment na 7 dagen, daarna niks
      Trigger CRM: stadium "Voorstel" + datum-veld
      Gat: geen tweede en derde touchpoint
      Bron: Salesproces.md

  [3] DENK ER NOG OVER
      Geen vastgelegde flow, ad-hoc
      Gat: complete flow ontbreekt
      Bron: gebruiker bevestigt mondeling

  [4] VERLOREN DEAL
      Geen flow, contact wordt afgebroken
      Gat: hele flow ontbreekt
      Bron: ontbreekt

  [5] TE VROEG
      Lead krijgt verwijzing naar maandelijkse nieuwsbrief
      Trigger: handmatig in CRM "Te vroeg"-tag
      Bron: gebruiker bevestigt

  GATEN waar ik nog vragen voor heb:
  - Flow [2]: tweede en derde touchpoint na voorstel
  - Flow [3]: complete cadence ontbreekt
  - Flow [4]: re-engagement-strategie ontbreekt
  - Algemeen: opt-out-tekst niet gedefinieerd

  Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
  voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, flow voor flow

**Kernregel:** behandel **één flow per beurt**. Wacht op het antwoord, dán pas de volgende flow. Niet alle flows tegelijk neerzetten, dat overweldigt.

Per flow: 4 tot 7 kernvragen, afhankelijk van hoe gevuld de pre-fill al was. Als een flow in pre-fill al rijk gevuld is, stel je alleen check-vragen ("klopt dit?") plus 1-2 verdiepingsvragen. Als een flow leeg is, stel je de volledige set.

**Per flow leg je vast (de zes dimensies):**

1. **Trigger-event** — welke CRM-state, datum-veld of expliciete handeling start deze flow? (Bv. "stadium-overgang naar 'Voorstel verzonden'", "datum-veld 'Demo gehouden' is +0 dagen", "tag 'Te vroeg' toegekend".)
2. **Tijdslijn** — welke touchpoints op welke momenten? (Dag 0, +1 dag, +3 dagen, +7 dagen, +14 dagen, +30 dagen, etc.) 4 tot 8 touchpoints per flow is realistisch.
3. **Kanaal-mix** — welk kanaal per touchpoint? E-mail, WhatsApp, LinkedIn-DM, telefoon, sms, persoonlijke berichtje. Wissel kanalen af, plak niet 6× achter elkaar dezelfde mail.
4. **Inhoud per touchpoint** — welke boodschap, in welk register, met welk doel? **Geen "even checken" of "ik wilde even pollen"**. Wel: waarde-toevoegende inhoud (een case in dezelfde branche, een artikel dat het bezwaar adresseert, een vraag die nieuwsgierigheid wekt, een herinnering aan een concreet beslisingsmoment).
5. **Exit-criterium** — wanneer stopt de flow? Standaard-exits: deal won, deal lost, lead opt-out, geen reactie na laatste touchpoint, expliciete "stop met opvolgen"-melding. Een flow zonder exit-criterium spamt en schaadt het merk.
6. **Eigenaar** — wie voert dit uit? Vaak een mix: sales-rep voor persoonlijke touchpoints (telefoon, LinkedIn-DM), automation voor herhaalbare touchpoints (e-mail-flow). Specificeer per touchpoint of het mens of machine is.

#### Flow [1] — Na demo of discovery

**Trigger:** klant heeft een eerste discovery- of demo-gesprek gehad, voorstel volgt nog niet.

Kernvragen:
1. Wat krijgt de klant binnen 24 uur na het gesprek? (Thank-you-mail, samenvatting, vervolgvoorstel.)
2. Wat is de eerste belofte na het gesprek — wanneer kan de klant het voorstel verwachten?
3. Welke vraag of welk bezwaar werd het meest genoemd in het gesprek, en hoe wordt dat al deels geadresseerd in de opvolging?
4. Wat doe je als de klant niet reageert op de eerste opvolging? (Tweede mail op +3 dagen, telefoongesprek op +5 dagen, LinkedIn-DM op +7 dagen.)
5. Welk moment markeert "voorstel verzonden" (volgende flow start)?
6. Wie is eigenaar — sales-rep of automation?
7. Hoe meet je of deze flow werkt? (Reactie-percentage, doorlooptijd van demo naar voorstel.)

#### Flow [2] — Na voorstel of offerte

**Trigger:** voorstel of offerte is verzonden, klant heeft nog niet ja of nee gezegd.

Kernvragen:
1. Wanneer is het eerste opvolgmoment? (Standaard: +3 dagen mail, +7 dagen telefoon, +14 dagen mail met deadline-melding.)
2. Wat is de inhoud van elke opvolging — geen "even pollen", maar waarde toevoegend? (Een aanvullende case, een veelgehoorde vraag-en-antwoord, een aanbod tot een tweede gesprek.)
3. Welke deadline staat in het voorstel zelf? (Geldigheid offerte: 14 dagen, 30 dagen.)
4. Wanneer wordt de offerte officieel "verlopen" of teruggetrokken? Wordt dat gecommuniceerd?
5. Welke route na "geen reactie + offerte verlopen"? (Direct flow [4] verloren-deal, of eerst flow [3] denk-er-nog-over voor B2B.)
6. Welk kanaal werkt het beste in jouw markt — e-mail, telefoon, LinkedIn? (Verschilt per ICP-segment.)
7. Wie schrijft de opvolgmails — sales-rep, marketing, of een template?

#### Flow [3] — Na "denk er nog over" (langzaam-warm-houden)

**Trigger:** klant heeft expliciet gezegd "interessant, maar nu niet" of "ik moet er nog over nadenken". Klant is warm, maar niet beslis-rijp.

Kernvragen:
1. Wat is de tijdshorizon voor deze klant — wanneer denk je dat hij wel beslis-rijp is? (2 weken, 3 maanden, 6 maanden, ander kwartaal.)
2. Welke 2 tot 3 waarde-toevoegende touchpoints kun je inplannen die geen "even checken"-gevoel geven? (Een artikel dat een bezwaar adresseert, een case in zijn branche, een uitnodiging voor een evenement, een persoonlijk berichtje bij een nieuwsmoment van hem.)
3. Welk kanaal per touchpoint, en met welke frequentie? (Maximaal 1 touch per 2 weken, anders voelt het spammy.)
4. Wanneer escaleer je terug naar een actief sales-moment? (Klant vraagt iets, klant reageert positief, klant heeft bedrijfsmoment.)
5. Hoe blijf je op de hoogte van zijn situatie zonder hem te benaderen? (LinkedIn-volgen, Google Alerts op bedrijfsnaam, nieuwsbrief-stats.)
6. Wat is het exit-criterium — wanneer markeer je deze lead alsnog als "verloren"? (Na 6 maanden zonder enige reactie, na expliciete opt-out.)

#### Flow [4] — Na verloren deal (re-engagement)

**Trigger:** deal is officieel "verloren" — klant koos voor een concurrent, paste het idee af, of heeft nooit beslist.

Kernvragen:
1. Wat is de reden dat de deal verloren is? (Prijs, doorlooptijd, persoonlijke fit, timing, beslisser-wissel.) Zonder deze categorisering kun je niet gericht re-engagen.
2. Wanneer is het eerste re-engagement-moment realistisch? (Standaard: +3 maanden voor "verkeerde timing", +6 maanden voor "koos concurrent", direct bij beslisser-wissel.)
3. Welke boodschap past per verlies-reden? (Bij "te duur": nieuwe pakketstructuur. Bij "koos concurrent": cases van klanten die overstapten. Bij "te vroeg": uitnodiging voor evenement of nieuwsbrief.)
4. Welke 2 tot 3 touchpoints (+3 maanden en +6 maanden) met welk kanaal? (LinkedIn-DM met persoonlijk haakje werkt vaak beter dan e-mail bij koude re-engagement.)
5. Wat is het exit-criterium — wanneer markeer je deze lead definitief als "niet meer benaderen"? (Expliciete opt-out, geen reactie op 3 re-engagement-touchpoints, bedrijf is failliet.)
6. Hoe loggen we de uitkomst van re-engagement? (Nieuwe deal, alsnog gesloten, definitief verloren.)
7. Wie voert dit uit — automation kan het versturen, maar de inhoud is meestal persoonlijk en menselijk.

#### Flow [5] — Na "te vroeg" (educatie-nurture, langer traject)

**Trigger:** klant is nog niet ver genoeg in zijn eigen ontwikkeling om je dienst te kopen. Hij heeft eerst meer kennis, een groter team, of meer budget nodig.

Kernvragen:
1. Hoe lang verwacht je dat de lead in deze flow zit voordat hij wel rijp is? (3 maanden, 6 maanden, 12 maanden, langer.)
2. Welke content past in een educatie-flow? (Maandelijkse nieuwsbrief, kwartaal-rapport over de branche, uitnodiging voor webinar, casestudies van bedrijven die net één stap verder zijn.)
3. Hoe vaak een touchpoint — maandelijks, tweemaandelijks, kwartaal? (Hoge frequentie schaadt; te lage frequentie wordt vergeten.)
4. Wanneer en hoe wordt de lead "warm" gemaakt om opnieuw in het actieve sales-traject te komen? (Hij reageert op nieuwsbrief, hij vraagt iets in een DM, hij bezoekt een specifieke pagina.)
5. Welk kanaal is leidend in deze flow? (Nieuwsbrief en LinkedIn werken vaak beter dan 1-op-1 mails op deze tijdshorizon.)
6. Wat is het exit-criterium — wanneer is de lead definitief "niet onze klant"? (Bedrijf is gestopt, expliciete opt-out, geen enkele interactie in 18 maanden.)
7. Wordt deze flow gevoed door de Marketing-content-roadmap (M3) of staat hij apart?

### Stap 6: AVG-check

Voordat je een opvolg-flow schrijft, controleer drie AVG-grenzen. Werk **vault-onafhankelijk**: gebruik wat in `Juridisch/Privacyverklaring.md` staat als die er is, anders algemene regels.

1. **Opt-out per mail.** Elke commerciële e-mail moet een eenvoudige uitschrijflink hebben. Bij geautomatiseerde flows hoort dit op tool-niveau (Mailchimp, ActiveCampaign, Brevo regelen dit automatisch). Bij handmatige mails of LinkedIn-DM is dit "laat me weten als je geen verdere berichten wilt".
2. **B2B cold-outreach binnen de 14-dagen-regel.** Onder Nederlands recht mag je een B2B-prospect benaderen zonder opt-in, mits er een aantoonbaar zakelijk belang is en de prospect binnen 14 dagen na het eerste bericht kan opt-outen. Documenteer dit expliciet in flow [4] re-engagement als die richting koude prospects gaat.
3. **Nooit ongevraagde mass-mail naar consumer-doelgroep.** Bij B2C is opt-in verplicht. Een opvolg-flow naar consumer-leads mag alleen draaien op leads die expliciet hebben toegestemd (lead-magnet-opt-in, contact-formulier met checkbox, etc.). Cross-link naar J4 (Privacyverklaring) voor de juridische grondslag.

Stel concreet:
> "Per flow controleren we drie zaken: (a) elke mail heeft een opt-out, (b) bij koude B2B-outreach houden we de 14-dagen-regel aan, (c) consumer-leads hebben expliciet opt-in gegeven. Klopt dat voor jouw situatie? Ontbreekt een van deze drie, dan markeer ik dat als gat in de Cross-links-tabel met verwijzing naar J4 Privacyverklaring."

### Stap 7: Tool-keuze

Vraag welke tool de flow gaat uitvoeren. Drie hoofdvarianten:

| Variant | Wanneer geschikt | Voorbeelden |
|---|---|---|
| **CRM-automation** (volledig in de CRM) | Alle pipeline-events triggeren automatisch een sequence; meer geschikt voor B2B met langere flows | HubSpot Workflows + Sequences, Pipedrive Automations + Smart Docs, Salesforce Flow |
| **E-mailautomatisering** (apart van CRM) | Marketing-georiënteerd, ICP heeft veel content-nurture nodig, eenvoudiger te onderhouden door 1 persoon | Mailchimp Customer Journeys, ActiveCampaign, Brevo Automations, Beehiiv Sequences, MailerLite Automations |
| **Handmatige werklist met scheduled reminders** | Klein volume (< 10 leads tegelijk in een flow), persoonlijke aanpak gewenst, geen budget voor automation-tool | Notion task-board, Trello, Todoist met datum-reminders, Apple Reminders met repeats |

Vraag concreet:
> "Welke tool ga je gebruiken voor de uitvoer? CRM-automation, een aparte e-mailtool, of een handmatige werklist? Mag een mix zijn — bijvoorbeeld CRM voor flow [1] en [2], e-mailtool voor flow [5] educatie-nurture, handmatig voor flow [4] re-engagement. Specificeer per flow."

Documenteer per flow welke tool de uitvoer doet. Dit wordt direct input voor L3 (Mailflow Setup) die de feitelijke automation bouwt.

### Stap 8: Schrijven en opslaan

Gebruik het template uit `references/template-opvolg-flow.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus AVG-check plus tool-keuze.

Sla op als:
```
{scope}/Sales/Opvolg-flow.md
```

Maak de `Sales/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: opvolg-flow
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: V3
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "naadloze nurture", "ultieme cadence", "perfecte flow". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** Een specifieke trigger ("CRM-stadium-overgang naar 'Voorstel verzonden' triggert workflow 'V3-Flow2-Voorstel'") is sterker dan een vaag begrip ("flow start na voorstel").
- **Geen em-dashes**. Gebruik komma's, haakjes of losse zinnen.
- **Korte flow-koppen** (gewoon de flow-naam, niet creatief verzonnen).
- **Voorbeeld-mails zijn welkom**, maar als blok onder de flow, niet door de flow-tabel heen.

**Visuele weergave in het document:**
- Per flow een tabel met trigger, tijdslijn, kanaal, inhoud, exit-criterium, eigenaar
- Plus een ASCII-diagram per flow dat de touchpoints op een tijdlijn zet
- Aan het eind een tabel met cross-links naar S4 (ICP), S9 (Klantreis), V1 (Salesproces), C2 (CRM), C4 (Klantfeedback), J4 (Privacyverklaring), M3 (Content Roadmap) en L3 (Mailflow Setup)

### Stap 9: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Sales/Opvolg-flow.md` — v1.0, 5 flows met trigger, tijdslijn en kanaal-mix opgeleverd"*.
2. **Daily** — als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault, log onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie** — als er een audit-rapport in `Directie/Research/` staat waar V3 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link naar L3 (Mailflow Setup):** dit document is directe input voor L3. Stel voor om met de Mailflow-skill (als die er is) de feitelijke automation in de gekozen tool te bouwen.
- **Cross-link naar V1 (Salesproces):** controleer of de pipeline-states in Salesproces.md overeenkomen met de triggers in deze flows. Als V1 niet is uitgewerkt, valt de Trigger-kolom zwakker uit.
- **Cross-link naar C2 (CRM-setup):** controleer of de CRM-stadia precies de triggers leveren die de flows verwachten. Als dat niet zo is, eerst C2 opnieuw doen.
- **Cross-link naar M3 (Content Roadmap):** content voor flow [3] en flow [5] kan deels uit M3 komen — voorkom dubbele inhoud-productie.
- **Bijhouden:** dit is een levend document. Update bij nieuwe verlies-reden (flow [4]), wisseling van CRM-tool (alle flows), nieuwe ICP-segment (alle flows), of belangrijke klantfeedback (alle flows).

## Belangrijke regels

- **Eén flow per beurt** in het interview. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Vijf flows verplicht.** Niet inkorten tot "alleen na voorstel" — de zwakke schakels zitten meestal bij flow [3] denk-er-nog-over, flow [4] verloren-deal en flow [5] te-vroeg. Een ondernemer die alleen flow [1] en [2] heeft, mist het langere spel.
- **Trigger-event moet expliciet zijn.** Geen "wanneer de klant niet reageert" zonder te zeggen hoe lang. Wel "CRM-stadium 'Voorstel verzonden' + 3 dagen geen update".
- **Inhoud per touchpoint moet waarde toevoegen.** Geen "even checken", "ik wilde polshoogte nemen", "is er al nieuws". Wel concrete waarde: een case, een artikel dat een bezwaar adresseert, een vraag die nieuwsgierig maakt.
- **Exit-criterium voor elke flow.** Zonder exit spamt een flow en schaadt het merk. Standaard: deal won, deal lost, opt-out, geen reactie na laatste touchpoint, expliciete stop-met-opvolgen-melding.
- **AVG-check is verplicht.** Drie regels: opt-out per mail, 14-dagen-regel bij koude B2B, alleen consumer-leads met expliciete opt-in. Cross-link naar J4 in het document.
- **Kanaal-mix per flow.** Niet 6× achter elkaar dezelfde e-mail. Wissel af tussen e-mail, telefoon, LinkedIn-DM, WhatsApp, persoonlijk bericht. Per kanaal andere lengte en register.
- **Eigenaar per touchpoint.** Specificeer of het automation is (e-mail-flow draait), of mens (sales-rep belt op +7 dagen). Een flow zonder eigenaar-toewijzing wordt niet uitgevoerd.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaande `Opvolg-flow.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs met een single-business vault, voor mensen met een multi-business vault, en voor klanten die net hun SCALE-skelet hebben opgezet. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe documenten.** Veel ondernemers hebben hun cadence al in MailerLite of HubSpot Sequences staan. Halen we dat niet op, dan typen ze het opnieuw.
- **Mik op werkbare diepte, niet op het audit-minimum.** V3 vraagt 2 follow-up-momenten. Deze skill mikt op 5 flows met elk 4 tot 8 touchpoints — dat is wat in de praktijk werkt.

## Voorbeeld-output

Zie [`references/template-opvolg-flow.md`](references/template-opvolg-flow.md) voor de exacte structuur die de skill oplevert: ASCII-diagrammen per flow, flow-tabellen met trigger, tijdslijn, kanaal-mix, inhoud, exit-criterium en eigenaar, plus cross-link-tabel naar S4/S9/V1/C2/C4/J4/M3/L3.
