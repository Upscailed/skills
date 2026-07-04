---
type: dashboard-bouwer-spec
bedrijf: "{Bedrijfsnaam}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: E1
stack: "Astro+React+Tailwind+Recharts"
auth: "Clerk"
hosting: "Vercel"
custom-domein: "dashboard.{bedrijfsnaam}.nl"
aantal-hero-kpis: 0
aantal-trends: 0
aantal-alerts: 0
aantal-goals: 0
aios-week-aanpak: ja
upstream-skill: A2 Mission Control Builder
code-locatie: "~/AI - Projecten/{Bedrijf}/{Toolnaam}/"
github-repo: "{Org}/{Toolnaam}"
---

# Dashboard Bouwer Spec, {Bedrijfsnaam}

> **SCALE-stap:** E1 (Engineer). **Datum:** YYYY-MM-DD. **Versie:** 1.0.
> **Doel:** werkende dashboard-app op `https://dashboard.{bedrijfsnaam}.nl`, gevuld met live data uit de A2-tegelset.
> **Cross-link:** ontwerp uit [Analyze/Mission-Control-Ontwerp.md](../Analyze/Mission-Control-Ontwerp.md), tooling uit [IT/Toolstack.md](../IT/Toolstack.md), gebruikers uit [HR/Team.md](../HR/Team.md), scheduled data uit [Leverage/Auto-Rapportage.md](../Leverage/Auto-Rapportage.md).
> **Dit is een bouw-spec, geen werkende code.** De code leeft in `~/AI - Projecten/{Bedrijf}/{Toolnaam}/`, met mirror op `github.com/{Org}/{Toolnaam}`. Uitvoer in Cursor of door freelance-developer.

## Samenvatting

- **Stack:** {Astro+React+Tailwind+Recharts / Vite+React+Tailwind+Recharts / Next.js+shadcn+Tremor / Notion / Looker Studio / Retool}
- **Auth:** {Clerk / Supabase Auth / Auth0 / eigen JWT / Basic-auth / geen}
- **Hosting:** {Vercel / Cloudflare Pages / Netlify / eigen VPS}
- **Custom-domein:** `dashboard.{bedrijfsnaam}.nl`
- **Aantal hero-KPI's:** N (uit A2)
- **Aantal trends:** N
- **Aantal alerts:** N
- **Aantal goals:** N
- **Activity-feed event-types:** N
- **AIOS-in-a-Week:** ja, week 1 live met 4-6 hero-tegels
- **Code-locatie:** `~/AI - Projecten/{Bedrijf}/{Toolnaam}/`
- **GitHub-repo:** `github.com/{Org}/{Toolnaam}`

---

## 1. Stack-keuze (motivatie)

**Gekozen stack:** {bv. Astro + React + Tailwind + Recharts}

**Motivatie:**
- *Waarom deze:* {bv. Astro al in gebruik op de hoofdsite, gratis Vercel-hosting, SSR voor snelle laadtijd, geen vendor lock-in}
- *Waarom niet de andere opties:* {bv. Next.js: zwaarder, geen extra waarde voor dit aantal tegels. Notion: handmatig refresh. Looker: te Google-gebonden}
- *Risico:* {bv. afhankelijkheid van Recharts-onderhoud, Astro-React-integratie iets minder volwassen dan Next}
- *Tegen-maatregel:* {bv. Recharts is mature en breed gebruikt, fallback op Tremor mogelijk}

**Versie-pinning:**
- Astro: ^4.x (latest stable bij scaffold)
- React: ^18.x
- Tailwind: ^3.x
- Recharts: ^2.x
- TypeScript: ^5.x (strict)

---

## 2. Repo-scaffold

### 2.1 Init-commando's

```bash
cd ~/AI\ -\ Projecten/{Bedrijf}
npm create astro@latest {Toolnaam} -- --template minimal --typescript strict --install
cd {Toolnaam}
npx astro add react
npx astro add tailwind
npm install recharts swr clsx @clerk/astro

git init
git remote add origin git@github.com:{Org}/{Toolnaam}.git
git add . && git commit -m "feat: initial scaffold (E1)"
git push -u origin main
```

### 2.2 Mappenstructuur

```
{Toolnaam}/
├── src/
│   ├── pages/
│   │   ├── index.astro          (dashboard-hoofdpagina, achter Clerk-auth)
│   │   ├── sign-in.astro
│   │   ├── sign-up.astro        (optioneel, of disabled)
│   │   └── api/                 (server-endpoints)
│   │       ├── kpis.ts
│   │       ├── trends.ts
│   │       ├── alerts.ts
│   │       ├── goals.ts
│   │       └── activity.ts
│   ├── components/
│   │   ├── DashboardLayout.tsx
│   │   ├── KpiCard.tsx
│   │   ├── TrendChart.tsx
│   │   ├── AlertBanner.tsx
│   │   ├── GoalProgress.tsx
│   │   └── ActivityFeed.tsx
│   ├── lib/
│   │   ├── moneybird.ts
│   │   ├── pipedrive.ts
│   │   ├── plausible.ts
│   │   ├── klantfeedback.ts
│   │   ├── cache.ts             (Vercel KV-wrapper of in-memory)
│   │   └── parseGoals.ts        (markdown-parse van Directie/01 - Goals.md)
│   ├── styles/
│   │   └── global.css
│   └── env.d.ts
├── public/
│   └── logo.svg
├── astro.config.mjs
├── tailwind.config.cjs
├── tsconfig.json
├── .env.example
├── .gitignore
├── package.json
└── README.md
```

### 2.3 Env-vars (`.env.local`)

```bash
# Site
PUBLIC_BASE_URL=https://dashboard.{bedrijfsnaam}.nl

# Auth (Clerk)
PUBLIC_CLERK_PUBLISHABLE_KEY=pk_live_...
CLERK_SECRET_KEY=sk_live_...

# Data-bronnen
MONEYBIRD_TOKEN=...
MONEYBIRD_ADMIN_ID=...
PIPEDRIVE_TOKEN=...
PIPEDRIVE_COMPANY_DOMAIN=...
PLAUSIBLE_API_KEY=...
PLAUSIBLE_SITE_ID={bedrijfsnaam}.nl
KLANTFEEDBACK_API_KEY=...

# Cache
KV_REST_API_URL=...
KV_REST_API_TOKEN=...

# Monitoring
SENTRY_DSN=...
```

### 2.4 README-skelet

Korte opening voor de repo (mag bij merge ook autom. gegenereerd):

```markdown
# {Toolnaam}

Mission Control-dashboard voor {Bedrijfsnaam}. Bouw-spec: zie `Engineer/Dashboard-Bouwer-Spec.md` in de Upscailed-OS-vault.

## Run lokaal
\`\`\`bash
npm install
cp .env.example .env.local
npm run dev
\`\`\`

## Deploy
Push naar `main` deployt productie via Vercel. Push naar feature-branch geeft preview-URL.

## Bronnen
- Moneybird (omzet, cashflow)
- Pipedrive (pipeline, deals)
- Plausible (verkeer)
- Klantfeedback-tool (NPS)

## Auth
Clerk (sign-in, sign-out, single-user MVP).

## Mappen
- `src/pages/` Astro-pages + API-endpoints
- `src/components/` UI-componenten (React)
- `src/lib/` API-clients per bron
```

---

## 3. Tegel-overzicht (alle te bouwen)

| # | Type | Naam | Bron | Refresh | Component | Week live |
|---|---|---|---|---|---|---|
| 1 | Hero-KPI | {bv. Omzet MTD} | Moneybird API | hourly (KV-cache) | `<KpiCard>` | 1 |
| 2 | Hero-KPI | {bv. Pipeline-waarde} | Pipedrive API | hourly | `<KpiCard>` | 1 |
| 3 | Hero-KPI | {bv. NPS 30d} | Klantfeedback-API | daily | `<KpiCard>` | 1 |
| 4 | Hero-KPI | {bv. Cashflow-saldo} | Bank PSD2 of L2-cron | daily | `<KpiCard>` | 1 |
| 5 | Hero-KPI | {bv. Team-bezetting} | Operationele-KPIs.md parse | daily | `<KpiCard>` | 2 |
| 6 | Hero-KPI | {bv. MRR} | CRM | daily | `<KpiCard>` | 2 |
| 7 | Hero-KPI | {bv. Win-rate 90d} | CRM | daily | `<KpiCard>` | 2 |
| 8 | Trend | {bv. Omzet 12 mnd} | Moneybird API + KV | daily | `<TrendChart line>` | 2 |
| 9 | Trend | {bv. MRR 24 mnd} | CRM + KV | daily | `<TrendChart line>` | 2 |
| 10 | Trend | {bv. Pipeline week-op-week} | Pipedrive + KV | daily | `<TrendChart bar>` | 2 |
| 11 | Trend | {bv. Nieuwsbrief 90 dgn} | Beehiiv API | daily | `<TrendChart line>` | 3 |
| 12 | Alert | {bv. Omzet-pacing onder target} | compute on refresh | hourly | `<AlertBanner>` | 3 |
| 13 | Alert | {bv. Stille pipeline} | compute on refresh | daily | `<AlertBanner>` | 3 |
| 14 | Alert | {bv. Cashflow-runway laag} | compute on refresh | daily | `<AlertBanner>` | 3 |
| 15 | Alert | {bv. NPS-drop} | compute on refresh | daily | `<AlertBanner>` | 3 |
| 16 | Goal | {bv. Omzet 2026} | Goals.md + Moneybird YTD | daily | `<GoalProgress>` | 3 |
| 17 | Goal | {bv. Nieuwe klanten} | Goals.md + CRM | daily | `<GoalProgress>` | 3 |
| 18 | Goal | {bv. Nieuwsbrief-abonnees} | Goals.md + Beehiiv | daily | `<GoalProgress>` | 3 |
| 19 | Activity | {Nieuwe deal} | CRM-webhook of poll | 15 min | `<ActivityFeed>` | 4 |
| 20 | Activity | {NPS-respons} | Klantfeedback-webhook | realtime/15 min | `<ActivityFeed>` | 4 |

---

## 4. Data-bron-integratie (per bron)

### 4.1 Moneybird

| Veld | Waarde |
|---|---|
| Auth | API-token (Bearer) |
| Base URL | `https://moneybird.com/api/v2/{admin_id}` |
| Endpoints | `/sales_invoices.json` (omzet), `/financial_accounts.json` (saldo) |
| Refresh | hourly via Vercel KV TTL 60 min |
| Foutafhandeling | Retry 3x exp backoff, bij faal placeholder + Sentry-event |
| Fetch-laag | `src/lib/moneybird.ts` (server-side) |
| Voorbeelden | `getOmzetMTD()`, `getCashflowSaldo()`, `getFactuurOpenstaand()` |

### 4.2 Pipedrive

| Veld | Waarde |
|---|---|
| Auth | API-token (query-param `api_token`) |
| Base URL | `https://{company_domain}.pipedrive.com/api/v1` |
| Endpoints | `/deals` (pipeline + won), `/activities` (stille pipeline-check) |
| Refresh | hourly |
| Foutafhandeling | Retry 3x, bij rate-limit 429 wait + retry |
| Fetch-laag | `src/lib/pipedrive.ts` |
| Voorbeelden | `getPipelineWaarde()`, `getWinRate90d()`, `getStilleDeals()` |

### 4.3 Plausible

| Veld | Waarde |
|---|---|
| Auth | API-key Authorization Bearer (Plus-plan vereist) |
| Base URL | `https://plausible.io/api/v1` |
| Endpoints | `/stats/aggregate?site_id={site_id}&period={period}&metrics=visitors,visits` |
| Refresh | hourly |
| Foutafhandeling | Retry 3x, fallback naar laatste cache |
| Fetch-laag | `src/lib/plausible.ts` |
| Voorbeelden | `getBezoekersWeek()`, `getBezoekersMaand()` |

### 4.4 Klantfeedback / NPS-tool

| Veld | Waarde |
|---|---|
| Auth | API-key (header) |
| Endpoints | bron-afhankelijk (Trustmary, Delighted, eigen survey-tool) |
| Refresh | daily |
| Foutafhandeling | Retry, fallback placeholder |
| Fetch-laag | `src/lib/klantfeedback.ts` |
| Voorbeelden | `getNPS30d()`, `getKlachtenVandaag()` |

### 4.5 Goals-parser (markdown)

| Veld | Waarde |
|---|---|
| Auth | Geen (GitHub-API-read of filesystem) |
| Bron | `Directie/01 - Goals.md` |
| Endpoints | GitHub raw-content of file-read |
| Refresh | hourly |
| Foutafhandeling | Fallback laatste parse |
| Fetch-laag | `src/lib/parseGoals.ts` |
| Output | `[{ id, titel, target, huidig, status, voortgang_pct }]` |

### 4.6 L2-overlap

L2 vult al elke maandag 08:00 `omzet-week-{YYYY-WW}` in Vercel KV. Hero-KPI 1 leest direct uit deze key, geen extra Moneybird-call nodig.

---

## 5. Visualisaties per tegel (componenten)

### 5.1 `<KpiCard>`

```tsx
// src/components/KpiCard.tsx
import { LineChart, Line, ResponsiveContainer } from 'recharts';
import clsx from 'clsx';

type Props = {
  label: string;
  value: string | number;
  unit?: string;
  target?: { groen: number; rood: number };
  comparison?: string;
  status: 'green' | 'yellow' | 'red' | 'neutral';
  sparkline?: Array<{ x: string; y: number }>;
};

export default function KpiCard({ label, value, unit, comparison, status, sparkline }: Props) {
  return (
    <div className={clsx(
      'rounded-2xl border p-4 shadow-sm',
      status === 'green' && 'border-emerald-500/40 bg-emerald-50/60',
      status === 'yellow' && 'border-amber-500/40 bg-amber-50/60',
      status === 'red' && 'border-rose-500/40 bg-rose-50/60',
      status === 'neutral' && 'border-slate-200 bg-white'
    )}>
      <div className="text-xs uppercase tracking-wide text-slate-500">{label}</div>
      <div className="mt-1 text-3xl font-semibold">
        {value} {unit && <span className="text-base font-normal text-slate-500">{unit}</span>}
      </div>
      {comparison && <div className="mt-1 text-xs text-slate-500">{comparison}</div>}
      {sparkline && (
        <div className="mt-2 h-10">
          <ResponsiveContainer width="100%" height="100%">
            <LineChart data={sparkline}>
              <Line type="monotone" dataKey="y" stroke="currentColor" dot={false} strokeWidth={1.5} />
            </LineChart>
          </ResponsiveContainer>
        </div>
      )}
    </div>
  );
}
```

### 5.2 `<TrendChart>`

Recharts `<LineChart>` of `<BarChart>` met axis, tooltip, year-over-year-overlay-optie.

### 5.3 `<AlertBanner>`

Tailwind banner met severity-kleur, titel, actie-link.

### 5.4 `<GoalProgress>`

Voortgangsbalk met label, current/target, status-emoji.

### 5.5 `<ActivityFeed>`

Lijst van events, sortering nieuwste boven, max 10 items.

### 5.6 Layout-skelet (`src/pages/index.astro`)

```astro
---
import DashboardLayout from '../components/DashboardLayout';
import KpiCard from '../components/KpiCard';
import TrendChart from '../components/TrendChart';
import AlertBanner from '../components/AlertBanner';
import GoalProgress from '../components/GoalProgress';
import ActivityFeed from '../components/ActivityFeed';
import { getAllDashboardData } from '../lib/cache';

const { kpis, trends, alerts, goals, activity } = await getAllDashboardData();
---

<DashboardLayout title="Mission Control">
  <div class="space-y-4">
    {alerts.filter(a => a.active).map(a => <AlertBanner client:load {...a} />)}
  </div>

  <div class="mt-6 grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
    {kpis.map(k => <KpiCard client:load {...k} />)}
  </div>

  <div class="mt-8 grid grid-cols-1 gap-6 lg:grid-cols-3">
    <div class="space-y-4 lg:col-span-2">
      {trends.map(t => <TrendChart client:load {...t} />)}
    </div>
    <div class="space-y-4">
      {goals.map(g => <GoalProgress client:load {...g} />)}
      <ActivityFeed client:load events={activity} />
    </div>
  </div>
</DashboardLayout>
```

---

## 6. Auth-laag

**Stack:** {Clerk / Supabase Auth / Auth0 / eigen JWT}

**Setup-stappen (Clerk-voorbeeld):**

```bash
npm install @clerk/astro
```

```ts
// astro.config.mjs
import clerk from '@clerk/astro';
export default defineConfig({
  integrations: [react(), tailwind(), clerk()],
  output: 'server',
  adapter: vercel(),
});
```

```astro
---
// src/pages/index.astro
import { Auth } from '@clerk/astro/components';
---
<Auth>
  <Auth.SignedIn>
    {/* dashboard-content */}
  </Auth.SignedIn>
  <Auth.SignedOut>
    <a href="/sign-in">Inloggen</a>
  </Auth.SignedOut>
</Auth>
```

**Toegestane users (MVP single-user):**
- {bv. iwan@upscailed.nl}
- {bv. teamlid@upscailed.nl}

**AVG-noot:** Clerk is US-vendor. Verwerkersovereenkomst staat gelinkt in [Juridisch/Privacyverklaring.md](../Juridisch/Privacyverklaring.md) (J4). Geen PII uit het dashboard wordt naar Clerk gestuurd buiten het login-mailadres.

---

## 7. Hosting + deploy

**Host:** Vercel

**Setup-stappen:**
1. Vercel-account: `vercel.com/{org}` (bestaand of nieuw)
2. Import GitHub-repo: `{Org}/{Toolnaam}`
3. Build-command: `npm run build` (Astro-default)
4. Output-dir: `dist/` (Astro-default)
5. Env-vars uit `.env.example` één-voor-één invullen in Vercel Project Settings (production + preview + development scopes)
6. Custom-domein: `dashboard.{bedrijfsnaam}.nl` toevoegen in Project Settings, DNS-CNAME naar `cname.vercel-dns.com`
7. SSL: automatisch via Vercel (Let's Encrypt)

**Deploy-pijplijn:**
- Push naar `main` → productie-deploy
- Push naar feature-branch → preview-URL via Vercel-comment in GitHub-PR
- Vercel-cron (optioneel voor scheduled fetch): zie L2-koppeling

**Staging (optioneel):**
- Subdomein `staging.dashboard.{bedrijfsnaam}.nl`, koppelt aan `staging`-branch
- Geen productie-data, eigen Clerk-dev-environment

---

## 8. Monitoring

| Tool | Doel | Setup |
|---|---|---|
| **Sentry** | Frontend + backend errors | `npm install @sentry/astro`, DSN-env, init in `astro.config.mjs` |
| **UptimeRobot** | HTTP-uptime check elke 5 min | URL `https://dashboard.{bedrijfsnaam}.nl/api/healthcheck` (200 OK), alert per e-mail + Telegram |
| **BetterStack Heartbeats** | Cron-vulling-checks (L2-runs) | URL pingen na elke scheduled-task-run, alert bij 15 min stilte |
| **Vercel Analytics** | Web vitals, performance | Ingebouwd, aanzetten in Project Settings |

**Healthcheck-endpoint:**
```ts
// src/pages/api/healthcheck.ts
export const GET = () => new Response(JSON.stringify({ status: 'ok', timestamp: Date.now() }), {
  status: 200,
  headers: { 'content-type': 'application/json' }
});
```

---

## 9. Tegel-spec (per tegel 4 velden)

> Voor elke tegel uit het overzicht: fetch-skelet, transformatie, visualisatie-component, refresh-route.

### Tegel 1: Omzet MTD

**Fetch-skelet:**
```ts
// src/lib/moneybird.ts
export async function getOmzetMTD(): Promise<number> {
  const startOfMonth = new Date();
  startOfMonth.setUTCDate(1);
  startOfMonth.setUTCHours(0, 0, 0, 0);
  const url = `https://moneybird.com/api/v2/${process.env.MONEYBIRD_ADMIN_ID}/sales_invoices.json?filter=state:paid,invoice_date:${startOfMonth.toISOString().slice(0, 10)}..today`;
  const res = await fetch(url, {
    headers: { Authorization: `Bearer ${process.env.MONEYBIRD_TOKEN}` }
  });
  if (!res.ok) throw new Error(`Moneybird ${res.status}`);
  const invoices = await res.json();
  return invoices.reduce((sum: number, inv: any) => sum + parseFloat(inv.total_price_incl_tax), 0);
}
```

**Transformatie:** som van `total_price_incl_tax` van alle paid-invoices dit kalender-maand. Afronden op hele euro.

**Visualisatie-component:**
```tsx
<KpiCard
  label="Omzet MTD"
  value={Math.round(omzetMTD)}
  unit="EUR"
  target={{ groen: 25000, rood: 15000 }}
  comparison={`${pct >= 0 ? '+' : ''}${pct}% vs. vorige maand`}
  status={omzetMTD >= 25000 ? 'green' : omzetMTD < 15000 ? 'red' : 'yellow'}
  sparkline={omzetPerDayLast30d}
/>
```

**Refresh-route:** server-side fetch in `src/pages/api/kpis.ts`, KV-cache met key `kpi-omzet-mtd`, TTL 60 min. Frontend roept via SWR met `revalidateOnFocus: false`. Bij KV-miss: live Moneybird-call met retry.

### Tegel 2 t/m N: identiek format

[per tegel uit het overzicht herhalen: fetch-skelet, transformatie, visualisatie-component, refresh-route]

---

## 10. AIOS-in-a-Week-rol-out

### Week 1 (dag 1-5): kick-off + 4-6 hero-tegels live

| Dag | Werk | Deliverable |
|---|---|---|
| 1 | Scaffold + GitHub-repo + Vercel-deploy + custom-domein + Clerk-skelet | Sign-in werkt op `dashboard.{bedrijfsnaam}.nl` |
| 2 | API-clients voor 2 hoofdbronnen (bv. Moneybird, Pipedrive) | Server-side fetch werkt lokaal |
| 3 | 4 hero-tegels live, eerste deploy met echte data | Live URL toont 4 echte cijfers |
| 4 | 2 extra hero-tegels, styling-pass, mobile-responsive check | Live URL toont 6 tegels, oogt af |
| 5 | Dry-run, gebruiker-acceptance, bug-fixes, productie-deploy | Eerste week-1-acceptatie |

### Week 2 (dag 6-10): trends + extra hero-tegels

| Dag | Werk |
|---|---|
| 6-7 | Resterende hero-tegel-clients + data-fetch |
| 8-9 | Trends-component + 3-4 trend-tegels live |
| 10 | Deploy, monitoring-baseline (Sentry + UptimeRobot) |

### Week 3 (dag 11-15): alerts + goals

| Dag | Werk |
|---|---|
| 11-12 | Alerts-engine (compute-on-refresh logica), 5-8 alert-regels |
| 13-14 | Goals-parser (markdown van Directie/01 - Goals.md), goal-progress-bars |
| 15 | Deploy, alert-test (forceer een trigger), goal-validatie |

### Week 4 (dag 16-20): activity-feed + monitoring + polish

| Dag | Werk |
|---|---|
| 16-17 | Activity-feed (webhooks of poll), 5-10 event-types live |
| 18 | Sentry-fine-tune, UptimeRobot-monitors, BetterStack-heartbeats voor L2-koppeling |
| 19 | Visuele polish, dark-mode-toggle (optioneel), performance-pass (Vercel Analytics check) |
| 20 | Hand-off, tool-card bijwerken, eerste kwartaal-review-datum (Q-1 na live) |

### Vanaf week 5

- Maandelijkse uitbouw op verzoek (nieuwe tegels, extra bronnen)
- Kwartaal-review of A2-ontwerp nog actueel is
- Halfjaarlijks: stack-keuze en hosting-kosten review

---

## 11. Cross-links

- **[Analyze/Mission-Control-Ontwerp.md](../Analyze/Mission-Control-Ontwerp.md)** (SCALE A2) - het ontwerp dat dit document bouwt
- **[Leverage/Auto-Rapportage.md](../Leverage/Auto-Rapportage.md)** (SCALE L2) - scheduled-tasks die data leveren aan KV-cache
- **[IT/Toolstack.md](../IT/Toolstack.md)** (SCALE S12) - welke tools beschikbaar, accounts in huis
- **[HR/Team.md](../HR/Team.md)** (SCALE S11) - wie ziet welk dashboard, welke autorisaties
- **[Directie/Playbook/Brand-guidelines.md](../Directie/Playbook/Brand-guidelines.md)** (SCALE S2) - kleur-, font- en logo-tokens
- **[Juridisch/Privacyverklaring.md](../Juridisch/Privacyverklaring.md)** (SCALE J4) - AVG-grondslag voor user-data en data-bronnen
- **[Collect/](../Collect/)** (SCALE C1-C7) - data-bronnen achter elke tegel
  - C1 (Marketing data) - nieuwsbrief, social-tegels
  - C2 (CRM) - pipeline, deals, win-rate
  - C3 (Financiele data) - omzet, marge, cashflow
  - C4 (Klantfeedback) - NPS, CSAT
  - C5 (Website-analytics) - verkeer-trend
  - C7 (Operationele KPI's) - team-bezetting, capaciteit
- **Aangrenzende SCALE-checks:**
  - A3 (Daily Briefing) - directe consument van hero-KPI's en alerts
  - E2 (App Scoping) - als naast het dashboard ook een eigen klant-app gebouwd wordt
  - E3 (Workflow Pipeline) - data-laag als ETL nodig wordt
  - E5 (Kennisbank Organizer) - aanvullende zoek-app

---

## 12. Wijzigingen sinds vorige versie

> Houd dit document levend. Per update een korte regel hier, nieuwste bovenaan.

- **YYYY-MM-DD** - Eerste versie aangemaakt, stack: {keuze}, hosting: {keuze}, N tegels in spec, AIOS-in-a-Week-aanpak.
