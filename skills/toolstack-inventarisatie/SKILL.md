---
name: toolstack-inventarisatie
title: "Toolstack Inventarisatie"
description: "Helpt een ondernemer in 25 tot 45 minuten een volledige toolstack-inventaris op te bouwen in één canoniek document: `IT/Toolstack.md`. Dit is SCALE-stap S12 (Structure) en de fundamentele voorwaarde voor latere SCALE-stappen. Zonder dit overzicht blijven er shadow-IT-tools onontdekt, betaal je dubbel voor overlappende licenties en mis je elke kans om automatisering te bouwen op de tools die je al hebt. De skill werkt via een gestructureerd interview in 9 categorieën (Sales, Marketing, Operations, Finance, Communicatie, Productie en Dienstverlening, Data en Analytics, IT en Security, AI-tools), één categorie per beurt zodat het niet overweldigt. Vóór het interview begint, scant de skill diep wat al beschikbaar is: in de vault (00-Overzicht voor genoemde tools, HR/Team.md voor owners, IT/AI-Tools voor eigen AI-tools, eventuele bestaande Toolstack-versie) én in externe documenten die de ondernemer kan aanleveren (abonnementen-export, boekhoud-categorie 'software', IT-uitvoerlijst, browser-bookmarks, app-overzicht op laptop of telefoon). Per tool worden vastgelegd: naam, leverancier, URL, plan, maand- en jaarkosten, owner (cross-link naar HR/Team.md), waarvoor gebruikt, alternatieven, status (actief, proef, uitfaserend, geannuleerd) en vervangbaarheid via AI of maatwerk (SCALE-stap E). Integraties tussen tools worden expliciet vastgelegd zodat data-stromen zichtbaar worden. Een kosten-tabel toont maandelijks plus jaarlijks per categorie en grand-total. Een aparte shadow-IT-rij vangt tools waarvan niemand de eigenaar weet. Werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam of vault-eigenaar, alleen over de SCALE-Structure-conventie (`IT/`, `HR/`, `Directie/`). Activeer altijd wanneer iemand zegt: 'maak een toolstack', 'welke tools gebruik ik', 'software-overzicht', 'inventariseer mijn tools', 'breng mijn SaaS-stack in kaart', 'toolstack-overzicht', 'wat kost mijn software', 'overlappende abonnementen', 'shadow-IT in kaart', 'S12 dichten in SCALE-audit', 'gap S12', 'IT/Toolstack.md aanmaken', 'tool-inventaris', 'integratie-overzicht tools'. Triggert ook bij iedere expliciete verwijzing naar S12, Toolstack.md, of vragen rond licentiekosten, SaaS-uitgaven en welke tools welke afdeling gebruikt."
category: structure
tags: [toolstack, tools, saas, software, structure, scale-framework, s12, inventaris]
estimatedTime: "25 tot 45 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
---

# Toolstack Inventarisatie

## Doel

Helpt een ondernemer om in 25 tot 45 minuten een volledige **toolstack-inventaris** op te bouwen in één canoniek document: `{scope}/IT/Toolstack.md`. Dit is SCALE-stap S12 (Structure) en het sluitstuk van het fundament dat al het latere AI-werk draagt.

*Waarom dit fundamenteel is.* Een toolstack-overzicht is geen administratie. Het is de **enabler** voor minstens vier latere SCALE-stappen:

- **C1, C3, C5 (Collect)** — Marketing-data, Financiele data en Website-analytics weten alleen wat ze moeten ophalen als de tools bekend zijn. Een Collect-skill die niet weet of je Mailchimp of Beehiiv gebruikt, kan niets ophalen.
- **M4 (Marketing)** — Nieuwsbrief-setup leunt op de keuze van een e-mail-tool. Geen toolstack betekent elke keer opnieuw uitvragen.
- **L1 tot L4 (Leverage)** — Elke automatisering moet ergens beginnen en ergens eindigen. Zonder kaart van bestaande tools wordt elke automatisering een eilandje.
- **E1 tot E6 (Engineer)** — Maatwerk-keuzes (zelf bouwen versus tool kopen) hebben een toolstack als referentiekader. Anders bouw je iets wat je tool al kon.

*Wat je verliest zonder dit document.* Drie concrete pijnpunten die deze skill voorkomt:

1. **Shadow-IT.** Tools waar niemand zeker van weet wie ze in beheer heeft, met security-risico's en sluimerende facturen.
2. **Dubbele licenties.** Twee tools die hetzelfde doen, beide actief, beide betaald.
3. **Vergeten kanaalwissels.** Tools die uitfaseren maar nog steeds geld kosten, of nieuwe tools die naast oude blijven draaien.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit S12 vraagt minimaal 5 tools met doel plus afdeling. Die drempel haal je in 10 minuten met halve antwoorden. Deze skill mikt op een **rijk** document: 9 categorieen met kostenoverzicht, owner-koppeling, integratie-mapping en vervangbaarheidsanalyse zodat het overzicht direct bruikbaar is in Leverage- en Engineer-fase.

Resultaat: SCALE-audit S12 springt van ❌ of ⚠️ naar ✅ en het document is direct herbruikbaar voor C1, C3, C5, M4, L1 tot L4 en E1 tot E6.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  TOOLSTACK INVENTARISATIE — SCALE-stap S12 (Structure)    │
│  ~25-45 minuten · 9 categorieen                           │
└──────────────────────────────────────────────────────────┘

  In 25 tot 45 minuten brengen we elke tool in je bedrijf in
  kaart: wat hij doet, wat hij kost, wie hem beheert en of AI
  hem kan vervangen. Dit document is de fundering voor alle
  latere SCALE-stappen (Collect, Marketing, Leverage, Engineer).

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 9 categorieen interview (één per beurt, niet alles   │
  │    tegelijk) — gemiddeld 3-5 minuten per categorie      │
  │  • Per categorie: tools langsgaan, per tool 7 velden    │
  │    (naam, plan, kosten, owner, doel, alternatief,       │
  │    status)                                              │
  │  • Vooraf scan ik bestaande bronnen (00-Overzicht,      │
  │    HR/Team.md voor owners, IT/AI-Tools voor eigen       │
  │    bouwsels) zodat ik veel al weet                      │
  │  • Daarna lever ik IT/Toolstack.md op met kosten-tabel, │
  │    integratie-overzicht en shadow-IT-flag               │
  └────────────────────────────────────────────────────────┘

  De 9 categorieen:
  [1] Sales              [2] Marketing       [3] Operations
  [4] Finance            [5] Communicatie    [6] Productie/
                                                 Dienstverlening
  [7] Data & Analytics   [8] IT & Security   [9] AI-tools

  Heb je externe input klaar? Bijvoorbeeld:
  • Een abonnementen-export (banking, creditcard, App Store)
  • Boekhouding-categorie 'software' (laatste 12 maanden)
  • IT-uitvoerlijst van een SaaS-Management-tool
  • Browser-bookmarks of een app-overzicht op je laptop
  • LastPass/1Password-export (welke logins gebruik je echt)

  Dan kun je dat nu noemen — hoe meer bronnen, hoe minder ik
  hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  TOOLSTACK INVENTARISATIE — S12 · 25-45 min · 9 categ.    │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  00-Overzicht,
   │    (auto-discover)   │  HR/Team.md,
   │                      │  IT/AI-Tools,
   │                      │  eerdere Toolstack
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Abonnementen-export,
   │                      │  boekhoud-software-
   │                      │  regel, IT-rapport,
   │                      │  app-overzicht
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per categorie,
   │                      │  ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, per    │  9 categorieen:
   │    categorie         │  [1] Sales
   │                      │  [2] Marketing
   │                      │  [3] Operations
   │                      │  [4] Finance
   │                      │  [5] Communicatie
   │                      │  [6] Productie
   │                      │  [7] Data/Analytics
   │                      │  [8] IT/Security
   │                      │  [9] AI-tools
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Owner-koppeling   │  Cross-link met
   │                      │  HR/Team.md of
   │                      │  vraag owner per
   │                      │  categorie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Kosten-overzicht  │  Maand + jaar per
   │                      │  categorie + grand-
   │                      │  total
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Integratie-       │  Welke tools koppelen
   │    mapping           │  aan elkaar?
   │                      │  + shadow-IT-flag
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Schrijven +       │  IT/Toolstack.md
   │    opslaan           │
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 10. Logging +        │  Changelog +
   │     vervolg          │  hint richting
   │     suggesties       │  C1/C3/C5, L, E
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Maak een toolstack" / "toolstack-inventaris" / "tool-inventaris"
- "Welke tools gebruik ik" / "software-overzicht" / "SaaS-overzicht"
- "Inventariseer mijn tools" / "breng mijn SaaS-stack in kaart"
- "Wat kost mijn software" / "overzicht van licenties"
- "Overlappende abonnementen" / "dubbele software"
- "Shadow-IT in kaart" / "welke tools heb ik dubbel"
- "S12 dichten in SCALE-audit" / "gap S12"
- "IT/Toolstack.md aanmaken" / "Toolstack.md schrijven"
- "Welke tool draait waar voor" / "integratie-overzicht tools"

Triggert NIET wanneer:
- De gebruiker een **specifieke tool wil onderzoeken** (gebruik dan eerder een research-skill, geen inventarisatie)
- De gebruiker een **AI-tool wil opzetten of beschrijven** (gebruik dan de individuele AI-Tool-template — toolstack catalogiseert alleen, het zet niets op)
- De gebruiker een **CRM wil bouwen** (gebruik `crm-setup` — C2)
- De gebruiker **website-analytics wil instellen** (gebruik `website-analytics-setup` — C5)
- De gebruiker een **leverancierslijst** wil (dat is een Inkoop-document, geen IT-toolstack)
- De gebruiker een **proces** wil documenteren (gebruik `proces-interviewer` — S10)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de toolstack-inventaris gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`IT/`, `HR/`, `Directie/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/IT/`, `Bedrijven/Naam/HR/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `IT/Toolstack.md`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze toolstack voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `IT/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/IT/Toolstack.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen op basis van wat er staat) of **nieuwe iteratie** (oude archiveren als `Toolstack - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard SCALE-Structure-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `IT/Toolstack.md` (huidige versie als die bestaat) | Bestaande tool-lijst, kosten-tabel, owner-koppelingen |
| `IT/AI-Tools/` (mappen of `.md`-cards) | Eigen AI-tools die in de stack horen (categorie 9) |
| `IT/AI-Tools/README.md` | Centraal AI-tool-overzicht als dat bestaat |
| `HR/Team.md` | **Verplichte check** — owners per rol, te gebruiken als startpunt voor tool-owners |
| `Directie/00 - Overzicht.md` | Genoemde tools in propositie of methodiek |
| `Directie/Playbook/Brand Guidelines.md` | Design-tool, brand-asset-tool |
| `Directie/Research/*.md` | Eerder onderzoek naar SaaS-keuzes of vendor-vergelijkingen |
| `Marketing/` (subfolders) | Tools die in marketing-bestanden zijn genoemd (e-mail-tool, social-tool, designtool) |
| `Sales/` (subfolders) | CRM en lead-tools die in salesflow zijn genoemd |
| `Financien/` (subfolders) | Boekhoud-tool, factuur-tool, betaaltool |
| `Operations/Processen/*.md` | Procestools (project-management, planning, time-tracking) |

Maak per gevonden tool een korte interne aantekening: in welke categorie hij valt en welke kerngegevens al bekend zijn (naam, doel, owner, kosten).

**Belangrijk:** als een bron niet bestaat, skip stilletjes — niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Bij een toolstack zijn er vaak **structurele kostenbronnen** buiten de vault die enorm helpen.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen waaruit ik kan putten? Bijvoorbeeld:
> - Een abonnementen-export uit je banking-app (welke automatische incasso's lopen)
> - Boekhouding gefilterd op categorie 'software' of 'licenties' (laatste 12 maanden)
> - Een SaaS-management-tool-export (Cledara, Vendr, etc.)
> - Browser-bookmarks of een app-overzicht op je laptop of telefoon
> - LastPass / 1Password / Bitwarden-export met logins
> - IT-uitvoerlijst of vendor-overzicht van een externe IT-partij
>
> Hoe meer bronnen, hoe minder ik hoef uit te vragen — en hoe minder kans op vergeten tools."

Per aangeleverde bron:
- **Banking-export of boekhouding-regel**: scan op SaaS-namen, herken terugkerende bedragen, koppel aan categorie en plan-inschatting
- **SaaS-management-tool-export**: meestal compleet, direct overnemen plus validatie aan gebruiker
- **Browser-bookmarks**: dashboards-mapje is goud, scan op tool-namen
- **LastPass-export**: lijst van logins is brede dekking, zeker voor shadow-IT
- **App-overzicht**: snel filteren op zakelijke apps, mobile vs desktop

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 9 categorieen**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] SALES
      Pipedrive (CRM, vermeld in Sales/), Lemlist (cold outreach)
      Bron: Sales/Flow.md, banking-export

  [2] MARKETING
      Beehiiv (nieuwsbrief), LinkedIn Business, Canva Pro
      Bron: Marketing/Nieuwsbrief/, boekhouding

  [3] OPERATIONS
      Notion (project-management), Slack (interne comms)
      Bron: 00-Overzicht.md, abonnementen-export

  ... (4 tot 9)

  GATEN waar ik nog vragen voor heb:
  - Categorie 4 (Finance): boekhoud-tool nog niet benoemd
  - Categorie 8 (IT/Security): geen wachtwoord-manager of backup-tool gezien
  - Owners onbekend voor 3 tools (zie shadow-IT-rij straks)

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, categorie voor categorie

**Kernregel:** loop **één categorie per beurt** af. Niet alle 9 tegelijk neerzetten. Per categorie: alle bekende tools langsgaan, eventueel ontbrekende tools toevoegen, en pas dán door naar de volgende categorie.

**Voor elke tool zeven kernvelden:**

1. **Naam en leverancier** — bv. "Beehiiv" (leverancier: Beehiiv Inc)
2. **Plan / abonnement** — bv. "Scale Plan" of "Starter, 5 zetels"
3. **Kosten** — maandbedrag en jaarbedrag (jaarbetaling kan korting hebben)
4. **Owner** — wie beheert deze tool (cross-link naar HR/Team.md rol of persoon)
5. **Waarvoor gebruikt** — concrete use-case in 1 zin
6. **Status** — actief / proef / uitfaserend / geannuleerd
7. **Alternatief overwogen of beschikbaar** — bv. "Mailchimp, Substack" of "geen"

Plus per tool optioneel:
- **URL** — directe link naar de tool
- **Vervangbaarheid** — kan deze tool door AI of maatwerk worden vervangen? (SCALE-stap E indicator: ja / nee / deels)

#### Categorie 1 — Sales

CRM, lead-tools, prospect-research, cold-outreach, offerte-tools, e-handtekening.

Vraag: *"Welke tools gebruik je voor het sales-proces, van eerste lead tot ondertekend contract?"*

Veelvoorkomend: Pipedrive, HubSpot, Notion CRM, Apollo, Lemlist, Instantly, PandaDoc, DocuSign, Calendly.

#### Categorie 2 — Marketing

Social-media planning, e-mail-marketing, designtool, website-CMS, content-AI, copywriting-tool.

Vraag: *"Welke tools gebruik je voor zichtbaarheid en content?"*

Veelvoorkomend: Buffer, Hootsuite, Mailchimp, Beehiiv, Substack, Canva, Figma, Webflow, WordPress, Squarespace.

#### Categorie 3 — Operations

Project-management, planning, time-tracking, taakbeheer, documenten-deling, kennis-base.

Vraag: *"Welke tools gebruik je om je werk te plannen en bij te houden?"*

Veelvoorkomend: Notion, Asana, ClickUp, Trello, Monday, Toggl, Harvest, Google Workspace, Microsoft 365.

#### Categorie 4 — Finance

Boekhouding, facturatie, betaalverwerking, expense-management, urenregistratie-naar-factuur.

Vraag: *"Welke tools gebruik je voor de financiele kant?"*

Veelvoorkomend: Moneybird, e-Boekhouden, Exact, Stripe, Mollie, PayPal, Expensify, Twikey, Hubdoc.

#### Categorie 5 — Communicatie

E-mail-platform, intern chat, telefonie, video-calls, klant-chat.

Vraag: *"Welke tools gebruik je om met klanten, leveranciers en eventueel teamleden te communiceren?"*

Veelvoorkomend: Gmail / Google Workspace, Outlook / Microsoft 365, Slack, Microsoft Teams, Zoom, Google Meet, WhatsApp Business, Intercom, Crisp.

#### Categorie 6 — Productie / Dienstverlening

De **core-tools** voor wat het bedrijf eigenlijk doet. Voor een administratiekantoor: boekhoud-software (overlapt met Finance maar staat hier als productie-instrument). Voor een AI-dienstverlener: Claude, Cursor, OpenAI API, prompt-libraries. Voor een fysiek product: design-tools, productie-software, leverancier-portals.

Vraag: *"Welke tools zijn essentieel voor wat je daadwerkelijk levert aan klanten? Dit is vaak de kerncategorie."*

Belangrijk: deze categorie verschilt sterk per bedrijf — laat de gebruiker zelf benoemen wat onder "productie" valt.

#### Categorie 7 — Data en Analytics

Website-analytics, dashboards, BI-tools, attribution, klanttevredenheid-meting, NPS.

Vraag: *"Welke tools gebruik je om te zien hoe je bedrijf draait? Cijfers, dashboards, klantfeedback."*

Veelvoorkomend: Google Analytics, Plausible, Fathom, Looker Studio, PostHog, Hotjar, Typeform, Tally, SurveyMonkey.

#### Categorie 8 — IT en Security

Wachtwoord-manager, backup, hosting / cloud-storage, VPN, antivirus, MFA-tool, identity-management.

Vraag: *"Welke tools gebruik je voor de IT-basis: wachtwoorden, backups, hosting?"*

Veelvoorkomend: 1Password, LastPass, Bitwarden, Backblaze, Google Drive, Dropbox, iCloud, Cloudflare, GitHub.

#### Categorie 9 — AI-tools

Apart als hoofdcategorie omdat het voor Upscailed (en voor klanten die met Upscailed werken) een focuspunt is.

Vraag: *"Welke AI-tools gebruik je structureel? Inclusief je eigen gebouwde AI-tools."*

Veelvoorkomend: Claude (Anthropic), ChatGPT, Cursor, GitHub Copilot, Perplexity, Midjourney, ElevenLabs, Whisper, Anthropic API, OpenAI API.

**Cross-link IT/AI-Tools:** als `{scope}/IT/AI-Tools/` bestaat met eigen tool-cards, neem die hier op als afzonderlijke rijen. Markeer ze als "eigen" zodat onderscheid blijft tussen ingekocht versus zelf-gebouwd.

### Stap 6: Owner-koppeling met HR/Team.md (verplicht)

**Doel:** elke tool heeft een eigenaar. Tools zonder eigenaar zijn shadow-IT en moeten als zodanig gemarkeerd worden.

Twee paden:

- **Als `{scope}/HR/Team.md` bestaat**:
  - Lees de Team.md uit
  - Voor elke tool: koppel aan de rol-eigenaar uit Team.md die dezelfde categorie raakt (bv. CRM → Sales-rol-eigenaar, Boekhouding → Finance-rol-eigenaar)
  - Voor solopreneur-variant: meestal valt alles bij dezelfde persoon, maar dat is OK — markeer dan ook wel de rol-pet die op dat moment op
  - Toon per tool de voorgestelde owner en vraag bevestiging: *"Klopt deze koppeling, of hoort deze tool bij iemand anders?"*
- **Als `{scope}/HR/Team.md` niet bestaat**:
  - Vraag de skill expliciet aan de gebruiker: *"HR/Team.md bestaat nog niet, dus ik kan owners niet automatisch koppelen. Wie is de eigenaar per categorie? Voor solopreneurs is dat vaak één persoon (jij), maar voor teams wil ik dit per categorie weten."*
  - Voeg in de output een opmerking toe: *"Owners zijn nog niet gevalideerd tegen HR/Team.md. Aanrader: bouw eerst Team.md met de skill `team-en-rollen` (S11)."*

**Speciaal geval: tools zonder duidelijke eigenaar.** Als de gebruiker bij een tool zegt "geen idee wie dat in beheer heeft" of "die loopt al jaren, niemand kijkt ernaar", noteer deze tool **expliciet** in de shadow-IT-rij. Dit is een feature, geen bug — shadow-IT zichtbaar maken is een kernopbrengst van deze skill.

### Stap 7: Kosten-overzicht

Bouw een **tweetraps-kostenoverzicht**:

**Tabel A: per tool**

Maand- en jaarkosten per tool, gesorteerd per categorie.

**Tabel B: per categorie + grand-total**

| Categorie | Maand totaal | Jaar totaal | # tools |
|---|---|---|---|
| Sales | EUR X | EUR Y | N |
| Marketing | EUR X | EUR Y | N |
| ... | ... | ... | ... |
| **Grand-total** | **EUR X** | **EUR Y** | **N** |

Belangrijke nuances bij kosten:
- **Jaarbedrag wint van maandbedrag** als ze afwijken (jaar-prepaid is vaak goedkoper dan maand × 12)
- **Variabele kosten** (per gebruiker, per API-call) → noteer als "vanaf EUR X" of "EUR X gemiddeld laatste 3 mnd"
- **Gratis tools** → noteer "EUR 0" maar wel meenemen — kostenpost kan ontstaan zodra ze schalen
- **Btw**: standaardiseer op excl. btw of incl. btw — vraag de gebruiker welk niveau hij hanteert en houd dat consistent

Sluit af met een korte analyse:
- Top-3 duurste tools (vaak verrassend)
- Categorie met grootste uitgave
- Tools die boven 5% van de totale stack-kosten zitten (kandidaten voor heroverweging)

### Stap 8: Integratie-mapping en shadow-IT-flag

**Integratie-overzicht:**

Voor elke tool: noteer met welke andere tools hij koppelt. Dit maakt data-stromen zichtbaar.

Format als korte tabel:

| Tool A | Koppelt aan | Doel van de koppeling |
|---|---|---|
| Pipedrive | Mailchimp | Lead-sync, nieuwsbrief-segmentatie |
| Moneybird | Stripe | Automatische betaal-koppeling |
| Notion | Slack | Notificaties bij nieuwe taken |

Vraag bij elke koppeling: *"Werkt deze koppeling vandaag, of zou hij moeten werken maar is hij stuk?"* Markeer stukke koppelingen apart — die zijn vaak het laaghangend fruit voor Leverage-stap (L1, L2, L3).

**Shadow-IT-rij:**

Een aparte sectie onder de hoofdtabel:

```
## Shadow-IT (tools zonder duidelijke eigenaar)

| Tool | Geschatte kosten | Laatst gebruikt | Actie |
|---|---|---|---|
| ... | ... | ... | toewijzen / opzeggen |
```

Vraag per shadow-IT-tool of de gebruiker direct een actie wil koppelen (toewijzen aan persoon, of opzeggen).

### Stap 9: Schrijven en opslaan

Gebruik het template uit `references/template-toolstack.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus owner-koppeling plus kosten plus integraties.

Sla op als:
```
{scope}/IT/Toolstack.md
```

Maak de `IT/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: toolstack
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S12
aantal-tools: <getal>
maand-totaal: <bedrag>
jaar-totaal: <bedrag>
valuta: EUR
prijs-niveau: excl-btw | incl-btw
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "essentiele toolstack", "perfect afgestemde stack", "next-level tooling". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Mailchimp Standard plan, EUR 31/mnd, 2.500 contacten" is sterker dan "een e-mail-tool".
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Tabelvorm waar mogelijk** — een toolstack is feitelijk een lijst, geen essay.
- **Bedragen consistent** — kies excl. of incl. btw en houd dat overal aan.
- **Status-emoji's mogen** — actief 🟢, proef 🟡, uitfaserend 🟠, geannuleerd ⚪. Maakt scannen snel.

### Stap 10: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `IT/Toolstack.md` — v1.0, N tools in 9 categorieen, maand-totaal EUR X, jaar-totaal EUR Y"*.
2. **Daily** — als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md` in een Iwan-OS-stijl vault, of een Notion-daily-pagina), log dan een eenregelige melding plus link naar het nieuwe bestand. Skip als die conventie niet bestaat.
3. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een S12-doel of IT-doel heeft: status bijwerken (✅), regel toevoegen aan het voortgangslog.
4. **Scale-audit-suggestie** — als `{scope}/Directie/Research/` een audit-rapport bevat waar S12 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link met S11** — als HR/Team.md ouder is dan dit document, stel voor om Team.md opnieuw langs te lopen zodat tool-owners en rol-owners consistent zijn.
- **Doorgroei naar Collect-stappen** — C1 (Marketing data), C3 (Financiele data), C5 (Website-analytics) bouwen vrijwel direct op de tools die nu zichtbaar zijn. Stel voor om die als volgende stap op te pakken.
- **Leverage-kandidaten** — pak de top-3 tools met hoge "vervangbaarheid" en lage strategische waarde als eerste targets voor de L-fase.
- **Engineer-kandidaten** — tools met "vervangbaarheid: ja, deels met maatwerk" zijn input voor de E-skills (E1 Dashboard, E2 App-Scoping, etc.).
- **Review-ritme** — een Toolstack veroudert sneller dan andere SCALE-documenten omdat abonnementen wisselen. Stel voor: kwartaal-update, of triggeren bij elke nieuwe SaaS-aanschaf.

## Belangrijke regels

- **Eén categorie per beurt** in het interview. Niet alle 9 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **HR/Team.md is verplichte cross-check.** Owner-koppeling is geen optioneel veld. Bestaat Team.md niet, vraag het actief uit en raad aan eerst S11 te dichten.
- **Schrijf nooit zomaar over een bestaande `Toolstack.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Shadow-IT zichtbaar maken is een feature.** Tools zonder eigenaar gaan niet weg uit het document, ze worden expliciet gemarkeerd. Dat is de hele winst van deze skill.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een bedrag, een plan-naam, een use-case) als het te abstract blijft.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden — alleen relatief binnen `{scope}`.
- **Vraag actief naar externe bronnen.** Een banking-export of boekhoud-software-regel bespaart 80% van het uitvraag-werk.
- **Geen marketing-trucjes.** Geen "imagine if...", geen rhetorische vragen aan het begin van een sectie. Recht voor zijn raap.
- **Mik op rijke diepte, niet op het audit-minimum.** Het document moet aan elke latere SCALE-stap alle context geven die nodig is om daarna mee te denken. Halve antwoorden voldoen niet.
- **Eigen AI-tools krijgen een aparte markering.** In categorie 9 staat een kolom of suffix "(eigen)" zodat het verschil zichtbaar is tussen ingekochte SaaS en wat het bedrijf zelf bouwt.

## Voorbeeld-output

Zie [`references/template-toolstack.md`](references/template-toolstack.md) voor de exacte structuur die de skill oplevert: kostentabel per categorie, grand-total, integratie-mapping, shadow-IT-sectie, owner-koppeling, vervangbaarheidsanalyse en cross-link naar HR/Team.md en aangrenzende SCALE-checks.
