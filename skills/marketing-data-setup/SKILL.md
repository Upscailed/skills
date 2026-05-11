---
name: marketing-data-setup
title: "Marketing Data Setup"
description: "Helpt een ondernemer in 25 tot 45 minuten een volledig marketing-data-opzetdocument op te bouwen in één canoniek bestand: `{scope}/Marketing/Data-Setup.md`. Dit is SCALE-stap C1 (Collect) en de fundering onder elke latere marketing-analyse, dashboard of rapportage. Zonder dit document blijft het onduidelijk welke marketing-cijfers worden gemeten, uit welke tool ze komen, hoe vaak ze worden opgehaald en waar ze terechtkomen, waardoor latere stappen (A1 Rapportage, A3 Daily Briefing, L2 Auto-Rapportage) niets concreets hebben om op te bouwen. De skill werkt via een gestructureerd interview in 6 kanalen (Website, Social media, E-mail en Nieuwsbrief, Paid Ads, Content zoals blog/podcast/video, Overige zoals events en partnerships), één kanaal per beurt zodat het niet overweldigt. Vóór het interview begint, scant de skill diep wat al beschikbaar is: in de vault (IT/Toolstack.md voor marketing-tools, Marketing/ voor content-overzicht, Directie/Playbook voor kanaal-keuzes, Directie/00-Overzicht.md voor propositie) plus actief vragen naar tool-credentials, API-keys-locatie en bestaande dashboards. Per kanaal worden vastgelegd: tool of bron, dataset-naam, kern-metrics (bereik, engagement, conversie), ophaalfrequentie (realtime, dagelijks, wekelijks, maandelijks), ophaalmethode (handmatig export, API, native dashboard, automatisering), bestemming (dashboard, CSV, Notion, database), eigenaar en review-ritme. Een aparte gap-sectie toont welke kanalen wel actief zijn maar nog geen data-stroom hebben, plus een credentials-rij met locatie van API-keys en logins per tool (verwijst naar wachtwoord-manager, niet de waarden zelf). Werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam of vault-eigenaar, alleen over de SCALE-Structure-conventie (`IT/`, `Marketing/`, `Directie/`). Activeer altijd wanneer iemand zegt: 'marketing data opzetten', 'marketing-metrics bepalen', 'analytics inrichten voor marketing', 'welke marketing-cijfers meet ik', 'C1 dichten in SCALE-audit', 'gap C1', 'marketing-data-overzicht', 'social-cijfers ophalen', 'nieuwsbrief-data tracken', 'paid-ads-data structureren', 'content-metrics inrichten', 'Marketing/Data-Setup.md aanmaken', 'data-stromen voor marketing', 'kpi-marketing-vastleggen'. Triggert ook bij iedere expliciete verwijzing naar C1, marketing-KPIs of vragen over hoe vaak welke marketing-cijfers worden opgehaald."
category: collect
tags: [marketing-data, analytics, kpis, collect, scale-framework, c1, data-stromen, marketing]
estimatedTime: "25 tot 45 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Marketing Data Setup

## Doel

Helpt een ondernemer om in 25 tot 45 minuten een volledig **marketing-data-opzetdocument** op te bouwen in één canoniek bestand: `{scope}/Marketing/Data-Setup.md`. Dit is SCALE-stap C1 (Collect) en de fundering waarop alle latere marketing-analyse, dashboards en geautomatiseerde rapportages rusten.

*Waarom dit fundamenteel is.* Een marketing-data-opzet is geen rapport en geen dashboard. Het is de **bron-kaart** die voorschrijft welke cijfers worden gemeten, uit welke tool ze komen, hoe vaak ze worden opgehaald en waar ze landen. Zonder deze kaart heeft minstens vier latere SCALE-stappen niets concreets om op te bouwen:

- **A1 (Analyze, Rapportage Builder)** — De rapportage-skill weet pas wat hij moet samenvatten als de bronnen zijn vastgelegd. Geen Data-Setup betekent dat A1 elke keer opnieuw moet uitvragen wat er gemeten wordt.
- **A3 (Analyze, Daily Briefing)** — Een dagelijkse briefing met "bereik LinkedIn vandaag" werkt alleen als ergens vastligt dat LinkedIn-bereik dagelijks wordt opgehaald.
- **L2 (Leverage, Auto-Rapportage Setup)** — Automatisering van rapportage leunt direct op vastgelegde data-stromen. Zonder Data-Setup bouw je telkens een eilandje.
- **E1 (Engineer, Dashboard Bouwer)** — Een dashboard koppelt aan bronnen die in dit document staan. Geen vastgelegde bron, geen koppeling.

*Wat je verliest zonder dit document.* Drie concrete pijnpunten die deze skill voorkomt:

1. **Vergeten meetpunten.** Een kanaal draait wel (LinkedIn-account is actief, nieuwsbrief gaat de deur uit), maar niemand haalt de cijfers structureel op. Resultaat: geen leercurve, geen sturing op data.
2. **Versnipperde exports.** Vijf tools, vijf eigen dashboards, geen plek waar de cijfers samenkomen. Elke maand opnieuw handmatig sprokkelen.
3. **Onvindbare credentials.** API-keys en logins zitten in iemands wachtwoord-manager of erger nog ergens in een mailtje. Bij elke automatisering eerst zoeken naar inloggegevens.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit C1 vraagt minimaal 2 metrics die worden bijgehouden. Die drempel haal je in 5 minuten met "ik kijk weleens naar LinkedIn-views en nieuwsbrief-opens". Deze skill mikt op een **rijk** document: 6 kanalen met per kanaal tool, dataset-naam, metrics, frequentie, ophaalmethode, bestemming en eigenaar, plus gap-sectie en credentials-locatie. Zodat het overzicht direct bruikbaar is voor A1, A3, L2 en E1.

Resultaat: SCALE-audit C1 springt van ❌ of ⚠️ naar ✅ en het document is direct herbruikbaar voor A1, A3, L2 en E1.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  MARKETING DATA SETUP — SCALE-stap C1 (Collect)           │
│  ~25-45 minuten · 6 kanalen                               │
└──────────────────────────────────────────────────────────┘

  In 25 tot 45 minuten leggen we vast welke marketing-cijfers
  je structureel meet, uit welke tool ze komen, hoe vaak je ze
  ophaalt en waar ze landen. Dit document is de bron-kaart voor
  alle latere Analyze- en Leverage-stappen (rapportage, dagelijkse
  briefing, auto-rapportage, dashboard).

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 6 kanalen interview (één per beurt, niet alles       │
  │    tegelijk) — gemiddeld 3-6 minuten per kanaal         │
  │  • Per kanaal: tool, dataset, kern-metrics, frequentie, │
  │    ophaalmethode, bestemming, eigenaar                  │
  │  • Vooraf scan ik bestaande bronnen (IT/Toolstack.md    │
  │    voor marketing-tools, Marketing/ voor content,       │
  │    Directie/Playbook voor kanaal-keuzes)                │
  │  • Daarna lever ik Marketing/Data-Setup.md op met       │
  │    overzichtstabel, gap-sectie en credentials-rij       │
  └────────────────────────────────────────────────────────┘

  De 6 kanalen:
  [1] Website         [2] Social media   [3] E-mail/Nieuwsbrief
  [4] Paid Ads        [5] Content        [6] Overige
                          (blog/podcast/        (events,
                           video)               partnerships)

  Heb je externe input klaar? Bijvoorbeeld:
  • Tool-overzicht met logins (toolstack of password-manager)
  • Bestaand maand- of kwartaal-rapport met cijfers
  • Een lijst met API-keys-locaties
  • Eerder gemaakt content-plan met kanaal-keuzes
  • Dashboards die je al inkijkt (Looker Studio, Plausible, etc.)

  Dan kun je dat nu noemen — hoe meer bronnen, hoe minder ik
  hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  MARKETING DATA SETUP — C1 · 25-45 min · 6 kanalen        │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  IT/Toolstack.md,
   │    (auto-discover)   │  Marketing/,
   │                      │  Directie/Playbook,
   │                      │  Directie/00-Overzicht
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs +    │  Bestaande rapporten,
   │    credentials       │  dashboard-URLs,
   │                      │  API-keys-locatie,
   │                      │  password-manager-ref
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per kanaal, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, per    │  6 kanalen:
   │    kanaal            │  [1] Website
   │                      │  [2] Social media
   │                      │  [3] E-mail/Nieuwsbrief
   │                      │  [4] Paid Ads
   │                      │  [5] Content
   │                      │  [6] Overige
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Frequentie- en    │  Per metric: hoe vaak
   │    methode-keuze     │  ophalen, met welke
   │                      │  methode (handmatig,
   │                      │  API, native, autom.)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Bestemming        │  Waar landen de
   │    bepalen           │  cijfers? Dashboard,
   │                      │  CSV, Notion, DB
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Owner + review-   │  Wie haalt op,
   │    ritme             │  wie kijkt erop,
   │                      │  wanneer
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Gaps + creden-    │  Welke kanalen
   │    tials-rij         │  draaien wel maar
   │                      │  hebben geen data?
   │                      │  Waar zitten keys?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 10. Schrijven +      │  Marketing/
   │     opslaan          │  Data-Setup.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 11. Logging +        │  Changelog +
   │     vervolg          │  hint richting
   │     suggesties       │  A1, A3, L2, E1
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Marketing data opzetten" / "marketing-metrics bepalen"
- "Analytics inrichten voor marketing"
- "Welke marketing-cijfers meet ik" / "marketing-kpi vastleggen"
- "Data-stromen voor marketing" / "marketing-data-overzicht"
- "Social-cijfers ophalen" / "social-data structureren"
- "Nieuwsbrief-data tracken" / "e-mail-metrics inrichten"
- "Paid-ads-data structureren" / "ads-rapportage opzetten"
- "Content-metrics inrichten" / "blog/podcast/video-cijfers vastleggen"
- "C1 dichten in SCALE-audit" / "gap C1"
- "Marketing/Data-Setup.md aanmaken" / "Marketing/Data.md schrijven"

Triggert NIET wanneer:
- De gebruiker **website-analytics specifiek** wil inrichten (gebruik dan `website-analytics-setup` — C5; dit raakt alleen het Website-kanaal en is een diepere skill)
- De gebruiker een **CRM wil bouwen** (gebruik `crm-setup` — C2)
- De gebruiker **financiele data** wil opzetten (gebruik `financiele-data-setup` — C3)
- De gebruiker **klantfeedback** wil verzamelen (gebruik `klantfeedback-collector` — C4)
- De gebruiker een **toolstack-inventaris** wil (gebruik `toolstack-inventarisatie` — S12; dit gaat over álle tools, niet alleen marketing-tools)
- De gebruiker een **rapport wil bouwen** uit bestaande cijfers (gebruik `rapportage-builder` — A1; dat consumeert wat deze skill oplevert)
- De gebruiker een **content-roadmap** wil (gebruik `content-roadmap` — M3)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de marketing-data-setup gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Marketing/`, `IT/`, `Directie/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Marketing/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Marketing/`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze marketing-data-setup voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Marketing/`-map. Bevestig de gevonden scope voordat je doorgaat.

**Vaste output-locatie:** dit document landt altijd in `{scope}/Marketing/Data-Setup.md`. De SCALE-audit-spec noemt `{scope}/Marketing/Data.md` als output-pad, maar `Data-Setup.md` is sprekender omdat het document de opzet beschrijft (welke cijfers, hoe vaak, waarheen) en niet de cijfers zelf bevat. Gebruik dus `Marketing/Data-Setup.md` als canoniek pad. Komt de gebruiker met een eerdere `Data.md` of `Marketing-Data.md`, hernoem die in stap 10 mee.

Controleer daarna of `{scope}/Marketing/Data-Setup.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen op basis van wat er staat) of **nieuwe iteratie** (oude archiveren als `Data-Setup - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard SCALE-Structure-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Marketing/Data-Setup.md` (huidige versie als die bestaat) | Bestaande dataset-mapping, gap-sectie |
| `Marketing/Data.md` of `Marketing/Marketing-Data.md` (legacy-namen) | Eventueel eerder document onder oude naam |
| `IT/Toolstack.md` | **Verplichte check** — marketing-tools die al gecatalogiseerd zijn (categorie Marketing, Data en Analytics) en hun owners |
| `Marketing/` (subfolders) | Welke kanalen actief zijn op basis van bestaande content (LinkedIn-posts, nieuwsbrieven, blogs) |
| `Marketing/Nieuwsbrief/` | E-mail-tool indicatie en bestaande nieuwsbrief-uitgaven |
| `Marketing/LinkedIn/` of vergelijkbare social-mappen | Welke social-kanalen aantoonbaar in gebruik zijn |
| `Directie/00 - Overzicht.md` | Genoemde marketing-kanalen in propositie of methodiek |
| `Directie/Playbook/Tone of Voice.md` of `Brand Guidelines.md` | Kanaal-keuzes en doelgroep-segmenten |
| `Directie/Playbook/ICP.md` | Doelgroep — bepaalt welke metrics interessant zijn |
| `HR/Team.md` | Owners voor marketing-rollen (te koppelen aan datasets) |
| `Directie/01 - Goals.md` | Marketing-doelen — hieraan moet de data later iets bewijzen |

Maak per gevonden tool of kanaal een korte interne aantekening: welke datasets ze kunnen leveren (bv. LinkedIn → impressions, engagement, follower-groei).

**Belangrijk:** als een bron niet bestaat, skip stilletjes — niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is. Bestaat `IT/Toolstack.md` niet, noteer wel dat S12 ontbreekt en stel later in stap 11 voor om die eerst te dichten met `toolstack-inventarisatie`.

### Stap 3: Externe documenten en credentials ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Bij marketing-data zijn er vaak **dashboard-URLs en credentials-locaties** buiten de vault die enorm helpen.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen waaruit ik kan putten? Bijvoorbeeld:
> - Een tool-overzicht met logins (jouw password-manager of toolstack-export)
> - Een bestaand maand- of kwartaal-rapport met cijfers die je al verzamelt
> - Lijst met API-keys-locaties (bv. in 1Password-folder 'Marketing')
> - Een eerder content-plan of kanaal-keuzes
> - Dashboards die je al regelmatig inkijkt (Looker Studio, Plausible, Hootsuite, etc.)
> - Toegangs-overzicht voor sociale accounts (wie heeft admin, wie kan exporteren)
>
> Hoe meer bronnen, hoe minder ik hoef uit te vragen — en hoe minder kans op vergeten kanalen."

Per aangeleverde bron:
- **Tool-overzicht of toolstack-export**: scan op marketing-tools, koppel direct aan een kanaal
- **Bestaand rapport**: lees de KPIs die er al staan, neem die over als basismetrics per kanaal
- **API-keys-locatie**: noteer de **locatie** (bv. "1Password vault Marketing"), nooit de waarden zelf
- **Dashboard-URLs**: noteer als bestemmings-kandidaat in stap 7
- **Toegangs-overzicht social accounts**: koppel aan owner-veld in stap 8

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

**Veiligheidsregel:** schrijf nooit API-keys, wachtwoorden, access tokens of OAuth-secrets in `Data-Setup.md`. Verwijs alleen naar de **locatie** van de credentials (password-manager + folder, bv. "1Password / Upscailed / Marketing"). Stop met loggen en waarschuw de gebruiker als hij keys probeert te delen.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 6 kanalen**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] WEBSITE
      Tool gezien: Plausible (in IT/Toolstack.md, categorie
      Data/Analytics, owner: Iwan). Dataset onbekend.
      Bron: IT/Toolstack.md

  [2] SOCIAL MEDIA
      Kanalen actief: LinkedIn (zie Marketing/LinkedIn/ met
      7+ posts), Instagram (genoemd in Tone of Voice).
      Tools: geen native dashboard genoemd, mogelijk handmatig.
      Bron: Marketing/, Directie/Playbook/Tone of Voice.md

  [3] E-MAIL / NIEUWSBRIEF
      Tool gezien: Beehiiv (in IT/Toolstack.md). Uitgaven
      actief: zie Marketing/Nieuwsbrief/ met 3 verzonden
      nieuwsbrieven.
      Bron: IT/Toolstack.md, Marketing/Nieuwsbrief/

  ... (4 tot 6)

  GATEN waar ik nog vragen voor heb:
  - Kanaal 4 (Paid Ads): geen tool of campagne genoemd —
    draait paid wel of niet?
  - Kanaal 5 (Content): podcast/video/blog status onbekend
  - Per kanaal: ophaalfrequentie en bestemming nog niet bekend
  - Credentials-locatie nog niet gezien

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, kanaal voor kanaal

**Kernregel:** loop **één kanaal per beurt** af. Niet alle 6 tegelijk neerzetten. Per kanaal: alle bekende datasets langsgaan, ontbrekende metrics toevoegen, en pas dán door naar het volgende kanaal.

**Voor elk kanaal zeven kernvelden per dataset:**

1. **Tool of bron** — bv. "LinkedIn Company Page", "Plausible Analytics", "Beehiiv Pro"
2. **Dataset-naam** — bv. "LinkedIn organisch bereik weekdata", "Plausible bezoekersdata maand", "Beehiiv open-rates per uitgave"
3. **Kern-metrics** — 2 tot 5 metrics maximaal per dataset (bereik, engagement, conversie). Voorbeelden hieronder
4. **Ophaalfrequentie** — realtime / dagelijks / wekelijks / maandelijks / kwartaal
5. **Ophaalmethode** — handmatig export, native dashboard, API, automatisering (zapier, n8n, etc.)
6. **Bestemming** — waar landen de cijfers (dashboard, CSV-folder, Notion-tabel, BI-tool, database)
7. **Eigenaar** — wie haalt op (cross-link naar HR/Team.md of persoonsnaam)

Plus per dataset optioneel:
- **Review-ritme** — wie kijkt wanneer naar de cijfers (bv. "wekelijks in maandagsessie", "maandelijks in MGT-call")
- **Credentials-locatie** — verwijzing naar password-manager, NOOIT de waarden zelf

**Kern-metrics per kanaal (richtlijn):**

| Kanaal | Bereik | Engagement | Conversie |
|---|---|---|---|
| Website | Unieke bezoekers, pageviews | Avg session duration, bounce rate | Form submissions, lead-conversies |
| Social media | Impressions, follower-count | Likes, comments, shares, saves | Click-throughs naar website, leads |
| E-mail/Nieuwsbrief | Verzonden, ontvangen (delivery) | Open rate, click rate, reply rate | Conversies op CTA, abonnee-groei |
| Paid Ads | Impressions, reach | CTR, CPC, video-views | Leads, kosten per lead, ROAS |
| Content (blog/podcast/video) | Views, downloads, listens | Watch-time, scroll-depth, comments | Subscribes, leads via content |
| Overige (events, partnerships) | Aanwezigen, mentions | Interacties tijdens event | Leads, partnerships gesloten |

Houd het concreet: vraag per metric **waarom** die wordt gemeten als de keuze niet voor de hand ligt. Een metric zonder doel is een metric die niemand opvolgt.

#### Kanaal 1 — Website

Vraag: *"Welke website-cijfers wil je structureel weten? Begin bij wat je nu al inkijkt — denk aan bezoekersaantallen, conversies vanaf de website, populaire pagina's."*

Veelvoorkomende tools: Google Analytics 4, Plausible, Fathom, Matomo, Simple Analytics, PostHog, Cloudflare Web Analytics.

Belangrijke nuance: **als de gebruiker website-analytics dieper wil opzetten**, verwijs naar `website-analytics-setup` (C5). Deze skill (C1) blijft op kanaal-niveau: welke metrics willen we, met welke tool, hoe vaak. De diepere opzet (events, goals, funnels) hoort in C5.

#### Kanaal 2 — Social media

Vraag: *"Welke social-platforms gebruik je actief? Voor elk: welke cijfers wil je weten en wie haalt ze op?"*

Loop platforms langs voor zover relevant: LinkedIn, Instagram, Facebook, TikTok, YouTube, X (Twitter), Threads, Pinterest. Sla platforms over die de gebruiker niet actief gebruikt — niet alles invullen voor de show.

Per platform: handmatige export uit het native dashboard versus API of third-party tool (Buffer, Hootsuite, Later, Sprout Social, Metricool). De keuze bepaalt de ophaalfrequentie.

#### Kanaal 3 — E-mail en nieuwsbrief

Vraag: *"Verstuur je nieuwsbrieven of e-mail-campagnes? Met welke tool, en welke cijfers houd je bij?"*

Veelvoorkomende tools: Mailchimp, Beehiiv, ConvertKit, Mailerlite, Substack, ActiveCampaign, Klaviyo, Drip, Brevo (voorheen Sendinblue).

Specifieke datasets per tool kunnen verschillen:
- **Beehiiv**: open rate, click rate, abonnee-groei, churn
- **Mailchimp**: open rate, click rate, unsubscribes, list-growth, A/B-test-data
- **ConvertKit**: tags, sequences, broadcast-cijfers

Vraag ook: **transactionele e-mail** (welkomstmails, factuur-bevestigingen) — die hoort hier of bij Operations. Markeer als ambigue als de gebruiker het beide ziet.

#### Kanaal 4 — Paid Ads

Vraag: *"Draai je betaalde advertenties? Op welk platform, met welk budget en welke cijfers wil je weten?"*

Veelvoorkomende platforms: Google Ads, Meta Ads (Facebook/Instagram), LinkedIn Ads, TikTok Ads, YouTube Ads, Microsoft Ads, X Ads, Pinterest Ads, programmatic (DV360, Stack Adapt).

Per platform: native dashboard, API, of management-tool (AdEspresso, Madgicx, Smartly, eigen sheet).

Kernmetrics zijn anders dan organisch: kosten staan centraal. Verplichte set per actieve advertentie-account: impressions, CTR, CPC, conversies, kosten per conversie, ROAS.

**Als de gebruiker zegt: "ik draai niet" — sla het kanaal over.** Niet uitleggen waarom paid ads goed zou zijn. Markeer in de output: "Paid Ads — niet van toepassing (geen actieve campagnes per YYYY-MM-DD)".

#### Kanaal 5 — Content (blog, podcast, video)

Vraag: *"Maak je content op een eigen platform — blog, podcast of video? Welke cijfers wil je daarover?"*

Per content-type:
- **Blog**: views per artikel, gemiddelde leestijd, scroll-depth, conversies via CTA, SEO-rankings (gemeten via Ahrefs, SEMrush, of search console)
- **Podcast**: downloads per aflevering, listen-through-rate, abonnees, platform-spread (Spotify versus Apple versus eigen player)
- **Video (YouTube of eigen)**: views, watch-time, average view duration, subscribers, traffic-bronnen

Tools: Spotify for Podcasters, YouTube Studio, Google Search Console, Ahrefs, SEMrush, Plausible (voor blogs op eigen domein), Buzzsprout, Transistor.

#### Kanaal 6 — Overige (events, partnerships, PR)

Vraag: *"Gebruik je nog andere kanalen die data opleveren? Events waar je spreekt, partnerships, PR-vermeldingen, gastblogs?"*

Vaak ad hoc, maar wel meetbaar:
- **Events**: aanwezigen, leads opgehaald, post-event opt-ins
- **Partnerships**: leads via partners, gezamenlijke campagnes, affiliate-cijfers
- **PR**: mentions, share of voice, reach via earned media (Meltwater, Mention, manual)

Sla over als er echt niets relevants is. Niet forceren.

### Stap 6: Frequentie- en methode-keuze per dataset

Voor elke dataset uit stap 5: bepaal samen met de gebruiker hoe vaak en hoe.

**Beslissings-hulp frequentie:**

| Hoe snel verandert het kanaal? | Beslissings-impact | Aanbevolen frequentie |
|---|---|---|
| Realtime (paid ads tijdens campagne) | Hoog (budget-bijsturing) | Dagelijks of realtime |
| Snel (social, paid baseline) | Middel | Dagelijks of wekelijks |
| Middel (nieuwsbrief per uitgave) | Middel | Per uitgave + maandelijks |
| Langzaam (SEO, podcast-organisch) | Laag op korte termijn | Wekelijks of maandelijks |
| Strategisch (jaar-overzicht) | Strategisch | Maandelijks of kwartaal |

**Beslissings-hulp methode:**

| Methode | Wanneer kiezen | Risico |
|---|---|---|
| Handmatig export uit native dashboard | Lage frequentie, weinig datapunten | Vergeten, ad hoc |
| Native dashboard inkijken | Realtime intuïtie, geen archief nodig | Geen historie |
| API + script of automatisering | Dagelijks of vaker, structurele bron | Onderhoud, credentials-rotatie |
| Third-party tool (Hootsuite, etc.) | Meerdere platforms tegelijk | Extra licentiekosten |
| Sheets-koppeling (Looker Studio, Supermetrics) | Gestandaardiseerd dashboard | Licentie + connector-stabiliteit |

**Belangrijke regel:** als de keuze "API of automatisering" is, **wijs** in dit document naar de tool-naam en de **locatie van de credentials** (password-manager-pad). Schrijf nooit de keys zelf in dit bestand.

### Stap 7: Bestemming bepalen

Per dataset: waar landen de cijfers? Een bestemming is **één** centrale plek waar je de cijfers terugleest of gebruikt. Mogelijke bestemmingen:

- **Dashboard** — bv. Looker Studio, Power BI, eigen Notion-dashboard, eigen HTML (Mission Control-stijl)
- **CSV-folder** — gestructureerde maandexports in een vaste map (bv. `Marketing/Data/YYYY-MM/`)
- **Database** — Postgres, BigQuery, Airtable, Notion-database
- **Tool zelf** — soms is de native tool de bestemming als je er regelmatig inkijkt en geen archief nodig hebt
- **Maandrapportage** — handmatige verzameling in een vast rapport (bv. `Marketing/Rapportage/YYYY-MM.md`)

Vraag: *"Waar komt deze dataset uiteindelijk terecht? Wil je hem in een dashboard, een rapportage of een CSV-archief?"*

Probeer **één bestemming per dataset** te kiezen. Twee bestemmings is meestal duplicatie en zorgt voor versies-conflict.

### Stap 8: Owner-koppeling met HR/Team.md plus review-ritme

**Doel:** elke dataset heeft een eigenaar én een afgesproken moment waarop er naar gekeken wordt. Cijfers zonder eigenaar of zonder kijk-moment zijn data die niemand gebruikt.

Twee paden:

- **Als `{scope}/HR/Team.md` bestaat**:
  - Lees Team.md uit
  - Voor elke dataset: koppel aan de rol-eigenaar die het kanaal beheert (bv. nieuwsbrief → Marketing-rol-eigenaar)
  - Voor solopreneur-variant: vaak één persoon — markeer dan ook de rol-pet die op dat moment op staat
  - Toon per dataset de voorgestelde owner en vraag bevestiging
- **Als `{scope}/HR/Team.md` niet bestaat**:
  - Vraag de skill expliciet aan de gebruiker: *"HR/Team.md bestaat nog niet, dus ik kan owners niet automatisch koppelen. Wie haalt deze cijfers op en wie kijkt erop?"*
  - Voeg in de output een opmerking toe: *"Owners zijn nog niet gevalideerd tegen HR/Team.md. Aanrader: bouw eerst Team.md met de skill `team-en-rollen` (S11)."*

**Review-ritme** is **niet** hetzelfde als ophaalfrequentie. Voorbeeld: LinkedIn-bereik haal je dagelijks op (via API in een dashboard) maar je kijkt er maandelijks naar in de marketing-review. Vraag voor elke dataset: *"Wanneer kijk je echt naar deze cijfers — wekelijks, maandelijks, alleen als er iets opvalt?"*

### Stap 9: Gaps en credentials-rij

**Gap-sectie:**

Loop alle 6 kanalen langs. Per kanaal: zijn er activiteiten zonder data-stroom?

Voorbeeld:
- LinkedIn-pagina actief (wekelijkse post) → geen ophaal-routine → **gap**
- Nieuwsbrief verstuurd → wel cijfers in Beehiiv-dashboard → geen export-archief → **gap op archivering**
- Paid Ads niet actief → geen gap, expliciet gemarkeerd als "niet van toepassing"

Format:

```
## Gaps

| Kanaal | Activiteit | Wat ontbreekt | Voorgestelde actie |
|---|---|---|---|
| Social: LinkedIn | Wekelijkse posts | Geen ophaal-routine | Beehiiv-export instellen per maand |
| ... | ... | ... | ... |
```

**Credentials-rij:**

Aparte sectie onder de hoofdtabel:

```
## Credentials-locatie

| Tool | Credentials-locatie | Wie heeft toegang |
|---|---|---|
| LinkedIn Company Page | 1Password / Marketing / LinkedIn | Iwan |
| Beehiiv | 1Password / Marketing / Beehiiv | Iwan + Sander |
| Google Ads | 1Password / Marketing / Google Ads | Iwan |
| ... | ... | ... |
```

Schrijf **nooit** de credentials-waarden in dit bestand. Alleen pointers.

### Stap 10: Schrijven en opslaan

Gebruik het template uit `references/template-marketing-data.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus frequentie plus bestemming plus owner plus gaps plus credentials-rij.

Sla op als:
```
{scope}/Marketing/Data-Setup.md
```

Maak de `Marketing/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: marketing-data-setup
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: C1
aantal-kanalen-actief: <getal>
aantal-datasets: <getal>
aantal-gaps: <getal>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "alles meten", "complete data-stack", "next-level analytics". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Beehiiv Pro, open rate per uitgave, maandelijks geëxporteerd naar `Marketing/Data/YYYY-MM/beehiiv.csv` door Iwan" is sterker dan "we meten e-mail".
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Tabelvorm waar mogelijk** — een data-overzicht is feitelijk een mapping, geen essay.
- **Frequentie consistent benoemen** — kies één vocab: "realtime / dagelijks / wekelijks / maandelijks / kwartaal" en gebruik dat overal.
- **Credentials in pointers, nooit waarden.**
- **Status-emoji's mogen** — actief 🟢, op te starten 🟡, gestopt ⚪. Maakt scannen snel.

### Stap 11: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Marketing/Data-Setup.md` — v1.0, N datasets in M kanalen, K gaps"*.
2. **Daily** — als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md` in een Iwan-OS-stijl vault, of een Notion-daily-pagina), log dan een eenregelige melding plus link naar het nieuwe bestand. Skip als die conventie niet bestaat.
3. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een C1-doel of marketing-doel heeft: status bijwerken (✅), regel toevoegen aan het voortgangslog.
4. **Scale-audit-suggestie** — als `{scope}/Directie/Research/` een audit-rapport bevat waar C1 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link met S12** — als IT/Toolstack.md ouder is dan dit document of ontbreekt, stel voor om die als eerste te dichten met `toolstack-inventarisatie`. Marketing-tools moeten in beide bestanden consistent staan.
- **Cross-link met C5** — als het Website-kanaal alleen op kanaal-niveau is ingericht, stel voor `website-analytics-setup` (C5) op te pakken voor diepere event- en goal-tracking.
- **Cross-link met M2 en M3** — Social Presence Setup (M2) en Content Roadmap (M3) consumeren de kanaal-keuzes uit dit document. Stel voor die als volgende marketing-stap te doen.
- **A1 als logische volgende stap** — Rapportage Builder (A1) leunt direct op deze data-stromen. Zodra het document staat, kan A1 een eerste rapport bouwen.
- **L2 als automatiserings-richting** — Auto-Rapportage Setup (L2) bouwt vrijwel direct op een goede C1-opzet. Stel voor om daar over 1-2 maanden naar door te groeien.
- **E1 als dashboard-richting** — Dashboard Bouwer (E1) is de visualisatie-laag bovenop deze data-stromen.
- **Review-ritme document zelf** — Data-Setup veroudert sneller dan andere SCALE-documenten omdat tools wisselen en kanalen openen of sluiten. Stel voor: kwartaal-update, of triggeren bij elke nieuwe marketing-tool of kanaal-keuze.

## Belangrijke regels

- **Eén kanaal per beurt** in het interview. Niet alle 6 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **IT/Toolstack.md is cross-check.** Marketing-tools moeten consistent zijn met de toolstack. Bestaat Toolstack.md niet, vraag het actief uit en raad aan eerst S12 te dichten.
- **HR/Team.md is owner-check.** Bestaat Team.md niet, raad aan S11 (`team-en-rollen`) eerst te dichten.
- **Schrijf nooit zomaar over een bestaande `Data-Setup.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Gaps zichtbaar maken is een feature.** Kanalen zonder data-stroom worden expliciet gemarkeerd. Dat is een kernopbrengst van deze skill.
- **Credentials nooit in het bestand.** Alleen verwijzingen naar de locatie (password-manager-pad). Stop en waarschuw als de gebruiker keys probeert te delen.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een tool-naam, een metric, een frequentie) als het te abstract blijft.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden — alleen relatief binnen `{scope}`.
- **Niet alle 6 kanalen forceren.** Een bedrijf zonder Paid Ads of zonder podcast hoeft die kanalen niet in te vullen. Markeer als "niet van toepassing per YYYY-MM-DD" en ga door.
- **Frequentie en review-ritme zijn twee aparte velden.** Verwar ze niet. Ophalen kan dagelijks, kijken kan maandelijks.
- **Geen em-dashes en geen marketing-superlatieven.** Recht voor zijn raap.
- **Mik op rijke diepte, niet op het audit-minimum.** Twee metrics is de drempel, maar het document moet aan A1, A3, L2 en E1 alle context geven die nodig is om er iets bovenop te bouwen. Halve antwoorden voldoen niet.

## Voorbeeld-output

Zie [`references/template-marketing-data.md`](references/template-marketing-data.md) voor de exacte structuur die de skill oplevert: kanaal-tabel met datasets, frequentie en bestemming, gap-sectie, credentials-rij, review-ritme en cross-link naar S12 Toolstack, C5 Website Analytics, M2 Social Presence, M3 Content Roadmap en A1 Rapportage Builder.
