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

# Auto-Rapportage, <Bedrijfsnaam>

> SCALE-stap L2 (Leverage). Dit document legt vast hoe de in A1 ontworpen rapportages zonder menselijke tussenkomst van data-bron tot kanaal komen: tool-niveau, data-stappen, transformatie, formattering, distributie, schedule (cron plus tijdzone) en failure-handling per rapport. Het is de operationalisering van `Analyze/Rapportage-Templates.md`.

## Hoe dit document werkt

- Upstream bron: [[Analyze/Rapportage-Templates]] (A1). Geen wijziging hier zonder dat A1 mee verandert.
- Eén automatisering per rapport. Eén eigenaar voor de inhoud (uit A1, gekoppeld aan [[HR/Team]] via S11), eén eigenaar voor de pipeline-onderhoud (kan dezelfde zijn, kan tech-rol zijn).
- Tool-niveau eenmalig gekozen voor minstens 12 tot 18 maanden. Wisselen tijdens een wave introduceert fouten.
- Wave-1 is de eerste set live rapporten (1 tot 3). Wave-2 en wave-3 volgen als wave-1 stabiel draait (typisch na 2 tot 4 weken).
- Cron-expressies altijd met tijdzone (Europe/Amsterdam tenzij anders). Geen UTC zonder TZ-noot.
- Cross-links: A1 (bron-template), S11 (eigenaren), S12 (tooling), J4 (AVG-grondslag), C1 t/m C7 (bron-data), L3 (mailflow voor sequence-rapporten), L4 (finance-overlap), E1 (doorgroei naar dashboard-app).

## Tool-keuze

| Veld | Inhoud |
|---|---|
| **Tool-niveau** | simpel / medium / pro |
| **Gekozen tool** | <Make / Zapier / Pipedream / n8n-self-hosted / n8n-cloud / Node-script-Vercel-cron / Cloudflare-Workers / GitHub-Actions / eigen-VPS> |
| **Hosting** | <waar de tool draait, incl. region voor AVG-context> |
| **Geschatte maand-kosten** | <bedrag per maand bij verwacht volume> |
| **Onderhouds-eigenaar** | <persoon of rol uit HR/Team> |
| **Aanleiding tot deze keuze** | <waarom dit niveau, op basis van interview-blok 2: dev-resources, zelf-aanpas-wens, betrouwbaarheids-eis, budget> |

## Overzichtstabel: alle geautomatiseerde rapporten

| Rapport | Frequentie | Cron | Tijdzone | Tool | Kanaal | Eigenaar inhoud | Eigenaar pipeline | Status |
|---|---|---|---|---|---|---|---|---|
| <Rapport-naam 1> | Wekelijks | `0 8 * * 1` | Europe/Amsterdam | <n8n> | E-mail (Resend) | <Rol uit Team> | <Rol uit Team> | in-ontwikkeling |
| <Rapport-naam 2> | Maandelijks | `0 9 1-7 * 1` | Europe/Amsterdam | <n8n> | E-mail + PDF in Drive | <Rol> | <Rol> | live |
| <Rapport-naam 3> | Per kwartaal | `0 9 1 1,4,7,10 *` | Europe/Amsterdam | <Node-script> | PDF via klant-portal | <Rol> | <Rol> | wave-2 |

## Wave-planning

| Wave | Rapporten | Start | Doel-status |
|---|---|---|---|
| Wave 1 | <Rapport 1, 2> | YYYY-MM-DD | Live binnen 1-2 weken |
| Wave 2 | <Rapport 3, 4> | YYYY-MM-DD | Live binnen 4-6 weken |
| Wave 3 | <Rapport 5, 6, 7> | YYYY-MM-DD | Live binnen 8-12 weken |

---

## Rapport 1: <Naam>

Cross-link bron-template: [[Analyze/Rapportage-Templates#Rapport 1: <Naam>]] (A1)

| Veld | Inhoud |
|---|---|
| **Frequentie** | <Wekelijks / maandelijks / kwartaal / jaarlijks> |
| **Cron-expressie** | `<5-veld POSIX cron>` |
| **Tijdzone** | Europe/Amsterdam |
| **Eerste run** | <YYYY-MM-DD HH:MM> |
| **Doelgroep** | <Ontvanger(s), cross-link HR/Team> |
| **Kanaal** | <E-mail via Resend / Slack-webhook / Telegram-bot / PDF + Drive / klant-portal> |
| **Eigenaar inhoud** | <Rol uit Team, uit A1 overgenomen> |
| **Eigenaar pipeline** | <Rol uit Team, wie houdt de tool draaiend> |
| **AVG-grondslag** | <Contractueel / gerechtvaardigd belang / toestemming, plus verwijzing naar J4 Privacyverklaring> |

### 1. Data-stappen

Concrete API-calls of database-query's in volgorde. Hyper-concreet: een ontwikkelaar of n8n-bouwer moet direct kunnen implementeren.

```
Stap 1: <Tool / API> <call met endpoint en parameters>
        Bv. Stripe API GET /charges?created[gte]=last_monday filter status=succeeded
        Auth: API-key uit secret-manager (env-var STRIPE_KEY)

Stap 2: <Tool / API> <call>
        Bv. Pipedrive API GET /deals?status=won&won_time[gte]=last_monday
        Auth: API-token (env-var PIPEDRIVE_TOKEN)

Stap 3: <Tool / API> <call>
        Bv. Plausible API GET /api/v1/stats/aggregate?period=7d&metrics=visitors,visits
        Auth: API-key (env-var PLAUSIBLE_KEY)
```

### 2. Transformatie

Wat gebeurt er met de ruwe data tot KPI-niveau klaar.

```
- Aggregeer <bron-data> per <eenheid> tot <KPI>
  Bv. Aggregeer Stripe-omzet per dag, som tot weektotaal

- Filter <bron-data> op <criterium>
  Bv. Filter Pipedrive-deals op fase = won, periode = vorige_maandag tot zondag

- Vergelijk met vorige periode
  Bv. Trend = (huidige_week - vorige_week) / vorige_week, geef terug als percentage met pijl

- LLM-call voor executive summary (optioneel)
  Provider: Anthropic Claude Sonnet of OpenAI GPT-4
  System-prompt: "Schrijf 3-5 zinnen executive summary in zakelijk Nederlands.
                  Noem: wat is goed, wat is rood, welke beslissing nodig.
                  Geen emoji's, geen marketing-superlatieven, geen em-dashes."
  Input: JSON met KPI's + trends + anomalieen
  Output: plain-text 3-5 zinnen
```

### 3. Formattering

Concrete output-vorm. Verwijs naar A1 template-skelet plus Brand Guidelines (S2).

```
Format: <HTML-mail / PDF / Slack-blocks / Telegram-Markdown / Notion-page>

HTML-mail:
- Template: references/email-template.html
- Brand: zie [[Directie/Playbook/Brand-guidelines]]
- Variabelen: {{exec_summary}}, {{kpi_table}}, {{trend_chart_url}}, {{actions}}
- Inline CSS (geen externe stylesheets)
- Width: 600px max
- Donker-modus-safe (test in Litmus of Email on Acid)

PDF (optioneel):
- Renderer: Puppeteer (n8n-knooppunt) of Weasyprint of Carbone
- Print-media-query in CSS
- Filename: <bedrijf>-<rapport>-<YYYY-WW>.pdf
- Archief: <opslag-pad in Drive of S3>
```

### 4. Distributie

Concrete provider-call.

```
Provider: <Resend / Postmark / SendGrid / Mailgun / SMTP / Slack-webhook / Telegram-bot>

E-mail via Resend:
- POST https://api.resend.com/emails
- Auth: Bearer-token (env-var RESEND_KEY)
- Payload:
  from: rapport@<domein>.nl
  to: <ontvanger-email>
  cc: <optioneel>
  subject: "<Rapportnaam> KW<weeknr> <YYYY>"
  html: <rendered_html>
  attachments: [{ filename: "...pdf", content: <base64> }]
- DNS: SPF + DKIM + DMARC ingesteld op versturend domein

Slack via webhook:
- POST <webhook-url> uit secret-manager
- Payload: { "blocks": [...] } per Slack Block Kit
- Channel: #<channel-naam> (in webhook ingebakken)
```

### 5. Schedule (cron plus tijdzone)

```
Cron: <5-veld POSIX>
TZ:   Europe/Amsterdam
```

Voor "eerste werkdag van de maand" of "laatste werkdag": cron geeft je een set kandidaten, het script of n8n-knooppunt skip dan zaterdag/zondag/feestdagen via een nederlandse-feestdagen-check.

```
Voorbeeld werkdag-check (pseudo-code):
- Cron triggert op kandidaat-datum
- Check: is_werkdag(datum) returnt true?
  - is geen weekend
  - is geen Nederlandse feestdag (Pasen, Koningsdag, Hemelvaart, Pinksteren, Kerst)
- Zo nee: schuif naar volgende werkdag (of skip helemaal, afhankelijk van rapport-eis)
- Zo ja: pipeline draait
```

### 6. Failure-route

Wat gebeurt bij faal van een data-stap of distributie-stap.

```
Retry-policy:
- 3 retries met exponential backoff: 1 min, 5 min, 15 min
- Per stap: alleen retry op transient errors (5xx, rate-limit, network)
- Niet retry op: 4xx (credentials-fout, validatie-fout), direct alert

Alert-route bij definitief faal:
- Primair: Telegram naar chat-id <ID>
  Bericht: "Auto-rapport [Naam] faalde op [datum HH:MM] bij stap [N: data/transform/format/distribute]"
- Secundair: e-mail naar <pipeline-eigenaar-email>
- Logging: alle fails in <Sentry of logging-tool> met stack-trace

Fallback-procedure (uitvoerbaar zonder pipeline):
1. Open <bron-tool 1> dashboard, exporteer <data> voor periode <X> als CSV
2. Open <bron-tool 2> dashboard, exporteer <data>
3. Open <template-doc>, vul handmatig in (5-10 minuten werk)
4. Mail handmatig vanaf <eigen-mailadres> naar <ontvanger> met onderwerp "Handmatig <rapportnaam> [periode]"
5. Log de fallback in <incidenten-log of changelog>
```

### Anomalie-detectie (optioneel)

Regels die extra alerts triggeren los van de normale rapport-cyclus.

| Anomalie-regel | Trigger-conditie | Vergelijkings-basis | Actie |
|---|---|---|---|
| <Pipeline-waarde > 30% gedaald> | `pipeline_value < 0.7 * pipeline_value_vorige_week` | Vorige week | Extra Telegram-alert direct, niet wachten op rapport |
| <Cashflow < 0> | `bank_saldo_eind_maand < 0` | Absolute waarde | E-mail + Telegram naar eigenaar |

### Test-strategie

```
Dry-run plan:
- Eerste run: <YYYY-MM-DD HH:MM>
- Doel: <staging-email rapport-staging@upscailed.nl>, niet productie-ontvanger
- Duur: 1 of 2 cycles (1 wekelijks rapport = 1 of 2 weken testen)
- Validatie-criteria:
  - Layout klopt (inline CSS rendert in Gmail / Outlook / Apple Mail)
  - Cijfers kloppen versus handmatige check
  - Tijdstip klopt (TZ-validatie)
  - Failure-alert werkt (forceer een fail tijdens test)
- Switch naar productie: zodra alle criteria green, switch ontvanger-veld
```

---

## Rapport 2: <Naam>

(Zelfde tabel-structuur en 6 velden als boven, voor het volgende geautomatiseerde rapport.)

---

## Rapport 3: <Naam>

(Zelfde tabel-structuur en 6 velden, eventueel met sub-secties voor kwartaalrapport: PDF-render, klant-portal-upload, contractuele eisen uit J5.)

---

## Toolstack en credentials

Lijst van alle integraties die in deze automatiseringen gebruikt worden, plus credential-status.

| Tool | Doel | Credentials-status | Bewaar-locatie | AVG-noot |
|---|---|---|---|---|
| Stripe | Omzet-data | API-key beschikbaar | Secret-manager <Doppler / Vault / env-var> | Verwerker met EU-DPF, AVG-bijlage in J4 |
| Pipedrive | CRM-data | API-token beschikbaar | Secret-manager | Verwerker, AVG-bijlage in J4 |
| Plausible | Website-data | API-key beschikbaar | Secret-manager | EU-host, lichtgewicht-PII |
| Resend | Mail-distributie | API-key beschikbaar | Secret-manager | Verwerker, EU-region beschikbaar |
| n8n | Pipeline-orchestratie | Self-hosted op Hetzner VPS (EU) | n8n credentials-store | Eigen hosting, geen extern verwerker voor pipeline-logica |
| Telegram Bot API | Alert-kanaal | Bot-token beschikbaar | Secret-manager | Bot stuurt naar eigen chat, geen klant-PII |

## AVG en privacy

Per rapport: welke PII (Persoonlijke Identificeerbare Informatie) zit erin, welke AVG-grondslag, welke verwerkers betrokken.

| Rapport | PII in rapport | Externe ontvanger | AVG-grondslag | Verwerkers-keten |
|---|---|---|---|---|
| <Rapport 1: Directie weekrapport> | Geen (alleen geaggregeerd) | Nee, intern | Intern gebruik | Stripe -> n8n -> Resend (allemaal in [[Juridisch/Privacyverklaring]]) |
| <Rapport 2: Marketing maandrapport> | Lead-namen optioneel | Nee, intern | Intern gebruik | Plausible -> n8n -> Resend |
| <Rapport 3: Klant kwartaalrapport> | Klantnaam (eigen klant, ontvanger zelf) | Ja, klant | Contractueel | Pipedrive -> n8n -> klant-portal |

**Belangrijk:** PII die niet nodig is in een rapport wordt geanonimiseerd of weggelaten. Een marketing-rapport heeft het lead-aantal nodig, niet de individuele namen.

Cross-link [[Juridisch/Privacyverklaring]] (J4) voor de complete AVG-context plus verwerkersovereenkomsten per tool.

## Monitoring en health-check

Optionele wekelijkse meta-rapportage over de automatiseringen zelf.

```
Health-check rapport:
- Frequentie: wekelijks, vrijdag 16:00
- Cron: 0 16 * * 5 (Europe/Amsterdam)
- Bron: logging-store van pipeline-tool (n8n executions, Vercel-cron-logs, GitHub-Actions-runs)
- KPI's:
  - Aantal succesvolle runs per rapport deze week
  - Aantal failures per rapport deze week
  - Gemiddelde uitvoeringstijd per rapport
  - Credentials-status (alle API-keys nog geldig?)
- Kanaal: e-mail naar pipeline-eigenaar
- Actie bij rode status: pipeline-eigenaar pakt op binnen 1 werkdag
```

## Wave-2 en wave-3 planning (concept)

Rapporten die nog niet in wave-1 zitten, met geschatte timing.

| Rapport | Wave | Beoogde live-datum | Blokkades |
|---|---|---|---|
| <Rapport 4: Operations weekrapport> | 2 | YYYY-MM-DD | Wave-1 moet 2 weken stabiel draaien |
| <Rapport 5: Klant kwartaalrapport> | 3 | YYYY-MM-DD | PDF-render-tool nog te kiezen, klant-portal API documenteren |

## Bewuste samenvoegingen of afwijkingen

Automatiseringen die bewust afwijken van de A1-spec (bv. wekelijks-rapport en daily-briefing in één pipeline samengevoegd voor solopreneur).

| Afwijking | Reden | Wanneer terugdraaien |
|---|---|---|
| <Voorbeeld: Daily-briefing en directie-weekrapport delen Stripe-API-call> | API-rate-limit-besparing, beide rapporten triggeren binnen 1 uur | Bij groei naar 5+ FTE of bij rate-limit-uitbreiding |

---

## Cross-links

- **Upstream:** [[Analyze/Rapportage-Templates]] (A1, ontwerp van rapporten)
- **Tooling:** [[IT/Toolstack]] (S12)
- **Eigenaren:** [[HR/Team]] (S11)
- **AVG-context:** [[Juridisch/Privacyverklaring]] (J4)
- **Bron-data:** [[Collect/Marketing-Data]] (C1) · [[Collect/CRM-Setup]] (C2) · [[Collect/Financiele-Data]] (C3) · [[Collect/Klantfeedback]] (C4) · [[Collect/Website-Analytics]] (C5) · [[Collect/Concurrentie-Research]] (C6) · [[Operations/KPIs]] (C7)
- **Mission Control overlap:** [[Analyze/Mission-Control]] (A2, live-variant)
- **Daily Brief overlap:** [[Analyze/Daily-Briefing-Setup]] (A3, dagelijkse sub-rapportage)
- **Vervolg-skills:** [[Leverage/Mailflow]] (L3, mail-sequence-distributie) · [[Leverage/Finance-Automatisering]] (L4, facturatie en bank-overlap) · [[Engineer/Dashboard]] (E1, doorgroei naar eigen dashboard-app)
- **Automations-register:** [[Operations/Automations]] (operationeel register van alle scheduled tasks)

---

## Review-ritme

- **Per kwartaal:** lopen alle automatiseringen nog? Hoeveel fails afgelopen kwartaal, hoe opgepakt? Welke wave-2 of wave-3 rapporten gaan live komend kwartaal?
- **Per halfjaar:** tool-keuze nog optimaal? Make-prijs niet te hoog geworden, n8n-host nog stabiel, Vercel-cron-limiten niet bereikt? Bij twijfel: tool-migratie-besluit nemen.
- **Per jaar:** A1-templates herzien en daarmee deze L2-spec. Welke rapporten worden niet meer gelezen (snorhaar-criterium uit A1-review), welke nieuwe rapporten zijn ontstaan?
- **Bij A1-update:** als een rapport-template wijzigt (nieuwe KPI, ander tijdstip, andere ontvanger), update L2 automation-spec dezelfde dag.
