# Daily Business Briefing (module van scale-analyze)

> Bron-skill: `daily-briefing` | SCALE-code: A3 | Versie: 1.0.0 | Geschatte tijd: 30 tot 50 minuten

---

# Daily Business Briefing

## Doel

Helpt een ondernemer om in 30 tot 50 minuten een werkende **Daily Business Briefing** op te zetten: een korte, geautomatiseerde management-samenvatting die elke werkdag verschijnt in zijn inbox, Telegram-bot, Slack-channel, native app of als fysieke print. Dit is SCALE-stap A3 (Analyze) en het is bewust de eerste echte tastbare belofte van Upscailed.

*Waarom dit de Time-to-Value-belofte van Upscailed is.* Bij elke nieuwe klant landt in week 1 de eerste Daily Brief in zijn inbox. Niet "we zijn nog aan het inrichten", niet "over een maand kan je rapportage verwachten", maar **op dag 5 al een werkende brief**. Dat is de tastbare laag onder het concept van Upscailed: een AI-dienstverlener die niet vooral praat over wat mogelijk is, maar binnen dagen iets oplevert dat elke ochtend voor de klant op zijn telefoon staat. De Daily Brief is daarmee het eerste meetbare moment waarop de klant het verschil tussen "we hebben Upscailed ingehuurd" en "nu krijgen we elke ochtend cijfers" zelf voelt.

*Wat een Daily Brief wel is, en wat hij niet is.* De Daily Brief is een **management-samenvatting**, geen rapportage. Een rapportage (A1, wekelijks of maandelijks) gaat de diepte in op trends, oorzaak-gevolg, marges per segment. Een Daily Brief gaat over **60 seconden gisteren-recap en vandaag-richting**: wat is er gebeurd, wat valt op, wat moet er vandaag gebeuren. Te lang is dood. Te kort is leeg. De goede maat is tussen 150 en 350 woorden plus een tabel.

*Onderscheid met andere A-skills en met morning-brief.*

| Skill | Wat het levert | Frequentie |
|---|---|---|
| A1 Rapportage Builder | De rapportage-vorm zelf (welke cijfers, welke layout, welke knipfrequentie) | Eenmalig opzetwerk |
| A2 Mission Control Builder | Visueel realtime dashboard | Continu, on demand |
| **A3 Daily Briefing** | **Korte dagelijkse push-samenvatting in een kanaal** | **Elke werkdag** |
| A4 Beslissings Analyse | Analyse-frame voor concrete beslissingen | Per beslissing |
| A5 Benchmarking | Vergelijking met branche of historie | Per kwartaal of jaar |
| L2 Auto Rapportage Setup | Automatisering van de wekelijkse of maandelijkse rapportage uit A1 | Eenmalig opzetwerk, daarna automatisch |

De **persoonlijke morning-brief** (`Persoonlijk/Skills/morning-brief/` in een Iwan-OS-vault) is een gerelateerde maar bredere skill: die mixt persoonlijke acties, agenda, top-3, sales funnel en research-digest in één visueel ochtend-dashboard. De Daily Brief uit deze A3-skill is **business-only en compacter**: cijfers, anomalieen, één actie. Wie beide draait, gebruikt de Daily Brief als pure cijfers-brief en de morning-brief als persoonlijk launchpad.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit A3 stelt dat er **iets** moet bestaan dat dagelijks of werkdagelijks de belangrijkste cijfers samenvat. Die drempel haal je met een handmatige WhatsApp aan jezelf om 09:00. Deze skill mikt op een **werkende automatisering**: gekozen kanaal, gekozen tijdstip, scheduled-task-spec, content-template, lijst van data-bronnen, fallback-gedrag wanneer een bron faalt, anomalie-detectie-regels, en een eerste werkende editie binnen 5 werkdagen.

Resultaat: SCALE-audit A3 springt van niet-bestaand of fragmentarisch naar volledig ingericht, en het document `{scope}/Analyze/Daily-Briefing-Setup.md` is direct overdraagbaar aan een implementatie-partner of automatisering-tool. Elke ochtend rolt de brief vanzelf het kanaal binnen.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, toon de gebruiker een korte intro zodat hij weet wat er komt. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  DAILY BUSINESS BRIEFING — SCALE-stap A3 (Analyze)        │
│  ~30-50 minuten · 7 blokken                               │
└──────────────────────────────────────────────────────────┘

  In 30 tot 50 minuten zetten we de Daily Brief op die elke
  werkdag rond 06:00-08:00 in jouw inbox, Telegram, Slack
  of app verschijnt. Niet "we kunnen binnen 3 maanden", maar
  dag 5 al een eerste werkende editie.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 7 inhoudelijke blokken (één per beurt)               │
  │  • Per blok 1 tot 4 concrete vragen                     │
  │  • Vooraf scan ik wat al beschikbaar is: bestaande      │
  │    KPI's (C7), CRM (C2), financiele data (C3),          │
  │    klantfeedback (C4), marketing-data (C1), rapportage  │
  │    (A1). Hoe meer er staat, hoe minder ik hoef te       │
  │    vragen.                                              │
  │  • Daarna lever ik Analyze/Daily-Briefing-Setup.md op   │
  │    met de complete content-spec en scheduled-task      │
  │    config                                               │
  └────────────────────────────────────────────────────────┘

  De 7 blokken:
  [1] Doelgroep + frequentie
      Voor wie is de brief? Welke werkdagen?
  [2] Kanaal kiezen
      E-mail, Telegram, Slack, native app, fysiek printen
  [3] Tijdstip + tijdzone
      Default 06:00-08:00 lokale tijd, klant kan kiezen
  [4] Content-secties
      Welke van de 7 vaste secties zijn voor jou relevant
  [5] Data-bronnen koppelen
      Welke C- en A-skills leveren de cijfers
  [6] Anomalie-detectie + tone
      Wanneer flaggen, hoe schrijven
  [7] Implementatie + eerste editie
      Scheduled task, fallback, dag-5-belofte

  Heb je input al klaar? Bijvoorbeeld:
  • Bestaande dashboards of rapportages waar je nu naar
    kijkt (Notion, Google Data Studio, Looker Studio)
  • Een tool die je al gebruikt voor automation (Make,
    n8n, Zapier, Pipedream)
  • Een voorkeur voor een specifiek kanaal (Telegram-bot,
    Slack-channel, e-mail-templater)
  • Een lijstje cijfers waar je vandaag de dag elke
    ochtend naar zoekt

  Dan kun je dat nu noemen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst de input wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  DAILY BUSINESS BRIEFING — A3 · 30-50 min · 7 blokken     │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Operations/KPIs (C7),
   │    (auto-discover)   │  Analyze/Rapportage (A1),
   │                      │  Collect/CRM (C2),
   │                      │  Collect/Financiele-data
   │                      │  (C3), Collect/Klant-
   │                      │  feedback (C4), Collect/
   │                      │  Marketing-data (C1)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe input?    │  Bestaande dashboards,
   │                      │  automation-tools,
   │                      │  voorkeurs-kanaal,
   │                      │  voorkeurs-cijfers
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per blok, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview blok    │  [1] Doelgroep+freq
   │    voor blok         │  [2] Kanaal
   │                      │  [3] Tijdstip+tz
   │                      │  [4] Content-secties
   │                      │  [5] Data-bronnen
   │                      │  [6] Anomalie+tone
   │                      │  [7] Implementatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Content-template  │  Vaste structuur per
   │    samenstellen      │  editie, voorbeeld-
   │                      │  brief voor "gisteren"
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Scheduled-task-   │  Cron-expressie,
   │    spec opstellen    │  data-query-volgorde,
   │                      │  fallback bij faal
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Schrijven +       │  Analyze/Daily-
   │    opslaan           │  Briefing-Setup.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Logging +         │  Changelog, dag-5-
   │    vervolg           │  belofte, hint
   │    suggesties        │  richting L2, A1, A2
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Daily briefing" / "ochtendrapport" / "dagelijkse cijfers"
- "Morning brief opzetten" / "elke ochtend een dashboard in mijn inbox"
- "Time to value van Upscailed laten zien" / "wat lever ik in week 1"
- "Cijfers per dag in mijn mailbox" / "ochtend-cijfers automatiseren"
- "Dagrapport per mail" / "Telegram-bot voor dagcijfers" / "Slack-bot ochtendcijfers"
- "Native app daily briefing" / "ik wil een app die elke ochtend mijn cijfers laat zien"
- "A3 dichten in SCALE-audit" / "gap A3"
- "Daily-Briefing-Setup.md aanmaken" / "Daily Brief klaarzetten voor klant X"

Triggert NIET wanneer:
- De gebruiker een **wekelijkse of maandelijkse rapportage** wil opzetten (gebruik `rapportage-builder` — A1)
- De gebruiker een **realtime dashboard** wil bouwen (gebruik `mission-control-builder` — A2)
- De gebruiker een **beslissings-analyse** wil structureren (gebruik `beslissings-analyse` — A4)
- De gebruiker een **automatisering van de wekelijkse rapportage** wil (gebruik `auto-rapportage-setup` — L2)
- De gebruiker een **persoonlijk launchpad voor zijn eigen ochtend** wil bouwen (gebruik in een Iwan-OS-vault de bestaande `morning-brief`-skill)
- De gebruiker **operationele KPIs zelf wil definieren** (gebruik `operationele-kpis` — C7)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de Daily Brief opgezet wordt. Maak **geen aannames** over de mapstructuur of vault-naam. Werk vault-onafhankelijk.

Verwacht varianten:
- **Single-business vault** waar de root meteen het bedrijf is (`Analyze/`, `Collect/`, `Operations/` direct onder root)
- **Multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/...`)
- **Eigen Upscailed-klant** waar het bedrijf in een dedicated Drive-map of Notion staat — in dat geval is "scope" een klant-naam plus pad

Vraag de gebruiker:
1. Voor welk bedrijf is deze Daily Brief? (Eigen bedrijf van de gebruiker, of een klant van Upscailed)
2. Wat is het pad naar de bedrijfs-root, of zal ik zoeken vanuit de huidige werkmap?

Controleer of `{scope}/Analyze/Daily-Briefing-Setup.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** of **nieuwe iteratie** wordt (oude archiveren als `Daily-Briefing-Setup - archief YYYY-MM-DD.md`)

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. Werk vault-onafhankelijk via relatieve paden binnen de bedrijfs-root.

Standaard SCALE-paden om te checken:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Analyze/Daily-Briefing-Setup.md` (als die bestaat) | Bestaande spec, vorige keuzes |
| `Analyze/Rapportage.md` (A1, **verplicht checken**) | Welke cijfers zijn al gedefinieerd, met welke frequentie, in welke vorm |
| `Operations/KPIs.md` (C7, **verplicht checken**) | Operationele KPIs met dagelijkse frequentie zijn directe input |
| `Collect/CRM-setup.md` (C2) | Pipeline-states, deal-bedragen, doorlooptijden voor sales-cijfers |
| `Collect/Financiele-data.md` (C3) | Omzet, marge, cashflow-bronnen voor de "gisteren" omzet-regel |
| `Collect/Klantfeedback.md` (C4) | NPS- en CSAT-stromen voor klanttevredenheid-trend |
| `Collect/Marketing-data.md` (C1) | Lead-bronnen, kanaal-resultaten voor de "leads gisteren" regel |
| `Collect/Website-analytics.md` (C5) | Bezoekers en conversies, optioneel in de brief |
| `IT/Toolstack.md` (S12) | Welke tools data leveren, welke automation-tool al in huis is |
| `Directie/Playbook/Brand-guidelines.md` (S2) of `Brand-guide.md` | Tone-of-voice, branding voor het kanaal-template |
| `Directie/00 - Overzicht.md` | Bedrijfsnaam, doelgroep, ICP voor de brief-aanhef |
| `Directie/01 - Goals.md` | Jaardoelen die in de "trend van 7 dagen"-sectie zichtbaar moeten zijn |
| `HR/Team.md` | Wie de ontvanger is, of de brief naar meerdere ontvangers moet |
| `Huddle/Daily/` (als de conventie bestaat) | Bestaand daily-ritme dat de brief kan vervangen of aanvullen |

Maak per gevonden bron een korte interne aantekening: welke editie-sectie het raakt, welke kerngegevens al bekend zijn, of de bron compleet is of nog gaten heeft.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Niet alarmeren, niet doorvragen. Werk met wat er is.

### Stap 3: Externe input ophalen

Vraag actief of de gebruiker externe materialen heeft.

Concrete vraag aan gebruiker:
> "Heb je externe input die ik kan gebruiken? Bijvoorbeeld:
> - Een bestaand dashboard waar je nu naar kijkt (Notion, Google Data Studio, Looker Studio, een Excel)
> - Een tool die al draait voor automation (Make, n8n, Zapier, Pipedream, een custom Node-script)
> - Een voorkeur voor een kanaal (e-mail-template uit Mailchimp, Telegram-bot die al aan staat, Slack-workspace, een native iOS-app)
> - Een lijstje cijfers waar je vandaag de dag elke ochtend handmatig naar zoekt — vaak de scherpste indicator van wat in de brief moet
> - Een verzoek van een investeerder, accountant of board om dagelijks bepaalde cijfers te zien
>
> Hoe meer input, hoe minder ik hoef uit te vragen."

Per aangeleverd item:
- **Bestaand dashboard** → scan op KPIs en visualisatie-keuzes, neem mee in pre-fill
- **Automation-tool** → mark als kandidaat-uitvoerder van de scheduled task in stap 7
- **Voorkeurs-kanaal** → mark als default in stap blok 2
- **Lijstje "wat ik elke ochtend zoek"** → directe input voor blok 4 (content-secties)
- **Verzoek van investeerder of accountant** → mark als alternatieve doelgroep, eventueel tweede editie

Als de gebruiker geen externe input heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, gegroepeerd per blok. Voorkomt dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] DOELGROEP + FREQUENTIE
      Bedrijf is solopreneur volgens 00-Overzicht, dus de
      brief is voor jezelf. Frequentie: werkdagen (ma-vr).

  [2] KANAAL
      IT/Toolstack noemt Gmail als primaire mail. Geen
      Telegram, geen Slack genoemd. Voorstel: e-mail.

  [3] TIJDSTIP + TIJDZONE
      Geen voorkeur in vault gevonden. Default: 07:00 lokale
      tijd. Tijdzone: Europe/Amsterdam (op basis van vestiging).

  [4] CONTENT-SECTIES
      Operations/KPIs (C7) levert 3 dagelijkse KPI's: doorloop-
      tijd onboarding, first response time, foutpercentage
      facturatie. Collect/CRM noemt deal-bedrag en aantal
      nieuwe leads. Collect/Financiele-data noemt dag-omzet
      via Moneybird-API. Klantfeedback (C4) niet ingevuld,
      sla NPS/CSAT-regel over.

  [5] DATA-BRONNEN
      Notion (CRM), Moneybird (omzet), eigen helpdesk
      (response-tijden), handmatig (foutpercentage).

  [6] ANOMALIE-DETECTIE + TONE
      Brand-guidelines noemt "feitelijk, geen marketing-taal".
      Tone voor brief: zakelijk-direct.

  [7] IMPLEMENTATIE
      Geen automation-tool genoemd. Voorstel: Make.com of
      n8n als orchestrator, of een Node-script + cron op een
      eigen server.

  GATEN waar ik nog vragen voor heb:
  - Blok 2: heb je een voorkeur voor e-mail of toch Telegram?
  - Blok 3: 07:00 of liever 06:30 of 08:00?
  - Blok 6: welke percentage afwijking is "anomalie"?
  - Blok 7: heb je al Make/n8n/Zapier ergens lopen?

Klopt dit beeld? Wil je nog iets toevoegen voordat we het
interview per blok doorlopen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, blok voor blok

**Kernregel:** loop **één blok per beurt** af. Niet alle 7 tegelijk neerzetten.

#### Blok 1 — Doelgroep + frequentie

Vraag:
1. Wie krijgt de Daily Brief? (Vaak één persoon, soms een leadership-team of co-founder, soms ook de accountant of een investeerder)
2. Welke werkdagen? (Default: maandag-vrijdag. Variant: ma-za voor retail. Variant: alle 7 dagen voor productie-bedrijven met continudienst.)
3. Wat is het uitstap-criterium? (Default: oneindig zolang de klant Upscailed-abonnement heeft. Vraag of er een vakantie-pauze nodig is.)

Markeer in de spec: hoofd-ontvanger plus eventuele cc-ontvangers, werkdagen-array, vakantie-regel.

#### Blok 2 — Kanaal kiezen

Vraag: *"Welk kanaal past het beste? Hier zijn de opties met voor- en nadelen:"*

| Kanaal | Voordeel | Nadeel | Wanneer kiezen |
|---|---|---|---|
| **E-mail** (default) | Iedereen heeft het, archief automatisch, leesbaar offline, kan rich HTML | Niet pushen op telefoon zonder notificatie | Solo-ondernemers, B2B-leaders, ondernemers die al veel mail krijgen en niet meer kanalen willen |
| **Telegram-bot** | Push-notificatie direct op telefoon, kort en bondig, makkelijk archief in chat | Vereist Telegram-app, soms wordt het kanaal te druk | Snelle scanners, ondernemers die al Telegram gebruiken voor team-chat |
| **Slack-channel** | Bestaat al in de tool-stack van veel bedrijven, team-leesbaarheid, threads voor doorpraten | Vereist Slack-workspace, niet voor solo-ondernemers zonder team | Bedrijven met team van >3 FTE die al Slack gebruiken |
| **Native app** (custom Upscailed-app) | Volledige controle, beste ervaring, branding-mogelijkheid, push-notifs | Vereist app-bouw, langer dan dag 5 te leveren | Premium-klanten met groei-ambitie, klanten waarbij Upscailed een dashboard-suite gaat bouwen |
| **Fysieke print** | Hangt op je bureau, geen schermtijd, niet wegklikbaar | Niet schaalbaar, niet interactief, vereist printer | Klanten die bewust off-screen willen werken, oudere ondernemers met print-voorkeur, kantoor-cultuur met memo-bord |

Pas op: vraag naar wat de klant **al gebruikt**, niet wat fancy is. Een Telegram-bot voor een klant die nooit Telegram opent is nutteloos. Een Slack-bot voor een solo-ondernemer zonder team is overkill.

Mark in de spec: gekozen kanaal, account-naam of e-mailadres, eventueel backup-kanaal (bv. e-mail als secondary als de Telegram-bot faalt).

#### Blok 3 — Tijdstip + tijdzone

Vraag:
1. Hoe laat moet de brief verschijnen? (Default: 07:00 lokale tijd. Range: 06:00 tot 08:00.)
2. In welke tijdzone? (Default: Europe/Amsterdam in NL-context.)
3. Wat als de klant in meerdere tijdzones zit (bv. internationaal team)? Eén editie per regio of één globale?

**Belangrijk:** 07:00 is het sweet spot. 06:00 is voor ondernemers die zelf om 05:30 op zijn. 08:00 is voor ondernemers die rustig opstaan en de brief willen lezen tijdens ontbijt. Vermijd 09:00 of later: dan is de werkdag al begonnen en de brief verliest zijn launchpad-functie.

Mark in de spec: cron-expressie (bv. `0 7 * * 1-5` voor 07:00 ma-vr), tijdzone-string voor de scheduler.

#### Blok 4 — Content-secties

Vraag: *"Welke van de 7 vaste secties wil je in de Daily Brief? Een rijke brief heeft 5 tot 7 secties, een minimale brief heeft 3."*

Vaste secties met voorbeelden:

| Sectie | Inhoud | Bron | Wanneer relevant |
|---|---|---|---|
| **1. Datum + dag** | "Maandag 12 mei 2026" + weeknummer + dag-in-jaar | Systeemtijd | Altijd |
| **2. Executive summary** | 3 tot 5 zinnen, LLM-gegenereerd op basis van de data hieronder. Bv. "Gisteren 2 nieuwe leads (een groei), 1 deal gesloten op 4.500 euro. First response time zat op 6 uur, oranje. Trend van afgelopen 7 dagen: omzet stijgt, leads stabiel, response-time loopt op. Vandaag op de radar: 3 afspraken plus een offerte die afloopt." | LLM met data uit andere secties als input | Altijd. Dit is het hart van de brief. |
| **3. Gisteren in 1 oogopslag** | Vaste tabel met 4 tot 6 cijfers: omzet, nieuwe leads, klantcontacten, issues, deals gesloten, support-tickets | A1 + C2 + C3 + C7 | Bijna altijd |
| **4. Trend afgelopen 7 dagen** | Voor elk cijfer uit sectie 3: pijl ▲ (omhoog), ▼ (omlaag) of ▶ (stabiel) plus percentage of absoluut verschil | Historie uit A1 of directe tool-query | Bij elke brief waarbij trend-context waardevol is |
| **5. Op de radar vandaag** | Wat staat er vandaag te gebeuren: agenda-afspraken, deals die te sluiten zijn, klant-milestones, deadline-momenten | Calendar + CRM (deals met sluit-datum vandaag) | Bij actief sales-of-service-bedrijf |
| **6. Aandachtspunten en blockers** | Zaken die op rood staan, anomalieen (zie blok 6), openstaande vragen aan ondernemer | KPIs op rood + anomalie-flags + open vragen uit Inbox of Tasks | Altijd, ook al is de lijst leeg ("Geen blockers vandaag") |
| **7. 1 actie voor vandaag** | Eén concrete actie, niet drie. LLM-keuze op basis van wat het meest urgent is (deal op deadline, klant op rood, blocker met deadline vandaag) | LLM-output op basis van data | Altijd. Eén actie. Niet drie. Niet vijf. |

Optionele secties:
- **Notable quote uit klantfeedback** — als C4 daadwerkelijk feedback levert
- **Persoonlijke noot van Upscailed** — wekelijks of bij specifieke milestones (bv. "deze week is je 100ste klant binnengelopen")

**Belangrijk:** kies samen met de gebruiker. Een klant die alleen omzet en leads wil zien, krijgt secties 1, 2, 3, 7. Een klant die ook trend en blockers wil, krijgt 1, 2, 3, 4, 6, 7. Volledige brief is 1 t/m 7. Mik op 5 tot 7 secties — minder is leeg, meer is overdreven.

Mark in de spec: gekozen secties, per sectie de exacte template-strings en de data-bron-keten.

#### Blok 5 — Data-bronnen koppelen

Voor elke sectie uit blok 4: bevestig welke data-bron de waarde levert. Dit is een herhaling van pre-fill uit stap 4, nu met expliciete koppeling.

Per data-punt vier velden:

1. **Bron** — tool, sheet, of skill-output (bv. "Notion CRM, view 'Deals met sluitdatum'", "Moneybird API endpoint /invoices?date=yesterday")
2. **Query-frequentie** — hoe vaak ophalen (default: één keer per dag bij brief-genereer-tijd; soms vaker voor caching)
3. **Fallback** — wat gebeurt er als de bron faalt? Default: "noem het in de aandachtspunten als 'data nog niet beschikbaar' en ga door"
4. **Eenheid en format** — euro met 0 decimalen, percentages met 0 decimalen, doorlooptijden in werkdagen of kalenderdagen

**Verplicht: één primaire data-bron per cijfer.** Geen "we halen het uit beide en middelen". Eén bron per cijfer, anders wordt anomalie-detectie nutteloos.

**Speciale waarschuwing voor LLM-velden:** de executive summary (sectie 2) en de 1-actie-voor-vandaag (sectie 7) worden door een LLM gegenereerd. De LLM krijgt **alleen de data uit de andere secties** als input, niet de hele vault. Dat houdt de brief snel en de prompts compact. Specificeer expliciet welk model (bv. Claude Sonnet of Haiku) en welke prompt (zie blok 6 voor tone).

#### Blok 6 — Anomalie-detectie + tone

**Anomalie-detectie.** Vraag:
1. Welke percentage afwijking versus het 7-daagse gemiddelde geldt als "anomalie"? Default: ±20%. Streng: ±10%. Soepel: ±35%.
2. Welke metrics worden gemonitord? Default: alle cijfers uit sectie 3.
3. Wat doet de anomalie? Default: rode flag in sectie 6 plus expliciete vermelding in sectie 2 (executive summary).

Voorbeeld-regel: *"Als de dag-omzet meer dan 20% afwijkt van het 7-daagse gemiddelde, voeg dan in de executive summary toe: 'Let op: omzet vandaag is X% van het 7-daagse gemiddelde.' En zet de KPI 'Omzet' in sectie 6 (Aandachtspunten) met rode flag."*

**Tone.** Vraag:
1. Welke schrijftoon past bij dit bedrijf? Drie defaults om uit te kiezen:
   - **Zakelijk-direct** — feitelijk, korte zinnen, geen opsmuk. *"Gisteren 2 leads binnen, 1 deal gesloten op 4.500 euro. Response-time staat op oranje (6 uur)."*
   - **Coachend-stevig** — feitelijk maar met context-zinnen erbij, vraagstellend. *"2 nieuwe leads gisteren, dat is meer dan de gemiddelde 1 per dag. De deal van 4.500 euro tilt de week-omzet naar 12.300 — vraag van vandaag: hoe houden we dit ritme vol?"*
   - **Persoonlijk-warm** — meer "wij" en "jij", lichte aansporingen. *"Een sterke dag gisteren — 2 leads, 1 deal gesloten. Vandaag staan er 3 afspraken op de planning."*

Pas op: vermijd marketing-superlatieven (geen "geweldig", "fantastisch", "geweldige groei"), vermijd em-dashes, vermijd uitroeptekens, vermijd "imagine if". Feitelijk en menselijk.

Mark in de spec: gekozen tone-of-voice, de drie of vier exact-bewoordingen-voorbeelden voor de LLM-prompt.

#### Blok 7 — Implementatie + eerste editie

Vraag:
1. Wie gaat de scheduled task technisch implementeren? (Klant zelf, Upscailed-onboarding-engineer, of een third-party automation-bouwer.)
2. Welke automation-orchestrator wordt het? (Make.com, n8n, Zapier, Pipedream, een Node-script op een eigen server, een Python-cron-job, of de Claude Code scheduled-tasks van de skill `schedule`.)
3. Wanneer landt de eerste editie? Default: **5 werkdagen na intake**. Dat is de Time-to-Value-belofte van Upscailed.
4. Wat is de fallback-plan voor de eerste 2 weken? Bv. "Upscailed-engineer checkt de eerste 10 edities handmatig op kwaliteit voordat het volledig autonoom draait."

Voor de scheduled-task-spec:

| Veld | Inhoud |
|---|---|
| **Trigger** | Cron-expressie (bv. `0 7 * * 1-5` voor 07:00 ma-vr) |
| **Stappen** | (1) Data ophalen per bron; (2) Anomalie-detectie draaien; (3) Executive summary genereren via LLM; (4) Sectie-template invullen; (5) Versturen via kanaal |
| **Time-out per stap** | Default: 60s per data-bron. Bij time-out: ga door met de andere bronnen, noem de gemiste bron in sectie 6. |
| **Failure-mode** | Drie niveaus: (a) één data-bron faalt → noem in brief; (b) LLM faalt → val terug op template-only-brief zonder summary, log error; (c) verzending faalt → retry na 5 min, bij volgende falen e-mail naar Upscailed-engineer. |
| **Logging** | Elke editie loggen met timestamp, data-bron-status, latency. Default: in een tool zoals Sentry, Logtail of een eigen `logs/`-folder. |
| **Monitoring** | Eén keer per maand Upscailed-engineer kijkt naar de logs voor patronen (welke bron faalt vaak, welke anomalie-regel triggert te vaak). |

Mark in de spec: orchestrator, scheduled-task-config (cron + steps), failure-fallbacks, logging-en-monitoring-plan, eerste-editie-datum.

### Stap 6: Content-template samenstellen

Op basis van blokken 4, 5 en 6: maak een **volledige voorbeeld-brief voor "gisteren"** zodat de gebruiker direct ziet hoe de brief eruit gaat zien. Gebruik dummy-cijfers als nog geen historie beschikbaar is, maar maak de template wel volledig.

Voorbeeld voor een e-mail-editie (tone: zakelijk-direct):

```
Onderwerp: Daily Brief — maandag 12 mei 2026

Maandag 12 mei 2026 · week 20 · dag 132 van het jaar

Executive summary
Gisteren 2 nieuwe leads (boven gemiddelde van 1.3 per dag) en
1 deal gesloten op 4.500 euro. First response time zat op 6
uur, dat is oranje. Trend van 7 dagen: omzet stijgt (+18% vs
vorige week), leads stabiel, response-time loopt op (+1.5 uur).
Vandaag: 3 afspraken, en een offerte die om 17:00 afloopt.

Gisteren in 1 oogopslag
| Metric            | Gisteren  | 7-daags gem | Trend |
| Omzet             | 4.500     | 3.200       | ▲ +41% |
| Nieuwe leads      | 2         | 1.3         | ▲ +54% |
| Deals gesloten    | 1         | 0.4         | ▲ |
| First response    | 6:12 uur  | 4:30 uur    | ▼ |
| Foutpercentage    | 0%        | 1.2%        | ▲ |
| Klantcontacten    | 8         | 6.5         | ▲ |

Op de radar vandaag
- 10:00 — Klantgesprek Acme BV (cosultatieve verkoop)
- 14:00 — Onboarding-call Bakker BV
- 16:00 — Demo nieuwe lead Janssen Holding
- 17:00 — Offerte Acme BV verloopt

Aandachtspunten
- First response time op oranje (6:12 uur, norm groen ≤4 uur)
- Offerte Acme BV verloopt 17:00 vandaag, nog niet geaccepteerd

Actie voor vandaag
Bel Acme BV voor 12:00 om de offerte te bespreken voordat hij
verloopt.
```

Pas tone en kanaal aan op de gekozen variant (Telegram krijgt shortere zinnen en minder tabellen, Slack krijgt block-formatting, etc.).

### Stap 7: Scheduled-task-spec opstellen

Schrijf de complete scheduled-task-spec uit in een aparte sectie van het output-document. De spec moet zo concreet zijn dat een implementatie-engineer hem **direct kan bouwen** zonder verdere vragen.

Verplichte velden:
1. **Orchestrator** + versie (bv. "Make.com scenario v1", "n8n self-hosted v1.42.0")
2. **Trigger** (cron-expressie + tijdzone)
3. **Data-bronnen** met endpoint of query-spec per bron
4. **Transformaties** per veld (welke berekening, welke pretty-print, welke unit-conversie)
5. **LLM-call** (model-keuze, prompt-template, max-tokens, retry-regels)
6. **Versturing** (welk API-endpoint of welke SMTP-config, met welk template)
7. **Failure-fallbacks** (per stap, beschreven in blok 7)
8. **Logging-en-monitoring** (waar logs landen, wie ze checkt, hoe vaak)

### Stap 8: Schrijven en opslaan

Gebruik het template uit `references/template-daily-briefing.md` als skelet. Vul het met alle keuzes uit blok 1 t/m 7 plus de content-template uit stap 6 en de scheduled-task-spec uit stap 7.

Sla op als:
```
{scope}/Analyze/Daily-Briefing-Setup.md
```

Maak de `Analyze/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: daily-briefing-setup
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: A3
kanaal: <email|telegram|slack|app|print>
frequentie: <werkdagen|alle-dagen|custom>
tijdstip: HH:MM
tijdzone: <IANA-string>
eerste-editie: YYYY-MM-DD
secties: [datum, summary, gisteren, trend, radar, aandachtspunten, actie]
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "geweldig", "fantastisch", "next-level", "essentieel".
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Concrete getallen** boven abstracties. "07:00 ma-vr, Europe/Amsterdam" is sterker dan "elke ochtend".
- **Eén template-tabel** met alle scheduled-task-velden bovenaan. Eronder de voorbeeld-brief. Daaronder de bron-spec.
- **Cross-links** naar A1, C2, C3, C7 en eventueel L2 expliciet vermelden.
- **Eén actie voor vandaag** in de voorbeeld-brief. Niet drie. Niet vijf.

### Stap 9: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Analyze/Daily-Briefing-Setup.md` — v1.0, Daily Brief opgezet voor X-kanaal, eerste editie YYYY-MM-DD"*.
2. **Daily** — als de vault een daily-logging-conventie heeft, log een eenregelige melding plus link naar het nieuwe bestand.
3. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een A3-doel of automation-doel heeft: status bijwerken, regel toevoegen aan voortgangslog.
4. **Scale-audit-suggestie** — als `{scope}/Directie/Research/` een audit-rapport heeft waar A3 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link met A1 Rapportage Builder** — wekelijkse en maandelijkse versies van dezelfde data, met meer diepte. De Daily Brief is de korte versie, A1 de lange.
- **Cross-link met A2 Mission Control Builder** — een realtime dashboard naast de Daily Brief, voor wanneer de ondernemer tussendoor wil kijken.
- **Cross-link met L2 Auto Rapportage Setup** — automatisering van A1 (wekelijks/maandelijks). De Daily Brief is dagelijks, L2 doet de bredere ritme-automation.
- **Cross-link met C-skills** — als een data-bron mist (bv. C4 Klantfeedback levert nog niks), is dat een directe gap die eerst gevuld moet worden.
- **Time-to-Value-meting** — meet of de eerste editie op dag 5 daadwerkelijk landde. Dat is de tastbare belofte; mis dat moment niet.
- **Review-ritme** — Daily Brief verandert sneller dan structuur-documenten. Stel voor: na 2 weken een korte tweak-ronde (welke secties skip ondernemer altijd, welke leest hij elke dag), na 3 maanden een grotere herijking.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle 7 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **A1, C1-C5 en C7 zijn verplichte cross-checks.** Een Daily Brief zonder data-bronnen is leeg. Bestaan die documenten niet, wijs erop en stel voor om eerst die skills te draaien voordat A3 echt waarde levert.
- **De Time-to-Value-belofte is hard.** Mik op eerste editie binnen 5 werkdagen na intake. Als dat technisch niet haalbaar is voor het gekozen kanaal (bv. native app), wijs erop en stel een tussen-oplossing voor (bv. eerst e-mail-versie, later app).
- **Geen overstacking met morning-brief.** In een Iwan-OS-vault bestaat `Persoonlijk/Skills/morning-brief/` voor de **persoonlijke** ochtend-brief. Deze A3-skill bouwt de **business-only** Daily Brief, compacter en cijfer-gericht. Markeer expliciet als beide bestaan zodat ze elkaar niet dubbelen.
- **Eén actie voor vandaag, niet drie.** De brief krijgt zijn launchpad-functie pas als de actie scherp en uniek is. Drie acties = geen prioriteit.
- **Geen valse precisie in cijfers.** Omzet rond af op euro (geen centen), percentages op 0 decimalen tenzij echt nodig, doorlooptijden in werkdagen of kalenderdagen (expliciet vermelden welk type).
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven, en voor zowel Upscailed's eigen klanten als voor Upscailed zelf.
- **Vraag actief naar externe input.** Een bestaand dashboard of een lijstje "wat ik elke ochtend zoek" bespaart een groot deel van het uitvraag-werk.
- **Anomalie-regel met getallen.** Geen "wanneer iets opvalt", wel "wanneer afwijking >20% versus 7-daags gemiddelde".
- **Failure-fallbacks expliciet.** Een brief die soms niet aankomt is erger dan een brief met "data nog niet beschikbaar". Specificeer per stap wat er gebeurt bij falen.
- **Geen LLM-call zonder data.** Als de data-laag faalt, val terug op template-only zonder summary. Geen verzonnen cijfers, ooit.
- **Mik op 5 tot 7 secties.** Minder is leeg, meer is overdreven. Audit-minimum (iets dat samenvat) is geen target.
- **Concreet > abstract** bij elk antwoord. Eén keer doorvragen op een concreet detail (een getal, een tool-naam, een persoon) als het antwoord te abstract blijft.

## Voorbeeld-output

Zie [`references/template-daily-briefing.md`](references/template-daily-briefing.md) voor de exacte structuur die de skill oplevert: setup-overzicht, content-spec per sectie, voorbeeld-editie voor "gisteren", scheduled-task-spec met cron en failure-fallbacks, anomalie-regels, en cross-links naar A1, A2, C1-C5, C7 en L2.
