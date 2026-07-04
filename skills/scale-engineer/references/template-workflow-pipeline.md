---
type: workflow-pipeline
bedrijf: "{Bedrijfsnaam}"
scope: "{Pad binnen vault}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: E3
orchestratie-laag: "{n8n / Temporal / Inngest / Airflow / custom}"
aantal-workflows: 0
state-opslag: "{Postgres / Redis / orchestratie-intern}"
observability-stack: "{Sentry / eigen / DataDog / ...}"
versionering: "{Git-repo-URL}"
migratie-deadline: YYYY-MM-DD
---

# Workflow-Pipeline — {Bedrijfsnaam}

> **Wat is dit document?** De canonieke E3-pipeline-spec voor {Bedrijfsnaam}. Hier staat hoe de losse automatiseringen (uit L1 tot en met L4) samenwerken als één geordende keten: welke triggers, welke workflows, welke orchestratie-laag, welke state, welke observability, welke versie-aanpak, en welk migratie-pad van losse flows naar deze pipeline.

---

## Samenvatting

| Aspect | Waarde |
|---|---|
| **Orchestratie-laag** | {n8n self-hosted op Hetzner / Temporal Cloud / Inngest / Airflow / custom EventBridge-stack} |
| **Aantal workflows in pipeline** | {N} |
| **Externe triggers** | {Aantal — webhooks, crons, manueel} |
| **State-opslag** | {Postgres / Redis / orchestratie-intern} |
| **Observability** | {Sentry + n8n executions / DataDog / eigen log-dashboard} |
| **Versionering** | {Git-repo-URL, branch-strategie main + PR} |
| **Migratie-deadline volledige pipeline** | YYYY-MM-DD |
| **Eerste actie deze week** | {Bv. "n8n droplet opzetten + Git-repo aanmaken + eerste workflow als JSON exporteren"} |
| **Regel** | Side-by-side migratie verplicht. Geen big-bang. Per workflow minstens 1 week parallel met oude flow voor deactivatie. |

---

## Pipeline-overzicht (high-level diagram)

```
              ┌───────────────────────────────┐
              │  EXTERNE TRIGGERS              │
              │  - {Bv. Calendly webhook}      │
              │  - {Bv. Stripe webhook}        │
              │  - {Bv. Inbound email (Brevo)} │
              │  - {Bv. Cron 09:00 dagelijks}  │
              └───────────┬───────────────────┘
                          ▼
              ┌───────────────────────────────┐
              │  ORCHESTRATIE-LAAG             │
              │  ({Gekozen tool})              │
              │                                │
              │  Workflow A: {Naam}            │
              │  Workflow B: {Naam}            │
              │  Workflow C: {Naam}            │
              │  Workflow D: {Naam}            │
              └───────────┬───────────────────┘
                          ▼
              ┌───────────────────────────────┐
              │  STATE-LAAG                    │
              │  {Postgres-records}            │
              │  {Redis-cache}                 │
              │  {Queue: BullMQ / SQS}         │
              └───────────┬───────────────────┘
                          ▼
              ┌───────────────────────────────┐
              │  OUTPUT-BESTEMMINGEN           │
              │  - {Bv. Moneybird facturen}    │
              │  - {Bv. Brevo mailings}        │
              │  - {Bv. Slack notificaties}    │
              │  - {Bv. HubSpot records}       │
              └────────────────────────────────┘
```

**Cross-flow data-stromen:**
- Workflow A → Workflow B: {welke data wordt doorgegeven, via welk veld}
- Workflow B → Workflow C: {idem}
- Workflow C → externe output: {idem}

---

## Per workflow

### Workflow A — {Naam workflow}

**Doel:** {Een regel waarom deze workflow bestaat.}
**Onderliggende SOP:** [`Operations/Processen/{SOP-Naam}.md`](../Operations/Processen/{SOP-Naam}.md)

| Aspect | Waarde |
|---|---|
| **Trigger** | {Event Calendly webhook / cron 09:00 dagelijks / webhook URL / manueel UI / inbound mail} |
| **Input-schema** | `{naam, email, telefoon, datum, dienst}` (JSON Schema: `schemas/workflow-a-input.json`) |
| **Processing-stappen** | 1. {Eerste stap met tool of skill} → 2. {Tweede stap} → 3. {Derde stap} → 4. {Vierde stap} |
| **Output-bestemming** | {Bv. CRM-record bijgewerkt in HubSpot, mailflow gestart in Brevo, Slack-notificatie naar #leads} |
| **Exception-handling** | {Bij failure: notificatie naar Slack #ops, dead-letter-queue in Postgres-tabel `failed_runs`, fallback handmatig pad} |
| **Retry-strategie** | {3 retries, exponentiële backoff (30s, 2m, 10m), maximale runtime 15 min, timeout per stap 60s} |
| **State-doorgift** | {klant-ID, run-ID, idempotency-key (Calendly event-ID)} |
| **Idempotency-key** | {Calendly event-ID — voorkomt dubbele verwerking bij webhook-retry} |
| **Verwachte run-tijd** | {Bv. 30 seconden per run} |
| **Verwachte run-frequentie** | {Bv. 5 tot 20 keer per dag} |
| **Owner monitoring** | {Persoon uit HR/Team.md} |
| **Owner escalatie** | {Back-up of externe partij} |

**Samenvatting (3 regels):**
- Trigger: {Een regel}
- Kern-output: {Een regel}
- Owner: {Een regel}

---

### Workflow B — {Naam workflow}

*Zelfde structuur als Workflow A.*

---

### Workflow C — {Naam workflow}

*Zelfde structuur.*

---

### Workflow D — {Naam workflow}

*Zelfde structuur.*

---

## Orchestratie-laag

### Keuze: **{Gekozen tool}**

| Criterium | Score voor dit bedrijf | Hoe past dit bij {tool} |
|---|---|---|
| Aantal workflows | {Klein / Medium / Groot} | {Argumentatie} |
| Runs per dag | {Range} | {Argumentatie} |
| Dev-resources | {Niveau} | {Argumentatie} |
| Self-hosted bereidheid | {Ja / Nee / Voorkeur} | {Argumentatie} |
| State-complexiteit | {Niveau} | {Argumentatie} |
| Visueel vs code | {Voorkeur} | {Argumentatie} |
| Bestaand toolingsstack | {Wat staat in IT/Toolstack.md} | {Argumentatie} |

**Argumentatie keuze (3 regels):**
- Waarom deze tool: {Een regel}
- Welk alternatief afgevallen en waarom: {Een regel}
- Migratie-pad globaal: {Een regel}

**Hosting-keuze:**
- {Bv. n8n self-hosted op een Hetzner-VM 4 GB / 2 vCPU / 80 GB SSD voor 6 euro per maand}
- {Bv. Domein workflows.{bedrijf}.nl met Cloudflare voor TLS}
- {Bv. Backups dagelijks naar S3 / Hetzner Object Storage}

---

## State-laag

| Aspect | Keuze | Argumentatie |
|---|---|---|
| Run-state opslag | {Postgres / Redis / n8n-intern} | {Een regel} |
| Queue | {BullMQ / SQS / n8n-queue / RabbitMQ} | {Een regel} |
| Idempotency-store | {Postgres-tabel `idempotency_keys` met UUID-uniqueness / Redis SET} | {Een regel} |
| Schemaversies | {JSON Schema in `schemas/` per workflow, versie in Git} | {Een regel} |
| Retentie run-records | {30 dagen / 1 jaar / oneindig} | {AVG-overweging een regel} |

**State-doorgift-patroon:**
- {Bv. "Workflow A schrijft `klant_id` en `lead_status` in Postgres-tabel `leads`. Workflow B leest die record en update `onboarding_status`. Workflow C leest de samengevoegde record als basis voor factuur."}

---

## Observability-laag

| Aspect | Keuze | Argumentatie |
|---|---|---|
| Error-tracking | {Sentry / Highlight / eigen} | {Een regel} |
| Logs | {n8n-intern / Loki / CloudWatch / eigen log-dashboard} | {Een regel} |
| Traces | {OpenTelemetry naar Honeycomb / nog niet nodig} | {Een regel} |
| Metrics | {Prometheus + Grafana / DataDog / nog niet nodig} | {Een regel} |
| Alerting | {Slack #ops / email / PagerDuty} | {Een regel} |
| Run-dashboard | {n8n executions-tab / eigen via E1} | {Een regel} |
| Audit-log | {Postgres-tabel `audit_log` met wie + wat + wanneer} | {Een regel} |

**Failure-scenario-overzicht:**

| Scenario | Wat zien we | Notificatie naar | Repareert | Fallback voor klant |
|---|---|---|---|---|
| Webhook van Calendly faalt | Sentry-event, geen run in n8n | Slack #ops | Iwan checkt webhook-URL en Calendly-instelling | Manuele factuur via Moneybird |
| Moneybird-API geeft 500 | Sentry-event, retry-record in queue | Slack #ops | Iwan checkt Moneybird-status, retry | Notificatie naar klant met expectation |
| AI-skill geeft onbruikbare output | Eigen log-record, output-validatie faalt | Slack #ops | Iwan past prompt aan in `prompts/` | Handmatige review |
| Pipeline-runs lopen op | n8n queue-grootte stijgt | Slack #ops | Iwan schaalt workers of debugt | Geen, intern technisch |

---

## Versionering (workflows als code)

| Aspect | Keuze |
|---|---|
| Repository | [`{git-repo-URL}`]({git-repo-URL}) |
| Branch-strategie | `main` is productie, feature-branches `feat/{naam}`, PR-review verplicht |
| Workflow-formaat | {n8n: JSON-export per workflow in `workflows/{naam}.json` / Temporal: TypeScript-bestand in `src/workflows/{naam}.ts`} |
| Schemas | `schemas/{workflow}-input.json` en `schemas/{workflow}-output.json` (JSON Schema) |
| Docs per workflow | `docs/{workflow}.md` met doel, trigger, input, output, owner, runbook |
| CI / CD | GitHub Actions: syntax-check op PR, deploy-bij-merge naar n8n via API |
| Versie-tagging | Semver-light (`v1.0.0`, `v1.1.0`) per workflow, in JSON of code-bestand |
| Rollback-procedure | Git-revert + redeploy / n8n executions-history rollback |
| Review-stap | PR-review verplicht, ook bij self-review (commit-discipline) |

**Eerste-stap-actie (deze week):**
- [ ] Git-repo `{bedrijf}-workflows` aanmaken op GitHub.
- [ ] n8n droplet of VM opzetten op {hosting-provider}.
- [ ] Eerste workflow als JSON exporteren uit huidige Make / Zapier / handmatige opzet en committen.
- [ ] README.md schrijven voor die ene workflow met doel, trigger, owner, runbook.
- [ ] CI-check in GitHub Actions instellen (JSON-syntax + schema-validatie).

---

## Migration-pad

Per bestaande flow: blijft, migreert, vervangen of uitgefaseerd.

| Huidige flow | Tool | Trigger | Beslissing | Nieuwe locatie of opmerking | Deadline |
|---|---|---|---|---|---|
| {Bv. Calendly → Make → Moneybird} | Make | Webhook | Migreert | Workflow A "Lead-intake" in n8n | Week 2 |
| {Bv. Stripe-webhook → Python → Brevo} | Python op VPS | Webhook | Vervangen | Onderdeel van Workflow C "Factuur-cyclus" in n8n | Week 4 |
| {Bv. Wekelijkse rapportage-cron} | Shell op VPS | Cron | Blijft | Te klein om te migreren, blijft losse cron | n.v.t. |
| {Bv. Zapier mail-to-sheet} | Zapier | Inbound mail | Uitgefaseerd | Niet meer gebruikt, deactiveren | Week 1 |

### Migratie-roadmap in drie horizonten

| Horizon | Wat |
|---|---|
| **Week 1-2** | Orchestratie-laag opzetten ({tool} self-hosted), Git-repo aanmaken, eerste workflow migreren als proof-of-concept, side-by-side met oude flow. |
| **Week 3-6** | Workflows een voor een migreren. Per migratie: minstens 1 week parallel, output vergelijken, dan oude flow deactiveren. CI / CD inrichten. |
| **Week 7-12** | Resterende workflows migreren of vervangen. Uitgefaseerde flows opruimen. Dashboard (E1) integreren als monitoring-laag. Kennisbank (E5) bouwen voor runbook-documentatie. |

---

## Eigenaars-tabel (samenvatting)

| Workflow | Owner monitoring | Owner escalatie | Frequentie check |
|---|---|---|---|
| Workflow A | {Persoon} | {Back-up} | {Wekelijks / dagelijks} |
| Workflow B | {Persoon} | {Back-up} | {Frequentie} |
| Workflow C | {Persoon} | {Back-up} | {Frequentie} |
| Workflow D | {Persoon} | {Back-up} | {Frequentie} |

**Regel:** geen owner = geen workflow in productie. Owner-loos is wachtende crisis.

---

## Review-ritme

| Frequentie | Wat | Wie |
|---|---|---|
| **Wekelijks** | n8n executions-tab scannen, gefaalde runs nakijken, Sentry-events afhandelen | Owner monitoring |
| **Maandelijks** | Pipeline-spec bijwerken: wat is gebouwd, wat is gemigreerd, wat is uitgefaseerd. Gekoppeld aan L1-roadmap-review | Eigenaar bedrijf |
| **Kwartaal** | Orchestratie-keuze opnieuw afwegen: zijn we nog bij de juiste tool, of zijn we groter geworden dan {tool} aankan? | Eigenaar bedrijf + dev-team |

---

## Cross-link-blok

| Skill | Wat | Pad |
|---|---|---|
| **L1** `sop-automatiseren` | Roadmap waaruit deze pipeline voortkomt | [`Leverage/SOP-Automatisering-Roadmap.md`](../Leverage/SOP-Automatisering-Roadmap.md) |
| **L2** `auto-rapportage-setup` | Rapportage-flows die in de pipeline landen | [`Leverage/Auto-Rapportages/`](../Leverage/Auto-Rapportages/) |
| **L3** `mailflow-setup` | Mailflows die in de pipeline landen | [`Leverage/Mailflows/`](../Leverage/Mailflows/) |
| **L4** `finance-automatisering` | Finance-flows die in de pipeline landen | [`Leverage/Finance-Automatiseringen/`](../Leverage/Finance-Automatiseringen/) |
| **E1** `dashboard-bouwer` | Monitoring-dashboard bovenop de pipeline | [`Engineer/Dashboard.md`](Dashboard.md) |
| **E5** `kennisbank-organizer` | Runbook-documentatie per workflow | [`Engineer/Kennisbank/`](Kennisbank/) |
| **S10** `sop-interviewer` | Onderliggende SOPs per workflow | [`Operations/Processen/`](../Operations/Processen/) |
| **S12** `toolstack-inventarisatie` | Tool-overzicht inclusief orchestratie-stack | [`IT/Toolstack.md`](../IT/Toolstack.md) |

---

## Acties en open punten

- [ ] {Actie 1, met deadline}
- [ ] {Actie 2, met deadline}
- [ ] {Actie 3, met deadline}

## Notities

<!-- Vrije notities: keuzes die je later wilt heroverwegen, blockers, openstaande discussies, prijslijst-updates van orchestratie-tools, etc. -->
