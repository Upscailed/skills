---
name: mailflow-setup
title: "Mailflow Setup"
description: "Helpt een ondernemer in 45 tot 75 minuten zes geautomatiseerde e-mail-workflows op te zetten en de bijbehorende templates te schrijven, met als output één canoniek document: `{scope}/Leverage/Mailflow-Setup.md`. Dit is SCALE-stap L3 (Leverage) en is het uitvoerende deel van V3 (Opvolg-flow): waar V3 vastlegt welke flows lopen, bouwt L3 ze daadwerkelijk in een tool. Zonder mailflows blijft elke nieuwe lead, klant, klacht of opzegging een handmatige opvolg-actie die vaak vergeten wordt. De skill werkt via een gestructureerd interview in 8 blokken, één blok per beurt zodat het niet overweldigt: tool-keuze, welkom-flow voor nieuwe klanten, onboarding-flow, nurture-flow (slow-warm), klachtafhandeling-bevestiging (24u SLA), opzeggings- en re-engagement-flow, facturatie-reminders, AVG-check en deliverability. Per workflow legt de skill vast: trigger-event (nieuwe lead, na demo, na onboarding, na klacht, jaarcontract-verlenging, factuur verzonden), tijdslijn (D0 + D3 + D7 + D14 + zoveel meer als nodig), inhoud per touchpoint, personalisatie-velden (klant-naam, segment, deal-grootte, product), gekozen tool (ActiveCampaign, Brevo, Mailchimp-automations, MailerLite, HubSpot Workflows, n8n + Resend, Customer.io, Postmark, of zelfgebouwde Vercel-functie), AVG-check (opt-out, dubbele-opt-in indien nodig, bewaartermijn), en deliverability (SPF/DKIM/DMARC, sender-domein, warm-up). Vóór het interview begint, scant de skill diep wat al beschikbaar is: ICP-segmenten en personalisatie-assen uit `Directie/Playbook/ICP.md` (S4), klantreis-fases uit `Directie/Playbook/Klantreis.md` (S9), CRM-pipeline-stadia uit `Collect/CRM-setup.md` (C2) als trigger-bron, bestaande opvolg-flows uit `Sales/Opvolg-flow.md` (V3) die direct in mail-templates worden omgezet, nieuwsbrief-provider uit `Marketing/Nieuwsbrief-Setup.md` (M4) zodat een provider niet dubbel wordt gekozen, betalingstermijn en facturatie-tool uit `Financien/` waar mogelijk, klachtafhandeling-SLA en escalatie-pad uit `Klantenservice/` of `Operations/SOP/Klachtafhandeling.md`, en AVG-grondslagen uit `Juridisch/Privacyverklaring.md` (J4). De skill werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam of vault-eigenaar, alleen over de SCALE-Leverage-conventie. Activeer altijd wanneer iemand zegt: 'mailflow opzetten', 'welkomstmail automatiseren', 'follow-up sequence', 'onboarding-flow bouwen', 'klachtmail automatiseren', 'facturatie-herinneringen automatiseren', 'win-back flow technisch bouwen', 'nurture automation', 'L3 dichten in SCALE-audit', 'gap L3', 'Mailflow-Setup.md aanmaken', 'ActiveCampaign automation bouwen', 'Brevo workflow opzetten', 'mailflow in n8n', 'transactionele mails inrichten', 'opzeg-mail flow', 'verlengings-flow jaarcontract'. Triggert ook bij iedere expliciete verwijzing naar L3, Mailflow-Setup.md, of vragen over geautomatiseerde e-mail-workflows die door een tool worden uitgevoerd."
category: operations
tags: [scale-framework, l3, leverage, email, automation, mailflow, workflows, avg]
estimatedTime: "45 tot 75 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Mailflow Setup

## Doel

Helpt een ondernemer om in 45 tot 75 minuten zes **geautomatiseerde e-mail-workflows** technisch en inhoudelijk op te zetten en de bijbehorende templates te schrijven. Output: één canoniek document `{scope}/Leverage/Mailflow-Setup.md` plus een set kant-en-klare templates per workflow. Dit is SCALE-stap L3 (Leverage) en is het uitvoerende deel van V3 (Opvolg-flow): waar V3 vastlegt welke flows lopen, bouwt L3 ze daadwerkelijk in een tool.

*Waarom dit fundamenteel is.* Een ondernemer kan niet aan elke nieuwe lead, klant, klacht of factuur persoonlijk denken. Mailflows zijn het mechanisme dat de **terugkerende** klant- en lead-momenten automatisch laat lopen, zodat de ondernemer alleen op uitzonderingen en escalaties hoeft te reageren. Wat onmiskenbaar terugkomt: een nieuwe klant boekt, na een demo volgt een traject, een factuur staat open, een klant zegt op, een klacht komt binnen. Zonder mailflows wordt elk van deze momenten een handmatige actie die op een drukke dag wegvalt.

*Waarom L3 boven op V3 staat.* V3 (Opvolg-flow) definieert de sales-georiënteerde flows: na demo, na voorstel, denk-er-nog-over, verloren deal, te vroeg. L3 verbreedt naar de complete klantlevenscyclus: welkom, onboarding, nurture, klachten, opzeggingen en facturatie. V3 is de strategie, L3 is de uitvoer. Daarom kan V3 zonder L3, maar L3 leunt zwaar op V3 om de sales-flows niet dubbel te bouwen.

*Wat je verliest zonder dit document.* Drie concrete pijnpunten die deze skill voorkomt:

1. **Lekkende klantreis.** Een nieuwe klant boekt en hoort dan 3 dagen niets. Een klant zegt op en hoort daarna nooit meer iets. Een klacht komt binnen en blijft 4 dagen zonder bevestiging staan. Dat zijn momenten die zonder werk-aan-zijn-merk een klant kosten.
2. **Onbetaalde facturen.** Zonder geautomatiseerde betalings-reminders blijven facturen vaak 30 tot 60 dagen open omdat niemand actief belt. Een vaste D-7, D-2, D+0, D+7, D+14-cadans verhoogt de tijdige betaal-ratio aantoonbaar.
3. **AVG-overtredingen.** Een opzeg-mail die nooit komt, een double-opt-in die niet werkt, een opt-out-link die ontbreekt, een bewaartermijn die niet wordt afgedwongen: allemaal AVG-risico's die zonder vastgelegde flows ontstaan.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit L3 vraagt minimaal 1 geautomatiseerde flow die draait. Die drempel haal je in een uurtje met een welkomstmail in Mailchimp. Deze skill mikt op een **werkbare set**: 6 standaard-mailflows compleet uitgewerkt met trigger, timing, inhoud per touchpoint, personalisatie-velden, AVG-check en deliverability-eisen, plus de templates zelf zodat de ondernemer ze direct in de gekozen tool kan plakken.

Resultaat: SCALE-audit L3 springt van Niet of Deels naar Ja, en het document plus de templates zijn direct bruikbaar zonder verdere copywriting.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  MAILFLOW SETUP — SCALE-stap L3 (Leverage)                 │
│  ~45-75 minuten · 8 blokken · 6 standaard-mailflows        │
└──────────────────────────────────────────────────────────┘

  In 45 tot 75 minuten zetten we zes geautomatiseerde mail-
  workflows op die de terugkerende klant- en lead-momenten
  automatisch laten lopen: welkom, onboarding, nurture,
  klachtafhandeling, opzegging en facturatie-reminders.

  Per workflow leg ik vast: trigger, tijdslijn, inhoud per
  touchpoint, personalisatie-velden, tool, AVG-check.
  En per mail lever ik een kant-en-klaar template op
  (subject + preview + body + CTA + footer).

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 8 blokken interview (één per beurt) — gemiddeld      │
  │    5-10 minuten per blok                                │
  │  • Pre-fill: ik scan eerst ICP, Klantreis, CRM-setup,   │
  │    Opvolg-flow, Nieuwsbrief-Setup, Privacyverklaring,   │
  │    Klachtafhandeling en betalingstermijn                │
  │  • Output: Leverage/Mailflow-Setup.md + 1 template-     │
  │    bestand per workflow (6 stuks)                       │
  └────────────────────────────────────────────────────────┘

  De 8 blokken:
  [1] Tool-keuze + sender         [2] Welkom-flow (5 mails)
  [3] Onboarding-flow (4 mails)   [4] Nurture-flow (maand)
  [5] Klachtafhandeling (24u SLA) [6] Opzegging + win-back
  [7] Facturatie-reminders         [8] AVG + deliverability

  Heb je externe input klaar? Bijvoorbeeld:
  • Bestaande mail-templates die werken
  • Facturatie-tool en betalingstermijn (14, 30 dagen)
  • Klachtafhandeling-SLA en escalatie-pad
  • Customer journey of klantreis-doc
  • Opvolg-flow-document (V3-output) als die er al is
  • Nieuwsbrief-provider als die al gekozen is

  Dan kun je dat nu noemen, hoe meer bronnen, hoe minder ik
  hoef te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  MAILFLOW SETUP — L3 · 45-75 min · 8 blokken · 6 flows    │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   │                      │  Bestaande mailflows?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  ICP (S4),
   │    (auto-discover)   │  Klantreis (S9),
   │                      │  CRM-setup (C2),
   │                      │  Opvolg-flow (V3),
   │                      │  Nieuwsbrief (M4),
   │                      │  Privacyverklaring (J4),
   │                      │  Klachtafhandeling,
   │                      │  Betalingstermijn
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Bestaande templates,
   │                      │  facturatie-tool,
   │                      │  SLA-doc, journey,
   │                      │  V3-output, provider
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend per
   │                      │  workflow, validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, blok   │  8 blokken,
   │    voor blok         │  5-10 vragen elk
   │                      │  [1] Tool + sender
   │                      │  [2] Welkom
   │                      │  [3] Onboarding
   │                      │  [4] Nurture
   │                      │  [5] Klacht
   │                      │  [6] Opzegging
   │                      │  [7] Facturatie
   │                      │  [8] AVG +
   │                      │      deliverability
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Templates         │  Per mail: subject,
   │    schrijven         │  preview, body, CTA,
   │                      │  footer, merge-tags
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  {scope}/Leverage/
   │    opslaan           │  Mailflow-Setup.md
   │                      │  + 6 template-bestanden
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    vervolg-          │  hint naar V3,
   │    suggesties        │  M4, C2
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Mailflow opzetten" / "welkomstmail automatiseren" / "follow-up sequence"
- "Onboarding-flow bouwen" / "klachtmail automatiseren" / "transactionele mails inrichten"
- "Facturatie-herinneringen automatiseren" / "betalingsreminder-flow"
- "Win-back flow technisch bouwen" / "opzeg-mail flow" / "verlengings-flow jaarcontract"
- "Nurture automation" / "drip campaign" / "automated sequence"
- "L3 dichten in SCALE-audit" / "gap L3" / "Mailflow-Setup.md aanmaken"
- "ActiveCampaign automation bouwen" / "Brevo workflow opzetten" / "mailflow in n8n" / "Customer.io flow"

Triggert NIET wanneer:
- De gebruiker een **sales-opvolg-flow** wil definiëren (strategie, niet bouw) — gebruik V3 skill `opvolg-flow`. V3 is de strategie, L3 voert die uit.
- De gebruiker een **redactionele nieuwsbrief** wil opzetten (M4 skill `nieuwsbrief-setup`). M4 bouwt het kanaal, L3 bouwt de automations daarin.
- De gebruiker een **CRM wil opzetten** met pipeline-states (gebruik C2 skill `crm-setup`).
- De gebruiker een **complete customer journey** wil mappen (gebruik S9 skill `klantreis`).
- De gebruiker een **klantcontract of voorwaarden-template** wil schrijven (gebruik J5 skill `klantcontract-template`).
- De gebruiker enkel een **losse copy voor één mail** wil zonder de workflow eromheen.

## Workflow

### Stap 1: Scope kiezen plus bestaande-flow-check

Vraag voor welk bedrijf en in welk pad de mailflows opgezet moeten worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Leverage/`, `Sales/`, `Marketing/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Leverage/`, etc.)

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze mailflows voor zijn?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")
3. **Bestaande mailflows:** draaien er al automations (welkomstmail, betalings-reminder, etc.) of beginnen we van nul?

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Leverage/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Leverage/Mailflow-Setup.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Mailflow-Setup - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Directie/Playbook/ICP.md` (S4) | ICP-segmenten als personalisatie-as in welkom, onboarding en nurture |
| `Directie/Playbook/Klantreis.md` (S9) | Klantreis-fases (Awareness, Consideration, Purchase, Onboarding, Retention) leveren de logische trigger-momenten per flow |
| `Directie/Playbook/Producten.md` (S8) | Productnamen en pakketten voor personalisatie-velden in welkom-flow en facturatie-reminders |
| `Directie/Playbook/Tone of Voice.md` (S3) | Schrijfregels en stem voor alle templates |
| `Directie/Playbook/Brand Guidelines.md` (S2) | Visuele identiteit voor template-header en footer |
| `Sales/Opvolg-flow.md` (V3) | De sales-cadences die al gedefinieerd zijn — niet dubbel bouwen, wel in mail-templates omzetten |
| `Sales/Salesproces.md` (V1) | Pipeline-stadia die als trigger werken voor welkom-flow na klant-conversie |
| `Collect/CRM-setup.md` (C2) | CRM-tool en pipeline-states leveren de feitelijke trigger-events |
| `Marketing/Nieuwsbrief-Setup.md` (M4) | Provider-keuze (Mailchimp, ActiveCampaign, Brevo, etc.) niet dubbel kiezen, plus SPF/DKIM/DMARC-config |
| `Marketing/Content Roadmap.md` (M3) | Content voor nurture-flow kan deels uit M3 komen |
| `Klantenservice/Klachtafhandeling.md` of `Operations/SOP/Klachtafhandeling.md` | SLA-tijden en escalatie-pad voor klachtbevestiging-mail |
| `Financien/Betalingstermijn.md` of `Operations/Boekhouding.md` | Standaard-betalingstermijn (14, 30 dagen) voor de facturatie-reminder-cadans |
| `Juridisch/Privacyverklaring.md` (J4) | AVG-grondslagen, opt-out-mechanismen, bewaartermijnen, dubbele-opt-in-eis |
| `IT/Toolstack.md` (S12) | Bestaande tool-stack — voorkomt voorstel voor tool die al draait of die incompatibel is |

Maak per gevonden bron een korte interne aantekening: welke workflow het raakt, en wat de relevante kerninzichten zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Werk met wat er is. Noteer ontbrekende bronnen aan het einde als gat.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. Mailflow-specifieke bronnen die vaak goud waard zijn:

- **Bestaande mail-templates** die nu handmatig of half-handmatig gestuurd worden (welkomstmail, factuur, reminder, opzeg)
- **Facturatie-tool en betalingstermijn** (Moneybird, e-Boekhouden, Exact, Factuursturen.nl) — bepaalt vaak hoeveel van de facturatie-flow al automatisch loopt en welke stappen handmatig blijven
- **Klachtafhandeling-SLA-doc** met de tijden voor eerste bevestiging, escalatie en oplossing
- **Customer journey of klantreis-doc** in Miro, Notion of Figma — laat zien op welke momenten een mail logisch is
- **CRM-pipeline-export** (CSV) of -screenshot met huidige stadium-namen
- **E-mailprovider-account-toegang** of API-key als de provider al gekozen is
- **Voorbeelden van mails die werkten of niet** — wat heeft hoge open-rate, wat krijgt klachten

Concrete vraag aan gebruiker:
> "Heb je externe documenten waaruit ik kan putten? Bijvoorbeeld bestaande mail-templates, je facturatie-tool en betalingstermijn, een klachtafhandeling-SLA, een customer journey, een CRM-screenshot, of voorbeelden van mails die werken of niet? Je mag URL's noemen, bestanden uploaden of tekst plakken. Hoe meer bronnen, hoe rijker het pre-fill."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen
- **PDF/document**: lees de inhoud, vat samen wat relevant is per workflow
- **Geplakte tekst**: behandel als research-input
- **Screenshot**: lees de visuele info en koppel aan workflow-blokken
- **Voorbeeld-mail-tekst**: extract subject, body, CTA, footer als basis voor template

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per workflow**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  TOOL + SENDER
      Provider: ActiveCampaign (uit Nieuwsbrief-Setup M4)
      Sender-domein: noreply@bedrijfsnaam.nl, SPF/DKIM al groen
      Gat: DMARC nog op 'none', moet naar 'quarantine'
      Bron: M4 Nieuwsbrief-Setup.md

  [1] WELKOM-FLOW (nieuwe klant, 5 mails over 4 weken)
      Status: handmatige welkomstmail wordt nu door Iwan gestuurd
      Trigger: nieuwe klant in CRM-pipeline-stadium 'Klant'
      Inhoud-richtlijn: bekend uit Klantreis (Purchase-fase)
      Gat: mails 2-5 nog niet bestaan
      Bron: V1 Salesproces, S9 Klantreis

  [2] ONBOARDING-FLOW (4 mails)
      Status: niet aanwezig
      Trigger: 7 dagen na welkomstmail
      Gat: complete flow ontbreekt
      Bron: ontbreekt

  [3] NURTHURE-FLOW (slow-warm, maandelijks)
      Status: gedeeltelijk gedekt door nieuwsbrief (M4)
      Gat: gerichte segment-mails per ICP ontbreken
      Bron: M4 Nieuwsbrief-Setup, S4 ICP

  [4] KLACHTAFHANDELING (24u SLA)
      SLA: 24 uur eerste bevestiging (uit Klachtafhandeling.md)
      Gat: automatische bevestiging niet ingericht
      Bron: Klantenservice/Klachtafhandeling.md

  [5] OPZEGGING + RE-ENGAGEMENT
      Status: niets aanwezig
      Gat: hele flow ontbreekt
      Bron: ontbreekt

  [6] FACTURATIE-REMINDERS
      Betalingstermijn: 14 dagen (uit Moneybird)
      Status: Moneybird stuurt automatisch herinnering op D+0
      Gat: D-7 vooraankondiging, D+7, D+14 nog niet
      Bron: Financien/Betalingstermijn.md, Moneybird-instellingen

  GATEN waar ik nog vragen voor heb:
  - Welkom-flow: mails 2-5 inhoud
  - Onboarding-flow: complete flow
  - Klachtafhandeling: automatische bevestiging
  - Opzegging-flow: tekst en re-engagement-moment
  - Facturatie: D-7, D+7, D+14 reminders inrichten

  Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
  voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, blok voor blok

**Kernregel:** behandel **één blok per beurt**. Wacht op het antwoord, dán pas de volgende blok. Niet alle blokken tegelijk neerzetten, dat overweldigt.

Per blok: 5 tot 10 kernvragen, afhankelijk van hoe gevuld de pre-fill al was. Als een blok in pre-fill al rijk gevuld is, stel je alleen check-vragen ("klopt dit?") plus 1-2 verdiepingsvragen. Als een blok leeg is, stel je de volledige set.

**Per workflow leg je vast (de zes dimensies):**

1. **Trigger-event** — welke CRM-state, datum-veld, formulier-submit of expliciete handeling start deze workflow? (Bv. "CRM-stadium-overgang naar 'Klant'", "factuur-status = 'verzonden'", "klachtformulier ingediend".)
2. **Tijdslijn** — welke touchpoints op welke momenten? (Dag 0, +1d, +3d, +7d, +14d, +30d, etc.) 1 tot 8 touchpoints per workflow, afhankelijk van de workflow.
3. **Inhoud per touchpoint** — welk doel, welke boodschap, welk register?
4. **Personalisatie-velden** — welke merge-tags (klantnaam, segment, productnaam, deal-grootte, factuurbedrag) staan in deze mail?
5. **Tool en mechanisme** — welk systeem stuurt deze mail (ActiveCampaign automation, Brevo workflow, n8n + Resend, Moneybird automation, etc.) en hoe wordt de trigger doorgegeven (webhook, API-call, CRM-pipeline-trigger, cron-job)?
6. **AVG en bewaartermijn** — opt-out per mail, dubbele-opt-in indien marketing-context, bewaartermijn van de mail-log.

#### Blok 1 — Tool-keuze en sender

**Doel:** vaststellen welke tool de mailflows uitvoert plus het sender-domein technisch correct staan voor goede deliverability.

Vraag de gebruiker:

1. Welke e-mail-provider gebruik je nu of wil je gebruiken? Standaardopties met sterke en zwakke kanten:

| Provider | Sterk in | Zwak in | Pricing-indicatie |
|---|---|---|---|
| **ActiveCampaign** | Geavanceerde automations, segmentatie, CRM-integratie | Steile leercurve, prijs schaalt snel | Vanaf ~€30/mnd |
| **Brevo** (voorheen Sendinblue) | NL-vriendelijk, AVG-gericht, goede prijs | Minder rijke segmentatie | Vanaf €19/mnd, gratis tot 300/dag |
| **Mailchimp Customer Journeys** | Brede ecosysteem, makkelijk template-builder | Beperkte logica in journey-builder | Vanaf €13/mnd, gratis tot 500 |
| **MailerLite** | Eenvoudige UI, gratis tot 1000 subs | Beperkte automation-diepte | Gratis tot 1000, dan €9/mnd |
| **HubSpot Workflows** | Volledige CRM + marketing-suite, krachtig | Duur boven gratis tier | Gratis basis, Marketing Pro €792/mnd |
| **Customer.io** | Event-driven, developer-vriendelijk, deep personalisatie | Geen drag-and-drop voor niet-devs | Vanaf ~€100/mnd |
| **n8n + Resend** | Volledige controle, koppelt elke trigger, Resend voor levering | Vereist ontwikkel-tijd | n8n self-host gratis, Resend $20/mnd |
| **Postmark** | Beste deliverability voor transactioneel, API-first | Geen marketing-automation, alleen transactional | $15/mnd vanaf 10k mails |
| **Zelfgebouwd (Vercel-functie + SES/Resend)** | Maximum vrijheid, eigen logica | Bouwen plus onderhouden | Hosting + verzendkosten |

2. Voor welke workflow-types wil je deze tool gebruiken? (Marketing-flows zoals welkom en nurture, transactionele flows zoals klacht en factuur, of beide?) Tip: combinatie is gangbaar (bv. ActiveCampaign voor marketing + Postmark voor transactional).
3. Welk sender-domein gebruik je? (`noreply@bedrijfsnaam.nl`, `hallo@bedrijfsnaam.nl`, persoonlijk adres van een teamlid.) Geen Gmail of Outlook-domein voor automation, dat schaadt deliverability.
4. Staan SPF, DKIM en DMARC al correct ingesteld op dat domein? (Check `Marketing/Nieuwsbrief-Setup.md` als M4 al is uitgevoerd. Anders: zie DNS-deel in stap 8.)
5. Heb je een ingesteld **antwoord-adres** (`reply-to`)? Bij `noreply@`-mails is het belangrijk dat antwoorden ergens terechtkomen.
6. Wie heeft toegang tot de mail-tool als beheerder? (Eigenaar account, eventueel een teamlid.)

#### Blok 2 — Welkom-flow voor nieuwe klanten (5 mails over 4 weken)

**Doel:** een nieuwe klant binnen 4 weken volledig laten landen door 5 strategisch verspreide welkomstmails. Eerste mail direct na conversie, daarna afnemend tempo.

Standaard-cadans:
- **D0:** Welkomstmail (direct na conversie, binnen 5 minuten)
- **D2:** Wat krijg je als klant + waar vind je wat (resources, dashboard, account)
- **D7:** Quick-win-mail (1 concrete actie die meteen waarde levert)
- **D14:** Casestudy of klantverhaal in zijn segment
- **D28:** Check-in + vraag om feedback + uitnodiging voor de nieuwsbrief

Vraag de gebruiker:
1. Wat is het trigger-moment? (CRM-pipeline-stadium-overgang naar 'Klant', betaling-bevestigd-event, contract-getekend-datum.)
2. Wat is de inhoud van de welkomstmail op D0? (Drie kernpunten: bevestiging, wat krijgt hij, eerste vervolgstap.)
3. Welke quick-win kan een nieuwe klant in week 1 al hebben? (Dat bepaalt de D7-mail.)
4. Welke casestudy past op D14, en is die al geschreven? (Cross-link M3 Content Roadmap.)
5. Welke feedback wil je op D28 ophalen? (Sterren-rating, open vraag, NPS, of vraag voor testimonial.)
6. Welke personalisatie-velden zitten in deze flow? (Voornaam, productnaam, pakket-niveau, eerste-factuurbedrag.)
7. Welke tool voert deze flow uit, en hoe wordt de trigger doorgegeven? (Webhook van de checkout-pagina, CRM-pipeline-trigger, handmatige tag-actie.)
8. Wat is het exit-criterium? (Klant heeft geantwoord, klant heeft opgezegd, klant heeft expliciet opt-out gevraagd.)

#### Blok 3 — Onboarding-flow (4 mails)

**Doel:** een nieuwe klant operationeel laten landen — niet verkoopgericht maar instructief. Pas in te zetten na de welkomstmail (D0).

Standaard-cadans (parallel aan of geïntegreerd met welkom-flow):
- **D1:** Hoe begin je (eerste 3 stappen, eerste login, dashboard-rondleiding)
- **D5:** Veelgestelde vragen aan het begin (FAQ, support-kanaal)
- **D10:** Hoe je het meeste eruit haalt (best-practice-tip op basis van zijn segment)
- **D21:** Onboarding-evaluatie ("Loop je ergens tegenaan? Boek een 15-min call.")

Vraag de gebruiker:
1. Heeft je product of dienst een **operationele onboarding** (login, accountsetup, eerste data inladen)? Zo nee, dan kan deze flow simpeler of integreren met welkom-flow.
2. Welke 3 eerste stappen moet een klant zetten? (Dat bepaalt D1.)
3. Wat zijn de 3 meest-gestelde vragen in de eerste 2 weken na onboarding? (Dat bepaalt D5 FAQ.)
4. Heb je segment-specifieke best-practices? (Bv. tip voor B2B-klant verschilt van tip voor ZZP-klant — cross-link S4 ICP.)
5. Welke check-in op D21? (Open vraag, gepland 1-op-1-gesprek, link naar feedbackformulier.)
6. Welke tool voert deze flow uit? (Kan dezelfde zijn als welkom-flow, of een aparte transactionele tool zoals Postmark.)
7. Wat is het exit-criterium? (Onboarding voltooid in product, klant logt in, klant antwoordt op D21-mail.)

#### Blok 4 — Nurture-flow (slow-warm, maandelijks 1 mail)

**Doel:** warm contact houden met leads en klanten die niet in een actieve sales- of onboarding-fase zitten. Lage frequentie, hoge waarde per mail.

Standaard-cadans:
- **Maandelijks** (laatste donderdag van de maand): 1 segment-gerichte mail met case, inzicht, of bedrijfs-update.

Vraag de gebruiker:
1. Wat is het verschil tussen jouw nieuwsbrief (M4) en deze nurture-flow? (Nieuwsbrief = breed naar alle subs, nurture = gericht per ICP-segment. Voorkom dubbel werk.)
2. Op welke ICP-segmenten richt je deze nurture? (Cross-link S4 ICP.)
3. Welke content past per segment? (Komt deels uit M3 Content Roadmap.)
4. Op welke dag en tijd verstuur je? (Standaard: dinsdag of donderdag 09:00-11:00 voor B2B, zaterdag 10:00 voor B2C.)
5. Hoe segmenteer je dynamisch? (Op CRM-tag, op aankoop-historie, op laatste-interactie-datum.)
6. Welke tool en welke trigger? (Standaard: tijd-getriggerde campaign in de mail-tool.)
7. Wat is het exit-criterium? (Lead opt-out, lead converteert naar klant en gaat naar welkom-flow, lead reageert 6 maanden niet → archiveer.)

#### Blok 5 — Klachtafhandeling-bevestiging (24u SLA)

**Doel:** klant die een klacht indient binnen 24 uur automatisch een ontvangst-bevestiging sturen. Toon van betrokkenheid; details volgen handmatig.

Standaard-cadans:
- **Binnen 5 min:** automatische ontvangst-bevestiging ("We hebben je bericht ontvangen, je hoort uiterlijk binnen 24 uur van ons.")
- **Binnen 24 uur:** handmatige reactie door support (deze valt buiten de geautomatiseerde flow, maar het systeem houdt de SLA bij)
- **D+3:** automatische follow-up als de klacht nog niet is opgelost ("We zijn er mee bezig.")
- **D+7:** automatische escalatie-melding naar eigenaar als er nog geen oplossing is

Vraag de gebruiker:
1. Wat is je formele SLA voor eerste reactie op een klacht? (Standaard B2C: 24 uur; B2B: 4-8 werkuren.)
2. Via welk kanaal komen klachten binnen? (Mail, contactformulier, telefoon, social media — bepaalt de trigger.)
3. Welk e-mail-adres ontvangt klachten? (`klachten@`, `support@`, of een dedicated formulier.)
4. Wat staat in de automatische ontvangst-bevestiging? (Tekst toon: empathisch, duidelijk over wachttijd, contactnummer voor noodgevallen.)
5. Wie krijgt een interne escalatie-mail bij geen oplossing na D+7? (Eigenaar, klantmanager.)
6. Welke tool voert dit uit? (Vaak ticket-systeem zoals Zendesk, Freshdesk, of n8n + custom formulier.)
7. Wat is het exit-criterium? (Klacht opgelost, klant tevreden bevestigd, klacht ingetrokken door klant.)
8. Hoe lang wordt de klachtafhandeling-mail-log bewaard? (AVG-eis: zo lang als nodig, vaak 2-7 jaar bij klantcontract.)

#### Blok 6 — Opzegging en re-engagement

**Doel:** een klant die opzegt vriendelijk uitleiden, en na 30 dagen + na 6 maanden voorzichtig re-engagement proberen.

Standaard-cadans:
- **D0:** Bevestiging van opzegging + concrete einddatum + "wat blijft er bewaard"
- **D30:** Vriendelijke terugmail ("Hoe gaat het? Geen sales, gewoon contact.")
- **+6 maanden:** Re-engagement-mail ("Er is veel veranderd, ben je nieuwsgierig?")

Vraag de gebruiker:
1. Hoe wordt een opzegging gemeld? (Via account-dashboard, mail naar `opzeggen@`, telefonisch.)
2. Wat is de trigger voor deze flow? (Status `Opgezegd` in CRM, formulier-submit, handmatige tag.)
3. Wat staat in de D0-bevestiging? (Bevestiging, einddatum, restitutie-info indien van toepassing, exit-survey met 1 vraag "waarom?".)
4. Welke vraag stel je in de exit-survey? (Standaard: "Mogen we vragen wat de doorslag gaf?" met 5 multiple-choice + open veld.)
5. Wat is de boodschap op D+30? (Niet sales, gewoon "hoe gaat het". Geen kortings-aanbod hier.)
6. Wat verandert er na 6 maanden waardoor re-engagement zinvol is? (Nieuwe versie, nieuwe pakket-structuur, nieuwe casestudy.)
7. Wat is het exit-criterium? (Lead reageert positief → welkom-flow opnieuw; geen reactie op +6 maanden → markeer 'niet meer benaderen'; expliciete opt-out → flow stopt.)
8. Hoe lang bewaar je de mail-log van een opgezegde klant? (Vaak 7 jaar voor administratieve eisen; cross-link J4.)

#### Blok 7 — Facturatie-reminders (D-7, D-2, D+0, D+7, D+14)

**Doel:** facturen tijdig laten betalen door een vaste cadans rondom de betaaldatum, plus na de vervaldatum nog 2 herinneringen.

Standaard-cadans (gebaseerd op 14-daagse betalingstermijn; pas aan op de werkelijke termijn):
- **D-7:** Pre-reminder (vriendelijk: "Je factuur staat over 7 dagen open.")
- **D-2:** Reminder (vriendelijk: "Over 2 dagen vervalt je factuur.")
- **D+0:** Vervaldag-reminder ("Je factuur is vandaag vervallen.")
- **D+7:** 1e aanmaning (toon iets formeler)
- **D+14:** 2e aanmaning ("Voor het einde van de week graag betalen, anders volgt verdere actie.")

Vraag de gebruiker:
1. Wat is je standaard-betalingstermijn? (14, 21 of 30 dagen.) Pas heel de cadans daarop aan.
2. Welk facturatie-tool gebruik je? (Moneybird, e-Boekhouden, Exact, Factuursturen.nl, custom.) Veel tools hebben ingebouwde reminders die je kunt aanzetten.
3. Wat staat al automatisch ingesteld in je facturatie-tool? (Vaak D+0 of D+7 al actief.) Voorkom dubbele mails.
4. Welke ontbrekende touchpoints moet de mail-tool aanvullen? (Vaak D-7, D-2, D+14.)
5. Wat is de toon per reminder? (D-7 en D-2: vriendelijk; D+0: neutraal; D+7 en D+14: zakelijk-formeel.)
6. Wat staat in de mail bij een 2e aanmaning? (Concreet vervolg: incassobureau, deurwaarder, rente.)
7. Hoe wordt het trigger-event doorgegeven? (Vaak webhook van facturatie-tool naar mail-tool of automation via n8n/Zapier.)
8. Wat is het exit-criterium? (Factuur betaald, factuur gecrediteerd, klant heeft betalingsregeling getroffen.)
9. Welke personalisatie? (Factuurbedrag, factuurnummer, vervaldatum, link naar online betaalpagina.)

#### Blok 8 — AVG-check en deliverability

**Doel:** zorgen dat alle workflows juridisch in orde zijn én dat de mails ook daadwerkelijk in de inbox landen.

**AVG-eisen per workflow:**

| Workflow | Opt-out vereist? | Dubbele-opt-in vereist? | Bewaartermijn-aandacht |
|---|---|---|---|
| Welkom | Ja, opt-out per mail | Nee, klant is al transactioneel | Zo lang klantrelatie + 7 jaar |
| Onboarding | Ja, opt-out per mail | Nee, klant is al transactioneel | Zo lang klantrelatie + 7 jaar |
| Nurture | Ja, opt-out per mail | Ja indien marketing-natuur | Zo lang opt-in geldig is |
| Klachtafhandeling | Niet vereist (legitimate interest) | Nee | 5-7 jaar voor administratieve eisen |
| Opzegging | Niet vereist (transactional) | Nee | 7 jaar |
| Facturatie-reminders | Niet vereist (transactional) | Nee | 7 jaar (boekhoudplicht) |

Vraag de gebruiker:
1. Voor welke workflows wil je verplichte opt-out tonen in de footer? (Marketing-gericht: ja; transactional: niet verplicht maar wel netjes.)
2. Heb je dubbele-opt-in nodig voor de nurture-flow? (Verplicht bij consumer-marketing; aanbevolen bij B2B-marketing zonder bestaande relatie.)
3. Wat is je bewaartermijn voor mail-logs? (Cross-link Privacyverklaring J4.)
4. Is er een DPO of intern AVG-aanspreekpunt? Zo ja, wie?
5. Verwijs je in elke mail-footer naar de Privacyverklaring? (Verplicht bij elke commerciële mail; aanbevolen bij elke automatische mail.)

**Deliverability-eisen:**

1. **SPF, DKIM en DMARC** moeten correct staan op het sender-domein. Check `Marketing/Nieuwsbrief-Setup.md` als M4 dit al heeft afgehandeld. Anders: gebruik de DNS-aanwijzingen van de provider.
2. **Sender-domein op een eigen domein**, niet op een gratis-mail-domein (gmail.com, outlook.com).
3. **Warm-up** als je een nieuwe sender bent: start met lage volumes (50/dag) en bouw op naar de gewenste schaal over 2-4 weken.
4. **Bounce-management**: hard bounces direct uit de lijst, soft bounces na 3 keer.
5. **Engagement-monitoring**: open-rate <15% of klacht-rate >0.1% zijn waarschuwingssignalen.

Vraag de gebruiker:
1. Is je sender-domein al "gewarmd up" (heeft het al meer dan 6 maanden e-mailverkeer op een serieus volume)? Zo nee, plan warm-up in.
2. Heb je bounce- en klacht-monitoring ingesteld in je mail-tool? (Vaak standaard aan, maar check het.)
3. Wat is je verwachte volume per maand (totaal aantal mails uit alle workflows samen)? Bepaalt de pricing-tier van de tool.

### Stap 6: Templates schrijven

Voor elke workflow schrijf je de mail-templates met een vaste skelet-structuur. Sla op in `{scope}/Leverage/templates/` of vergelijkbare map.

**Skelet per mail:**

```
SUBJECT: {korte regel, max 50 tekens, geen marketing-superlatieven}
PREVIEW: {snippet die naast subject zichtbaar is in inbox, max 90 tekens}

[Eventueel header met logo en brand-kleuren]

Hoi {Voornaam},

{Body — opening (1-2 zinnen), kern (3-5 zinnen), call-to-action (1 zin)}

{CTA-knop of expliciete link}

{Eventueel postscript voor 1 extra detail}

Vriendelijke groet,
{Naam van de ondernemer of bedrijfsnaam}

{Footer: bedrijfsadres, link naar Privacyverklaring, opt-out indien marketing, contactgegevens}
```

**Schrijfregels voor templates:**
- Schrijf in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "geweldig", "ongelofelijk", "uniek", "perfect". Feitelijk en menselijk.
- **Geen em-dashes**. Gebruik komma's, haakjes of losse zinnen.
- **Subject max 50 tekens** zodat ze niet afgekapt worden op mobiel.
- **Preview-tekst** vult de subject aan, niet herhalen.
- **Eén concrete CTA per mail**. Bij meer CTA's krijgt geen enkele aandacht.
- **Personalisatie via merge-tags**: `{Voornaam}`, `{Bedrijfsnaam}`, `{Productnaam}`, `{Factuurbedrag}`, `{Vervaldatum}`, etc.
- **Footer altijd compleet**: bedrijfsnaam, adres, KvK-nummer, link Privacyverklaring, opt-out-link bij marketing-mails.

Gebruik het template-bestand uit `references/template-mailflow.md` als skelet voor het Mailflow-Setup.md-document, en lever per workflow een aparte `templates/{workflow-naam}/mail-{n}.md` waar elke individuele mail in skelet-vorm staat.

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-mailflow.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus AVG-check plus tool-keuze plus deliverability.

Sla op als:
```
{scope}/Leverage/Mailflow-Setup.md
```

Plus per workflow een templates-set:
```
{scope}/Leverage/templates/welkom/mail-{1..5}.md
{scope}/Leverage/templates/onboarding/mail-{1..4}.md
{scope}/Leverage/templates/nurture/mail-template.md
{scope}/Leverage/templates/klachtafhandeling/bevestiging.md
{scope}/Leverage/templates/klachtafhandeling/follow-up.md
{scope}/Leverage/templates/opzegging/bevestiging.md
{scope}/Leverage/templates/opzegging/terugmail-d30.md
{scope}/Leverage/templates/opzegging/re-engagement-6m.md
{scope}/Leverage/templates/facturatie/d-min-7.md
{scope}/Leverage/templates/facturatie/d-min-2.md
{scope}/Leverage/templates/facturatie/d-plus-0.md
{scope}/Leverage/templates/facturatie/d-plus-7.md
{scope}/Leverage/templates/facturatie/d-plus-14.md
```

Maak de `Leverage/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: mailflow-setup
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: L3
provider: <Naam van tool>
sender-domein: <domein>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "naadloze automation", "ultieme flow", "perfecte cadans". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** Een specifieke trigger ("Webhook `klant-onboarded` triggert automation `L3-Welkom`") is sterker dan een vaag begrip ("welkom-flow start na conversie").
- **Geen em-dashes**. Gebruik komma's, haakjes of losse zinnen.
- **Korte workflow-koppen** (gewoon de workflow-naam, niet creatief verzonnen).
- **Visuele weergave in het document:**
  - Per workflow een tabel met dag, kanaal (vaak alleen e-mail bij L3), inhoud-richtlijn, personalisatie, eigenaar (mens of automation), tool-actie
  - Plus een ASCII-diagram per workflow dat de touchpoints op een tijdlijn zet
  - Een tool + sender-blok aan het begin
  - Een AVG- en deliverability-blok aan het eind
  - Aan het eind een tabel met cross-links naar S4 (ICP), S9 (Klantreis), V3 (Opvolg-flow), C2 (CRM), M4 (Nieuwsbrief), J4 (Privacyverklaring)

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Leverage/Mailflow-Setup.md` — v1.0, 6 workflows met 18 templates opgeleverd"*.
2. **Daily** — als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault, log onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie** — als er een audit-rapport in `Directie/Research/` staat waar L3 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link naar V3 (Opvolg-flow):** controleer of de sales-cadences uit V3 in deze L3-flows worden uitgevoerd. Als V3 niet uitgewerkt is, valt de sales-laag van L3 zwakker uit.
- **Cross-link naar M4 (Nieuwsbrief Setup):** controleer of de gekozen mail-provider in L3 dezelfde is als in M4 — voorkom 2 verschillende tools.
- **Cross-link naar C2 (CRM-setup):** controleer of de CRM-stadia exact de trigger-events leveren die de workflows verwachten. Zo nee, eerst C2 opnieuw doen.
- **Cross-link naar J4 (Privacyverklaring):** controleer of de bewaartermijnen in de Privacyverklaring overeenkomen met de bewaartermijnen in deze mailflows.
- **Test-run:** voer per workflow een testrun uit met een eigen e-mailadres voordat je live gaat. Check inbox-plaatsing (geen spam-folder), opt-out-werkt, merge-tags correct gerenderd.
- **Bijhouden:** dit is een levend document. Update bij wisseling van mail-tool, wisseling van facturatie-tool, nieuwe ICP-segment, wisseling van betalingstermijn, of belangrijke klantfeedback over mails.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Zes workflows verplicht.** Niet inkorten tot alleen welkom + facturatie — het hele palet (welkom, onboarding, nurture, klacht, opzegging, facturatie) dekt de klantlevenscyclus. Een ondernemer die alleen welkom heeft, mist 5 momenten waar contact verloren gaat.
- **Trigger-event moet expliciet zijn.** Geen "wanneer een klant zich aanmeldt" zonder te specificeren hoe (welk veld, welk event, welk CRM-stadium). Wel "Webhook van checkout-pagina stuurt `klant.created` met `email`-veld, triggert ActiveCampaign-automation `L3-Welkom`."
- **Inhoud per touchpoint moet waarde toevoegen.** Geen "even checken" of "ben je tevreden zonder context". Wel concrete waarde: een quick-win-tip, een casestudy, een herinnering aan een concrete actie.
- **Personalisatie via merge-tags expliciet noemen.** Welke velden, welk format, welke fallback bij ontbrekende data ("Hoi {Voornaam | 'daar'}").
- **AVG-check is verplicht.** Per workflow expliciet noteren of opt-out vereist is, of dubbele-opt-in nodig is, en wat de bewaartermijn van de mail-log is.
- **Deliverability-eisen voor de hele setup.** SPF, DKIM, DMARC op het sender-domein. Eigen domein, geen gmail.com. Warm-up bij nieuwe sender. Bounce-management en engagement-monitoring.
- **Geen em-dashes** in templates of in het Mailflow-Setup.md.
- **Geen marketing-superlatieven.** Een welkomstmail die zegt "ongelofelijk blij je aan boord te hebben" is sales-spam. Een welkomstmail die zegt "Welkom. Hier vind je hoe je begint." is professional.
- **Tool-keuze cross-checken met M4 Nieuwsbrief-Setup en S12 Toolstack.** Voorkom dubbele subscriptions op verschillende tools die hetzelfde doen.
- **Klachtafhandeling-bevestiging binnen 5 minuten automatisch.** De 24u-SLA is voor de inhoudelijke reactie, maar de bevestiging hoort instant.
- **Facturatie-cadans aanpassen op werkelijke betalingstermijn.** Een 30-daagse termijn vereist andere D-7- en D+7-tonen dan een 14-daagse termijn.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaande `Mailflow-Setup.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs met een single-business vault, voor mensen met een multi-business vault, en voor klanten die net hun SCALE-skelet hebben opgezet. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Mails NOOIT automatisch versturen vanuit de skill zelf.** De skill bouwt de workflow-definitie en templates. Het feitelijke aanzetten (zoals automation activeren in de mail-tool) doet de ondernemer met een expliciete handeling, na een test-run.
- **Test-run verplicht voor go-live.** Per workflow een eigen testmail die door de volledige cadans loopt, voor live-zetten op klantverkeer.
- **Mik op werkbare diepte, niet op het audit-minimum.** L3 vraagt 1 werkende flow. Deze skill mikt op 6 workflows met 18 templates — dat is wat in de praktijk de klantlevenscyclus dekt.

## Voorbeeld-output

Zie [`references/template-mailflow.md`](references/template-mailflow.md) voor de exacte structuur die de skill oplevert: ASCII-diagrammen per workflow, tabellen met dag, kanaal, inhoud, personalisatie, eigenaar en tool-actie, plus een tool + sender-blok aan het begin, een AVG- en deliverability-blok aan het eind, en een cross-link-tabel naar S2/S3/S4/S8/S9/V1/V3/C2/J4/M3/M4/S12.
