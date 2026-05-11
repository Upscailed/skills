---
name: rapportage-builder
title: "Rapportage Builder"
description: "Helpt een ondernemer in 30 tot 50 minuten een set rapportage-templates op te bouwen in één canoniek document: `Analyze/Rapportage-Templates.md`. Dit is SCALE-stap A1 (Analyze) en het scharnier tussen de Collect-data (C1 t/m C7) en het werkelijk sturen op cijfers: zonder vaste rapportage-vorm verdwijnt data in losse dashboards en wordt er reactief gestuurd. De skill werkt via een gestructureerd interview in 6 stakeholder-blokken (Directie/CEO, Sales, Marketing, Operations, Finance, Klant/Board), één blok per beurt zodat de gebruiker niet wordt overweldigd. Per rapportage worden tien velden vastgelegd: naam, doelgroep, doel/beslissingen, frequentie (dag/week/maand/kwartaal), bron-data (cross-link naar C1 t/m C7), kern-KPI's, formaat (PDF/HTML/email-digest/dashboard), tijdstip en distributie-kanaal (mail/Slack/SharePoint), template-skelet (executive summary, KPI-tabel, trends, anomalieën, acties), en eigenaar. Vóór het interview begint, scant de skill diep wat al beschikbaar is in de vault: `Collect/` of de C-skill outputs voor data-bronnen (Marketing-Data.md, CRM-Setup.md, Financiele-Data.md, Klantfeedback.md, Website-Analytics.md, Operations/KPIs.md), `HR/Team.md` voor stakeholders, `Directie/01 - Goals.md` voor doel-gekoppelde KPI's, en `Directie/00 - Overzicht.md` voor genoemde succes-indicatoren. Werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam of vault-eigenaar, alleen over de SCALE-conventie (`Analyze/`, `Operations/`, `HR/`, `Directie/`). Activeer altijd wanneer iemand zegt: 'rapportage opzetten', 'maandrapport opzetten', 'rapportage-template', 'terugkerend rapport', 'weekrapportage', 'kwartaal-rapport', 'directie-rapport', 'sales-rapportage', 'wie krijgt welke cijfers', 'A1 dichten in SCALE-audit', 'gap A1', 'Analyze/Rapportage-Templates.md aanmaken', 'rapportage-vorm samenstellen'. Triggert ook bij iedere expliciete verwijzing naar A1 of `Rapportage-Templates.md`."
category: operations
tags: [scale-framework, a1, analyze, rapportage, kpi-rapportage, stakeholder-rapportage, periodiek-rapport]
estimatedTime: "30 tot 50 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Rapportage Builder

## Doel

Helpt een ondernemer om in 30 tot 50 minuten een set **rapportage-templates** vast te leggen in één canoniek document: `{scope}/Analyze/Rapportage-Templates.md`. Dit is SCALE-stap A1 (Analyze) en het scharnier tussen de verzamelde data (Collect: C1 t/m C7) en het werkelijk sturen op cijfers in plaats van reactief reageren op losse alerts.

*Wat een rapportage-template wel is, en wat het niet is.* Een rapportage-template is een **vaste vorm** waarin terugkerende informatie naar een vaste doelgroep gaat, op een vaste frequentie, via een vast kanaal. Niet een ad-hoc analyse, niet een live dashboard, niet een eenmalige presentatie. Concreet: "weekrapport sales, elke maandag 08:00 in de mailbox van Iwan, met top 5 deals deze week, gevorderd deze week, top 3 risico-deals, en nieuwe leads".

*Onderscheid met de andere A-skills.* Dit is geen overlap. Het is het organiserende skelet.

| Skill | Wat het doet |
|---|---|
| **A1 Rapportage Builder** | **Definieert wat naar wie wanneer hoe gaat, in welke vorm. Het skelet.** |
| A2 Mission Control Builder | Bouwt het centrale live-dashboard waar de KPI-status live zichtbaar is |
| A3 Daily Briefing | Daily-variant van een rapportage: één rapport, vaste vorm, elke ochtend |
| A4 Beslissings Analyse | Eenmalige analyse rond één keuze, niet terugkerend |
| A5 Benchmarking | Periodieke vergelijking met externe norm of branche, kan onderdeel zijn van een A1-rapport |
| L2 Auto Rapportage Setup | Automatiseert de in A1 ontworpen rapportages via scheduled-tasks |

*Waarom dit niet optioneel is.* Een bedrijf dat losse dashboards heeft maar geen vaste rapportage-vorm, krijgt cijfers wel binnen, maar nooit op het juiste moment bij de juiste persoon. Beslissingen worden dan op gevoel genomen omdat de cijfers "vorige week wel ergens te zien waren, maar nu weet ik het niet meer". Een rapportage-template zorgt dat dezelfde 6 KPI's op dezelfde maandagochtend bij dezelfde persoon liggen, in dezelfde vorm. Dat is het verschil tussen "we monitoren onze cijfers" en "we sturen op onze cijfers".

*Waarom de audit-drempel niet genoeg is.* SCALE-audit A1 vraagt dat minstens 1 afdeling een terugkerend rapport heeft. Die drempel haal je in 10 minuten met één weekmail naar de salesmanager. Deze skill mikt op een **rijk** document: 3 tot 8 rapportage-templates verdeeld over 6 stakeholder-groepen, met per template 10 velden ingevuld plus een concreet template-skelet, plus cross-links naar de bron-data (C-skills) en de eigenaar (S11 Team), zodat het document direct input is voor L2 Auto Rapportage Setup.

Resultaat: SCALE-audit A1 springt van ❌ of ⚠️ naar ✅ en het document is direct herbruikbaar voor A2 (Mission Control variant), A3 (Daily Briefing als sub-rapport) en L2 (automatiseren van wat hier is ontworpen).

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  RAPPORTAGE BUILDER — SCALE-stap A1 (Analyze)             │
│  ~30-50 minuten · 6 stakeholder-blokken                   │
└──────────────────────────────────────────────────────────┘

  In 30 tot 50 minuten leggen we vast welke terugkerende
  rapportages je bedrijf nodig heeft: wat gaat naar wie,
  wanneer, in welke vorm, via welk kanaal. Geen losse
  dashboards en ad-hoc Excel-export, maar een vaste vorm
  die elke week of maand zonder denken in de mailbox of
  Slack-kanaal landt.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 6 stakeholder-blokken (één per beurt, niet alles     │
  │    tegelijk) — gemiddeld 4-8 minuten per blok           │
  │  • Per blok: kies of er een rapportage voor deze        │
  │    stakeholder nodig is en welke vorm                   │
  │  • Per rapportage 10 velden (naam, doelgroep, doel,     │
  │    frequentie, bron, KPI's, formaat, tijdstip,          │
  │    distributie, template-skelet)                        │
  │  • Vooraf scan ik de Collect-data (C1 t/m C7) en        │
  │    HR/Team.md, zodat ik bron en stakeholders al weet    │
  │  • Daarna lever ik Analyze/Rapportage-Templates.md op   │
  │    met een rapport-kaart per template, klaar voor L2    │
  │    om te automatiseren                                  │
  └────────────────────────────────────────────────────────┘

  De 6 stakeholder-blokken:
  [1] Directie / CEO        weekend-overzicht, kwartaal-overzicht
  [2] Sales                 pipeline-weekrapport, deal-review
  [3] Marketing             content-prestaties, leads per kanaal
  [4] Operations            doorlooptijd, kwaliteit, capaciteit
  [5] Finance               omzet, marge, cashflow, DSO
  [6] Klant / Board         maandupdate naar klant, board-deck

  Heb je externe input klaar? Bijvoorbeeld:
  • Een bestaand weekrapport, maandrapport of board-deck
  • Een Excel-export die je nu met de hand maakt
  • Tool-exports (HubSpot-rapport, Moneybird-rapport,
    Google Analytics-mail)
  • Klantcontract met rapportage-verplichting

  Dan kun je dat nu noemen, hoe meer bronnen, hoe minder
  ik hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  RAPPORTAGE BUILDER — A1 · 30-50 min · 6 blokken          │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  C1 t/m C7 outputs,
   │    (auto-discover)   │  HR/Team.md,
   │                      │  Directie/00, 01,
   │                      │  bestaande rapporten
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Bestaand weekrapport,
   │                      │  board-deck, Excel,
   │                      │  tool-export, SLA
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Per stakeholder-blok
   │                      │  wat al gevonden is,
   │                      │  ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Selectie per      │  Welke stakeholders
   │    stakeholder-blok  │  hebben een vast
   │                      │  rapport nodig?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Interview, blok   │  Per gekozen rapport:
   │    voor blok         │  10 velden invullen
   │                      │  [1] Directie/CEO
   │                      │  [2] Sales
   │                      │  [3] Marketing
   │                      │  [4] Operations
   │                      │  [5] Finance
   │                      │  [6] Klant/Board
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Bron-koppeling    │  Per rapport: welke
   │                      │  C-skill levert data
   │                      │  (C1 t/m C7)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Eigenaar-         │  Cross-link met
   │    koppeling         │  HR/Team.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Template-skelet   │  Per rapport:
   │                      │  executive summary,
   │                      │  KPI-tabel, trend,
   │                      │  anomalieën, acties
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 10. Schrijven +      │  Analyze/
   │     opslaan          │  Rapportage-
   │                      │  Templates.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 11. Logging +        │  Changelog +
   │     vervolg          │  hint richting
   │     suggesties       │  A2, A3, L2
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Rapportage opzetten" / "rapportage-template maken"
- "Maandrapport opzetten" / "weekrapport opzetten" / "kwartaal-rapport"
- "Terugkerend rapport" / "vaste rapportage-vorm"
- "Directie-rapport" / "sales-rapportage" / "marketing-rapportage"
- "Wie krijgt welke cijfers" / "rapportage-vorm samenstellen"
- "Board-deck template" / "klantrapport template"
- "A1 dichten in SCALE-audit" / "gap A1"
- "Analyze/Rapportage-Templates.md aanmaken"

Triggert NIET wanneer:
- De gebruiker een **live dashboard** wil bouwen voor centrale KPI-monitoring (gebruik `mission-control-builder` — A2)
- De gebruiker een **daily briefing** wil opzetten (gebruik `daily-briefing` — A3)
- De gebruiker een **eenmalige analyse** rond een beslissing wil (gebruik `beslissings-analyse` — A4)
- De gebruiker een **benchmark** tegen branche of norm wil (gebruik `benchmarking` — A5)
- De gebruiker een **rapportage wil automatiseren** die al ontworpen is (gebruik `auto-rapportage-setup` — L2)
- De gebruiker **KPI's wil definieren** in plaats van rapporteren (gebruik `operationele-kpis` — C7)
- De gebruiker een **ad-hoc analyse** of presentatie wil bouwen (geen specifieke skill, gebruik losse tools)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de rapportage-templates vastgelegd moeten worden. Maak hier **geen aannames** over de mapstructuur of vault-naam — elke gebruiker heeft een andere setup.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Analyze/`, `Collect/`, `Operations/`, `HR/`, `Directie/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Analyze/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Analyze/Rapportage-Templates.md`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze rapportages voor zijn?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Analyze/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Analyze/Rapportage-Templates.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Rapportage-Templates - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Analyze/Rapportage-Templates.md` (huidige versie als die bestaat) | Bestaande rapportages, ritme, doelgroepen |
| `Collect/Marketing-Data.md` of `Marketing/Data-Setup.md` (C1) | **Verplichte scan** — welke marketing-data beschikbaar is voor marketing-rapportage |
| `Collect/CRM-Setup.md` of `Sales/CRM.md` (C2) | **Verplichte scan** — pipeline-data voor sales-rapportage |
| `Collect/Financiele-Data.md` of `Financien/Data.md` (C3) | **Verplichte scan** — omzet, marge, cashflow voor finance-rapportage |
| `Collect/Klantfeedback.md` (C4) | Feedback-data voor klant-rapportage of directie-rapportage |
| `Collect/Website-Analytics.md` (C5) | Website-cijfers voor marketing- of directie-rapportage |
| `Collect/Concurrentie-Research.md` (C6) | Eventueel benchmarking-context |
| `Operations/KPIs.md` (C7) | **Verplichte scan** — operationele KPI's voor operations-rapportage of directie-overzicht. Frequentie per KPI bepaalt al deels rapportage-ritme. |
| `HR/Team.md` (S11) | **Verplichte scan** — stakeholders en eigenaren voor elke rapportage |
| `Directie/00 - Overzicht.md` (S1) | Genoemde succes-indicatoren (blok 5) als directe input voor directie-rapport |
| `Directie/01 - Goals.md` (S5) | Jaardoelen die kwartaal-rapportage vragen |
| `Directie/02 - Tasks.md` | Lopende projecten die mogelijk eigen rapportage vragen |
| `Sales/` (subfolders) | Eventuele bestaande sales-rapporten of pipeline-exports |
| `Marketing/` (subfolders) | Eventuele bestaande content-rapporten of newsletter-statistieken |
| `Financien/Rapportage/` of `Financien/` | Bestaande financiele rapporten als referentie |
| `Klantenservice/` | Bestaande klant-update-templates |
| `Juridisch/Klantcontract*.md` | Contractuele rapportage-verplichtingen naar klanten |
| `Directie/Research/*.md` | Eerder audit-rapport (kan rapportage-vorm voorstellen) |

Maak per gevonden bron een korte interne aantekening: welke stakeholder-blok het raakt (Directie, Sales, Marketing, Operations, Finance, Klant/Board), welke KPI's al beschikbaar zijn, welke eigenaren al gedefinieerd zijn, en welk ritme al impliciet wordt aangehouden.

**Belangrijk:** als een bron niet bestaat, skip stilletjes — niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is. Markeer wel intern welke C-skills nog niet gedaan zijn, want dat beïnvloedt welke rapportages haalbaar zijn (een sales-rapportage zonder CRM-setup is niet rijk uitvoerbaar).

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen waaruit ik kan putten? Bijvoorbeeld:
> - Een bestaand weekrapport, maandrapport of board-deck dat je nu al ergens stuurt
> - Een Excel of Google Sheet die je nu met de hand bijhoudt of mailt
> - Tool-exports (HubSpot-rapportage, Moneybird-rapport, Google Analytics-mail, Stripe-overzicht)
> - Een klantcontract met rapportage-verplichting (maandupdate, kwartaalrapport)
> - Een eerder consultant-rapport of management-overzicht
> - Een Slack-kanaal of mailthread waar nu losse cijfers gedeeld worden
>
> Hoe meer bronnen, hoe minder ik hoef uit te vragen, en hoe sneller we tot een echte template komen."

Per aangeleverde bron:
- **Bestaand rapport**: scan op KPI-set, vorm, frequentie, doelgroep, distributie-kanaal — dit is vaak de directe basis voor één template
- **Excel-sheet**: identificeer welke metrics structureel terugkomen en welke cellen elke week handmatig bijgewerkt worden (de structurele kandidaat voor automatisering)
- **Tool-export**: noteer welke standaard-rapportage de tool al kent (HubSpot heeft "Weekly Pipeline Report", Google Analytics heeft "Monthly Performance Email")
- **Klantcontract**: extraheer de rapportage-verplichting letterlijk — frequentie, inhoud, vorm (bv. "kwartaalrapport in PDF, eerste werkdag van maand 1 nieuw kwartaal")

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 6 stakeholder-blokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] DIRECTIE / CEO
      00-Overzicht noemt omzet, klant-aantal en NPS als
      kerncijfers. Operations/KPIs heeft 6 maandelijkse KPI's.
      Geen huidig directie-rapport gevonden.
      Bron: 00-Overzicht.md, KPIs.md

  [2] SALES
      CRM-Setup beschrijft pipeline met 5 fases. Geen
      bestaand weekrapport gevonden, maar je mailt
      pipeline-export elke maandag aan jezelf.
      Bron: CRM-Setup.md, geplakte tekst

  [3] MARKETING
      Marketing-Data noemt 4 kanalen (LinkedIn, nieuwsbrief,
      website, Google Ads). Website-Analytics levert
      maandelijks rapport via Plausible.
      Bron: Marketing-Data.md, Website-Analytics.md

  [4] OPERATIONS
      Operations/KPIs noemt 4 wekelijkse en 3 maandelijkse
      KPI's. Geen samengestelde rapportage gevonden.
      Bron: KPIs.md

  [5] FINANCE
      Financiele-Data verwijst naar Moneybird en maandelijkse
      P&L. Wel manueel, geen vaste rapport-vorm.
      Bron: Financiele-Data.md

  [6] KLANT / BOARD
      Klantcontract (3 grote klanten) noemt
      kwartaalrapportage. Geen template gevonden.
      Bron: Juridisch/Klantcontract-Template.md

  GATEN waar ik nog vragen voor heb:
  - Blok 1: wil je een wekelijks of maandelijks directie-rapport?
  - Blok 2: salesproces nog in opbouw — pipeline-rapport hangt af
    van CRM-volwassenheid
  - Blok 6: kwartaalrapport-vorm naar klanten staat in contract
    maar nog niet gemaakt — prioriteit?

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we per stakeholder-blok bepalen welke rapportages
we vastleggen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Selectie per stakeholder-blok

**Belangrijk:** niet elk bedrijf heeft alle 6 blokken nodig. Een solopreneur zonder team rapporteert vaak alleen aan zichzelf (blok 1 Directie). Een dienstverlener zonder marketing-team kan blok 3 overslaan. Een bedrijf zonder externe klanten of investeerders heeft geen blok 6. Vraag eerst welke blokken relevant zijn voordat je per blok aan inhoudelijke vragen begint.

Concrete vraag aan gebruiker:
> "Van deze 6 blokken — welke vragen om een vaste rapportage en welke kunnen we overslaan? Mijn voorstel op basis van wat ik heb gevonden:
> - [1] Directie / CEO: ja, weekrapport (jij-aan-jezelf bij solopreneur) plus kwartaal-rapport voor jaardoelen-review
> - [2] Sales: ja, weekrapport pipeline
> - [3] Marketing: ja, maandrapport contentprestaties plus leads-per-kanaal
> - [4] Operations: ja, weekrapport (zit deels overlap met directie, kan ook samengevoegd worden)
> - [5] Finance: ja, maandrapport
> - [6] Klant / Board: ja, kwartaalrapport (contractueel verplicht)"

Pas het voorstel aan op basis van wat de gebruiker zegt. Als hij twijfelt: ga met het voorstel mee, zeg dat hij op elk moment kan zeggen "deze rapportage hoeven we niet" of "deze samenvoegen met die".

Mik op in totaal **3 tot 8 rapportage-templates**. Minder dan 3 voldoet nog wel aan het audit-minimum (1) maar is geen rijk fundament. Meer dan 8 wordt onderhoudslast en niemand leest nog alles.

**Bewuste samenvoegingen zijn welkom.** Bij een solopreneur worden Directie en Operations vaak één rapport. Bij een micro-team Sales en Marketing samen. Bij een board met externe investeerders Finance en Klant/Board samen. Maak die keuze expliciet en log het in de output.

### Stap 6: Interview, blok voor blok

**Kernregel:** loop **één stakeholder-blok per beurt** af. Niet alle 6 tegelijk neerzetten. Per blok: alle gekozen rapportages langsgaan, voor elk rapport de 10 velden invullen, en pas dán door naar het volgende blok.

**Voor elk rapport tien kernvelden:**

1. **Naam** — kort en functioneel ("Sales Weekrapport", "Klant Kwartaalrapport"). Niet "rapport-v3-def".
2. **Doelgroep** — wie ontvangt en leest dit. Eén persoon of rol als primair lezer, optioneel een cc-lijst. Cross-link naar `HR/Team.md`.
3. **Doel en beslissingen** — wat moet de lezer na het lezen kunnen doen. Bv. *"Wekelijks sturen op pipeline-snelheid en risico-deals. Beslissingen: welke deal extra aandacht, welke lead opvolgen, welke fase versnellen."* Zonder duidelijk doel wordt een rapport een ritueel zonder gevolg.
4. **Frequentie** — dagelijks / wekelijks / maandelijks / per kwartaal. Match met data-frequentie uit `Operations/KPIs.md`: wekelijkse KPI's horen in wekelijkse rapporten, niet in een maandrapport.
5. **Bron-data** — welke C-skill outputs of welke tools leveren de inhoud. Cross-link expliciet (bv. *"C1 Marketing-Data.md, C2 CRM-Setup.md, HubSpot weekly-export"*).
6. **Kern-KPI's** — exacte lijst van metrics die in dit rapport thuishoren. 3 tot 8 KPI's per rapport, niet meer. Cross-link naar individuele KPI's uit `Operations/KPIs.md` of de relevante C-skill output.
7. **Formaat** — PDF / HTML / email-digest / Slack-bericht / Notion-pagina / dashboard-screenshot. Match formaat aan ontvanger: een operations-medewerker leest sneller een Slack-bericht, een board verwacht PDF.
8. **Tijdstip** — concreet wanneer. "Elke maandag 08:00", "elke eerste werkdag van de maand 09:00", "elke 1e januari, 1e april, 1e juli, 1e oktober 09:00". Niet "maandelijks". Tijdstip is kritisch voor L2 automatisering.
9. **Distributie-kanaal** — hoe het bij de lezer terechtkomt. E-mail naar specifiek adres, Slack-kanaal, SharePoint-map, fysieke print, klant-portal-upload. Cross-link naar `IT/Toolstack.md` als het via een tool gaat.
10. **Template-skelet** — de vaste secties van het rapport (zie tabel hieronder voor standaard-skelet). Per rapport licht aanpasbaar maar de basis-secties moeten benoemd zijn.

Plus per rapport optioneel:
- **Eigenaar** — wie maakt het rapport (kan automatisch via L2, kan handmatig door één persoon). Cross-link naar `HR/Team.md`.
- **Strategische link** — koppelt dit rapport aan een doel in `Directie/01 - Goals.md`? Zo ja, benoem.
- **Toelichting** — context die nodig is, bv. dat de eerste editie nog een baseline is en de normen later worden vastgesteld.

**Standaard template-skelet per rapport:**

| Sectie | Wat erin staat |
|---|---|
| 1. Executive summary (3-5 regels) | Kernboodschap. Wat is goed, wat is rood, welke beslissing nodig deze periode. |
| 2. KPI-tabel | Alle kern-KPI's met huidige waarde, vorige periode, trend (omhoog/omlaag/stabiel), status (🟢/🟠/🔴). |
| 3. Trends / grafieken | 1-3 grafieken voor de belangrijkste KPI's, periode tegen vorige periode of laatste 12 weken/maanden. |
| 4. Anomalieën | KPI's die buiten norm vallen of trend-breuk vertonen, met korte duiding. Wat is gebeurd, wat is de hypothese. |
| 5. Acties | Concrete vervolgstappen: wie doet wat voor wanneer. Output van het rapport, niet alleen input. |
| 6. Onderbouwing (optioneel) | Cijfer-bronnen, links naar dashboards, opmerkingen over data-kwaliteit deze periode. |

Het skelet mag per rapport licht variëren (een operations-rapport kan secties 1 en 4 verzwaren, een klant-kwartaalrapport heeft extra "Vooruitblik volgend kwartaal"), maar laat de basis-vorm herkenbaar.

#### Blok 1 — Directie / CEO

De kerncategorie voor het bedrijfs-niveau overzicht. Voor een solopreneur is dit het "ik-aan-mezelf"-rapport, voor een MKB de directie-cyclus. Vaak één wekelijkse pulse plus één diepere kwartaal-review.

Vraag: *"Welke directie-rapportages wil je instellen? Ik stel deze opties voor — kies wat past, of voeg eigen toe."*

Rapportage-bibliotheek voor dit blok:

| Rapport | Wanneer relevant | Voorbeeld-ritme |
|---|---|---|
| Directie-weekrapport | Solopreneur of MKB-CEO die wekelijks pulse wil zien op alles tegelijk | Elke maandag 08:00 |
| Directie-maandrapport | Bedrijven met team waar weekrapport te druk is, maandelijks scherper genoeg | Eerste werkdag van de maand |
| Kwartaal-strategieview | Voor goals-review en richting-aanpassing, samen met `doelen-coach`-flow | Eerste werkdag nieuw kwartaal |
| Jaaroverzicht | Bedrijf-niveau eindjaarsverslag, vooral relevant met externe stakeholders | December of januari |

Voor elk gekozen rapport: doorloop alle 10 velden. Stel per veld één concrete vraag, wacht op antwoord, ga door.

#### Blok 2 — Sales

Voor bedrijven met een pipeline. Pipeline-rapporten zijn de meest gebruikelijke A1-rapportages omdat sales-data van nature meetbaar is en de cyclus kort.

Vraag: *"Welke sales-rapportages wil je instellen? Welke pipeline-cijfers moet je elke week of maand op het netvlies hebben?"*

Rapportage-bibliotheek voor dit blok:

| Rapport | Wanneer relevant | Voorbeeld-ritme |
|---|---|---|
| Pipeline-weekrapport | Iedereen met een CRM en lopende deals | Elke maandag 08:00 |
| Deal-review (maandelijks) | Bedrijven met grotere deals waar reviews per deal zin hebben | Eerste werkdag van de maand |
| Lead-funnel-rapport | Bedrijven met meetbare lead-sources, sterk gelinkt aan C1 Marketing-Data | Wekelijks of maandelijks |
| Klant-retentie-rapport | Bedrijven met abonnementsmodel of recurring revenue | Maandelijks |

Belangrijke nuance: als er nog geen CRM of pipeline gevuld is, kan dit blok beperkt blijven tot 1 rapport of overgeslagen worden. Forceer geen pipeline-rapport bij een bedrijf zonder pipeline.

#### Blok 3 — Marketing

Voor bedrijven die actief marketing inzetten en daar grip op willen. Marketing-rapportages bestaan vaak al deels (tool-exports van Google Analytics, LinkedIn-insights, nieuwsbrief-stats), maar zonder samenvoeging in één vaste vorm worden ze niet bekeken.

Vraag: *"Welke marketing-rapportages wil je instellen? Hoeveel kanalen heb je en welke wil je structureel monitoren?"*

Rapportage-bibliotheek voor dit blok:

| Rapport | Wanneer relevant | Voorbeeld-ritme |
|---|---|---|
| Content-prestatie-rapport | Bedrijven met content-marketing (blog, social, video) | Maandelijks |
| Leads per kanaal | Bedrijven die kanalen vergelijken op kosten/lead en conversie | Maandelijks |
| Website-analytics maandrapport | Iedereen met een meetbare website (C5) | Maandelijks |
| Nieuwsbrief-prestatie | Bedrijven met een actieve nieuwsbrief (C4 deels, M4) | Per verzending of maandelijks |
| Social-media digest | Bedrijven actief op meerdere social platformen | Wekelijks of maandelijks |

Belangrijke nuance: vermijd overlap. Eén overkoepelend marketing-maandrapport met alle 4 kanalen werkt vaak beter dan 4 losse rapporten die niemand allemaal leest.

#### Blok 4 — Operations

Voor de uitvoering. Operations-rapportages laten zien of de productie of dienstverlening op koers loopt. Sterk gelinkt aan `Operations/KPIs.md` (C7).

Vraag: *"Welke operations-rapportages wil je instellen? Welke uitvoerings-cijfers moet wekelijks of maandelijks zichtbaar zijn?"*

Rapportage-bibliotheek voor dit blok:

| Rapport | Wanneer relevant | Voorbeeld-ritme |
|---|---|---|
| Operations weekrapport | Bedrijven met meetbare doorlooptijd of capaciteit | Elke maandag 08:00 |
| Kwaliteits-rapport | Bedrijven met meetbare kwaliteits-incidenten of herwerk | Maandelijks |
| Capaciteits-rapport | Bedrijven met urentarief-uitvoering of resource-planning | Wekelijks |
| Klantenservice-rapport | Bedrijven met klant-ticket-stroom (response-tijden, SLA, escalatie) | Wekelijks of maandelijks |

Belangrijke nuance: bij solopreneur valt operations vaak samen met directie. Een gecombineerd "Directie + Operations Weekrapport" werkt dan beter dan twee aparte. Maak die keuze expliciet en log het.

#### Blok 5 — Finance

Voor het financiele zicht. Finance-rapportages hebben vaak het langste ritme (maandelijks, kwartaalrelijk) maar zijn cruciaal voor beslissingen over investeringen, prijsverhogingen en uitbreidingen.

Vraag: *"Welke finance-rapportages wil je instellen? Welke financiele cijfers vragen om vaste rapportage-vorm?"*

Rapportage-bibliotheek voor dit blok:

| Rapport | Wanneer relevant | Voorbeeld-ritme |
|---|---|---|
| Maand-P&L (Profit & Loss) | Iedereen met meetbare omzet en kosten | Eerste werkdag van de maand |
| Cashflow-rapport | Bedrijven met variabele cashflow of debiteurenrisico | Wekelijks of maandelijks |
| Debiteuren-rapport (DSO) | Iedere B2B-onderneming met factuur-stroom | Maandelijks |
| Kwartaal-financieel | Voor goals-review en directie/board | Eerste werkdag nieuw kwartaal |
| Jaaroverzicht (jaarrekening-light) | Pre-jaarrekening intern overzicht | December of januari |

Belangrijke nuance: vermijd overlap met de externe accountant-rapportage. Interne maand-P&L is een bestuurs-hulpmiddel, niet de officiele jaarrekening.

#### Blok 6 — Klant / Board

Voor externe stakeholders. Klantrapportages staan vaak in contracten als verplichting (zie ook J5 Klantcontract Template). Board-rapportages voor bedrijven met investeerders of toezichthouders.

Vraag: *"Welke externe rapportages zijn nodig? Heb je klantcontracten met rapportage-verplichting of een board die periodiek cijfers krijgt?"*

Rapportage-bibliotheek voor dit blok:

| Rapport | Wanneer relevant | Voorbeeld-ritme |
|---|---|---|
| Klant-maandupdate | Klanten met service-contract dat maandupdate verplicht | Eerste werkdag van de maand |
| Klant-kwartaalrapport | Grotere klanten of strategische accounts | Eerste werkdag nieuw kwartaal |
| Board-deck (kwartaal) | Bedrijven met externe investeerders, raad van advies of board | Eerste werkdag nieuw kwartaal |
| Investeerder-jaarupdate | Bedrijven met investeerders die jaarlijks bijgepraat worden | Januari of februari |
| Stakeholder-update (ad-hoc structureel) | Belangrijke partners of leveranciers die periodieke update krijgen | Per kwartaal |

Belangrijke nuance: lees klantcontracten op rapportage-verplichting voordat je dit blok instelt. Een contract dat zegt "kwartaalrapport per email binnen 5 werkdagen na kwartaaleinde, in PDF, met sectie X, Y, Z" geeft de template-skelet direct mee. Bij board-decks is consistentie over kwartalen belangrijker dan creativiteit per kwartaal: dezelfde 12 slides elke ronde, met verse data.

### Stap 7: Bron-koppeling met C-skills

**Doel:** elke rapportage heeft een duidelijke data-bron. Geen rapportage zonder C-skill output of expliciete tool-bron. Cross-link maakt later automatisering (L2) mogelijk.

Per rapport: stel vast welke C-skill outputs of welke tools de data leveren.

| Bron in rapport | Komt uit |
|---|---|
| Marketing-kanaal cijfers | `Collect/Marketing-Data.md` (C1), tools uit `IT/Toolstack.md` |
| Pipeline / deal-cijfers | `Collect/CRM-Setup.md` (C2), CRM-tool |
| Omzet, marge, cashflow | `Collect/Financiele-Data.md` (C3), boekhoud-tool |
| Klantfeedback (NPS, CSAT) | `Collect/Klantfeedback.md` (C4), survey-tool |
| Website-cijfers | `Collect/Website-Analytics.md` (C5), analytics-tool |
| Concurrentie-benchmark | `Collect/Concurrentie-Research.md` (C6) |
| Operationele KPI's | `Operations/KPIs.md` (C7), tools uit Toolstack |

Voor elke rapportage: noteer in het rapport-kaart de exacte bron-set. Bij ontbreken van de bron (C-skill nog niet gedaan): markeer expliciet *"Bron nog niet ingericht — eerst C-X doen"* en stel voor om eerst die C-skill te draaien voordat het rapport in gebruik genomen wordt.

**KPI's mogen niet uit lucht komen.** Een rapport dat een KPI noemt die nergens gemeten wordt, is een belofte die niemand kan waarmaken. Markeer in een aparte sectie "KPI's die in rapport gewenst zijn maar nog geen bron hebben" zodat de gebruiker weet wat eerst opgelost moet worden.

### Stap 8: Eigenaar-koppeling met HR/Team.md

**Doel:** elke rapportage heeft één eigenaar — de persoon of rol die verantwoordelijk is dat het rapport op tijd, kloppend, en bij de juiste lezer is. Geen "iedereen kijkt mee", dat betekent niemand bewaakt het.

Twee paden:

- **Als `{scope}/HR/Team.md` bestaat**:
  - Lees Team.md uit
  - Voor elke rapportage: koppel aan een rol-eigenaar uit Team.md (sales-rapport → sales-lead, operations-rapport → operations-lead, klant-kwartaalrapport → account manager of CEO)
  - Voor solopreneur-variant: alles bij dezelfde persoon, maar markeer de rol-pet (operations-rol, sales-rol)
  - Toon per rapport voorgestelde eigenaar en vraag bevestiging
- **Als `{scope}/HR/Team.md` niet bestaat**:
  - Vraag handmatig per rapport: *"Wie is verantwoordelijk dat dit rapport elke [periode] op tijd bij [doelgroep] ligt?"*
  - Voeg in de output een opmerking toe: *"Eigenaren nog niet gevalideerd tegen HR/Team.md. Aanrader: bouw eerst Team.md met de skill `team-en-rollen` (S11)."*

**Belangrijk:** "automatisch via L2" vervangt geen eigenaar. Ook een geautomatiseerd rapport heeft een eigenaar die controleert dat de automatisering klopt en die de inhoud duidt (executive summary, anomalieën, acties).

### Stap 9: Template-skelet per rapport invullen

**Doel:** per gekozen rapportage een concreet skelet, niet alleen een naam plus frequentie. Het skelet is de blauwdruk die elke periode opnieuw gevuld wordt.

Vertrek vanuit het standaard template-skelet (sectie 1-6 uit stap 6), pas aan per rapport-type. Specifieke per blok:

- **Directie-weekrapport**: zwaar op sectie 1 (executive summary) en sectie 5 (acties). KPI-tabel houdt het kort: 5-7 cijfers max.
- **Sales pipeline-weekrapport**: zwaar op KPI-tabel (pipeline-waarde, deals per fase, top 5 deals) plus sectie 4 (risico-deals). Sectie 5 acties: per risico-deal een actie.
- **Marketing maandrapport**: KPI-tabel per kanaal, sectie 3 trends (12-weken-grafiek per kanaal), sectie 4 anomalieën (waarom kanaal X gedaald), sectie 5 (welke kanalen versterken volgende maand).
- **Operations weekrapport**: KPI-tabel met groen/oranje/rood-status, sectie 4 (rode KPI's deze week met hypothese), sectie 5 (actie per rode KPI).
- **Finance maandrapport**: KPI-tabel (omzet, marge, cashflow, DSO), sectie 3 trends (12-maanden), sectie 4 (afwijkingen versus prognose), sectie 5 (financiele acties: prijsverhoging, kostenbesparing).
- **Klant kwartaalrapport**: standaard skelet plus sectie "Vooruitblik volgend kwartaal" plus sectie "Open vragen of escalaties". Toon klant ook de **wat-er-niet-staat**: geen verrassingen voor klant.
- **Board-deck**: max 10-12 slides, vaste structuur over kwartalen. Slide 1 executive summary, slide 2-4 KPI's, slide 5-6 grafieken, slide 7 anomalieën, slide 8 acties, slide 9-10 vooruitblik, slide 11-12 vragen.

Per rapport: schrijf het skelet uit in 5-10 regels. Niet alle inhoud invullen (dat is voor elke editie), wel duidelijk welke secties met welke informatie gevuld worden.

### Stap 10: Schrijven en opslaan

Gebruik het template uit `references/template-rapportage-builder.md` als skelet. Vul met de uitkomsten uit pre-fill plus interview plus bron-koppeling plus eigenaar-koppeling plus template-skeletten.

Sla op als:
```
{scope}/Analyze/Rapportage-Templates.md
```

Maak de `Analyze/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: rapportage-templates
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: A1
aantal-rapportages: <getal>
blokken-actief: [directie, sales, marketing, operations, finance, klant-board]
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "kritische rapportages", "essentiele dashboards", "next-level reporting". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Pipeline-weekrapport elke maandag 08:00 per e-mail aan iwan@upscailed.nl, bron HubSpot Weekly Export" is sterker dan "we maken een sales-rapport".
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Rapport-kaarten in vaste structuur** — naam, doelgroep, doel, frequentie, bron, KPI's, formaat, tijdstip, distributie, template-skelet, eigenaar.
- **Getallen consistent** — tijdstippen in 24-uurs formaat (08:00 niet "8 uur"), data-frequentie in vaste woorden (wekelijks, maandelijks, niet "elke 7 dagen").
- **Eén overzichtstabel bovenaan** — alle rapportages met hun frequentie, doelgroep, bron en eigenaar. Daaronder per rapport een kaart met volledig detail.
- **Cross-links expliciet** — naar C1 t/m C7 voor bron, naar HR/Team voor eigenaar, naar 01-Goals waar relevant.

### Stap 11: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Analyze/Rapportage-Templates.md` — v1.0, N rapportages verdeeld over X stakeholder-blokken"*.
2. **Daily** — als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md` in een Iwan-OS-stijl vault, of een Notion-daily-pagina), log dan een eenregelige melding plus link naar het nieuwe bestand. Skip als die conventie niet bestaat.
3. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een A1-doel of analyze-doel heeft: status bijwerken, regel toevoegen aan voortgangslog.
4. **Scale-audit-suggestie** — als `{scope}/Directie/Research/` een audit-rapport bevat waar A1 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link met C1 t/m C7** — elke rapportage leunt op bron-data uit een C-skill. Niet ingerichte C-skills zijn de eerste blokkade voor uitvoerbare rapportages. Stel voor om gaten in Collect eerst te dichten voordat een rapport in productie gaat.
- **Cross-link met S11 Team en Rollen** — eigenaren per rapportage moeten matchen met rollen in `HR/Team.md`. Zijn de rollen nog niet uitgewerkt, eerst doen.
- **Doorgroei naar A2 Mission Control Builder** — rapportage-templates definieren *wat naar wie wanneer*. Mission Control is de **live-variant** waar dezelfde KPI's continu zichtbaar zijn voor de eigenaar. Beide vormen leven naast elkaar.
- **Doorgroei naar A3 Daily Briefing** — een daily briefing is een specifieke A1-rapportage met frequentie dagelijks. De daily-briefing-skill is een sub-flow van A1 maar met specifieke daily-conventies.
- **Doorgroei naar L2 Auto Rapportage Setup** — zodra de templates staan, is L2 de logische volgende stap: per rapport een scheduled-task die het op tijdstip genereert en verzendt. **Belangrijk:** A1 ontwerpt, L2 automatiseert. Bouw eerst handmatig 1-2 keer een rapport voordat je automatiseert, om de template te valideren.
- **Review-ritme** — rapportages verouderen als de KPI's veranderen, de stakeholders wisselen of de tools verschuiven. Stel voor: kwartaal-review of de templates nog passen, en jaarlijks structurele review of de juiste rapportages wel bestaan.

## Belangrijke regels

- **Eén stakeholder-blok per beurt** in het interview. Niet alle 6 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Bron-koppeling is verplicht.** Een rapport zonder gedefinieerde C-skill output of tool-bron mag niet vastgelegd worden. Markeer ontbrekende bronnen als gat, geen invulling.
- **Eigenaar-koppeling is verplicht.** Een rapport zonder eigenaar wordt nooit bewaakt. Eén persoon of rol per rapport.
- **Schrijf nooit zomaar over een bestaande `Analyze/Rapportage-Templates.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Frequentie matcht data-frequentie.** Een wekelijks rapport kan geen KPI bevatten die maar maandelijks gemeten wordt, dat geeft schijnactualiteit. Match strikt met `Operations/KPIs.md`-frequenties.
- **Geen valse precisie in tijdstippen.** "Maandag 08:00" werkt, "maandag tussen 08:00 en 09:00 ergens" niet. L2 heeft een vast tijdstip nodig.
- **Onderscheid bewaken met A2 (Mission Control) en A3 (Daily Briefing).** Live dashboard is A2. Dagelijks rapport is A3. Periodieke rapporten (week, maand, kwartaal, jaar) zijn A1.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe bronnen.** Een bestaand weekrapport of board-deck bespaart een groot deel van het uitvraag-werk en geeft direct een goede basis-template.
- **Geen marketing-trucjes.** Geen "imagine if...", geen rhetorische vragen aan het begin van een sectie. Recht voor zijn raap.
- **Mik op 3 tot 8 rapportages, niet op het audit-minimum van 1.** Een rijk rapportage-document is direct bruikbaar als blauwdruk voor L2 automatisering. Eén handmatige weekmail is dat niet.
- **Een rapportage heeft één eigenaar.** Niet twee. Niet "het team". Eén persoon of rol. Anders bewaakt niemand of het op tijd, kloppend en bij de juiste lezer is.
- **Bewuste samenvoegingen mogen, en moeten gemarkeerd worden.** Als directie en operations samen één rapport krijgen, log dat expliciet: "Dit rapport combineert blok 1 en 4 omwille van bedrijfsomvang. Bij groei naar 5+ FTE splitsen."

## Voorbeeld-output

Zie [`references/template-rapportage-builder.md`](references/template-rapportage-builder.md) voor de exacte structuur die de skill oplevert: rapportage-overzichtstabel, rapport-kaart per template met alle 10 velden plus template-skelet, cross-links naar C1 t/m C7 (bronnen), S11 (Team en Rollen, eigenaren) en de vervolg-skills A2, A3 en L2.
