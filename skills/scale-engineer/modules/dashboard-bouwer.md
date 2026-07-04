# Dashboard Bouwer (module van scale-engineer)

> Bron-skill: `dashboard-bouwer` | SCALE-code: E1 | Versie: 1.1.0 | Geschatte tijd: 60 tot 120 minuten

---

# Dashboard Bouwer

## Doel

Helpt een ondernemer om in 60 tot 120 minuten een **werkend custom dashboard** op te leveren op basis van eigen data, vastgelegd in één canoniek bouw-spec: `{scope}/Engineer/Dashboard-Bouwer-Spec.md` plus een aangevulde tool-card in `{scope}/IT/AI-Tools/`. Dit is SCALE-stap E1 (Engineer), het scharnier tussen "we hebben ontworpen welke KPI's op het scherm staan" (A2) en "er staat een werkende app op een eigen URL met live data".

*Wat een gebouwd dashboard wel is, en wat het niet is.* Een gebouwd dashboard is een **eigen frontend-applicatie** die data uit een of meer bronnen ophaalt, transformeert tot KPI-niveau, rendert in tegels (hero-KPI-cards, trend-charts, alert-banners, goal-progress-bars, activity-feed) en bezorgt op een eigen URL achter een login. Geen rapportage-mail, geen statisch pdf, geen tabblad-in-een-bestaande-tool. Concreet: "Astro-site op `dashboard.bedrijfsnaam.nl`, server-side fetch van Moneybird en Pipedrive elk uur via een edge-functie, gerenderd met Recharts, achter Clerk-login, gehost op Vercel met preview-branches per pull-request, monitoring via Sentry en UptimeRobot, deploy via GitHub Actions op elke push naar main".

*Onderscheid met andere skills.* Strakke afbakening tussen ontwerp, build en uitvoering.

| Skill | Wat het doet |
|---|---|
| A2 Mission Control Builder | Ontwerpt welke tegels op het dashboard staan. Levert `Analyze/Mission-Control-Ontwerp.md` op. Geen code. |
| **E1 Dashboard Bouwer** | **Bouwt het A2-ontwerp tot een werkende app. Levert bouw-spec plus tool-card op.** |
| L2 Auto-rapportage Setup | Automatiseert push-rapportages (mail, Slack, Telegram). Geen UI, wel scheduled-task. Kan input zijn voor E1 als data-vulling via cron loopt. |
| A1 Rapportage Builder | Ontwerpt afdelingsrapporten. Push-formaat, geen live-app. |
| A3 Daily Briefing | Dagelijkse briefing (mail of bericht). Push-formaat. |
| E2 App Scoping | Scope-document voor een eigen MKB-app (geen dashboard, wel volwaardige tool). Andere doelgroep. |
| E3 Workflow Pipeline | Bouwt data-pipeline tussen tools (ETL, no UI). Kan vóór E1 zitten als data-laag. |
| E5 Kennisbank Organizer | Bouwt zoekbare kennisbank. Andere data-vorm (documenten, niet KPI's). |

*Waarom de audit-drempel niet genoeg is.* SCALE-audit E1 vraagt dat de tool **bestaat en operationeel** is (Dev-log met recente activiteit of live URL). Die drempel haal je met een Notion-pagina die elke maandag handmatig wordt bijgewerkt. Deze skill mikt op een **rijk bouw-spec**: stack-keuze met motivatie, repo-scaffold-commando's, data-fetch-laag per bron (auth-methode, refresh-strategie, foutafhandeling), visualisatie-keuze per tegel (component-naam, library, props-skelet), auth-laag, hosting-keuze, monitoring-stack, deploy-pijplijn en AIOS-in-a-Week-rol-out-plan met concrete week-bezittingen.

*Waarom dit pas na A2.* Zonder de A2 Mission Control-Ontwerp-tegelset weet de bouw niet welke tegels gerenderd moeten worden, welke bron per tegel, welke refresh-frequentie. Als `Analyze/Mission-Control-Ontwerp.md` ontbreekt: stopt de skill en stelt voor eerst `mission-control-builder` (A2) te draaien. Geen gokwerk op het ontwerp.

*Waarom dit een spec is, geen code.* Deze skill levert geen werkende repo op in deze conversatie. Hij levert een **bouw-spec** op die direct uitvoerbaar is in Cursor of door een freelance-developer in 1 tot 2 weken. De eigenlijke code-uitvoering gebeurt in `~/AI - Projecten/{Bedrijf}/{Toolnaam}/` (Upscailed-conventie) of in de eigen repo van de klant. De spec bevat alle keuzes en commando's, zodat het bouw-traject niet meer over keuzes gaat maar over uitvoering.

Resultaat: SCALE-audit E1 springt van ❌ of ⚠️ naar ✅ zodra de bouw daadwerkelijk wordt uitgevoerd. Bouw-spec is direct overdraagbaar aan een Cursor-sessie, een Claude Code-sessie of een freelance-developer. AIOS-in-a-Week-rol-out levert in week 1 een live dashboard met 4 tot 6 hero-tegels, breidt per maand uit.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  DASHBOARD BOUWER, SCALE-stap E1 (Engineer)               │
│  ~60-120 minuten · 8 bouw-blokken + tegel-loop            │
└──────────────────────────────────────────────────────────┘

  In 60 tot 120 minuten leggen we vast hoe jouw Mission
  Control-ontwerp uit A2 een werkende app wordt: welke
  stack, welk repo-skelet, welke data-fetch-laag per bron,
  welke visualisaties per tegel, welke auth-laag, welke
  hosting, en hoe het in 1 week live gaat.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 8 bouw-blokken (één per beurt)                       │
  │  • Daarna per tegel uit A2: 4 velden invullen           │
  │    (data-bron-fetch, transformatie, visualisatie,       │
  │    refresh-route)                                       │
  │  • Vooraf scan ik Analyze/Mission-Control-Ontwerp.md    │
  │    (A2, verplicht aanwezig), IT/Toolstack.md (S12),     │
  │    HR/Team.md (S11), Collect/ (C1-C7),                  │
  │    Leverage/Auto-Rapportage.md (L2)                     │
  │    zodat ik stack, accounts en bronnen al weet.         │
  │  • Daarna lever ik Engineer/Dashboard-Bouwer-Spec.md    │
  │    op plus een tool-card in IT/AI-Tools/, met daarin    │
  │    repo-scaffold-commando's, data-fetch-skelet,         │
  │    visualisatie-keuze per tegel, auth + hosting +       │
  │    monitoring, en een AIOS-in-a-Week-rol-out-plan.      │
  └────────────────────────────────────────────────────────┘

  De 8 blokken:
  [1] Scope + A2-check
      Welk bedrijf, en bestaat Mission-Control-Ontwerp.md?
  [2] Stack-keuze
      Astro+React+Tailwind+Recharts (default service-MKB),
      Vite+React+Tailwind+Recharts (pure SPA),
      Next.js+shadcn+Tremor (app-router-bedrijven),
      Notion+embedded (no-code), Looker (Google-stack),
      Retool (B2B-intern)
  [3] Repo-scaffold
      Init-commando, mappenstructuur, dependencies,
      env-vars, `.gitignore`, README-skelet
  [4] Data-bron-integratie
      Per bron: auth-methode, fetch-strategie, caching,
      foutafhandeling (Stripe, Pipedrive, Moneybird,
      Plausible, GA4, Supabase, Notion, Airtable, custom)
  [5] Visualisaties per tegel
      Per A2-tegel: component-naam, library, props,
      styling-token (KPI-card, line-chart, bar-chart,
      gauge, heatmap, sparkline)
  [6] Auth-laag
      Wie ziet wat: Clerk, Supabase-auth, eigen JWT,
      Basic-auth (alleen MVP), of geen auth (niet aan te
      raden voor productie)
  [7] Hosting + deploy
      Vercel, Cloudflare Pages, Netlify, eigen VPS;
      preview-branches, custom-domain, env-secrets;
      GitHub Actions of platform-native CI
  [8] Monitoring + AIOS-in-a-Week-rol-out
      Sentry, BetterStack, UptimeRobot; per week wat
      live staat (week 1: 4-6 hero-tegels, week 2:
      trends, week 3: alerts, week 4: goals + activity)

  Daarna per tegel uit A2: 4 velden invullen.

  Heb je input al klaar? Bijvoorbeeld:
  • Een eerder dashboard-poging (Notion, Looker, eigen
    Astro-site, etc.) die we kunnen recyclen
  • API-keys of OAuth-tokens voor de data-bronnen
  • Een hosting-account (Vercel, Cloudflare) dat al staat
  • Een ontwerp-bestand van A2 dat we direct kunnen
    inlezen

  Dan kun je dat nu noemen. Hoe meer input, hoe minder
  ik hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe input wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  DASHBOARD BOUWER, E1 · 60-120 min · 8 blokken + loop     │
└─────────────┬────────────────────────────────────────────┘
              v
   ┌──────────────────────┐
   │ 1. Scope + A2-check  │  Welk bedrijf?
   │                      │  Bestaat Mission-
   │                      │  Control-Ontwerp.md?
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 2. Vault scannen     │  A2 ontwerp,
   │    (auto-discover)   │  S12 Toolstack,
   │                      │  S11 Team,
   │                      │  C1-C7 bronnen,
   │                      │  L2 overlap,
   │                      │  bestaande poging
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 3. Externe input?    │  Eerdere repo,
   │                      │  API-keys,
   │                      │  hosting-account,
   │                      │  domeinen
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  A2-tegels + per
   │                      │  bron al gevonden
   │                      │  credentials,
   │                      │  hosting, stack-
   │                      │  voorkeur
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 5. Interview blok    │  [1] Scope+A2
   │    voor blok         │  [2] Stack-keuze
   │                      │  [3] Repo-scaffold
   │                      │  [4] Data-bron
   │                      │  [5] Visualisaties
   │                      │  [6] Auth-laag
   │                      │  [7] Hosting+deploy
   │                      │  [8] Monitoring
   │                      │      +AIOS-week
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 6. Tegel-loop        │  Per tegel uit A2
   │                      │  4 velden:
   │                      │  - fetch-skelet
   │                      │  - transformatie
   │                      │  - visualisatie-
   │                      │    component
   │                      │  - refresh-route
   │                      │    (live API /
   │                      │    L2-cron / SWR)
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 7. AIOS-in-a-Week    │  Per week wat
   │    rol-out-plan      │  live staat,
   │                      │  cumulatieve uitbouw
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 8. Schrijven +       │  Engineer/
   │    opslaan           │  Dashboard-Bouwer-
   │                      │  Spec.md + tool-
   │                      │  card in IT/AI-
   │                      │  Tools/
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 9. Logging +         │  Changelog,
   │     vervolg          │  uitvoering in
   │     suggesties       │  Cursor of door
   │                      │  developer,
   │                      │  L2, E3, E5
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Dashboard bouwen" / "mission control bouwen" / "eigen dashboard-app"
- "Live dashboard met echte data" / "KPI-dashboard met API-data"
- "Custom dashboard ontwikkelen" / "CEO-dashboard live zetten"
- "Mission Control implementeren" / "A2 ontwerp gaan bouwen" / "mission-control-ontwerp implementeren"
- "Dashboard in Astro" / "dashboard in Next.js" / "dashboard in React" / "shadcn-dashboard" / "Tremor-dashboard"
- "Looker Studio opzetten" / "Retool-app bouwen" / "Notion-dashboard met live widgets"
- "AIOS-in-a-Week dashboard"
- "E1 dichten in SCALE-audit" / "gap E1"
- "Engineer/Dashboard-Bouwer-Spec.md aanmaken"

Triggert NIET wanneer:
- De gebruiker het dashboard wil **ontwerpen** (welke KPI's, welke tegels): gebruik `mission-control-builder` (A2)
- De gebruiker een **rapportage** automatisch wil mailen of pushen: gebruik `auto-rapportage-setup` (L2)
- De gebruiker een **dagelijkse briefing** wil opzetten: gebruik `daily-briefing` (A3)
- De gebruiker een **afdelingsrapport** wil maken: gebruik `rapportage-builder` (A1)
- De gebruiker een **AI-tool of app** van nul wil scopen (geen dashboard): gebruik `app-scoping` (E2)
- De gebruiker een **data-pipeline** tussen tools wil bouwen zonder UI: gebruik `workflow-pipeline` (E3)
- De gebruiker een **kennisbank** of zoekbare doc-store wil bouwen: gebruik `kennisbank-organizer` (E5)
- De gebruiker een **proces of SOP** wil automatiseren: gebruik `sop-automatiseren` (L1)
- De gebruiker een **mail-sequentie** wil opzetten: gebruik `mailflow-setup` (L3)

## Workflow

### Stap 1: Scope kiezen plus A2-check

Vraag voor welk bedrijf en in welk pad het dashboard-bouwer-spec vastgelegd moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam, elke gebruiker heeft een andere setup.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Engineer/`, `Analyze/`, `Collect/`, `IT/`, `HR/`, `Leverage/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Engineer/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Engineer/Dashboard-Bouwer-Spec.md`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar dit dashboard voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")
3. Wat wordt de **naam van het dashboard-tool**? Default-suggestie: `Mission-Control` (vanwege A2-naamval) of `[Bedrijfsnaam]-Dashboard`.

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Engineer/`- of `Analyze/`-map. Bevestig de gevonden scope voordat je doorgaat.

**Verplicht: check of `{scope}/Analyze/Mission-Control-Ontwerp.md` bestaat.**

- Bestaat niet → **bied de gebruiker een keuze:** (A) eerst A2 doen via `mission-control-builder` zodat `Analyze/Mission-Control-Ontwerp.md` netjes opgebouwd wordt en daarna terugkomen, of (B) doorgaan met defaults (5-7 hero-KPI-tegels, 3 trends, 3 alerts, 1 goals-strip op basis van een redelijke MKB-mix) en alle data-velden, tegels en bron-koppelingen markeren als `[VERIFICEREN]` in de bouw-spec. **Bij autonome run (1-shot of fictieve klant): kies altijd B**, zonder de gebruiker te bevragen. Documenteer de keuze in de bouw-spec onder een sectie "A2-status".
- Bestaat wel → lees het document volledig in en doorloop alle tegels (hero-KPI's, trends, alerts, goals, activity-feed) plus de tool-keuze en refresh-matrix. Dit is de primaire input voor stap 4 en 6.

Controleer daarna of `{scope}/Engineer/Dashboard-Bouwer-Spec.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Dashboard-Bouwer-Spec - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

Maak de `Engineer/`-map aan als die nog niet bestaat.

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk:** zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden.

Standaard paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Analyze/Mission-Control-Ontwerp.md` (A2, **verplicht aanwezig**) | Primaire input. Alle tegels (5-9 hero-KPI's, 4-6 trends, 5-8 alerts, max 5 goals, 5-10 activity-events), per tegel bron + refresh-frequentie + target, plus tool-keuze + refresh-matrix. Dit is wat E1 gaat bouwen. |
| `Analyze/Daily-Briefing-Setup.md` (A3) | Overlap-check: KPI's die A3 dagelijks pusht hoeven mogelijk niet ook real-time op het dashboard, of juist wel als rugnummer-controle. |
| `Collect/Marketing-Data.md` (C1) | Welke marketing-tools data leveren, welke API's beschikbaar, welke met OAuth versus API-key. |
| `Collect/CRM-Setup.md` (C2) | Welke CRM, met welke API of webhooks, voor pipeline-data. |
| `Collect/Financiele-Data.md` (C3) | Welke boekhoudtool (Moneybird, Exact), welke bank-PSD2-link, welke betaalprovider. |
| `Collect/Klantfeedback.md` (C4) | Welke survey-tool of feedback-bron voor NPS/CSAT-tegels. |
| `Collect/Website-Analytics.md` (C5) | Welke analytics-tool (Plausible / GA4 / Matomo) voor verkeer-tegels. |
| `Collect/Operationele-KPIs.md` (C7) | KPI-definities en formules per afdeling. Hier staat hoe een KPI gerekend wordt. |
| `IT/Toolstack.md` (S12) | **Verplicht checken.** Welke tools en accounts al in huis zijn (Vercel, Cloudflare, GitHub-org, Clerk, Supabase, Sentry, BetterStack, Recharts via npm), welke nog moeten. Bepaalt mede de stack-keuze in stap 2 van het interview. |
| `HR/Team.md` (S11) | Wie ziet het dashboard, wie heeft welke rol, welke autorisaties. |
| `Directie/00 - Overzicht.md` (S1) | Bedrijfsmodel, dat bepaalt mede de KPI-categorie-mix. |
| `Directie/Playbook/Brand-guide.md` (S2) of `Brand-guidelines.md` | Visuele identiteit voor de dashboard-styling (kleuren, type, logo). |
| `Leverage/Auto-Rapportage.md` (L2) | Welke scheduled-tasks al draaien die data ophalen. Kan hergebruikt worden als data-fetch-laag, voorkomt dubbele cron-jobs. |
| `IT/AI-Tools/` (mappen of `.md`-cards) | Bestaande eigen tools, mogelijk een eerdere dashboard-poging die opnieuw gebruikt kan worden. |
| `Engineer/` (overige bestanden) | Eerdere E-skill-output (App-Scoping, Workflow-Pipeline) die context geeft over de tech-stack. |

Maak per gevonden bron een korte interne aantekening: voor welke A2-tegel het relevant is, welke API-credentials nodig zijn, welk type fetch (server-side vs client-side vs cron-cached) past, en of er overlap is met L2.

**Belangrijk:** als een bron niet bestaat, skip stilletjes (behalve A2 zelf, die is verplicht). Markeer wel intern welke C-skills nog niet gedaan zijn, want dat beïnvloedt welke tegels haalbaar zijn (een NPS-tegel zonder C4 klantfeedback-collector is mogelijk maar krijgt placeholder-data).

### Stap 3: Externe input ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen of voorkeuren waaruit ik kan putten? Bijvoorbeeld:
> - Een eerdere dashboard-poging (Notion-pagina, Looker, een Astro- of Next-site die nog niet af is, een Retool-app die je wil vervangen)
> - API-keys of OAuth-tokens voor de A2-bronnen (Stripe, Pipedrive, HubSpot, Moneybird, Plausible, GA4, Supabase)
> - Een hosting-account (Vercel, Cloudflare Pages, Netlify) dat al staat
> - Een GitHub-org of eigen repo waar het in mag komen
> - Een (sub)domein dat je wil gebruiken (`dashboard.bedrijfsnaam.nl`)
> - Een auth-provider die al draait voor andere tools (Clerk, Supabase-auth, Auth0)
> - Een stack-voorkeur (jij hebt al ervaring met Astro of Next.js)
> - Een monitoring-stack die al actief is (Sentry, BetterStack, UptimeRobot)
> - Brand-elementen die ingebakken moeten worden (logo, kleuren-tokens, font, designs van een vorige tool)
>
> Hoe meer bronnen, hoe minder ik hoef uit te vragen en hoe sneller we tot een werkende bouw-spec komen."

Per aangeleverde bron:
- **Eerdere repo of dashboard-poging**: scan op stack, data-fetch-aanpak, gerenderde tegels. Vaak is dit de basis voor de scaffold, mits stack-keuze klopt met A2-tool-keuze. Geen stack-mismatch tussen oude poging en nieuwe build: kies of recyclen, of opnieuw scaffolden.
- **API-keys**: noteer welke services geactiveerd zijn. Dat bepaalt de "data-bron credentials"-status in blok 4.
- **Hosting-account**: noteer als gekozen. Skip de vraag in blok 7 als al gevuld.
- **Domein**: noteer voor DNS-stap in blok 7.
- **Auth-provider**: noteer voor blok 6.
- **Stack-voorkeur**: noteer voor blok 2. Een ondernemer die al een Astro-site beheert kiest niet zonder reden voor Next.js.
- **Monitoring-stack**: noteer voor blok 8.
- **Brand-elementen**: koppel aan S2 Brand-guidelines voor consistentie.

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per bouw-blok**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat, en de gebruiker laten zien welke keuzes al opgelijnd staan.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden in Analyze/Mission-Control-Ontwerp.md
en de rest van de vault zie ik dit beeld:

  TEGELS UIT A2 (totaal te bouwen)
    Hero-KPI's: 7 (Omzet MTD, Pipeline-waarde, NPS 30d,
      Cashflow-saldo, Team-bezetting, MRR, Win-rate 90d)
    Trends: 5 (Omzet 12 mnd, MRR 24 mnd, Klant-aantal
      12 mnd, Pipeline week-op-week 12 wkn, Nieuwsbrief
      90 dgn)
    Alerts: 6 (Omzet-pacing, Stille pipeline, Cashflow-
      runway, NPS-drop, Klacht binnen, Factuur > 30d open)
    Goals: 4 (Omzet 2026, Nieuwe klanten, Nieuwsbrief-
      abonnees, NPS-target)
    Activity-feed: 6 event-types (Nieuwe deal, Nieuwe
      klant, Nieuwsbrief-aanmelder, NPS-respons, Factuur
      betaald, Mijlpaal)
    Tool-keuze A2: Custom HTML via Cursor (default)
    Bouw-route A2: E1 + L2 combinatie

  STACK-VOORKEUR (S12 + externe input)
    Astro al draaiend op website-project: ja
    Recharts: nieuwe dep, geen account nodig
    Tailwind: ja, al in andere repo's
    Voorstel: Astro+React+Tailwind+Recharts (Upscailed
      default voor service-MKB)

  HOSTING (S12 + externe input)
    Vercel-account: ja, met team-org
    GitHub-org: ja, repo onder Upscailed-org
    Custom-domein: dashboard.upscailed.nl (DNS via
      Cloudflare DNS, al ingesteld)
    Voorstel: Vercel met preview-branches, custom-domein
      via Vercel Project Settings

  AUTH (S12 + externe input)
    Clerk: nee, geen account
    Supabase: nee
    Voorstel: Clerk (snel op te zetten, free-tier voor
      < 10k MAU, single sign-on via Google)

  DATA-BRONNEN (uit A2 + Collect-scan)
    Moneybird-API-token: beschikbaar (uit C3)
    Pipedrive-API-token: beschikbaar (uit C2)
    Plausible-API-key: beschikbaar (uit C5)
    NPS-tool (Klantfeedback): API-key bestaat (uit C4)
    Bank PSD2 (cashflow): nog niet ingericht, wel via L2?
    Goals-bron: parse uit Directie/01 - Goals.md (markdown)
    Activity-feed: webhooks vanuit CRM, mail-tool,
      klantfeedback (nog te configureren)

  OVERLAP MET L2 (Leverage/Auto-Rapportage.md)
    L2 vult al elke maandag 08:00 een weekrapport-export
      van Moneybird + Pipedrive in. Die JSON kan ook
      direct het dashboard voeden, geen extra cron nodig.
    Voorstel: hergebruik bestaande L2-output als bron voor
      hourly hero-KPI's, voorkomt dubbele API-calls.

  MONITORING (S12)
    Sentry: nee
    BetterStack: nee
    UptimeRobot: ja, gratis-tier
    Voorstel: Sentry (errors) + UptimeRobot (uptime),
      free-tier beide

  AIOS-IN-A-WEEK SUGGESTIE
    Week 1: 4 hero-tegels live (Omzet MTD, Pipeline-
      waarde, Cashflow-saldo, NPS 30d)
    Week 2: 3 hero-tegels erbij + 3 trends
    Week 3: 6 alerts + 4 goal-progress-bars
    Week 4: activity-feed live, monitoring scherp

  GATEN waar ik nog vragen voor heb:
  - Bank PSD2: handmatig invoeren in cashflow-tegel, of
    via L2-cron, of via Tink/Klarna Kosma aggregator?
  - Auth: bevestig Clerk, of toch eigen JWT?
  - Custom-domein bevestigd?
  - Brand-tokens: importeren uit Directie/Playbook of
    nieuw definiëren?

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de 8 blokken doorlopen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview blok voor blok

**Kernregel:** loop **één blok per beurt** af. Niet alle 8 tegelijk neerzetten. Per blok 1 tot 4 concrete vragen, wachten op antwoord, pas dan door.

#### Blok 1, Scope plus A2-check (samenvatting + go/no-go)

Bevestig de scope en de aanwezigheid van `Analyze/Mission-Control-Ontwerp.md`. Toon de gebruiker hoeveel tegels er in A2 staan (per categorie) en welke tool-keuze + bouw-route A2 voorschreef. Vraag of de set compleet is, of dat er sinds A2 nieuwe tegel-behoeftes zijn bijgekomen die hier ook meegebouwd moeten worden.

Concrete vragen:
1. *"In A2 staan N hero-KPI's, M trends, K alerts, L goals en P activity-event-types. Klopt die set nog, of moeten we eerst A2 updaten voordat we bouwen?"*
2. *"A2 noemde [tool-keuze] als voorkeur. Wil je die aanhouden, of switchen naar een andere stack omdat er sinds A2 iets veranderd is?"*
3. *"Welke naam krijgt de tool in IT/AI-Tools/? Default-suggestie: `Mission-Control` of `[Bedrijfsnaam]-Dashboard`."*

#### Blok 2, Stack-keuze

Dit is een sleutelbeslissing. Zes opties, met duidelijke trade-offs.

| Stack | Voor wie | Voordeel | Nadeel |
|---|---|---|---|
| **Astro + React + Tailwind + Recharts** | Service-MKB met Upscailed-stack al in huis, ondernemer die ook content-pagina's wil koppelen | Server-side rendering, snelle laadtijd, gratis hosting op Vercel of Cloudflare, makkelijke deploy via Git | Vereist Astro-bekendheid, geen React-app-router-conventies |
| **Vite + React + Tailwind + Recharts** | Pure SPA, ondernemer die alleen het dashboard wil zonder marketing-pagina's | Snelste init, minimale config, lichte bundle | Geen SSR, slechtere SEO (maar niet relevant voor login-gated dashboard) |
| **Next.js + shadcn/ui + Tremor** | Bedrijven die al een Next-app hebben, app-router-voorkeur, design-system-eis | Volwaardig framework, ingebouwd routing en data-fetching, shadcn + Tremor zijn dashboard-specifieke libraries met out-of-the-box KPI-cards en charts | Zwaarder dan Astro, meer config, hosting via Vercel verplicht voor beste DX |
| **Notion-dashboard + embedded widgets** | Solopreneur zonder ontwikkel-ambitie, MVP in dagen | Direct opzetten, geen hosting nodig, geen code | Geen live data zonder externe widget-tools (Geckoboard, Klipfolio), handmatige refresh, geen branding-vrijheid |
| **Looker Studio** | Bedrijven met Google-stack (GA4, Sheets, Ads), gratis | Native Google-bron-koppeling, gratis, mooie defaults | Beperkt voor non-Google bronnen, beperkte custom styling |
| **Retool** | B2B-bedrijven met meerdere SaaS-bronnen, intern-tooling-eis | Drag-and-drop, ingebouwde DB- en API-knooppunten, snel werkend MVP | Betaald boven gratis-tier, vendor lock-in, hosting via Retool-cloud |

Concrete vragen:
1. *"Heb je ontwikkelaars-affiniteit (jezelf, freelance, partner) of moet het no-code?"* No-code = Notion of Looker. Anders custom stack.
2. *"Welke stack draait er al in andere projecten? Een ondernemer die al een Astro-site beheert kiest niet zonder reden voor Next."*
3. *"Heb je een design-system-eis (componenten herbruikbaar, consistente look)? Zo ja, dan shadcn/ui + Tremor (Next.js-route). Zo nee, eigen Tailwind-componenten."*
4. *"Heb je SSR nodig (snelle eerste laadtijd, public landing van het dashboard) of is het puur intern achter login? Puur intern = Vite-SPA prima."*

Default-aanbeveling Upscailed service-MKB: **Astro + React + Tailwind + Recharts**. Server-side rendering, gratis hosting op Vercel, geen vendor lock-in, makkelijk uit te breiden met content-pagina's later. Past binnen de Upscailed-ecosysteem-conventie (`~/AI - Projecten/{Bedrijf}/{Toolnaam}/` + GitHub-mirror onder de Upscailed-org).

Default-aanbeveling MKB-team met design-system-eis: **Next.js + shadcn/ui + Tremor**. Tremor's KPI-cards en charts zijn out-of-the-box geschikt voor dashboards.

Default-aanbeveling solopreneur zonder dev-affiniteit: **Notion-dashboard** voor MVP, plan in maand 2-3 een upgrade naar Astro of Next via een freelance-developer.

Default-aanbeveling Google-zwaar bedrijf: **Looker Studio**, gratis, geen onderhoud.

Schrijf de gekozen stack expliciet vast voor stap 8.

#### Blok 3, Repo-scaffold

Per gekozen stack: de exacte init-commando's, mappenstructuur, dependencies, env-vars, `.gitignore`, README-skelet.

**Voor Astro + React + Tailwind + Recharts:**

```bash
# 1. Init
cd ~/AI\ -\ Projecten/{Bedrijf}
npm create astro@latest {Toolnaam} -- --template minimal --typescript strict --install
cd {Toolnaam}

# 2. React + Tailwind + Recharts integraties
npx astro add react
npx astro add tailwind
npm install recharts swr clsx

# 3. Auth (Clerk-voorbeeld)
npm install @clerk/astro
# of Supabase
npm install @supabase/supabase-js

# 4. Env-vars (.env.local)
# PUBLIC_BASE_URL=https://dashboard.bedrijfsnaam.nl
# MONEYBIRD_TOKEN=...
# PIPEDRIVE_TOKEN=...
# PLAUSIBLE_API_KEY=...
# CLERK_PUBLISHABLE_KEY=...
# CLERK_SECRET_KEY=...

# 5. Git
git init
git remote add origin git@github.com:{Org}/{Toolnaam}.git
git add . && git commit -m "feat: initial scaffold"
git push -u origin main
```

**Mappenstructuur (Astro):**
```
{Toolnaam}/
├── src/
│   ├── pages/
│   │   ├── index.astro          (dashboard-hoofdpagina)
│   │   ├── sign-in.astro        (auth)
│   │   └── api/                 (server-endpoints voor data-fetch)
│   │       ├── moneybird.ts
│   │       ├── pipedrive.ts
│   │       └── plausible.ts
│   ├── components/
│   │   ├── KpiCard.tsx
│   │   ├── TrendChart.tsx
│   │   ├── AlertBanner.tsx
│   │   ├── GoalProgress.tsx
│   │   └── ActivityFeed.tsx
│   ├── lib/
│   │   ├── moneybird.ts         (API-client)
│   │   ├── pipedrive.ts
│   │   ├── plausible.ts
│   │   └── cache.ts             (server-side caching)
│   ├── styles/
│   │   └── global.css           (Tailwind imports)
│   └── env.d.ts
├── public/
│   └── logo.svg
├── astro.config.mjs
├── tailwind.config.cjs
├── tsconfig.json
├── package.json
└── README.md
```

**Voor Next.js + shadcn + Tremor:**

```bash
# 1. Init
cd ~/AI\ -\ Projecten/{Bedrijf}
npx create-next-app@latest {Toolnaam} --typescript --tailwind --app --src-dir
cd {Toolnaam}

# 2. shadcn/ui + Tremor
npx shadcn-ui@latest init
npm install @tremor/react recharts

# 3. Auth (Clerk)
npm install @clerk/nextjs

# 4. Git + env-vars zoals Astro-voorbeeld
```

**Voor Vite + React + Tailwind + Recharts:**

```bash
npm create vite@latest {Toolnaam} -- --template react-ts
cd {Toolnaam}
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
npm install recharts swr clsx @clerk/clerk-react
```

**Voor Notion-dashboard:**

```
Geen scaffold. Wel:
- Workspace aanmaken (gratis-tier)
- Page-template kiezen of leeg
- Per A2-tegel:
  - KPI-card: Notion-callout + getal-veld (handmatig)
  - Trend: Geckoboard-widget embedden (betaalde service) of
    statisch chart-PNG uit Excel/Sheets
- Refresh: handmatig elke vrijdag 30 min
- URL: workspace-page-share-link
```

**Voor Looker Studio:**

```
- looker.studio.google.com → nieuw report
- Data-bron toevoegen (Sheets, BigQuery, GA4-connector,
  community-connectors voor Stripe/Pipedrive)
- Per tegel: scorecard, time-series-chart, bar-chart
- Sharing: report-share-link
```

**Voor Retool:**

```
- retool.com → nieuwe app
- Resources toevoegen (REST API, Postgres, etc.)
- Drag-and-drop KPI-cards en charts
- Auth: Retool-team-members
- URL: retool.com/apps/{app-id}
```

Concrete vragen:
1. *"Bevestig: lokale code-folder wordt `~/AI - Projecten/{Bedrijf}/{Toolnaam}/`?"*
2. *"Bevestig: GitHub-repo wordt `{Org}/{Toolnaam}` met visibility [private/public]?"*
3. *"Welke env-vars heb je beschikbaar nu, en welke moet je nog aanvragen?"* (lijst opbouwen voor blok 4)

#### Blok 4, Data-bron-integratie

Per bron uit het A2-ontwerp: welke auth-methode, welke fetch-strategie, welke caching, welke foutafhandeling.

**Standaard bronnen en hun integratie:**

| Bron | Auth | Fetch-route | Caching | Refresh | Foutafhandeling |
|---|---|---|---|---|---|
| Moneybird | API-token | Server-side via `api/moneybird.ts` | In-memory of KV (Cloudflare KV, Vercel KV) | hourly (cron of SWR-interval) | Retry 3x, bij faal placeholder + Sentry-event |
| Pipedrive | API-token | Server-side via `api/pipedrive.ts` | KV met TTL 1 uur | hourly | Retry 3x, bij faal placeholder + Sentry |
| HubSpot | OAuth of private-app token | Server-side, refresh-token-flow | KV TTL 1 uur | hourly | Retry 3x, refresh-token-cycle bij 401 |
| Stripe | API-key | Server-side, paginated fetch | KV TTL 15 min (live data) | 15-min of webhook | Retry, dedupe via idempotency-key |
| Plausible | API-key (Plus-plan vereist) | Server-side, query-API | KV TTL 1 uur | hourly | Retry, fallback naar laatste cache |
| GA4 | OAuth via Service Account | Server-side via `googleapis` SDK | KV TTL 1 uur | hourly | Retry, fallback naar laatste cache |
| Supabase (eigen data) | Service-role key (server-only) | Direct SQL via Supabase-client | Geen (live query) | Realtime via Supabase subscriptions of SWR | Standaard error-boundary, retry-eens |
| Notion | Internal integration secret | Server-side via Notion-API | KV TTL 1 uur | hourly | Retry 3x, fallback placeholder |
| Airtable | Personal access token | Server-side via Airtable-client | KV TTL 1 uur | hourly | Retry, fallback |
| Bank PSD2 (Tink, Klarna Kosma) | OAuth via aggregator | Server-side, refresh-token-flow | KV TTL 4 uur (geen need voor realtime) | 4x per dag | Retry, alert bij 401 of aggregator-foutmelding |
| Custom Postgres of MySQL | Connection string, read-only user | Direct via pg-client of mysql2 | Geen (live query) of in-memory | SWR-interval | Connection-pool retry, fallback placeholder |
| Eigen markdown-parse (Goals.md) | Geen (local-file read) | Server-side filesystem of repo-fetch via GitHub-API | Build-time of hourly | hourly | Fallback naar laatste parse |

**Refresh-strategie (drie hoofdvormen):**

1. **Server-side fetch met cache** (Astro / Next.js): elke pagina-laad doet een server-side fetch met TTL-cache. Voordeel: data altijd vers per laad. Nadeel: bij KV-miss een latente eerste-laad-tijd.
2. **L2-cron-vulling met static read** (Astro / Vite): scheduled-task (uit L2) schrijft elke X minuten een JSON-bestand naar storage (Vercel KV, Cloudflare R2, Supabase-storage). Dashboard leest dat JSON bij elke pagina-laad. Voordeel: dashboard laadt instant, geen API-rate-limits raken. Nadeel: data is zo vers als de cron-frequentie.
3. **SWR (stale-while-revalidate) op client-side** (Vite SPA, Next): client fetcht en cached lokaal, revalideert in achtergrond. Voordeel: UX-friendly, geen layout-shift. Nadeel: vereist credentials in browser (alleen voor public-token bronnen) of een proxy-API.

**Default Upscailed-route:** combinatie 1 + 2. Hero-KPI's via L2-cron-JSON (snelle laad), trends/alerts/goals via server-side fetch met KV-cache (vers per laad).

Concrete vragen:
1. *"Voor elke bron uit A2 (Moneybird, Pipedrive, Plausible, etc.): wat is de refresh-frequentie volgens A2, en welke route past best (server-side / L2-cron-JSON / SWR)?"*
2. *"Welke bronnen draaien al via L2? Die kunnen we direct hergebruiken als JSON-vulling voor het dashboard."*
3. *"Welke caching-laag: Vercel KV (gratis-tier 30k commands/maand), Cloudflare KV, Supabase (KV via tabel + RLS), of geen cache?"*

#### Blok 5, Visualisaties per tegel

Per A2-tegel: welke component, welke library, welke props, welke styling.

**Standaard visualisatie-types:**

| Tegel-type uit A2 | Component | Library | Props-skelet |
|---|---|---|---|
| Hero-KPI (getal, eenheid, target, vergelijking) | `<KpiCard>` | Custom Tailwind + Recharts (sparkline-optie) of Tremor `<Card>`+`<Metric>` | `{ label, value, unit, target, comparison, status: 'green'|'yellow'|'red' }` |
| Trend (line over tijd) | `<TrendChart>` | Recharts `<LineChart>` of Tremor `<LineChart>` | `{ data: [{x, y}], xKey, yKey, period: '12mnd', compareYearOverYear?: boolean }` |
| Trend (bar over tijd) | `<TrendBar>` | Recharts `<BarChart>` of Tremor `<BarChart>` | `{ data, xKey, yKey }` |
| Trend (sparkline ingebed in KPI) | onderdeel van `<KpiCard>` | Recharts `<LineChart>` met minimal axis | `{ data, color }` |
| Alert (banner of card) | `<AlertBanner>` | Custom Tailwind | `{ severity: 'info'|'warning'|'critical', title, action }` |
| Goal-progress (voortgangsbalk) | `<GoalProgress>` | Custom Tailwind of Tremor `<ProgressBar>` | `{ label, current, target, status: emoji }` |
| Activity-feed | `<ActivityFeed>` | Custom Tailwind | `{ events: [{type, summary, timestamp}], maxLength: 10 }` |
| Heatmap (optioneel) | `<HeatmapChart>` | Recharts (custom) of Tremor (community) | `{ data: [[x, y, value]] }` |
| Gauge (optioneel) | `<Gauge>` | Recharts of Tremor `<CircleProgress>` | `{ value, min, max, target }` |

**Layout-skelet (Astro / Next.js page):**

```tsx
// src/pages/index.astro (Astro) of src/app/page.tsx (Next)
<DashboardLayout>
  <AlertsRow>                           {/* bovenaan, alleen actieve alerts */}
    {alerts.filter(a => a.active).map(a => <AlertBanner {...a} />)}
  </AlertsRow>

  <HeroKpiGrid columns={3}>             {/* 5-9 tegels, 3 rijen van 3 */}
    {kpis.map(kpi => <KpiCard {...kpi} />)}
  </HeroKpiGrid>

  <SecondaryGrid columns={2}>
    <TrendsColumn>
      {trends.map(t => <TrendChart {...t} />)}
    </TrendsColumn>
    <RightColumn>
      <GoalsBlock>
        {goals.map(g => <GoalProgress {...g} />)}
      </GoalsBlock>
      <ActivityFeed events={recentEvents} />
    </RightColumn>
  </SecondaryGrid>
</DashboardLayout>
```

**Styling-tokens (uit S2 Brand-guidelines):**
- Primaire kleur (uit brand)
- Status-kleuren: groen `#10b981`, geel `#f59e0b`, rood `#ef4444`, info-blauw `#3b82f6`
- Typografie: zelfde font als hoofdsite, fall-back `system-ui`
- Dark-mode: optioneel via Tailwind `dark:` prefix, default auto-volgen-OS

Concrete vragen:
1. *"Per A2-tegel: bevestig of het type (KPI, trend, alert, goal, activity) klopt met mijn voorstel."*
2. *"Kleur-tokens uit S2 Brand-guidelines hergebruiken, of nieuwe palette?"*
3. *"Dark-mode standaard aan, standaard uit, of auto-volg-OS?"*

#### Blok 6, Auth-laag

Wie ziet het dashboard, en hoe controleren we dat.

**Opties:**

| Auth-stack | Voor wie | Voordeel | Nadeel |
|---|---|---|---|
| **Clerk** | Solopreneur tot MKB-team, snelle setup | Free-tier 10k MAU, social-login (Google), 2FA standaard, UI-kit | Vendor (US-based, AVG-noot vereist) |
| **Supabase Auth** | Bedrijven die al Supabase voor data gebruiken | Open-source, self-hostable, eenvoudige SDK | UI zelf bouwen, minder polish dan Clerk |
| **Auth0** | Enterprise, complexe SSO-eisen | Mature, SAML/SCIM, brede provider-support | Duur boven free-tier, complexer setup |
| **Eigen JWT + database** | Vol controle, geen vendor | Geen externe afhankelijkheid, geen kosten | Zelf bouwen, security-implicaties (token-refresh, password-reset, etc.) |
| **Basic-auth (alleen MVP)** | Tijdelijke MVP achter HTTP Basic | Minimaal, geen account-systeem | Niet geschikt voor productie, geen multi-user, geen 2FA |
| **Geen auth** | Public dashboard (zeldzaam) | Geen drempel | Privacy-risico, AVG-onmogelijk bij PII |

**AVG-noot:** Clerk en Auth0 zijn US-vendors, vereist AVG-grondslag plus verwerkersovereenkomst in J4 Privacyverklaring. Supabase EU-region is een EU-vriendelijk alternatief.

**Default Upscailed-route:** **Clerk** voor MKB-context met < 100 users (snel op te zetten, gratis-tier ruim), **Supabase Auth** als Supabase al draait voor data.

Concrete vragen:
1. *"Hoeveel gebruikers gaan straks inloggen? Solo, klein team (< 10), groter team (10-100), > 100?"*
2. *"Heb je SSO-eisen (Google Workspace login verplicht)? Dat sluit Auth0 of Clerk met social-login uit Basic-auth uit."*
3. *"AVG-voorkeur: EU-region verplicht (Supabase EU), of US-vendor met AVG-grondslag oké (Clerk)?"*

Schrijf de gekozen auth-stack vast plus de env-vars die nodig zijn (publishable key, secret key, jwt-secret, etc.).

#### Blok 7, Hosting plus deploy

Waar draait het, hoe komt het live.

**Opties:**

| Host | Voor wie | Voordeel | Nadeel |
|---|---|---|---|
| **Vercel** | Astro / Next / Vite-projecten | Snelle deploys, preview-branches per PR, ingebouwde KV en edge-functions, free-tier ruim voor MKB | US-vendor (AVG-noot), team-features betaald |
| **Cloudflare Pages + Workers** | Astro / Vite, performance-bewuste bouwers | EU-edge, gratis tot 100k requests/dag, KV en R2 zeer goedkoop | Iets meer config, geen ingebouwde Next.js-app-router-support (wel via OpenNext) |
| **Netlify** | Astro / Vite | Free-tier vergelijkbaar met Vercel, ingebouwde forms en functions | Minder bekend bij Next.js-developers |
| **Eigen VPS (Hetzner, DigitalOcean)** | Bedrijven met dev-resources, kostenbewust | Geen vendor lock-in, voorspelbare kosten | Onderhoud zelf, geen preview-branches out-of-the-box, SSL zelf inrichten |

**Deploy-pijplijn:**
- **Vercel / Netlify / Cloudflare**: native Git-integratie. Push naar `main` = productie-deploy. Push naar feature-branch = preview-URL. Geen GitHub Actions nodig.
- **Eigen VPS**: GitHub Actions workflow met `rsync` of `docker push` op release-tag. SSL via Let's Encrypt + certbot.

**Domein-setup:**
- Subdomein `dashboard.bedrijfsnaam.nl` (default Upscailed-aanbeveling) via DNS-record bij de DNS-provider.
- Custom-domain in Vercel/Cloudflare Project Settings, automatische SSL.

**Env-vars management:**
- Vercel/Cloudflare/Netlify: dashboard-UI voor env-vars per environment (development, preview, production).
- Eigen VPS: `.env`-bestand op server, secret-manager (Doppler, HashiCorp Vault) optioneel.

**Default Upscailed-route:** **Vercel** voor stack 1-3 (Astro, Next, Vite), gratis-tier ruim voor MKB. **Cloudflare Pages** als EU-region cruciaal is.

Concrete vragen:
1. *"Hosting: Vercel (default), Cloudflare Pages (EU-edge), Netlify, of eigen VPS?"*
2. *"Custom-domein bevestigd: `dashboard.bedrijfsnaam.nl`? DNS-provider?"*
3. *"Wil je een staging-environment (`staging.dashboard.bedrijfsnaam.nl`) of alleen preview-URL's per PR?"*

#### Blok 8, Monitoring plus AIOS-in-a-Week-rol-out

Hoe weet je dat het draait, en hoe groeit het in de eerste maand.

**Monitoring-stack:**

| Tool | Voor | Setup |
|---|---|---|
| **Sentry** | Error-tracking (frontend + backend), performance | `npm install @sentry/astro` of `@sentry/nextjs`, DSN-env, free-tier 5k events/maand |
| **BetterStack (Logtail + Heartbeats)** | Logs + uptime, EU-region beschikbaar | DSN voor logs, heartbeat-URL voor cron-checks |
| **UptimeRobot** | Externe uptime-monitor (HTTP-check elke 5 min) | Gratis tot 50 monitors, e-mail of webhook bij downtime |
| **Vercel Analytics** | Web vitals, performance | Free-tier 2,500 events/maand, ingebouwd in Vercel |
| **Plausible** (zelfde voor analytics als A2-bron) | Bezoekers-tracking, geen cookies | Self-host of cloud, AVG-vriendelijk |

**AIOS-in-a-Week-rol-out (Upscailed-default-leveringsritme):**

- **Week 1 (live in 5 werkdagen)**: scaffold + 4 tot 6 hero-tegels live met live data, basic auth, custom domein live. Doel: ondernemer ziet de eerste echte cijfers in een eigen UI.
- **Week 2**: 2 tot 3 hero-tegels erbij (totaal 5 tot 9), 3 tot 4 trends live. Doel: de volledige hero-KPI-set staat plus richting-over-tijd zichtbaar.
- **Week 3**: alerts-strook live (5 tot 8 regels), goal-progress-bars per jaardoel (max 5). Doel: signaalfunctie en jaardoel-discipline draaien.
- **Week 4**: recent-activity-feed live (5 tot 10 events), monitoring scherp (Sentry-alerts, UptimeRobot-pings, BetterStack-heartbeats), eventueel mobile-responsive-poetsen. Doel: dashboard is "klaar" voor dagelijks gebruik.

**Vanaf week 5**: review-ritme inplannen (kwartaal-review, A2-ontwerp bijwerken bij bedrijfs-evolutie, nieuwe tegels toevoegen op verzoek).

Concrete vragen:
1. *"Monitoring-stack: Sentry + UptimeRobot (default), of BetterStack als EU-region nodig?"*
2. *"AIOS-in-a-Week-ritme aanhouden, of langere planning (bv. 4 tot 8 weken voor de volle rol-out)?"*
3. *"Welke 4 tot 6 hero-tegels gaan in week 1 live? Voorstel: de tegels met data al beschikbaar (geen aggregator-koppeling nodig)."*

### Stap 6: Tegel-loop, per A2-tegel 4 velden invullen

Na de 8 blokken: per tegel uit A2 doorloop je 4 velden om de bouw-spec compleet te maken. Werk **één tegel per beurt** in volgorde van A2-prioriteit (hero-KPI's eerst, dan trends, dan alerts, dan goals, dan activity-feed).

Voor elke tegel vier velden:

1. **Fetch-skelet** - concrete code-skelet voor de data-fetch. Bv.

   ```ts
   // src/lib/moneybird.ts
   import { fetch } from 'undici';
   const MONEYBIRD_TOKEN = process.env.MONEYBIRD_TOKEN!;
   const ADMIN_ID = process.env.MONEYBIRD_ADMIN_ID!;

   export async function getOmzetMTD(): Promise<number> {
     const startOfMonth = new Date();
     startOfMonth.setDate(1);
     startOfMonth.setHours(0, 0, 0, 0);
     const url = `https://moneybird.com/api/v2/${ADMIN_ID}/sales_invoices.json?filter=state:paid,since:${startOfMonth.toISOString()}`;
     const res = await fetch(url, {
       headers: { Authorization: `Bearer ${MONEYBIRD_TOKEN}` }
     });
     if (!res.ok) throw new Error(`Moneybird error: ${res.status}`);
     const invoices = await res.json() as Array<{ total_price_incl_tax: string }>;
     return invoices.reduce((sum, inv) => sum + parseFloat(inv.total_price_incl_tax), 0);
   }
   ```

   Hyper-concreet, zodat een ontwikkelaar of Cursor-sessie direct kan implementeren. Geen pseudocode, wel functie-skelet met types en API-endpoint.

2. **Transformatie** - wat gebeurt er met de ruwe data voordat het op het scherm komt. Bv. *"Stripe-charges aggregeren per dag, som tot weektotaal, EUR-conversie via centen / 100. Pipedrive-deals filteren op fase `won`, som van value-veld. NPS-score bereken via formule `(promoters - detractors) / total * 100` afgerond op heel getal"*.

3. **Visualisatie-component** - exacte component-naam, library, props. Bv. *"`<KpiCard label='Omzet MTD' value={omzetMTD} unit='EUR' target={25000} status={omzetMTD > 25000 ? 'green' : omzetMTD < 15000 ? 'red' : 'yellow'} comparison={`+${pct}% vs. vorige maand`} sparkline={omzetPerDayLast30d} />`"*.

4. **Refresh-route** - concrete refresh-vorm. Bv. *"Server-side fetch in `src/pages/api/moneybird-omzet-mtd.ts`, gecached in Vercel KV met TTL 60 min. Frontend roept via SWR met `revalidateOnFocus: false`, fallback naar laatste cache bij faal. L2-cron schrijft elke maandag 08:00 weekly-summary in Vercel KV-key `omzet-week-{YYYY-WW}`."*

### Stap 7: AIOS-in-a-Week-rol-out-plan

Concretiseer per week welke tegels live staan en welke commits dat impliceert.

**Week 1 (kick-off + 4-6 hero-tegels):**
- Dag 1: scaffold + GitHub-repo + Vercel-deploy + custom-domein + Clerk-auth-skelet
- Dag 2: data-clients voor de 2 belangrijkste bronnen (bv. Moneybird, Pipedrive)
- Dag 3: 4 hero-tegels live, eerste deploy met echte data
- Dag 4: 2 extra hero-tegels, styling-pass, mobile-responsive check
- Dag 5: dry-run, gebruiker-acceptance, bug-fixes, eerste productie-deploy

**Week 2 (trends + extra hero-tegels):**
- Dag 6-7: extra hero-tegel data-clients
- Dag 8-9: trends-componenten + data-fetch
- Dag 10: deploy, monitoring-baseline opzetten

**Week 3 (alerts + goals):**
- Dag 11-12: alerts-engine (compute-on-refresh logica)
- Dag 13-14: goals-parser (markdown-parse van Directie/01 - Goals.md)
- Dag 15: deploy

**Week 4 (activity-feed + monitoring + polish):**
- Dag 16-17: activity-feed (webhooks van CRM, mail-tool)
- Dag 18: Sentry + UptimeRobot + BetterStack-heartbeat
- Dag 19: visuele polish, dark-mode optionele toggle, performance-pass
- Dag 20: hand-off, documentatie in tool-card, eerste kwartaal-review-datum

**Daarna**: maandelijkse uitbouw op verzoek, kwartaal-review of A2-ontwerp nog klopt.

### Stap 8: Schrijven en opslaan

Gebruik het template uit `references/template-dashboard-bouwer.md` als skelet. Vul met de uitkomsten uit pre-fill plus interview plus tegel-loop plus AIOS-week-plan.

Sla op als:
```
{scope}/Engineer/Dashboard-Bouwer-Spec.md
```

Maak de `Engineer/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: dashboard-bouwer-spec
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: E1
stack: <Astro+React+Tailwind+Recharts | Vite+React+Tailwind+Recharts | Next.js+shadcn+Tremor | Notion | Looker Studio | Retool>
auth: <Clerk | Supabase Auth | Auth0 | eigen-JWT | Basic-auth | geen>
hosting: <Vercel | Cloudflare Pages | Netlify | eigen VPS>
custom-domein: <dashboard.bedrijfsnaam.nl | geen>
aantal-hero-kpis: <getal>
aantal-trends: <getal>
aantal-alerts: <getal>
aantal-goals: <getal>
aios-week-aanpak: <ja | nee>
upstream-skill: A2 Mission Control Builder
code-locatie: ~/AI - Projecten/<Bedrijf>/<Toolnaam>/
github-repo: <Org>/<Toolnaam>
---
```

**Plus tool-card aanmaken in `{scope}/IT/AI-Tools/{Toolnaam}.md`** (gebruik conventie uit Iwan-OS of vergelijkbare vault). Bevat:
- Frontmatter (`type: ai-tool`, `naam`, `bedrijf`, `status: Bouw`, `code-locatie`, `live-url`)
- Korte beschrijving van wat het tool is
- Link terug naar `Engineer/Dashboard-Bouwer-Spec.md`
- `## Info`-sectie met code-locatie + GitHub-repo + live-URL
- `## Acties`-sectie voor toekomstige feedback en backlog

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "krachtig dashboard", "next-level analytics", "razendsnelle insights". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Moneybird API GET /sales_invoices.json met filter state:paid in `src/lib/moneybird.ts`, hourly cache via Vercel KV met key `moneybird-omzet-mtd`" is sterker dan "we halen omzet uit Moneybird".
- **Geen em-dashes.** Gebruik komma's, haakjes of losse zinnen.
- **Tegel-spec in vaste structuur:** type, fetch-skelet, transformatie, visualisatie-component, refresh-route.
- **Code-skelet in fenced code-blocks** met taal-aanduiding (`ts`, `tsx`, `bash`, etc.). Geen pseudocode.
- **Eén overzichtstabel bovenaan:** alle tegels met type, bron, refresh, component. Daaronder per tegel een kaart met volledig detail.
- **Cross-links expliciet:** naar A2 voor het ontwerp, naar S12 voor de tooling-keuze, naar S11 voor de gebruikers, naar L2 voor scheduled data-vulling, naar C-skills voor de bron-data, naar S2 voor brand-styling-tokens.

### Stap 9: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):
1. **Changelog bedrijf:** `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Engineer/Dashboard-Bouwer-Spec.md`, v1.0, stack [X], hosting [Y], N tegels totaal, AIOS-in-a-Week-rol-out, code-locatie `~/AI - Projecten/[Bedrijf]/[Toolnaam]/`"*.
2. **Tool-card:** `{scope}/IT/AI-Tools/{Toolnaam}.md` aangemaakt, gelinkt vanuit spec en vanuit eventueel `AI-Tools Overzicht.md`.
3. **Daily:** als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md`), log een eenregelige melding plus link naar de spec en tool-card.
4. **Goals-bestand:** als `{scope}/Directie/01 - Goals.md` een E1-doel of dashboard-doel heeft: status bijwerken, regel toevoegen aan voortgangslog.
5. **Scale-audit-suggestie:** als `{scope}/Directie/Research/` een audit-rapport bevat waar E1 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien zodra week 1 live staat.

Vervolgsuggesties die je altijd noemt:
- **Uitvoeren in Cursor of Claude Code-sessie.** De spec is uitvoerbaar in een fresh Cursor-sessie of via Claude Code. Open de lokale folder, plak de spec als context, en draai de scaffold-commando's.
- **Hand-off naar freelance-developer.** Als de ondernemer zelf niet bouwt: spec is direct overdraagbaar. Geschatte build-tijd: 5 tot 10 dagen voor week-1-output, 15 tot 20 dagen voor volle rol-out.
- **L2 Auto Rapportage Setup koppelen.** Als hero-KPI's via L2-cron-JSON gevuld worden (Upscailed-default), is L2 onmisbaar. Start L2 parallel met week 1.
- **E3 Workflow Pipeline.** Als de data-fetch te complex wordt voor de dashboard zelf (veel transformaties, ETL-achtig), is E3 de plek voor de data-laag. Dashboard wordt dan pure renderer van een database/JSON-store.
- **E5 Kennisbank Organizer.** Als naast het dashboard ook een zoekbare doc-store gewenst is (FAQ, klant-bestanden, interne SOPs), is E5 de volgende skill.
- **A3 Daily Briefing aansluiten.** De hero-KPI's en alerts uit het dashboard zijn directe input voor de dagelijkse briefing. A3 kan na week 1 live.
- **Review-ritme.** Kwartaal: dashboard nog up-to-date met A2-ontwerp, nieuwe tegels nodig, data-bronnen nog vers. Halfjaarlijks: stack-keuze nog optimaal, hosting-kosten in toom.
- **Mirror-naar-GitHub bij Upscailed-conventie.** Push code naar `github.com/{Org}/{Toolnaam}` voor backup en versiebeheer. Lokale folder in `~/AI - Projecten/{Bedrijf}/{Toolnaam}/` is werkkopie.

## Belangrijke regels

- **A2 verplicht aanwezig.** Geen `Analyze/Mission-Control-Ontwerp.md` = geen E1. Stop en stuur door naar `mission-control-builder` (A2). Schrijf nooit een lege Dashboard-Bouwer-Spec.md.
- **Eén blok per beurt** in het interview. Niet alle 8 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Eén tegel per beurt** in de tegel-loop (stap 6). Niet alle tegels tegelijk de 4 velden vragen. Volg A2-prioriteit: hero-KPI's eerst, dan trends, dan alerts, dan goals, dan activity.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Stack-keuze is doorslaggevend.** Een verkeerde stack-keuze (Next.js waar Astro genoeg was, of Notion waar de eis live-data was) breekt de hele bouw. Stel hard de vragen uit blok 2.
- **AIOS-in-a-Week is de Upscailed-default-cadans.** Week 1: 4 tot 6 hero-tegels live. Niet meer. Week 2-4 breidt uit. Geen rol-out van "alles tegelijk in 3 weken bouwen": dat eindigt in een onaffe app die de eigenaar niet gebruikt.
- **Refresh-strategie expliciet.** Per tegel: server-side fetch met cache, L2-cron-JSON, of SWR. Geen "ververst wel ergens": dat is geen spec.
- **Auth verplicht voor productie.** Geen auth = AVG-onmogelijk bij PII (klantnamen, bedragen). Basic-auth alleen voor MVP-staging.
- **Custom-domein vooraf vastleggen.** Een Vercel-URL als `{toolnaam}.vercel.app` is geen productie-URL. Custom-domein hoort in week 1.
- **Monitoring vanaf week 4.** Sentry + UptimeRobot is goedkoop (free-tier beide) en voorkomt dat een gefaalde deploy weken onopgemerkt blijft.
- **Onderscheid bewaken met A2, L2, E2, E3, E5.** Ontwerp is A2. Bouw is E1. Push-rapportage is L2. Eigen MKB-app is E2. Data-pipeline zonder UI is E3. Kennisbank is E5.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe bronnen.** Een eerder dashboard-poging of bestaand Vercel-account bespaart 30-50% van de eerste week.
- **Geen marketing-trucjes.** Geen "imagine if you had real-time clarity...", geen rhetorische vragen. Recht voor zijn raap.
- **Mik op werkende UI in week 1, niet op een uitgewerkt design-doc.** De spec is een middel, de live URL is het doel. Een prachtig document zonder gerealiseerd dashboard scoort geen ✅ op E1.
- **Test eerst, productie daarna.** Eerste deploy op staging of preview-URL, na 1-2 dagen review naar productie. Niet direct productie zonder dry-run.
- **Stack-keuze 1x, niet steeds switchen.** Een bedrijf met Astro in productie wisselt niet halverwege week 3 naar Next.js. Stack geldt voor minstens 12 maanden, daarna review.
- **GitHub-repo verplicht.** Geen lokale-only code. Push naar `github.com/{Org}/{Toolnaam}` voor backup, versiebeheer en hand-off-leesbaarheid.

## Voorbeeld-output

Zie [`references/template-dashboard-bouwer.md`](references/template-dashboard-bouwer.md) voor de exacte structuur die de skill oplevert: overzichtstabel met alle tegels, stack-keuze met motivatie, repo-scaffold-commando's, data-bron-integratie-tabel, visualisatie-componenten per tegel, auth + hosting + monitoring, AIOS-in-a-Week-rol-out-plan met dag-bezittingen, en cross-links naar A2 (ontwerp), S12 (tooling), S11 (gebruikers), L2 (scheduled data), C-skills (bron-data), S2 (brand-styling).

## Changelog

### 1.1.0 — 2026-05-11

- A2-precheck van harde stop naar mode-keuze: eerst A2 doen, of doorgaan met defaults en [VERIFICEREN]-markers.

### 1.0.0 — initiele release

- Eerste productie-versie.
