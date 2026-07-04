# Changelog Upscailed Skills

Alle noemenswaardige wijzigingen aan deze skill-bibliotheek worden hier bijgehouden. Versies volgen [semver](https://semver.org/lang/nl/): MAJOR.MINOR.PATCH.

- **MAJOR** = breaking change (gebruikers moeten hun workflow aanpassen).
- **MINOR** = nieuwe functionaliteit, backwards compatible (nieuwe sectie in skill, nieuwe optionele input).
- **PATCH** = bugfix, typo, frontmatter-correctie.

Nieuwste releases staan bovenaan. Per release: per skill de nieuwe versie + reden.

---

## 2026-07-02: Consolidatie naar 8 thema-skills (MAJOR)

De 46 losse SCALE-framework skills zijn gebundeld naar 8 thema-skills: één per SCALE-laag en één per cross-cutting domein. Elke thema-skill (v1.0.0) heeft een router-SKILL.md (menu, triggers, werkwijze) en de volledige oorspronkelijke workflows als verbatim modules in `modules/`, met de bijbehorende templates in `references/`. Breaking: de oude skill-namen bestaan niet meer als losse mappen; installeer voortaan de thema-skill.

| Nieuwe skill | Gebundelde skills (modules) |
|---|---|
| scale-structure | bedrijfsoverzicht, doelen-coach, tone-of-voice, icp, brand-guidelines, swot-analyse, bedrijfsverhaal, producten-en-pricing, klantreis, sop-interviewer, team-en-rollen, toolstack-inventarisatie |
| scale-collect | marketing-data-setup, crm-setup, financiele-data-setup, klantfeedback-collector, website-analytics-setup, concurrentie-research, operationele-kpis |
| scale-analyze | rapportage-builder, mission-control-builder, daily-briefing, beslissings-analyse, benchmarking |
| scale-leverage | sop-automatiseren, auto-rapportage-setup, mailflow-setup, finance-automatisering |
| scale-engineer | dashboard-bouwer, app-scoping, workflow-pipeline, klantportaal-scoping, kennisbank-organizer, skill-builder-coach |
| scale-marketing | website-launch-check, social-presence-setup, content-roadmap, nieuwsbrief-setup |
| scale-verkoop | salesproces-builder, opvolg-flow (producten-en-pricing leeft als module in scale-structure, met kruisverwijzing) |
| scale-juridisch | kvk-administratie, btw-administratie, algemene-voorwaarden, privacyverklaring, klantcontract-template, verzekeringen-overzicht |

Ongewijzigd als losse skills: scale-audit, os-builder, prompt-optimaliseerder, feitencontrole, mcp-integratie. Alle module-bodies zijn byte-identiek aan de oorspronkelijke SKILL.md-bodies (diff-geverifieerd); de evals-map van concurrentie-research is niet meeverhuisd en blijft in de git-historie.

## 2026-05-11 — Iteration 1 eval-fixes

Tweede ronde kwaliteitstoets via de Anthropic skill-creator eval-flow: 88 agent-runs (with-skill + baseline per skill) op alle 44 SCALE-framework skills. Score-uitkomst: 16 🟢 / 25 🟡 / 3 🔴. Top patroon (in 28 skills): interview-flow zonder fallback voor autonome of fictieve-context runs. Drie 🔴 door scope/router mismatches.

### Cold-start modus toegevoegd aan 12 skills (MINOR)

Nieuwe sectie "Cold-start en fictieve-klant modus" met instructies voor 1-shot en cold-start runs.

| Skill | Versie |
|---|---|
| bedrijfsoverzicht | 1.0.0 → 1.1.0 |
| klantreis | 1.0.0 → 1.1.0 |
| operationele-kpis | 1.0.0 → 1.1.0 |
| mission-control-builder | 1.0.0 → 1.1.0 |
| producten-en-pricing | 1.0.0 → 1.1.0 |
| tone-of-voice | 2.1.0 → 2.2.0 |
| team-en-rollen | 1.1.0 → 1.2.0 |
| mailflow-setup | 1.0.0 → 1.1.0 |
| salesproces-builder | 1.0.0 → 1.1.0 |
| sop-automatiseren | 1.0.0 → 1.1.0 |
| marketing-data-setup | 1.0.0 → 1.1.0 |
| website-launch-check | 1.0.0 → 1.1.0 |

### Scope-router fixes (3 rood-gescoorde skills, MINOR)

| Skill | Versie | Wijziging |
|---|---|---|
| beslissings-analyse | 1.0.0 → 1.1.0 | Scope-waarschuwing in description + nieuwe sectie "Wanneer NIET deze skill?" verwijst naar `beslissingshulp` voor one-shot beslissingen. |
| workflow-pipeline | 1.0.0 → 1.1.0 | Twee toepassingsdomeinen onderscheiden: software-orchestratie en operationele Kanban-pipeline. Domeinkeuze in stap 1. |
| skill-builder-coach | 1.0.0 → 1.1.0 | Stap 6 (testen) en stap 7 (feedback-loop) hard verplicht gemaakt. Minimaal 3 testprompts vereist voor levering. |

### Externe of fictieve klant vangnet (4 juridische skills, MINOR)

Nieuwe sectie met defaults voor Nederlandse B2B-context wanneer geen vault aanwezig is.

| Skill | Versie |
|---|---|
| algemene-voorwaarden | 1.0.0 → 1.1.0 |
| btw-administratie | 1.0.0 → 1.1.0 |
| klantcontract-template | 1.0.0 → 1.1.0 |
| concurrentie-research | 1.1.1 → 1.2.0 |

### Kleine specifieke fixes (5 skills, MINOR)

| Skill | Versie | Wijziging |
|---|---|---|
| kvk-administratie | 1.0.0 → 1.1.0 | Conditional rendering: BV-cases skippen EZ/VOF-subsecties (en omgekeerd). |
| dashboard-bouwer | 1.0.0 → 1.1.0 | A2-precheck van harde stop naar mode-keuze (eerst A2 doen, of doorgaan met defaults). |
| bedrijfsverhaal | 1.1.0 → 1.2.0 | Pre-fill scan uitgebreid met persoonlijke-laag bronnen (00 - Over X.md, About.md, biografie, LinkedIn) voor solopreneurs. |
| klantfeedback-collector | 1.0.0 → 1.1.0 | Sector-specifieke feedback-momenten toegevoegd (retail QR, horeca tafel-QR, SaaS/B2B, zorg, dienstverlening). |
| financiele-data-setup | 1.0.0 → 1.1.0 | Split-stack instructies: bij multi-bron setups (boekhouding + factuur-tool + bank apart) elke bron als aparte rij met tussen-bron-koppelingen. |

### Aggregeerd rapport

Volledige analyse: [`AGGREGATED_FINDINGS.md`](../skills-eval-workspace/iteration-1/AGGREGATED_FINDINGS.md) in de Upscailed-OS vault, met score-tabel per skill, cross-skill patronen en top-10 fix-kandidaten.

---

## 2026-05-11 — Review-round fixes (eerder vandaag)

Eerste kwaliteitsronde na productie-voltooiing: review-agents per skill met als doel frontmatter-consistentie, kleine textuele fixes, en cross-link-toevoegingen.

### Frontmatter-consistentie (PATCH)

`scaleFramework: true`-veld toegevoegd aan 12 skills die het missten t.o.v. de website-versie. Geen versie-bump (frontmatter-only).

### Kleine textuele fixes (PATCH)

- `bedrijfsoverzicht`: voorbeeld-link gecorrigeerd
- `bedrijfsverhaal`: Upscailed pad-link gecorrigeerd
- `icp`: typo "valt content platte" → "plat"
- `privacyverklaring`: typo "gelofs-" → "geloofs-"
- `marketing-data-setup`: 2 typos hersteld

### Cross-links toegevoegd (PATCH)

- `algemene-voorwaarden`: nieuwe sectie "Gerelateerde skills" met verwijzingen naar J1/J4/J5 + scale-audit.

### Invalid category-fix (PATCH)

3 skills hadden `category: collect` (niet in Zod-enum van website, zou de Astro build laten falen):
- `concurrentie-research` → `research`
- `marketing-data-setup` → `operations`
- `website-analytics-setup` → `operations`

### Ontbrekend referentie-bestand

- `finance-automatisering/references/template-finance-automatisering.md`: 294 regels markdown sjabloon met 6 workflows (facturatie, boekingen, debiteuren, BTW-voorbereiding, cashflow-forecast, boekhouder-handoff). De bouw-agent crashte eerder vlak voor dit bestand werd geschreven.

---

## 2026-05-06 t/m 2026-05-11 — Productie SCALE-Framework Skills

Initiële bouw van 44 SCALE-framework skills in 7 sprints met parallelle agents.

| Sprint | Datum | Skills | Layer |
|---|---|---|---|
| 1 | 2026-05-06 | 5 skills (Structure I) | S |
| 2 | 2026-05-07 | 5 skills (Juridisch + S10) | J / S |
| 3 | 2026-05-08 | 6 skills (Collect) | C |
| 4 | 2026-05-09 | 6 skills (Marketing + Verkoop) | M / V |
| 5 | 2026-05-10 | 5 skills (Analyze) | A |
| 6 | 2026-05-10 | 4 skills (Leverage) | L |
| 7 | 2026-05-11 | 6 skills (Engineer) | E |

Alle skills versie 1.0.0 op release-moment, behalve een paar die later patch/minor-bumps kregen (zie hierboven).
