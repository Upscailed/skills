# Auto-rapportage Setup (module van scale-leverage)

> Bron-skill: `auto-rapportage-setup` | SCALE-code: L2 | Versie: 1.0.0 | Geschatte tijd: 45 tot 90 minuten

---

# Auto-rapportage Setup

## Doel

Helpt een ondernemer om in 45 tot 90 minuten per rapportage-template uit A1 een **werkende automatisering** op te bouwen, vastgelegd in één canoniek document: `{scope}/Leverage/Auto-Rapportage.md` plus een aangevulde `{scope}/Operations/Automations.md`. Dit is SCALE-stap L2 (Leverage), het scharnier tussen "we hebben ontworpen wat naar wie wanneer gaat" (A1) en "het gebeurt zonder dat iemand het oppakt".

*Wat een geautomatiseerde rapportage wel is, en wat het niet is.* Een geautomatiseerde rapportage is een **scheduled job** die op een vast tijdstip data ophaalt uit een of meer bronnen, de data bewerkt tot KPI-niveau, formatteert volgens een vaste template en bezorgt via een vast kanaal. Geen ad-hoc-export, geen handmatige knipopdracht, geen live dashboard. Concreet: "elke maandag 08:00 trekt n8n de Stripe-omzet van vorige week, de Pipedrive-pipeline-export en de Plausible-bezoekers, knipt dat in een HTML-template met executive summary van ChatGPT, en stuurt het via Resend naar iwan@upscailed.nl. Bij faal: retry na 5 minuten, na 3 fouten alert naar Telegram en handmatige fallback-instructie".

*Onderscheid met andere skills.* Geen overlap. Dit is de uitvoering van A1.

| Skill | Wat het doet |
|---|---|
| A1 Rapportage Builder | Ontwerpt de rapportage-vorm: wat naar wie wanneer hoe. |
| A2 Mission Control Builder | Bouwt het live-dashboard waar dezelfde KPI's continu staan. |
| A3 Daily Briefing | Specifieke A1 met dagelijkse frequentie. Heeft eigen setup-doc, kan ook via L2 lopen. |
| **L2 Auto Rapportage Setup** | **Automatiseert de A1-templates. Eén scheduled task per rapport.** |
| L1 SOP Automatiseren | Automatiseert proces-stappen, niet rapportages. |
| L3 Mailflow Setup | Automatiseert mail-sequenties (leads, klanten), niet rapportages. |
| L4 Finance Automatisering | Automatiseert facturering en bank-koppelingen, niet rapportages. |
| E1 Dashboard Bouwer | Bouwt een eigen visuele dashboard-app. Kan input zijn voor L2 (export uit dashboard). |

*Waarom de audit-drempel niet genoeg is.* SCALE-audit L2 vraagt dat **minstens 1 rapportage automatisch draait**. Die drempel haal je met een Google-Analytics-mail die je aanzet in Settings. Deze skill mikt op een **rijk** document: per rapportage uit A1 een complete automation-spec (data-stappen, transformaties, formattering, distributie, schedule, failure-handling, monitoring, AVG-check), plus een keuze welke 1 tot 3 rapporten als eerste live gaan en welke later. Niet "we automatiseren alles op één dag", wel "we automatiseren met prioriteit op het rapport dat de eigenaar nu het vaakst zelf moet genereren".

*Waarom dit pas na A1.* Zonder de A1-rapport-kaart (10 velden plus template-skelet) weet de automatisering niet welke KPI's eruit moeten, welk tijdstip exact, welke ontvanger, welk formaat. Als `Analyze/Rapportage-Templates.md` ontbreekt: stopt de skill en stelt voor eerst `rapportage-builder` (A1) te draaien. Geen gokwerk op de template.

Resultaat: SCALE-audit L2 springt van ❌ of ⚠️ naar ✅ en het document `{scope}/Leverage/Auto-Rapportage.md` is direct overdraagbaar aan een implementatie-partner of aan de Upscailed-onboarding-engineer. De eerste 1 tot 3 rapporten draaien binnen 1 tot 2 weken volledig automatisch.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  AUTO-RAPPORTAGE SETUP, SCALE-stap L2 (Leverage)          │
│  ~45-90 minuten · 7 blokken + 1 rapport-loop              │
└──────────────────────────────────────────────────────────┘

  In 45 tot 90 minuten leggen we per rapportage uit jouw
  A1-document `Analyze/Rapportage-Templates.md` vast hoe het
  zonder mens van data-bron tot kanaal komt: welk tool de
  pipeline draait, hoe de data wordt opgehaald, bewerkt en
  geformatteerd, hoe het bezorgd wordt, op welk tijdstip,
  en wat er gebeurt als iets faalt.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 7 inhoudelijke blokken (één per beurt)               │
  │  • Daarna per gekozen rapport: 6 velden invullen        │
  │    (data-stappen, transformatie, formattering,          │
  │    distributie, schedule, failure-handling)             │
  │  • Vooraf scan ik Analyze/Rapportage-Templates.md       │
  │    (A1, verplicht aanwezig), IT/Toolstack.md (S12),     │
  │    HR/Team.md (S11), Collect/ (C1-C7), A2 en A3,        │
  │    zodat ik tool-keuze, eigenaren, bronnen al weet.     │
  │  • Daarna lever ik Leverage/Auto-Rapportage.md op       │
  │    plus een update van Operations/Automations.md, met   │
  │    per rapport een complete scheduled-task-spec die     │
  │    direct uitrolbaar is.                                │
  └────────────────────────────────────────────────────────┘

  De 7 blokken:
  [1] Scope + A1-check
      Welk bedrijf, en bestaat Rapportage-Templates.md?
  [2] Tool-niveau kiezen
      No-code (Make/Zapier), low-code (n8n), of pro-code
      (Node-script + Vercel-cron of Cloudflare Workers)
  [3] Selectie: welke rapporten eerst
      Mik op 1-3 voor de eerste rol-out, niet alles tegelijk
  [4] Data-bron credentials inventariseren
      Welke API-keys, OAuth-flows of database-toegang nodig
  [5] Distributie-kanaal credentials
      Resend/Postmark voor mail, Slack-webhook, Telegram-bot
  [6] Failure-handling + monitoring
      Retry-policy, alert-route, fallback-instructie
  [7] AVG + PII-check
      Welke data verlaat het bedrijf, naar wie, mag dat

  Daarna per rapport: 6 velden invullen.

  Heb je input al klaar? Bijvoorbeeld:
  • Een tool die al draait (Make-scenario, n8n-workflow,
    Zapier-zap, Pipedream-flow, custom Node-script)
  • API-keys of OAuth-tokens voor Stripe, Pipedrive,
    HubSpot, Moneybird, Plausible, GA4, Notion
  • Een voorbeeld-rapport dat je nu handmatig in elkaar
    klikt, plus de stappen die je daarbij doet
  • Een voorkeur voor mail-provider (Resend, Postmark,
    SendGrid, Mailgun) of een Slack-workspace die al staat

  Dan kun je dat nu noemen. Hoe meer bronnen, hoe minder
  ik hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe input wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  AUTO-RAPPORTAGE SETUP, L2 · 45-90 min · 7 blokken        │
└─────────────┬────────────────────────────────────────────┘
              v
   ┌──────────────────────┐
   │ 1. Scope + A1-check  │  Welk bedrijf?
   │                      │  Bestaat
   │                      │  Rapportage-
   │                      │  Templates.md?
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 2. Vault scannen     │  A1 templates,
   │    (auto-discover)   │  S12 Toolstack,
   │                      │  S11 Team,
   │                      │  C1-C7 bronnen,
   │                      │  A2 + A3 overlap
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 3. Externe input?    │  Bestaande
   │                      │  automation-tool,
   │                      │  API-keys,
   │                      │  voorbeeld-rapport
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Per rapport uit
   │                      │  A1 wat al klaar
   │                      │  is ter validatie
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 5. Interview blok    │  [1] Scope+A1
   │    voor blok         │  [2] Tool-niveau
   │                      │  [3] Selectie
   │                      │  [4] Data-creds
   │                      │  [5] Distributie
   │                      │  [6] Failure
   │                      │  [7] AVG+PII
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 6. Rapport-loop      │  Per gekozen
   │                      │  rapport 6
   │                      │  velden:
   │                      │  - data-stappen
   │                      │  - transformatie
   │                      │  - formattering
   │                      │  - distributie
   │                      │  - schedule
   │                      │  - failure-route
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 7. Cron-expressies   │  Per rapport:
   │    afleiden uit A1   │  cron uit A1
   │                      │  tijdstip+TZ
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 8. Anomalie + alert  │  Wanneer extra
   │    regels            │  flaggen, hoe
   │                      │  alert-route
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 9. Schrijven +       │  Leverage/
   │    opslaan           │  Auto-Rapportage
   │                      │  + Operations/
   │                      │  Automations.md
   │                      │  bijwerken
   └──────────┬───────────┘
              v
   ┌──────────────────────┐
   │ 10. Logging +        │  Changelog,
   │     vervolg          │  rol-out-volgorde
   │     suggesties       │  L3, L4, E1
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Rapportage automatiseren" / "scheduled report" / "auto maandrapport" / "auto weekrapport"
- "Rapport vanzelf laten draaien" / "cron voor mijn rapport"
- "Rapportage in Make" / "rapportage in n8n" / "rapportage in Zapier" / "rapportage in Pipedream"
- "Stripe-data naar mailrapport" / "Pipedrive weekrapport automatiseren"
- "Maandrapport via Resend versturen" / "PDF-rapportage genereren"
- "Telegram-bot voor maandcijfers" / "Slack-bericht met cijfers automatiseren"
- "L2 dichten in SCALE-audit" / "gap L2"
- "Leverage/Auto-Rapportage.md aanmaken" / "Operations/Automations.md bijwerken"

Triggert NIET wanneer:
- De gebruiker eerst de **rapportage-vorm zelf** wil ontwerpen (gebruik `rapportage-builder`, A1)
- De gebruiker een **dagelijks pushrapport** wil opzetten (gebruik `daily-briefing`, A3, kan vervolgens hier doorvloeien als A3 ook via L2 draait)
- De gebruiker een **live realtime dashboard** wil (gebruik `mission-control-builder`, A2)
- De gebruiker een **proces of SOP** wil automatiseren (gebruik `sop-automatiseren`, L1)
- De gebruiker een **mail-sequentie** voor klanten of leads wil opzetten (gebruik `mailflow-setup`, L3)
- De gebruiker **facturering of bank-koppelingen** wil automatiseren (gebruik `finance-automatisering`, L4)
- De gebruiker een **eigen dashboard-app** wil bouwen (gebruik `dashboard-bouwer`, E1)

## Workflow

### Stap 1: Scope kiezen plus A1-check

Vraag voor welk bedrijf en in welk pad de auto-rapportage-setup vastgelegd moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam, elke gebruiker heeft een andere setup.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Leverage/`, `Analyze/`, `Operations/`, `IT/`, `HR/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Leverage/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Leverage/Auto-Rapportage.md`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze automatiseringen voor zijn?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Leverage/`- of `Analyze/`-map. Bevestig de gevonden scope voordat je doorgaat.

**Verplicht: check of `{scope}/Analyze/Rapportage-Templates.md` bestaat.**

- Bestaat niet → **stop direct, geef A1-aanrader.** Voorbeeld-melding: *"Voor L2 heb ik de rapportage-templates uit A1 nodig: zonder dat document weet ik niet welke KPI's, welke ontvangers en welk tijdstip elk rapport heeft. Laat me eerst de skill `rapportage-builder` (A1) draaien zodat we `Analyze/Rapportage-Templates.md` opbouwen, daarna kunnen we hier verder."* Schrijf geen lege Auto-Rapportage.md.
- Bestaat wel → lees het document volledig in en doorloop alle rapport-kaarten (10 velden per rapport, plus template-skelet). Dit is de primaire input voor stap 4 en 6.

Controleer daarna of `{scope}/Leverage/Auto-Rapportage.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Auto-Rapportage - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk:** zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden.

Standaard paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Analyze/Rapportage-Templates.md` (A1, **verplicht aanwezig**) | Primaire input. Per rapport: naam, doelgroep, doel, frequentie, bron-data, KPI's, formaat, tijdstip, distributie-kanaal, template-skelet, eigenaar. Dit zijn de objecten die L2 automatiseert. |
| `Analyze/Daily-Briefing-Setup.md` (A3) | Daily Brief heeft eigen setup-doc, maar kan ook hier opgepakt worden. Markeer of A3 al eigen scheduled-task heeft of via L2 moet. |
| `Analyze/Mission-Control.md` (A2) | Live-dashboard. Overlap-check: KPI's die in Mission Control al live zijn, hoeven niet ook in een gepushed rapport, tenzij doelgroep verschilt. |
| `Collect/Marketing-Data.md` (C1) | Welke marketing-tools data leveren, welke API's beschikbaar zijn. |
| `Collect/CRM-Setup.md` (C2) | Welke CRM-tool, met welke API of webhooks, voor sales-rapport-data. |
| `Collect/Financiele-Data.md` (C3) | Welke boekhoudtool, welke bank-PSD2-link, welke betaalprovider voor finance-rapport-data. |
| `Collect/Klantfeedback.md` (C4) | Welke survey-tool of feedback-bron voor NPS/CSAT-data. |
| `Collect/Website-Analytics.md` (C5) | Welke analytics-tool, of Plausible/GA4/Matomo, voor website-data. |
| `Operations/KPIs.md` (C7) | Welke operationele KPI's met welke frequentie, plus welke tool ze meet. |
| `IT/Toolstack.md` (S12) | **Verplicht checken.** Welke tools al in huis zijn (Make, n8n, Zapier, Resend, Postmark, Slack-workspace, Telegram-bot, Vercel-account), welke nog moeten. Bepaalt mede de tool-niveau-keuze in stap 3 van het interview. |
| `HR/Team.md` (S11) | Eigenaar per rapport. Eigenaar van A1-rapport = eigenaar van automatisering tenzij gebruiker iets anders zegt. |
| `Directie/00 - Overzicht.md` (S1) | Brand- en bedrijfsnaam voor mail-from-address en signature. |
| `Directie/Playbook/Brand-guide.md` of `Brand-guidelines.md` (S2) | Visuele identiteit voor HTML-mailtemplates en PDF-styling. |
| `Operations/Automations.md` (als die bestaat) | Bestaande automatiseringen. Voorkomt dubbele scheduled-tasks. |
| `Operations/SOPs/` of `Operations/Processen/` | Bestaande proces-documentatie waar rapportage al deels in beschreven kan zijn. |
| `Juridisch/Privacyverklaring.md` (J4) | AVG-context. Welke data mag via mail of Slack verstuurd worden, naar welke ontvangers. |
| `Juridisch/Klantcontract-Template.md` (J5) | Contractuele rapportage-verplichting (frequentie, vorm) die L2 moet eerbiedigen. |

Maak per gevonden bron een korte interne aantekening: voor welk rapport het relevant is, welke API-credentials nodig zijn, welke tool het beste past, en of er overlap is met A2 of A3.

**Belangrijk:** als een bron niet bestaat, skip stilletjes (behalve A1 zelf, die is verplicht). Markeer wel intern welke C-skills nog niet gedaan zijn, want dat beïnvloedt welke rapporten haalbaar zijn (een Stripe-omzet-rapport zonder C3 financiele-data-setup is mogelijk maar mist context over welke andere bronnen samenkomen).

### Stap 3: Externe input ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen waaruit ik kan putten? Bijvoorbeeld:
> - Een tool die al draait (een Make-scenario, een n8n-workflow, een Zapier-zap, een Pipedream-flow, een custom Node- of Python-script)
> - API-keys of OAuth-tokens voor Stripe, Pipedrive, HubSpot, Moneybird, Plausible, GA4, Notion, Airtable, Webflow, Postmark
> - Een voorbeeld-rapport dat je nu handmatig in elkaar klikt, plus een korte beschrijving van de stappen die je daarbij doet (welke data je waar trekt, hoe je het bewerkt, waar het naartoe gaat)
> - Een voorkeur voor mail-provider (Resend, Postmark, SendGrid, Mailgun, AWS SES) of een Slack-workspace die al staat
> - Een Telegram-bot of een native-app-push-systeem (Expo, OneSignal) dat al actief is
> - Een hosting-voorkeur voor de pipeline (Vercel-cron, Cloudflare Workers, GitHub Actions, eigen VPS, n8n-cloud, Make-cloud, Zapier-cloud)
>
> Hoe meer bronnen, hoe minder ik hoef uit te vragen en hoe sneller we tot een werkende spec komen."

Per aangeleverde bron:
- **Bestaande scenario of workflow**: scan op data-stappen, transformaties, output. Vaak is dit direct de basis voor één rapport-automation, alleen het kanaal of de frequentie verandert nog.
- **API-keys**: noteer welke services al geactiveerd zijn. Dat bepaalt de "data-bron credentials"-status in stap 4 van het interview.
- **Voorbeeld-rapport**: dit is goud. Reverse-engineer de stappen die de gebruiker handmatig doet. Vaak zijn dat exact de stappen die in n8n of Make worden gerepliceerd.
- **Mail- of distributie-provider**: noteer als gekozen. Skip de vraag in stap 5 als al gevuld.
- **Hosting-voorkeur**: bepaalt mede de tool-niveau-keuze in stap 2 van het interview. n8n self-hosted op een VPS is een ander pad dan Make-cloud.

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per rapport uit A1**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat, en de gebruiker laten zien welke rapporten kandidaten zijn voor de eerste rol-out.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden in Analyze/Rapportage-Templates.md
en de rest van de vault zie ik dit beeld:

  RAPPORT 1: Directie Weekrapport (uit A1)
    Frequentie: wekelijks, maandag 08:00
    Bronnen: Operations/KPIs (C7), 01 - Goals (S5)
    Eigenaar: Iwan (S11)
    Kanaal: e-mail naar iwan@upscailed.nl
    Tooling beschikbaar: n8n self-hosted (S12)
    Status: alle bronnen klaar, n8n geinstalleerd,
    Resend-API nog niet aangevraagd
    Geschikt voor eerste rol-out: ja

  RAPPORT 2: Sales Pipeline-weekrapport (uit A1)
    Frequentie: wekelijks, maandag 08:00
    Bronnen: CRM-Setup (C2), Pipedrive-API
    Eigenaar: Iwan (sales-rol)
    Kanaal: e-mail naar iwan@upscailed.nl
    Tooling beschikbaar: Pipedrive-account, n8n
    Status: Pipedrive-API-token nog niet aangevraagd
    Geschikt voor eerste rol-out: na API-token

  RAPPORT 3: Marketing Maandrapport (uit A1)
    Frequentie: maandelijks, eerste werkdag 09:00
    Bronnen: Marketing-Data (C1, 4 kanalen),
    Website-Analytics (C5, Plausible)
    Eigenaar: Iwan
    Kanaal: e-mail
    Tooling beschikbaar: Plausible-API, LinkedIn-API niet
    Status: deels klaar, LinkedIn-stats nog handmatig
    Geschikt voor eerste rol-out: ja, met LinkedIn-gat
    expliciet gemarkeerd

  RAPPORT 4: Finance Maandrapport (uit A1)
    Frequentie: maandelijks, eerste werkdag 09:00
    Bronnen: Financiele-Data (C3), Moneybird-API
    Eigenaar: Iwan (finance-rol)
    Kanaal: e-mail + PDF-archief in Drive
    Tooling beschikbaar: Moneybird-account, Resend
    Status: Moneybird-API-key beschikbaar
    Geschikt voor eerste rol-out: ja

  RAPPORT 5: Klant Kwartaalrapport (uit A1)
    Frequentie: per kwartaal
    Bronnen: meerdere C-skills + contract-verplichting J5
    Eigenaar: Iwan (account-manager-rol)
    Kanaal: PDF via klantportaal-upload
    Tooling beschikbaar: PDF-render onbekend
    Status: bron-overzicht klaar, render-tool nog te kiezen
    Geschikt voor eerste rol-out: nee, latere wave

  TOOLSTACK-CHECK (S12):
  - Make-account: nee
  - n8n self-hosted: ja, draait op VPS
  - Zapier-account: ja, gratis-tier
  - Resend / Postmark: nog te kiezen
  - Slack-workspace: nee
  - Telegram-bot: nee
  - Vercel-account: ja, met cron-functionaliteit
  - GitHub Actions: beschikbaar via persoonlijke GitHub

  AVG-CONTEXT (J4):
  - Privacyverklaring sluit aan op interne ontvangers
  - Voor extern-versturen klant-kwartaalrapport: contract
    bekijken op PII-vereisten, AVG-grondslag noteren

  GATEN waar ik nog vragen voor heb:
  - Welke 1 tot 3 rapporten gaan in de eerste wave?
  - Tool-niveau-keuze: n8n (al beschikbaar) of toch Make
    (visueel sneller voor jou)?
  - Mail-provider: Resend of Postmark, of toch SMTP?
  - Failure-alert-kanaal: Telegram, e-mail, of beide?

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de 7 blokken doorlopen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview blok voor blok

**Kernregel:** loop **één blok per beurt** af. Niet alle 7 tegelijk neerzetten. Per blok 1 tot 4 concrete vragen, wachten op antwoord, pas dan door.

#### Blok 1, Scope en A1-check (samenvatting + go/no-go)

Bevestig de scope en de aanwezigheid van `Analyze/Rapportage-Templates.md`. Toon de gebruiker hoeveel rapportages er in A1 staan en welke je hebt gevonden. Vraag of de set compleet is, of dat er sinds A1 nieuwe rapporten zijn bijgekomen die hier ook geautomatiseerd moeten worden.

Concrete vragen:
1. *"In A1 staan N rapporten. Klopt die set nog, of moeten we eerst A1 updaten voordat we automatiseren?"*
2. *"Zijn er sinds A1 nieuwe rapportage-behoeftes ontstaan die we hier meteen meenemen?"*

#### Blok 2, Tool-niveau kiezen

Dit is een sleutelbeslissing. Drie niveaus, met duidelijke trade-offs.

| Niveau | Tool | Voor wie | Voordeel | Nadeel |
|---|---|---|---|---|
| **Simpel (no-code)** | Make of Zapier of Pipedream | Solopreneurs zonder dev-achtergrond, ondernemers die zelf willen kunnen aanpassen | Visueel, kort opzet-traject (uren niet dagen), brede tool-library | Maandelijkse kosten lopen op bij hoog volume, beperkt in custom logica, vendor lock-in |
| **Medium (low-code)** | n8n self-hosted op VPS, Railway of Render | Ondernemers met team of basis-tech-comfort, kostenbewust | Open-source en self-hosted, oneindig veel runs, JavaScript-knooppunten voor custom logica, eigen data | Vereist server-onderhoud, OAuth-flow soms zelf opzetten, geen vendor-support |
| **Pro (code)** | Node-script of Python op Vercel-cron, Cloudflare Workers, GitHub Actions, eigen VPS | Bedrijven met dev-resources, complexe data-pipelines, hoge betrouwbaarheids-eisen | Volledig controleerbaar, makkelijk testbaar, perfecte versie-controle via Git, schaalbaar | Vereist dev-skills, meer opzet-tijd, monitoring zelf inrichten |

Concrete vragen:
1. *"Heb je dev-resources beschikbaar (jezelf, een freelancer, een tech-partner)? Zo nee, dan vermijden we het pro-niveau."*
2. *"Wil je zelf de scenario's kunnen aanpassen zonder hulp, of mag het opgesloten zitten in code?"* (zelf willen = no-code of low-code)
3. *"Welk niveau van betrouwbaarheid heb je nodig? Een wekelijks intern rapport mag eens een keer faal-retry hebben. Een kwartaalrapport naar een betalende klant mag dat niet."*
4. *"Wat past binnen je tooling-budget? Make en Zapier zijn 20-100 euro per maand bij actief gebruik, n8n self-hosted is 5-20 euro per maand server-kosten plus tijd, pro-code is gratis hosting (Vercel-cron, GitHub Actions) maar vereist dev-uren."*

Default-aanbeveling voor solopreneurs Upscailed-klant: **n8n self-hosted op een Hetzner-VPS van 5 euro per maand, of n8n-cloud bij geen technische affiniteit**. Visueel, geen run-limiet, hostable in EU (AVG-voordeel).

Default-aanbeveling voor MKB-team: **Make Pro of n8n cloud**, afhankelijk van budget.

Default-aanbeveling voor agency of bedrijf met dev-resources: **Node-script op Vercel-cron of Cloudflare Workers**. Volledig in Git, gratis hosting voor reasonable volume.

Schrijf het gekozen niveau plus tool expliciet vast voor stap 9.

#### Blok 3, Selectie: welke rapporten eerst

**Belangrijk:** automatiseer niet alle A1-rapporten tegelijk. Mik op een **eerste wave van 1 tot 3 rapporten** binnen 1 tot 2 weken live. Voor de rest volgt een wave 2 en wave 3 later.

Selectie-criteria:
- **Klaar om geautomatiseerd te worden:** alle bronnen ingericht, alle credentials beschikbaar, eigenaar gevalideerd.
- **Hoog handmatig-werk-volume nu:** een rapport dat de gebruiker nu wekelijks 30 minuten kost is een betere kandidaat dan een kwartaalrapport van 60 minuten dat hij eens per kwartaal doet. Wekelijks 30 minuten = 26 uur per jaar, kwartaal 60 minuten = 4 uur per jaar.
- **Eenvoudige bron-set:** een rapport met 1 of 2 bronnen is sneller live dan een rapport met 5 bronnen waarvan 2 nog geen API hebben.

Concrete vragen:
1. *"Welke van de A1-rapporten wil je in de eerste wave? Mijn voorstel op basis van pre-fill: [voorstel met 1 tot 3 namen]. Wil je dat overnemen, of een ander rapport eerst?"*
2. *"Welk rapport kost je nu de meeste handmatige tijd? Dat is meestal de beste eerste kandidaat."*
3. *"Welke rapporten plan je in wave 2 en wave 3? Geen werk hier, alleen volgorde zodat de roadmap zichtbaar is."*

Schrijf het wave-1-rapport-set vast, plus de geplande wave-2 en wave-3 met geschatte planning.

#### Blok 4, Data-bron credentials inventariseren

Per rapport in de wave-1 set: welke API-keys, OAuth-tokens of database-toegang zijn nodig. Werk vanuit de bron-data-velden in A1 plus de C-skill-outputs.

Standaard bronnen en hun credentials:

| Bron | Credentials-type | Hoe verkrijgen |
|---|---|---|
| Stripe | API-key (sk_live of sk_test) | Stripe Dashboard, Developers, API keys |
| Pipedrive | API-token | Pipedrive Settings, Personal preferences, API |
| HubSpot | OAuth of private app token | HubSpot Settings, Integrations, Private apps |
| Salesforce | OAuth via Connected App | Salesforce Setup, Apps, App Manager |
| Moneybird | OAuth of API-token | Moneybird Instellingen, Toepassingen, API |
| Exact Online | OAuth | Exact Online developer portal |
| Plausible | API-key (Plus-plan vereist) | Plausible Settings, API Keys |
| Google Analytics 4 | OAuth via Service Account | Google Cloud Console, IAM, Service Accounts |
| Matomo | Auth-token | Matomo Personal Profile, Security |
| Notion | Internal integration secret | Notion, My Integrations, New |
| Airtable | Personal access token (PAT) | Airtable Account, Developer hub |
| Webflow | API-token | Webflow Site Settings, Integrations |
| LinkedIn Ads | OAuth (developer-app vereist) | LinkedIn Developer Portal |
| Bank PSD2 | OAuth via Aggregator (Tink, Klarna Kosma, Yapily) | Aggregator-portal |
| Custom Postgres of MySQL | Connection string, read-only user | Eigen DB-admin |

Concrete vragen:
1. *"Voor [Rapport X] heb ik [Bron A] en [Bron B] nodig. Heb je de credentials beschikbaar, of moet je die nog aanvragen?"*
2. *"Waar wil je de credentials veilig bewaren? Standaard: in de tool zelf (n8n credentials-store, Make connections, Zapier authentications). Pro: in een secret-manager (Doppler, HashiCorp Vault, AWS Secrets Manager, .env-vars op Vercel)."*

Markeer per rapport per bron: status (beschikbaar / nog aanvragen / niet mogelijk). "Niet mogelijk" duidt op een bron die geen API heeft, dan moet de gebruiker een alternatief kiezen (CSV-export per mail, scraping, handmatige invoer).

#### Blok 5, Distributie-kanaal credentials

Per rapport: welk kanaal levert het rapport bij de ontvanger. Werk vanuit het distributie-kanaal-veld in A1.

Standaard kanalen en hun setup:

| Kanaal | Provider-opties | Setup-stappen |
|---|---|---|
| E-mail | Resend, Postmark, SendGrid, Mailgun, AWS SES, eigen SMTP | API-key + DNS (SPF, DKIM, DMARC) op het versturende domein |
| Slack | Slack Incoming Webhooks of Slack Bot User | Slack-app maken, webhook-URL kopieren of OAuth-flow doorlopen |
| Telegram | Telegram Bot via @BotFather | Bot-token verkrijgen, chat-id van ontvanger noteren |
| Microsoft Teams | Incoming Webhook | Teams-channel, Connectors, Incoming Webhook |
| Notion | Notion API + page-id | Page-share-link kopieren, page-id extracten |
| Native push (iOS of Android) | Expo, OneSignal, Firebase Cloud Messaging | App-key + ontvanger-token |
| PDF + Drive of SharePoint of S3 | Render-tool (Puppeteer, Weasyprint, Carbone) + upload via API | Render-tool kiezen, doel-bucket of folder credentials |
| Klant-portal-upload | Specifieke klant-portal API (Salesforce Community, custom portal) | Per klant-portal documentatie raadplegen |
| WhatsApp Business | WhatsApp Cloud API via Meta | Meta Business Suite, WhatsApp API setup |

Concrete vragen:
1. *"Voor [Rapport X] heb je in A1 [Kanaal Y] gekozen. Welke provider wil je gebruiken: [opties]?"*
2. *"Heb je het versturend domein al geconfigureerd voor mail (SPF, DKIM, DMARC)? Zo nee, dan eerst regelen, anders komen rapporten in spam."*
3. *"Voor PDF-rapporten: render je in de pipeline-tool zelf (Make heeft een PDF-module, n8n via HTML naar PDF-knooppunt) of via een externe service (Carbone, DocRaptor)?"*

Default-aanbeveling voor mail: **Resend** (developer-friendly, eerlijke prijzen, EU-region beschikbaar). Voor Slack: **Incoming Webhooks** (eenvoudig, geen OAuth). Voor Telegram: **Telegram Bot via @BotFather** (gratis, snel op te zetten).

#### Blok 6, Failure-handling en monitoring

Wat gebeurt er als de pipeline faalt. Dit is wat een hobby-automation onderscheidt van een productie-automation.

Concrete vragen:
1. *"Bij faal van een data-bron (API down, rate-limit, credentials verlopen): hoeveel keer retry, met welk interval?"* Default: 3 retries met exponential backoff (1, 5, 15 minuten).
2. *"Bij definitief faal (3 retries op): wie krijgt waar de alert?"* Opties: e-mail naar eigenaar, Telegram-bericht naar eigenaar, Slack-bericht in een #alerts-channel, Sentry of UptimeRobot-integratie.
3. *"Fallback-instructie: wat moet de eigenaar doen als de automatisering definitief faalt? Liefst een 5-regelige handmatige fallback-procedure, zodat het rapport tóch op tijd kan."*
4. *"Monitoring: wil je een wekelijkse 'health-check' krijgen waarin alle automatiseringen status doorgeven (groen = laatste run gelukt, rood = gefaald)?"*

Per rapport: noteer retry-policy, alert-route, fallback-procedure (kort), monitoring-frequentie.

**Belangrijk:** bouw nooit een automatisering zonder fallback. Een rapport dat 4 keer faalt op een rij en geen fallback heeft, kost de eigenaar meer dan een handmatig rapport. De fallback hoeft niet mooi te zijn (5-regelige stappenlijst is genoeg), wel uitvoerbaar zonder de automatisering.

#### Blok 7, AVG en PII-check

Welke data verlaat het bedrijf via de automatisering, naar wie, en mag dat onder de AVG.

Concrete vragen:
1. *"Welke persoonsgegevens (PII) zitten in elk rapport? Klantnamen, e-mailadressen, transactiebedragen gekoppeld aan namen, NPS-scores per klant?"*
2. *"Bij externe ontvangers (klantrapport, board-rapport): is er een AVG-grondslag (contractuele basis, gerechtvaardigd belang)? Staat dit in de verwerkersovereenkomst of klantcontract?"*
3. *"Sluit elke gebruikte tool aan op de AVG: heeft elke tool een verwerkersovereenkomst, staat die in je [J4 Privacyverklaring] gelinkt? Maak een lijst van: Stripe, Pipedrive, Resend, n8n-host, etc."*
4. *"PII die niet nodig is in een rapport: anonimiseren of weghalen. Bijvoorbeeld: een marketing-rapport heeft het lead-aantal nodig, niet de individuele namen."*

Per rapport: noteer welke PII erin staat, welke AVG-grondslag, welke verwerkers betrokken zijn, en of er anonimisering moet gebeuren.

**Belangrijk:** als een rapport PII bevat die niet onder een AVG-grondslag mag verzonden worden naar de gekozen ontvanger of via de gekozen tool: stop en herontwerp. Niet "wel doen en kijken wat gebeurt".

### Stap 6: Rapport-loop, per gekozen rapport 6 velden invullen

Na de 7 blokken: per rapport in de wave-1 set (1 tot 3 rapporten) doorloop je 6 velden om de automation-spec compleet te maken. Werk **één rapport per beurt**.

Voor elk rapport zes velden:

1. **Data-stappen**, concrete API-calls of database-query's, in volgorde. Bv. *"Stap 1: Stripe API GET /charges?created[gte]=last_monday filter status=succeeded. Stap 2: Pipedrive API GET /deals?status=won&won_time[gte]=last_monday. Stap 3: Plausible API GET /api/v1/stats/aggregate?period=7d&metrics=visitors,visits"*. Hyper-concreet, zodat een ontwikkelaar of n8n-bouwer direct kan implementeren.
2. **Transformatie**, wat gebeurt er met de ruwe data. Bv. *"Aggregeer Stripe-omzet per dag, som tot weektotaal. Filter Pipedrive-deals op fase = won. LLM-call naar Anthropic Claude met system-prompt 'schrijf in 3-5 zinnen executive summary van deze cijfers' en gestructureerd JSON-input"*.
3. **Formattering**, concrete output-vorm. Bv. *"HTML-mail met inline CSS, template uit references/email-template.html, variabelen invullen. PDF-versie via Puppeteer-render van dezelfde HTML met print-media-query"*. Verwijs naar het template-skelet uit A1 plus de Brand Guidelines (S2) voor styling.
4. **Distributie**, concrete provider-call. Bv. *"Resend API POST /emails met from=rapport@upscailed.nl, to=iwan@upscailed.nl, subject='Weekrapport KW17', html=<rendered_html>, attachments=[<pdf>]"*. Of *"Slack-webhook POST naar https://hooks.slack.com/services/... met blocks-payload"*.
5. **Schedule**, concrete cron-expressie plus tijdzone. Bv. *"Cron: 0 8 * * 1 (elke maandag 08:00). Tijdzone: Europe/Amsterdam. Eerste run: maandag YYYY-MM-DD 08:00"*. Voor maandelijks: *"Cron: 0 9 1-7 * 1 (eerste maandag van de maand om 09:00)"*. Voor kwartaal: *"Cron: 0 9 1 1,4,7,10 * (eerste van januari, april, juli, oktober om 09:00)"*.
6. **Failure-route**, concrete retry-policy plus alert-route. Bv. *"Retry 3x met 1-5-15-minuten-backoff. Bij definitief faal: alert naar Telegram-chat-id 1234567 met bericht 'Auto-rapport [Naam] faalde op [datum] bij stap [N]'. Fallback-procedure: open Stripe Dashboard, exporteer CSV omzet vorige week, mail handmatig naar iwan@upscailed.nl met onderwerp 'Handmatig weekrapport KW [nummer]'"*.

Plus optioneel:
- **Anomalie-detectie**, wanneer een KPI buiten norm valt: extra alert? Bv. *"Als pipeline-waarde > 30% gedaald versus vorige week: extra Telegram-alert direct, niet wachten op het rapport"*.
- **Versie en owner**, versie-tag van de automation-spec en de verantwoordelijke voor de pipeline-onderhoud (kan andere zijn dan de inhoudelijk-eigenaar uit A1).
- **Test-strategie**, *"Eerste dry-run op donderdag YYYY-MM-DD: rapport wordt gestuurd naar staging-adres rapport-staging@upscailed.nl ter validatie. Bij goedkeuring switch naar productie-adres."*

### Stap 7: Cron-expressies afleiden uit A1-tijdstippen

Per rapport: vertaal het A1-tijdstip (uit veld 8 van de A1-rapport-kaart) naar een werkende cron-expressie.

Standaard mappings:

| A1-tijdstip | Cron-expressie (5-veld POSIX) | Tijdzone-noot |
|---|---|---|
| Elke maandag 08:00 | `0 8 * * 1` | Europe/Amsterdam, set TZ env-var in tool |
| Eerste werkdag van de maand 09:00 | `0 9 1-7 * 1` (eerste maandag) of custom-logic voor "werkdag" (skip zaterdag-zondag-feestdagen) | Europe/Amsterdam |
| Eerste werkdag nieuw kwartaal 09:00 | `0 9 1 1,4,7,10 *` plus skip-weekend-logic | Europe/Amsterdam |
| Elke dag 07:00 | `0 7 * * *` | Europe/Amsterdam |
| Elke werkdag 07:00 | `0 7 * * 1-5` | Europe/Amsterdam |
| Eerste vrijdag van de maand 14:00 | `0 14 1-7 * 5` | Europe/Amsterdam |
| Laatste vrijdag van de maand 10:00 | Custom-logic (cron heeft geen native "laatste vrijdag", gebruik day-of-month-check in script of n8n) | Europe/Amsterdam |
| 1 januari 09:00 | `0 9 1 1 *` | Europe/Amsterdam |

**Belangrijke noten:**
- Tijdzone moet expliciet zijn. UTC en Europe/Amsterdam verschillen 1 of 2 uur. Cron-expressies zonder TZ-context geven verkeerde tijdstippen rond zomer- en wintertijd-switch.
- "Eerste werkdag" is niet 1-7 cron, dat is "eerste maandag". Voor echte werkdag (skip weekend + feestdagen) is een extra check in het script nodig.
- "Laatste werkdag" idem, geen native cron-syntax.

Voor pro-code-niveau: gebruik een library als `cron-parser` (Node) of `croniter` (Python) plus custom check op werkdagen.

### Stap 8: Anomalie-detectie en alert-regels

Per rapport: optioneel een set anomalie-regels die extra alerts triggeren los van de standaard rapport-frequentie.

Anomalie-regel-format:
- **Trigger**: KPI X > of < drempelwaarde Y, of % verandering Z versus referentie-periode
- **Vergelijkings-basis**: vorige periode (week, maand) of voortschrijdend gemiddelde (7-dagen, 30-dagen)
- **Actie**: extra alert naar kanaal A met inhoud B

Voorbeelden:

| Rapport | Anomalie-regel | Trigger | Actie |
|---|---|---|---|
| Sales weekrapport | Pipeline-waarde > 30% gedaald | Pipeline_value < 0.7 * pipeline_value_vorige_week | Telegram-alert naar eigenaar met "Pipeline gedaald van X naar Y" |
| Finance maandrapport | Cashflow < 0 | Bank_saldo_eind_maand < 0 | E-mail-alert plus Telegram naar eigenaar |
| Operations weekrapport | NPS < 7 | NPS_huidige_periode < 7 | Slack-alert in #operations met top-3 klachten |
| Marketing maandrapport | Bezoekers > 50% gedaald | Visitors_huidige_maand < 0.5 * visitors_vorige_maand | E-mail-alert plus actie-hint "check tracking-script en server-status" |

**Belangrijk:** anomalie-alerts blijven uit als de set leeg is. Niet elke rapportage hoeft anomalie-detectie. Bij eerste rol-out: voeg maximaal 1-2 anomalie-regels per rapport toe. Te veel anomalie-alerts geeft alert-fatigue en wordt niet meer gelezen.

### Stap 9: Schrijven en opslaan

Gebruik het template uit `references/template-auto-rapportage.md` als skelet. Vul met de uitkomsten uit pre-fill plus interview plus rapport-loop plus cron-mapping plus anomalie-set.

Sla op als:
```
{scope}/Leverage/Auto-Rapportage.md
```

Maak de `Leverage/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: auto-rapportage-setup
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: L2
tool-niveau: <simpel | medium | pro>
gekozen-tool: <Make | Zapier | Pipedream | n8n-self-hosted | n8n-cloud | Node-script-Vercel-cron | Cloudflare-Workers | GitHub-Actions | eigen-VPS>
aantal-rapporten-wave-1: <getal>
aantal-rapporten-totaal-gepland: <getal>
upstream-skill: A1 Rapportage Builder
---
```

**Plus update `{scope}/Operations/Automations.md`** (bouw aan als die niet bestaat). Voeg per rapport een regel toe met:
- Naam van de automatisering
- Frequentie
- Cron-expressie
- Tool
- Eigenaar
- Status (in-ontwikkeling / live / gepauzeerd)
- Link terug naar de detail-kaart in `Leverage/Auto-Rapportage.md`

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "krachtige automatisering", "next-level reporting", "razendsnelle pipeline". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Resend API POST /emails met from=rapport@upscailed.nl en cron 0 8 * * 1 in TZ Europe/Amsterdam" is sterker dan "we sturen wekelijks een mail".
- **Geen em-dashes.** Gebruik komma's, haakjes of losse zinnen.
- **Auto-rapport-kaarten in vaste structuur:** naam, frequentie, tool, data-stappen, transformatie, formattering, distributie, schedule, failure-route, AVG-noot, eigenaar.
- **Getallen consistent:** tijdstippen in 24-uurs formaat, cron-expressies in 5-veld POSIX, frequenties in vaste woorden.
- **Eén overzichtstabel bovenaan:** alle geautomatiseerde rapporten met frequentie, cron, tool, kanaal, eigenaar, status. Daaronder per rapport een kaart met volledig detail.
- **Cross-links expliciet:** naar A1 voor de bron-template, naar S12 voor de tool, naar S11 voor de eigenaar, naar J4 voor de AVG-grondslag, naar C-skills voor de bron-data.

### Stap 10: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):
1. **Changelog bedrijf:** `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Leverage/Auto-Rapportage.md`, v1.0, N rapporten in wave-1, tool-niveau [X], gekozen tool [Y]"*.
2. **Operations/Automations.md:** per rapport een regel toegevoegd (zie stap 9).
3. **Daily:** als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md` in een Iwan-OS-stijl vault, of een Notion-daily-pagina), log dan een eenregelige melding plus link naar het nieuwe bestand. Skip als die conventie niet bestaat.
4. **Goals-bestand:** als `{scope}/Directie/01 - Goals.md` een L2-doel of automatisering-doel heeft: status bijwerken, regel toevoegen aan voortgangslog.
5. **Scale-audit-suggestie:** als `{scope}/Directie/Research/` een audit-rapport bevat waar L2 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien zodra wave-1 live is.

Vervolgsuggesties die je altijd noemt:
- **Wave-1 live: build, test, productie.** Plan 3 fasen: (a) build de pipelines in de gekozen tool, (b) dry-run gedurende 1-2 cycles naar staging-adres, (c) switch naar productie. Niet direct productie zonder dry-run.
- **Wave-2 en wave-3 planning.** Zodra wave-1 stabiel draait (typisch 2-4 weken), start wave-2 met dezelfde flow per rapport.
- **A1 onderhouden.** Als de A1-rapport-templates wijzigen (nieuwe KPI, ander tijdstip, andere ontvanger): update L2 automation-spec dezelfde dag. Versies blijven gelijk: A1 v1.X = L2 v1.X gebruikt dezelfde KPI-set.
- **Cross-link met L3 Mailflow Setup:** als de distributie naar klanten via een mail-sequentie loopt (lead-nurture plus rapportage), is L3 het samenstellings-punt. L2 levert het rapport, L3 plaatst het in de juiste sequence.
- **Cross-link met L4 Finance Automatisering:** finance-rapportages overlappen vaak met bank-koppelingen en facturatie. Bekijk of L4 al actief is, of overlap voorkomt.
- **Cross-link met E1 Dashboard Bouwer:** als de wave-2 of wave-3 te complex wordt voor een gepushed rapport (te veel data, te interactief), is E1 de doorgroei naar een eigen visueel dashboard.
- **Review-ritme:** kwartaal: lopen alle automatiseringen nog? Wanneer zijn er fails geweest, hoe is dat opgepakt? Halfjaarlijks: tool-keuze nog optimaal, of moet er gemigreerd worden (bijvoorbeeld Make-prijs te hoog geworden, switch naar n8n)?

## Belangrijke regels

- **A1 verplicht aanwezig.** Geen `Analyze/Rapportage-Templates.md` = geen L2. Stop en stuur door naar `rapportage-builder` (A1). Schrijf nooit een lege Auto-Rapportage.md.
- **Eén blok per beurt** in het interview. Niet alle 7 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Eén rapport per beurt** in de rapport-loop (stap 6). Niet alle wave-1-rapporten tegelijk de 6 velden vragen. Volg de volgorde van A1-prioriteit.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Tool-niveau-keuze is doorslaggevend.** Een verkeerde tool-keuze (no-code waar pro nodig is, of pro waar geen dev-resources zijn) breekt de hele setup. Stel hard de vragen uit blok 2.
- **Wave-1 = 1 tot 3 rapporten.** Niet meer. Een eerste rol-out van 8 rapporten faalt altijd ergens, en het wordt niet duidelijk waar. Klein beginnen.
- **Failure-handling is geen optie.** Elke automatisering heeft retry-policy, alert-route en fallback-procedure. Een rapport zonder fallback faalt vroeger of later definitief.
- **AVG vooraf.** PII in rapporten naar externe ontvangers vereist AVG-grondslag plus verwerkersovereenkomst met de gebruikte tools. Bij twijfel: stop en check met `privacyverklaring` (J4).
- **Cron-expressies expliciet plus tijdzone.** Geen "ergens maandag", wel "0 8 * * 1 in TZ Europe/Amsterdam". Geen UTC zonder TZ-noot.
- **Geen valse precisie in retries.** "3 retries met exponential backoff 1-5-15 minuten" werkt, "retry tot het klopt" niet. Eindigheid is verplicht.
- **Onderscheid bewaken met L1, L3, L4 en E1.** Rapportage-automatisering is L2. Proces-automatisering is L1. Mailflow-sequenties zijn L3. Facturatie en bank is L4. Eigen dashboard-app is E1.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe bronnen.** Een bestaand Make-scenario of n8n-workflow bespaart 60% van het werk. Vraag dat eerst.
- **Geen marketing-trucjes.** Geen "imagine if your business runs on autopilot...", geen rhetorische vragen. Recht voor zijn raap.
- **Mik op een werkende automatisering, niet op een uitgewerkt design-doc.** Het doel is dat het rapport zonder mens draait. Een prachtig document zonder werkende pipeline scoort geen ✅ op L2.
- **Test eerst, productie daarna.** Dry-run naar staging-adres voor 1-2 cycles voor elke pipeline live gaat. Een verkeerd rapport naar een klant is een groter probleem dan een vertraagde rol-out.
- **Tool-keuze 1x, niet steeds switchen.** Een bedrijf met n8n self-hosted in productie wisselt niet halverwege wave-2 naar Make. Tool-keuze geldt voor minstens 12-18 maanden, daarna review.

## Voorbeeld-output

Zie [`references/template-auto-rapportage.md`](references/template-auto-rapportage.md) voor de exacte structuur die de skill oplevert: overzichtstabel met alle geautomatiseerde rapporten, auto-rapport-kaart per template met alle 6 velden plus optionele anomalie-regels, cross-links naar A1 (bron-template), S11 (eigenaren), S12 (tooling), J4 (AVG), C-skills (bron-data) en de vervolg-skills L3, L4 en E1.
