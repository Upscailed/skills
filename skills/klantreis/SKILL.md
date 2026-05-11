---
name: klantreis
title: "Klantreis"
description: "Helpt een ondernemer in 30-45 minuten een rijke klantreis (customer journey) vast te leggen in één canoniek document: `Directie/Playbook/Klantreis.md`. Dit is SCALE-stap 9 (Structure) en de brug tussen ICP (S4, wie de klant is) en SOPs (S10, hoe de processen lopen): de klantreis maakt zichtbaar wanneer welk proces van toepassing is en waar de klant op welk moment in zijn beslissing zit. De skill werkt via een gestructureerd interview in 7 fases (Awareness, Interest, Consideration, Purchase, Onboarding, Service, Retention en Referral), één fase per beurt zodat de gebruiker niet wordt overweldigd. De skill detecteert eerst of het een B2C-, B2B- of hybride-business is en past fase-namen, tijdsverwachting en touchpoint-vragen daarop aan. Vóór het interview begint, scant de skill diep wat al in de vault staat (Directie/00 - Overzicht.md voor propositie, Directie/Playbook/ICP.md voor klant-segmenten, Directie/Playbook/Producten.md voor wat in welke fase wordt verkocht, Directie/Research voor sales-data, Marketing voor funnels) én vraagt actief naar externe documenten (oude funnel-diagrammen, klant-onboarding-mails, sales-flow-schetsen, CRM-pipeline-screenshots, lead-magnets). Per fase legt de skill vast: touchpoints (waar contact), klant-perspectief (wat denkt/voelt/doet de klant), bedrijfs-acties (wat doet het bedrijf), tools (welke software of kanaal), tijd in fase (gemiddeld), pain points (waar valt klant uit) en decision moments (wat beïnvloedt de keuze). De skill werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam, persoonlijke profielen of vault-eigenaar, alleen over de SCALE-Structure-conventie (`Directie/`, `Directie/Playbook/`, etc.). Activeer altijd wanneer iemand zegt: 'klantreis mappen', 'customer journey uitwerken', 'touchpoints in kaart brengen', 'maak een klantreis', 'hoe loopt onze sales-funnel', 'beschrijf de klantbeleving', 'waar valt mijn klant uit', 'funnel uittekenen', 'klantcontactpunten verzamelen', 'journey map', 'S9 dichten in SCALE-audit', 'gap S9', 'Klantreis.md aanvullen', 'van eerste contact tot retentie'. Triggert ook bij iedere expliciete verwijzing naar S9 of `Klantreis.md`."
category: structure
tags: [klantreis, customer-journey, touchpoints, structure, scale-framework, s9, funnel, retentie]
estimatedTime: "30 tot 45 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Klantreis

## Doel

Helpt een ondernemer om in 30 tot 45 minuten de **klantreis** (customer journey) van zijn of haar bedrijf vast te leggen in één canoniek document: `{scope}/Directie/Playbook/Klantreis.md`. Dit is SCALE-stap 9 (Structure) en levert het verbindingsstuk tussen wie de klant is (S4 ICP) en hoe de processen lopen (S10 SOPs).

*Waarom dit fundamenteel is.* Veel ondernemers weten wel wat ze verkopen en aan wie, maar hebben nooit op papier gezet hoe de klant van eerste contact tot terugkerende klant beweegt. Zonder dat overzicht weet je niet welk proces wanneer van toepassing is, waar de klant uitvalt, of welk kanaal welke fase moet bedienen. De klantreis is de **kaart** waarop alle marketing-, sales- en service-processen worden gepositioneerd.

*Waarom het de brug is.* SCALE-audit S4 (ICP) beschrijft wie de klant is, S10 (SOPs) beschrijft hoe processen lopen. De klantreis (S9) zit daar precies tussen: voor elke fase laat hij zien welke ICP-aspecten relevant zijn én welke SOP geactiveerd moet worden. En het is directe input voor V3 (Opvolg-flow): die kan pas worden gebouwd als de Retention-fase in de klantreis is uitgewerkt.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit S9 stelt dat minstens 3 fases met concrete touchpoints aanwezig moeten zijn. Die drempel haal je in 5 minuten met algemene termen ("website, e-mail, telefoon"), maar dan heb je geen bruikbare kaart. Deze skill mikt op een **rijk** document: 5 tot 7 fases met touchpoints, klant-perspectief, bedrijfs-acties, tools, tijd, pain points en decision moments per fase.

Resultaat: SCALE-audit S9 springt van ❌ of ⚠️ naar ✅, plus het document is direct herbruikbaar als input voor M3 (Content Roadmap), V1 (Salesproces), V3 (Opvolg-flow) en alle SOPs uit S10.

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  KLANTREIS — SCALE-stap 9 (Structure)                     │
│  ~30-45 minuten · 5-7 fase-interviews                     │
└──────────────────────────────────────────────────────────┘

  In 30 tot 45 minuten leggen we de hele reis vast die jouw
  klant aflegt: van het allereerste contact tot terugkerende
  klant. Per fase: waar contact, wat de klant denkt en doet,
  wat jij doet, welke tools, en waar het lastig wordt.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • Eerst 1 vraag: B2B, B2C of hybride? Dat bepaalt de   │
  │    fase-namen en hoe diep we per fase gaan              │
  │  • Daarna 5 tot 7 fases (één per beurt, niet alles      │
  │    tegelijk) — gemiddeld 4-6 minuten per fase           │
  │  • Per fase 5-7 kernvragen (touchpoints, perspectief,   │
  │    acties, tools, tijd, pain points, decision moments)  │
  │  • Vooraf scan ik wat er al in je vault staat plus      │
  │    externe documenten die je aanlevert (oude funnels,   │
  │    onboarding-mails, CRM-pipeline) — zo vragen we niet  │
  │    naar wat al ergens is opgeschreven                   │
  │  • Daarna lever ik een gevuld Klantreis.md op met       │
  │    tabel, ASCII-diagram en cross-links naar S4/S10/V3   │
  └────────────────────────────────────────────────────────┘

  De standaard 7 fases (B2C-default, B2B varieert iets):
  [1] Awareness    [2] Interest    [3] Consideration
  [4] Purchase     [5] Onboarding  [6] Service
  [7] Retention en Referral

  Heb je externe documenten klaar? Bijvoorbeeld:
  • Oude funnel- of sales-flow-schetsen
  • Klant-onboarding-mails of welkomstpakket
  • CRM-pipeline-screenshots (HubSpot, Pipedrive, etc.)
  • Lead-magnets of opt-in-pagina's
  • Sales-deck of dienstenpagina
  • Klant-feedback over hun ervaring met je bedrijf

  Dan kun je die nu noemen of uploaden — hoe meer bronnen,
  hoe rijker het pre-fill.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  KLANTREIS — S9 · 30-45 min · 5-7 fases                   │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   │                      │  B2B / B2C / hybride?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  ICP, Producten,
   │    (auto-discover)   │  Overzicht, Sales,
   │                      │  Marketing-funnels
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Oude funnel,
   │                      │  onboarding-mails,
   │                      │  CRM-pipeline,
   │                      │  lead-magnets
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend per
   │                      │  fase, ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, fase   │  5-7 fases,
   │    voor fase         │  5-7 vragen elk
   │                      │  [1] Awareness
   │                      │  [2] Interest
   │                      │  [3] Consideration
   │                      │  [4] Purchase
   │                      │  [5] Onboarding
   │                      │  [6] Service
   │                      │  [7] Retention
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Touchpoint-       │  Per fase: dieper
   │    detaillering      │  op touchpoints,
   │                      │  tools, pain points
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Directie/Playbook/
   │    opslaan           │  Klantreis.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    vervolg-          │  hint naar
   │    suggesties        │  S10 / V3 / M3
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Klantreis mappen" / "maak een klantreis" / "customer journey uitwerken"
- "Touchpoints in kaart brengen" / "klantcontactpunten verzamelen"
- "Hoe loopt onze sales-funnel" / "funnel uittekenen"
- "Beschrijf de klantbeleving" / "waar valt mijn klant uit"
- "Journey map" / "van eerste contact tot retentie"
- "Klantreis.md aanvullen" / "verbeter mijn klantreis"
- "S9 dichten in SCALE-audit" / "gap S9"

Triggert NIET wanneer:
- De gebruiker een **ICP** of klantsegmenten wil uitwerken (gebruik de S4-skill — de klantreis vooronderstelt dat ICP er al is, of werkt op overzichtsniveau zonder erin te duiken)
- De gebruiker een **proces of SOP** wil uitwerken (gebruik de S10-skill `proces-interviewer` — klantreis geeft het wanneer, SOP geeft het hoe)
- De gebruiker alleen een **opvolg-flow voor retentie** wil bouwen (gebruik de V3-skill `opvolg-flow` als die er is — die diept de Retention-fase uit)
- De gebruiker een **producten of pricing document** wil (gebruik de S8-skill)
- De gebruiker een **content-roadmap** wil maken (gebruik de M3-skill — klantreis is wel **input** daarvoor maar niet hetzelfde document)
- De gebruiker enkel een **website-funnel-pagina** wil tekstueel uitwerken

## Workflow

### Stap 1: Scope kiezen plus business-type

Vraag voor welk bedrijf en in welk pad de klantreis gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Directie/`, `Marketing/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Directie/`, etc.)

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze klantreis voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")
3. **Business-type:** is dit een **B2B**, **B2C** of **hybride** business?

Het business-type bepaalt de fase-namen en de diepgang per fase:

| Type | Fase-set | Karakteristiek |
|---|---|---|
| **B2C** (eindconsument) | Awareness, Interest, Consideration, Purchase, Onboarding, Service, Retention/Referral | Korte cyclus, emotionele triggers, vaak self-service, retentie via belevenis en loyalty |
| **B2B** (zakelijke klant) | Awareness, Interest, Evaluatie, Pilot/Demo, Contract/Beslissing, Onboarding, Account Management, Renewal/Upsell | Langere cyclus, meerdere stakeholders, rationele beslissingen, retentie via account management |
| **Hybride** (beide kanalen) | Twee parallelle tracks die op Purchase samenkomen, of één gemeenschappelijke reis met opmerkingen per type | Specifiek per geval; vraag door |

Bij hybride: vraag of er één geïntegreerde klantreis komt (met annotaties B2C/B2B per fase) of twee aparte klantreizen. Standaard: één geïntegreerde, twee tracks bij Awareness-Consideration en samen vanaf Purchase.

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Directie/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Directie/Playbook/Klantreis.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Klantreis - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root.

Standaard SCALE-Structure-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Directie/00 - Overzicht.md` | Propositie, doelgroep op hoofdlijn, fase van bedrijf |
| `Directie/Playbook/ICP.md` | Klant-segmenten, pijnpunten, beslissingsfactoren |
| `Directie/Playbook/Producten.md` (of `Aanbod.md`) | Welk product in welke fase wordt verkocht |
| `Directie/Playbook/Brand Guidelines.md` | Toon en beleving op touchpoints |
| `Directie/Playbook/Klantreis.md` | Bestaande klantreis-versie (zie stap 1) |
| `Directie/Research/*.md` | Klant-onderzoek, sales-data, funnel-conversie |
| `Directie/Meetings/*.md` | Klantgesprekken, onboarding-feedback |
| `Marketing/Content Roadmap.md` | Bestaande contentplanning per fase |
| `Marketing/*` | Funnel-pagina's, lead-magnets, e-mailflows |
| `Sales/*` | Salesproces, offerte-templates, CRM-export |
| `Operations/Processen/*.md` | Bestaande SOPs die bij fases horen |
| `Klantenservice/*` | Service-tickets, klacht-patronen, FAQ |

Maak per gevonden bron een korte interne aantekening: welke fase het raakt, en wat de relevante kerninzichten zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Werk met wat er is.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. Klantreis-specifieke bronnen die vaak goud waard zijn:

- **Oude funnel-schetsen** (op papier, in Miro, in Excalidraw) — soms is de hele reis er al maar niet in de vault
- **Klant-onboarding-mails** of een welkomstpakket — toont de Onboarding-fase concreet
- **CRM-pipeline-screenshots** (HubSpot, Pipedrive, Salesforce, Notion) — toont de Consideration-tot-Purchase-fases met etiketten
- **Lead-magnets, opt-in-pagina's, landing-pages** — toont Awareness en Interest
- **Sales-deck of -script** — toont Consideration en Purchase
- **Dienstenpagina van website** — toont hoe de propositie per pakket wordt gecommuniceerd
- **Klant-feedback, NPS-rapport, klantgesprekken-transcripts** — toont waar pain points en succesmomenten zitten
- **E-mailflows uit MailerLite/ActiveCampaign/Klaviyo** — toont de geautomatiseerde retentie-laag

Concrete vraag aan gebruiker:
> "Heb je externe documenten of bronnen waaruit ik kan putten? Bijvoorbeeld een oude funnel-schets, een onboarding-mailreeks, een CRM-pipeline-screenshot, een lead-magnet, een sales-deck, een NPS-rapport of klant-feedback? Je mag URL's noemen, bestanden uploaden of tekst plakken. Hoe meer bronnen, hoe rijker het pre-fill."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen
- **PDF/document**: lees de inhoud, vat samen wat relevant is per fase
- **Geplakte tekst**: behandel als research-input
- **Screenshot**: lees de visuele info (pipeline-stadia, fase-namen) en koppel aan fase-blokken

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per fase**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] AWARENESS
      Kanalen: LinkedIn, Google Ads, mond-tot-mond
      Touchpoints: LinkedIn-posts, AdWords-campagne
      Bron: Marketing/Content Roadmap, sales-deck

  [2] INTEREST
      Lead-magnet: gratis intake of e-book
      Tools: ActiveCampaign-opt-in
      Bron: opt-in-pagina, e-mailflow

  [3] CONSIDERATION
      Vergelijking met concurrenten, beslissingsfactoren:
      prijs, persoonlijke aandacht, ervaring
      Bron: ICP-bestand, klant-feedback

  ... (fase 4-7)

  GATEN waar ik nog vragen voor heb:
  - Fase 5 Onboarding: er staat geen onboarding-proces vast
  - Fase 7 Retention: ik vond geen retentie-flow of NPS

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, fase voor fase

**Kernregel:** stel **één fase per beurt**. Wacht op het antwoord, dán pas de volgende fase. Niet alle fases tegelijk neerzetten, dat overweldigt.

Per fase: 5 tot 7 kernvragen, afhankelijk van hoe gevuld de pre-fill al was. Als een fase in pre-fill al rijk gevuld is, stel je alleen check-vragen ("klopt dit?") plus 1-2 verdiepingsvragen. Als een fase leeg is, stel je de volledige set.

**Per fase leg je vast (de zeven dimensies):**

1. **Touchpoints** — Waar komt de klant in contact in deze fase? (Concreet: een specifieke LinkedIn-post, een Google-zoekopdracht, een telefoongesprek, een welkomstmail.) Drie tot vijf touchpoints per fase is realistisch.
2. **Klant-perspectief** — Wat denkt, voelt en doet de klant in deze fase? (Niet wat het bedrijf doet. De *staat van de klant*.)
3. **Bedrijfs-acties** — Wat doet het bedrijf op dit moment? (Een proces, een communicatie-actie, een handmatige stap, een automatisering.)
4. **Tools en kanalen** — Welke software of welk kanaal wordt gebruikt? (Concreet: LinkedIn, MailerLite, HubSpot, Calendly, e-mail, telefoon, persoonlijk gesprek, WhatsApp.)
5. **Tijd in fase (gemiddeld)** — Hoe lang zit een klant gemiddeld in deze fase? (Uren, dagen, weken — afhankelijk van type business.)
6. **Pain points** — Waar valt de klant uit, waar twijfelt hij, waar wordt het lastig? Dit is vaak waar de meeste optimalisatiekans zit.
7. **Decision moments** — Welke keuze maakt de klant in deze fase? Wat beïnvloedt die keuze (prijs, vertrouwen, tijd, persoonlijke fit)? Beslissing kan zijn: "doorgaan naar volgende fase" of "afhaken".

#### Fase 1 — Awareness (B2C/B2B)

**Waar de klant je voor het eerst tegenkomt.** Bij B2B vaak via referral, content, of evenement. Bij B2C vaak via advertenties, social media of zoekverkeer.

Kernvragen:
1. Welke kanalen leiden tot eerste contact? (Top 3-5 in volgorde van volume.)
2. Wat zoekt of voelt de klant op dat moment? (Probleem-bewustzijn? Naam-herkenning? Aanbeveling van iemand?)
3. Welke content of boodschap raakt hen het eerste? (Specifieke posts, ads, podcasts, evenementen.)
4. Hoeveel tijd zit tussen eerste contact en volgende stap? (Een paar minuten, dagen, of weken?)
5. Wat is de grootste reden dat ze direct weer wegklikken of vergeten?

#### Fase 2 — Interest (B2C/B2B)

**De klant heeft je gevonden en wil meer weten.** Hij blijft hangen op je website, downloadt een lead-magnet, of stelt een eerste vraag.

Kernvragen:
1. Waar komt de klant terecht na eerste contact? (Specifieke pagina, lead-magnet, intake-formulier.)
2. Wat is de eerste belofte die jouw kant doet? (Concreet aanbod, gratis check, voorbeelddocument.)
3. Welk tool registreert hier de lead? (E-mail-systeem, CRM, telefoonnotitie?)
4. Hoeveel procent van de leads in deze fase gaat door naar Consideration? (Indien meetbaar.)
5. Wat houdt mensen tegen om verder te kijken?

#### Fase 3 — Consideration (B2C) / Evaluatie + Pilot (B2B)

**De klant overweegt actief en vergelijkt.** Hij kijkt naar prijs, ervaringen, of past dit echt bij zijn situatie.

Kernvragen (B2C):
1. Welke vragen krijg je het vaakst in deze fase? (Prijs, doorlooptijd, garantie, ervaring.)
2. Met wie vergelijkt de klant je? (Specifieke concurrenten of categorieën.)
3. Welke bewijslast werkt het best? (Reviews, casestudies, gratis demo, eerste gesprek.)
4. Hoe lang duurt deze fase gemiddeld?
5. Waar haakt de klant het vaakst af in deze fase?

Kernvragen (B2B-aanvulling):
6. Hoeveel stakeholders zijn betrokken bij de beslissing? (Beslisser, beïnvloeder, gebruiker.)
7. Komt er een pilot, demo of POC vóór de contract-fase? Zo ja, hoe ziet die eruit?

#### Fase 4 — Purchase (B2C) / Contract en Beslissing (B2B)

**De klant zegt ja.** B2C: een transactie via website of betaling op factuur. B2B: een ondertekend contract of mondelinge bevestiging gevolgd door SLA.

Kernvragen:
1. Hoe verloopt de feitelijke aankoop of contractondertekening? (Stappen, tools, tijdsbestek.)
2. Welke documenten worden uitgewisseld? (Offerte, algemene voorwaarden, contract, factuur.)
3. Welk moment markeert "het is rond"? (Eerste betaling, ondertekening, kick-off-gesprek?)
4. Hoeveel tijd zit tussen ja-zeggen en betalen of starten?
5. Waar gaat dit soms nog mis?

#### Fase 5 — Onboarding

**De klant is binnen, maar nog niet aan boord.** Dit is de fase waar veel bedrijven steken laten vallen: een formele welkom, het inrichten van toegangen, het eerste resultaat zichtbaar maken.

Kernvragen:
1. Wat krijgt de klant in de eerste 24 uur, 7 dagen, 30 dagen?
2. Welk specifiek moment voelt voor de klant als "we zijn echt begonnen"?
3. Welke tools moeten klaar staan? (Account, inlog, eerste afspraak, deelmap.)
4. Wat is de eerste merkbare opbrengst voor de klant? ("Eerste win" — kort en concreet.)
5. Welke verwachtingen worden hier expliciet uitgesproken? (Doorlooptijd, reactietijd, escalatiepad.)
6. Wat is het signaal dat onboarding klaar is, en service begint?
7. Waar lekken klanten in deze fase weg? (Geen reactie, onduidelijke vervolgstap, verkeerde verwachting.)

#### Fase 6 — Service (B2C) / Account Management (B2B)

**De klant draait mee.** Voor B2C: hij gebruikt het product of de dienst. Voor B2B: account management houdt de relatie warm.

Kernvragen:
1. Wat is het ritme van contact in deze fase? (Wekelijks, maandelijks, kwartaal, on-demand.)
2. Welke standaard-rapportages of -updates ontvangt de klant?
3. Welk kanaal is leidend voor support of vragen? (E-mail, telefoon, helpdesk, persoonlijk.)
4. Wat is de afgesproken reactietijd?
5. Welke signalen geven dat een klant tevreden is of juist niet?
6. Wat gebeurt er bij een klacht of escalatie?

#### Fase 7 — Retention en Referral (B2C) / Renewal en Upsell (B2B)

**De klant blijft of komt terug.** Dit is de fase waar de meeste winst zit en die meestal het zwakst is uitgewerkt.

Kernvragen:
1. Wanneer en hoe wordt de relatie verlengd of opnieuw gestart? (Automatische verlenging, jaarlijks gesprek, expliciete check-in?)
2. Welke triggers leiden tot upsell, cross-sell of een nieuw pakket?
3. Wat doe je actief om afhakers te voorkomen? (Health check, NPS, persoonlijk gesprek bij stilte.)
4. Hoe meet je tevredenheid?
5. Wat moet er gebeuren voordat een tevreden klant je actief aanbeveelt? (Vragen om review, referral-bonus, casestudy-akkoord.)
6. Welk signaal geeft dat een klant gaat opzeggen? Wat doe je dan?
7. Wat is een gemiddelde levensduur van een klant?

**Belangrijk over deze fase:** dit is de hoofdinput voor V3 (Opvolg-flow). Schrijf hier zo concreet mogelijk, want V3 bouwt hier de geautomatiseerde laag op.

### Stap 6: Touchpoint-detaillering

Nadat het interview rond is, doe één laatste verdieping voordat je gaat schrijven. Per fase: controleer of de **drie zwaarste dimensies** (touchpoints, pain points, decision moments) concreet genoeg zijn.

Concretiseringsregel:
- Touchpoints moeten **naam-baar** zijn ("LinkedIn-bedrijfspost over X-thema", niet "social media").
- Pain points moeten **observatie-niveau** zijn ("klant wacht gemiddeld 4 dagen op antwoord op offerte", niet "communicatie loopt soms stroef").
- Decision moments moeten **expliciete keuze** beschrijven ("klant kiest tussen pakket A €X of pakket B €Y, beïnvloed door doorlooptijd", niet "klant beslist").

Stel per fase 1-2 kort doorvragen waar de antwoorden nog te abstract zijn. Geen complete nieuwe ronde, alleen aanscherpen.

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-klantreis.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus detaillering.

Sla op als:
```
{scope}/Directie/Playbook/Klantreis.md
```

Maak de `Directie/Playbook/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: klantreis
bedrijf: <Naam>
business-type: <B2C | B2B | hybride>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S9
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "naadloze", "ultieme", "perfecte journey". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** Een specifiek touchpoint ("welkomstmail uit ActiveCampaign-flow 'onboarding-v2'") is sterker dan een vaag begrip ("een welkomstmail").
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Korte fase-koppen** (gewoon de fase-naam, niet creatief verzonnen).
- **Klant-perspectief in 1e persoon** ("Ik zoek iemand die...") om empathie te wekken, of in beschrijvende derde persoon. Niet beide door elkaar.
- **Pas op met "branche-onafhankelijk".** Bij hybride: noem expliciet welke variant per fase geldt.

**Visuele weergave in het document:**
- Per fase een tabel met de 7 dimensies.
- Plus een ASCII-diagram bovenaan dat alle fases naast elkaar zet met pijlen, zodat het ene plaatje de hele reis vangt.
- Aan het eind een tabel met cross-links naar S4 (ICP), S10 (SOPs) en V3 (Opvolg-flow).

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Directie/Playbook/Klantreis.md` — v1.0, klantreis met X fases en touchpoint-detaillering opgeleverd"*.
2. **Daily** — als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault, log onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie** — als er een audit-rapport in `Directie/Research/` staat waar S9 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link naar S10 (SOPs):** elke fase met handmatige bedrijfs-acties is een kandidaat voor een SOP. Stel voor om met `proces-interviewer` (S10) de zwaarste handmatige fase als eerste te documenteren.
- **Cross-link naar V3 (Opvolg-flow):** de Retention-fase is direct input voor V3. Als V3 nog niet bestaat, stel voor om met de Opvolg-flow-skill aan de slag te gaan.
- **Cross-link naar M3 (Content Roadmap):** content per fase is een directe input. Awareness en Interest in de klantreis bepalen de top-of-funnel content; Consideration bepaalt mid-funnel.
- **Cross-link naar S4 (ICP):** als ICP nog leeg is, valt de klant-perspectief-kolom zwakker uit. Stel voor om ICP te verrijken.
- **Bijhouden:** dit is een levend document. Update bij nieuwe touchpoints, een nieuwe lead-bron, een nieuw pakket, of bij significante klantfeedback.

## Belangrijke regels

- **Eén fase per beurt** in het interview. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Eerst business-type vragen** (B2B / B2C / hybride). Dit bepaalt fase-namen en diepgang. Niet later corrigeren.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaande `Klantreis.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Concreet > abstract.** Touchpoints moeten naambaar zijn, pain points observatie-niveau, decision moments expliciet. Stap 6 (detaillering) is hier voor.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs met een single-business vault, voor mensen met een multi-business vault, en voor klanten die net hun SCALE-skelet hebben opgezet. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe documenten.** Veel ondernemers hebben hun funnel of onboarding al in Miro, in een Excalidraw, of in een sales-deck staan. Halen we dat niet op, dan typen ze het opnieuw.
- **Klant-perspectief is geen marketing-tekst.** Wat de klant denkt, voelt en doet is feitelijk; geen wensvolle bedrijfs-projectie. Wees eerlijk over twijfel, frustratie, vergelijken.
- **Pain points zijn niet eng om op te schrijven.** Ze zijn het waardevolste deel van het document; alleen wie ze ziet kan ze oplossen.
- **Mik op rijke diepte, niet op het audit-minimum.** Minstens 5 fases met alle 7 dimensies ingevuld, geen 3 fases met alleen touchpoints.

## Voorbeeld-output

Zie [`references/template-klantreis.md`](references/template-klantreis.md) voor de exacte structuur die de skill oplevert: ASCII-diagram, fase-tabellen met 7 dimensies, en cross-link-tabel naar S4/S10/V3.
