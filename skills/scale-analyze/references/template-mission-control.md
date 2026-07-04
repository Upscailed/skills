---
type: mission-control-ontwerp
bedrijf: "{Bedrijfsnaam}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: A2
aantal-hero-kpis: 0
aantal-trends: 0
aantal-alerts: 0
aantal-goals: 0
tool-keuze: "Custom HTML"
bouw-route: "E1"
---

# Mission Control Ontwerp, {Bedrijfsnaam}

> **SCALE-stap:** A2 (Analyze). **Datum:** YYYY-MM-DD. **Versie:** 1.0.
> **Doel:** één scherm dat in 30 seconden laat zien hoe het bedrijf draait.
> **Cross-link:** data-bronnen gevalideerd tegen [Collect-fase](../Collect/), jaardoelen tegen [Directie/01 - Goals.md](../Directie/01%20-%20Goals.md), team-zichtbaarheid tegen [HR/Team.md](../HR/Team.md).
> **Dit is een ontwerp, geen build.** De eigenlijke implementatie loopt via E1 (Dashboard Bouwer) of L2 (Auto Rapportage Setup).

## Samenvatting

- **Aantal hero-KPI's:** N (max 9, ideaal 5-7)
- **Aantal trends:** N (max 6, ideaal 4-5)
- **Aantal alerts:** N (max 8, ideaal 5-6)
- **Aantal goals op MC:** N (max 5, uit S5)
- **Tool-keuze:** {Custom HTML / Notion / Looker Studio / Metabase / Retool / Grafana / Cursor-build}
- **Bouw-route:** {E1 / L2 / beide / handmatig}
- **30-seconden-test:** ✅ ondernemer ziet in 30 sec wat ertoe doet
- **Eerdere dashboard-poging:** {Notion-pagina niet meer gebruikt / nooit gebouwd / Looker zonder URL / etc.}

---

## 1. Hero-KPI's (5 tot 9 tegels)

> Wat zie je in 30 seconden? Niet wat zou kunnen, wat écht moet.

| # | KPI | Huidige waarde | Eenheid | Bron | Refresh | Target groen | Target rood | Vergelijking |
|---|---|---|---|---|---|---|---|---|
| 1 | {bv. Omzet MTD} | ___ | EUR | Moneybird API | hourly | > 25k | < 15k | vs. vorige maand |
| 2 | {bv. Pipeline-waarde} | ___ | EUR | Pipedrive API | hourly | > 50k | < 30k | vs. start van de maand |
| 3 | {bv. NPS 30d} | ___ | score (-100 tot +100) | Klantfeedback-tool | daily | > 50 | < 30 | vs. vorige 30 dagen |
| 4 | {bv. Cashflow-saldo} | ___ | EUR | Moneybird / bank | daily | > 30k | < 10k | absoluut |
| 5 | {bv. Team-bezetting} | ___ | % | Operationele-KPIs.md | daily | 60-80% | > 90% of < 40% | vs. vorige week |
| 6 | {bv. MRR} | ___ | EUR | CRM | daily | groei | krimp | vs. vorige maand |
| 7 | {bv. Win-rate 90d} | ___ | % | CRM | daily | > 30% | < 15% | vs. vorige kwartaal |
| 8 | {optioneel} | | | | | | | |
| 9 | {optioneel} | | | | | | | |

**Designcheck:** maximaal 9, geen 2 KPI's uit dezelfde categorie behalve omzet (mag MTD + YTD).

---

## 2. Trend-grafieken (4 tot 6 mini-charts)

> Richting over tijd. Niet het absolute getal, maar de slope.

| # | Wat wordt geplot | Periode | Bron | Vergelijking |
|---|---|---|---|---|
| 1 | {bv. Omzet over tijd} | 12 maanden | Moneybird | overlay vorig jaar |
| 2 | {bv. MRR-groei kumulatief} | 24 maanden | CRM | geen |
| 3 | {bv. Klant-aantal per maand} | 12 maanden | CRM | overlay vorig jaar |
| 4 | {bv. Pipeline-waarde week-op-week} | 12 weken | Pipedrive | geen |
| 5 | {bv. Nieuwsbrief-groei} | 90 dagen | Beehiiv API | geen |
| 6 | {optioneel} | | | |

---

## 3. Alerts en anomalieen (5 tot 8 regels)

> Auto-flagged afwijkingen, actionable. Geen ruis.

| # | Naam | Conditie | Severity | Refresh | Actie |
|---|---|---|---|---|---|
| 1 | {bv. Omzet-pacing onder target} | `omzet_mtd < target_mtd * 0.5 AND dag_in_maand > 15` | 🟡 warning | daily | Review pipeline + outbound-acties |
| 2 | {bv. Stille pipeline} | `dagen_sinds_laatste_activiteit_op_deal > 14` | 🟡 warning | daily | Lijst deals openen + bellen |
| 3 | {bv. Cashflow-runway laag} | `cash_op_rekening / gemiddelde_maand_uitgaven < 1` | 🔴 critical | daily | Cashflow-meeting plannen |
| 4 | {bv. NPS-drop} | `nps_huidige_week - nps_vorige_week < -10` | 🔴 critical | daily | Klantfeedback-events bekijken |
| 5 | {bv. Klacht binnen} | `klachten_vandaag > 0` | 🟡 warning | hourly | Klacht openen + opvolgen |
| 6 | {bv. Factuur > 30 dagen open} | `factuur_open AND dagen_sinds_versturen > 30` | 🟡 warning | daily | Herinnering versturen |
| 7 | {bv. Verkeer -25% week-op-week} | `bezoekers_deze_week / bezoekers_vorige_week < 0.75` | 🔵 info | weekly | Marketing-bron checken |
| 8 | {optioneel} | | | | |

---

## 4. Goal-progress (max 5, uit S5)

> Voortgangsbalk per jaardoel.

| # | Doel | Target | Huidige waarde | % bereikt | Status | Bron |
|---|---|---|---|---|---|---|
| 1 | {bv. Omzet 2026} | EUR 250.000 | EUR ___ | ___% | 🟡 | Moneybird YTD |
| 2 | {bv. Nieuwe klanten} | 15 stuks | ___ | ___% | 🟢 | CRM YTD |
| 3 | {bv. Nieuwsbrief-abonnees} | 1.000 | ___ | ___% | 🔴 | Beehiiv |
| 4 | {bv. NPS-target} | gemiddeld > 50 | ___ | ___% | 🟢 | Klantfeedback |
| 5 | {optioneel} | | | | | |

> S5 heeft mogelijk meer doelen. Doelen die niet op de Mission Control passen, leven in het volledige S5-dashboard.

---

## 5. Recent-activity (5 tot 10 events)

> Pulse-feed. Wat er net is gebeurd, sortering op tijd nieuw boven.

**Event-types die op de feed komen:**

| # | Event-type | Bron | Format-voorbeeld |
|---|---|---|---|
| 1 | Nieuwe deal | CRM | "EUR X - {klant-naam} - vandaag 14:23" |
| 2 | Nieuwe klant (conversie) | CRM | "{klant-naam} - {dienst} - vandaag 11:08" |
| 3 | Nieuwsbrief-aanmelder | Beehiiv | "{e-mail} - gisteren 19:42" |
| 4 | NPS-respons | Klantfeedback | "{klant-naam} - score 9 - vandaag 08:15" |
| 5 | Factuur betaald | Moneybird | "EUR X - {klant-naam} - gisteren" |
| 6 | Mijlpaal | dashboard intern | "1.000e nieuwsbrief-abonnee bereikt" |
| 7 | {optioneel} | | |

**Layout-opmerking:** feed is rechts of onderaan het dashboard, niet centraal. Het mag nooit de aandacht trekken van de hero-KPI's.

---

## 6. Tool-keuze (motivatie)

**Gekozen tool:** {Custom HTML via Cursor / Notion / Looker Studio / Metabase / Retool / Grafana}

**Motivatie:**
- *Waarom deze:* {bv. eigen code-folder al aanwezig, geen vendor-lock-in, past binnen Upscailed-ecosysteem}
- *Waarom niet de andere opties:* {bv. Notion: te handmatig; Looker: te Google-gebonden; Metabase: vereist database die ik niet heb}
- *Risico:* {bv. onderhoud als API's wijzigen, geen automatisch refresh zonder L2-scheduled-task}
- *Tegen-maatregel:* {bv. L2 oppakken direct na E1, of vrijdagcheck-ritueel om handmatig bij te werken}

**Eerdere pogingen die gestrand zijn:**
- {bv. Notion-pagina uit 2024 - gestopt omdat te druk en handmatige refresh nooit gebeurde}
- {bv. Geen eerdere poging}

**Lessen die in dit ontwerp zijn verwerkt:**
- {bv. Minder tegels deze keer, max 7 hero-KPI's i.p.v. 18}
- {bv. Refresh-ritueel expliciet gekoppeld aan vrijdagcheck}

---

## 7. Refresh-matrix per tegel

> Welke tegel ververst wanneer, welke bron, en welke route (handmatig / L2-scheduled / API-live).

| Tegel-type | Refresh-frequentie | Bron-vorm | Bouw-route |
|---|---|---|---|
| Hero-KPI 1 (Omzet MTD) | hourly | Moneybird API | L2-scheduled-task |
| Hero-KPI 2 (Pipeline-waarde) | hourly | Pipedrive API | L2-scheduled-task |
| Hero-KPI 3 (NPS) | daily | Klantfeedback-tool API | L2-scheduled-task (1x/dag, 07:00) |
| Hero-KPI 4 (Cashflow-saldo) | daily | Bank-API (PSD2) of handmatig | L2-scheduled-task of vrijdagcheck |
| Hero-KPI 5 (Team-bezetting) | daily | `Operationele-KPIs.md` parse | L2-scheduled-task |
| Trends | daily | Cache rebuild 's nachts | L2-scheduled-task |
| Alerts | hourly | Compute on refresh | Geen aparte data-fetch |
| Goal-progress | daily | `01 - Goals.md` parse + API | L2-scheduled-task |
| Recent-activity | 15 min of webhook | Webhook of API-poll | E1 build, geen schedule |

> Als bouw-route "handmatig" is voor een tegel: leg de vaste afspraak vast (welke dag, welke tijd, wie). Anders sterft het dashboard.

---

## 8. Bouw-route en volgende stappen

**Hoofdroute:** {E1 alleen / L2 alleen / E1 + L2 combinatie / handmatig in Notion}

**Wat E1 gaat doen:**
- Het frontend-dashboard bouwen op basis van de tegel-keuze hierboven
- Layout: hero-grid bovenaan (5-9 tegels in 2-3 rijen), trends links, alerts strook bovenin, goals rechts, activity onderaan
- Visuele stijl: aansluiten op brand-guidelines uit `Directie/Playbook/`
- Output: `{scope}/IT/AI-Tools/Mission-Control/` (lokaal) + `IT/AI-Tools/Mission-Control.md` (card in vault)

**Wat L2 gaat doen:**
- Per data-bron een scheduled-task opzetten die de waarde periodiek ophaalt en wegschrijft
- Output-formaat: JSON-bestand of database-row die de E1-frontend leest
- Cadans: zoals bovenstaande refresh-matrix voorschrijft

**Wat A3 (Daily Briefing) gaat doen:**
- De hero-KPI's en alerts uit dit ontwerp gebruiken om dagelijks een briefing te schrijven
- Briefing-cadans: maandag-vrijdag 06:00 of 07:00, output in `Huddle/Briefing/` of equivalent

**Volgende skills aanbevolen na dit ontwerp:**
1. **A3 Daily Briefing** - direct na dit ontwerp, want het leunt op dezelfde data
2. **E1 Dashboard Bouwer** - als je nu de eigenlijke build wil starten
3. **L2 Auto Rapportage Setup** - als de data automatisch ververst moet worden
4. **C7 Operationele KPI's** - als nog niet alle hero-KPI's een definitie en formule hebben

---

## 9. Cross-links

- **[Directie/01 - Goals.md](../Directie/01%20-%20Goals.md)** (SCALE S5) - bron voor goal-progress-blok
- **[HR/Team.md](../HR/Team.md)** (SCALE S11) - wie ziet welk dashboard, welke autorisaties
- **[Collect/](../Collect/)** (SCALE C1-C7) - data-bronnen achter elke tegel
  - C1 (Marketing data) - categorie 1, 5 (nieuwsbrief, social)
  - C2 (CRM) - pipeline, deals, win-rate, klant-aantal
  - C3 (Financiele data) - omzet, marge, cashflow
  - C4 (Klantfeedback) - NPS, CSAT, reviews
  - C5 (Website-analytics) - verkeer-trend
  - C7 (Operationele KPI's) - team-bezetting, capaciteit, productie
- **[IT/Toolstack.md](../IT/Toolstack.md)** (SCALE S12) - welke tools bestaan voor dashboarding
- **Aangrenzende SCALE-checks die op dit ontwerp leunen:**
  - A1 (Rapportage Builder) - afdelingsrapporten vormen aanvulling, niet vervanging
  - A3 (Daily Briefing) - directe consument van hero-KPI's en alerts
  - A4 (Beslissingsanalyse) - gebruikt dezelfde data voor strategische analyse
  - L2 (Auto Rapportage Setup) - vult de data automatisch in
  - E1 (Dashboard Bouwer) - bouwt dit ontwerp tot werkende code

---

## 10. Wijzigingen sinds vorige versie

> Houd dit document levend. Per update een korte regel hier, nieuwste bovenaan.

- **YYYY-MM-DD** - Eerste versie aangemaakt, N hero-KPI's, M trends, K alerts, K goals, tool-keuze: {keuze}, bouwroute: {route}.
