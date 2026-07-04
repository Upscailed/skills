---
type: rapportage-templates
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: A1
aantal-rapportages: <getal>
blokken-actief: [directie, sales, marketing, operations, finance, klant-board]
---

# Rapportage-Templates — <Bedrijfsnaam>

> SCALE-stap A1 (Analyze). Dit document legt vast welke terugkerende rapportages het bedrijf nodig heeft: wat gaat naar wie, wanneer, in welke vorm, via welk kanaal. Het skelet voor structureel sturen op cijfers, niet reactief reageren op losse alerts.

## Hoe dit document werkt

- Iedere rapportage heeft één eigenaar (cross-link naar [[HR/Team]]) en een gedefinieerde bron-set (cross-link naar [[Collect]] of de losse C-skill-output).
- Frequentie matcht de data-frequentie uit `Operations/KPIs.md` of de C-skill. Wekelijkse KPI's horen in wekelijkse rapporten, niet in een maandrapport.
- Tijdstip is concreet (24-uurs formaat). Geen "ergens maandag", wel "maandag 08:00".
- Template-skelet per rapport beschrijft de vaste secties (executive summary, KPI-tabel, trends, anomalieën, acties) die elke editie opnieuw gevuld worden.
- Cross-links: A2 (Mission Control) voor live-variant, A3 (Daily Briefing) voor daily-sub-rapport, L2 (Auto Rapportage Setup) voor automatisering.

## Overzichtstabel

| Rapportage | Blok | Frequentie | Tijdstip | Doelgroep | Bron | Eigenaar |
|---|---|---|---|---|---|---|
| <Rapport-naam 1> | Directie | Wekelijks | Maandag 08:00 | <Rol uit Team.md> | <C-skill outputs / tools> | <Rol uit Team.md> |
| <Rapport-naam 2> | Directie | Per kwartaal | 1e werkdag nieuw kwartaal 09:00 | <Rol> | <Bron-set> | <Eigenaar> |
| <Rapport-naam 3> | Sales | Wekelijks | Maandag 08:00 | <Rol> | <Bron-set> | <Eigenaar> |
| <Rapport-naam 4> | Marketing | Maandelijks | 1e werkdag maand 09:00 | <Rol> | <Bron-set> | <Eigenaar> |
| <Rapport-naam 5> | Operations | Wekelijks | Maandag 08:00 | <Rol> | <Bron-set> | <Eigenaar> |
| <Rapport-naam 6> | Finance | Maandelijks | 1e werkdag maand 09:00 | <Rol> | <Bron-set> | <Eigenaar> |
| <Rapport-naam 7> | Klant / Board | Per kwartaal | 1e werkdag nieuw kwartaal 09:00 | <Klantnaam of board> | <Bron-set> | <Eigenaar> |

---

## Blok 1 — Directie / CEO

### Rapport 1: <Naam>

| Veld | Inhoud |
|---|---|
| **Doelgroep** | Wie ontvangt en leest dit. Cross-link: [[HR/Team#<Rolnaam>]]. |
| **Doel en beslissingen** | Wat moet de lezer kunnen na het lezen. Concrete beslissingen. |
| **Frequentie** | Dagelijks / wekelijks / maandelijks / per kwartaal / per jaar. |
| **Bron-data** | C-skills en tools. Cross-link: [[Collect/Marketing-Data]], [[Operations/KPIs#<KPI>]], tool-naam uit [[IT/Toolstack]]. |
| **Kern-KPI's** | Lijst van 3 tot 8 metrics die in dit rapport staan. |
| **Formaat** | PDF / HTML / email-digest / Slack-bericht / Notion-pagina / dashboard-screenshot. |
| **Tijdstip** | Concreet wanneer (24-uurs formaat). |
| **Distributie-kanaal** | E-mail naar adres, Slack-kanaal, SharePoint-map, klant-portal-upload. |
| **Template-skelet** | Vaste secties van het rapport (zie standaard hieronder, eventueel aangepast). |
| **Eigenaar** | Persoon of rol. Cross-link: [[HR/Team#<Rolnaam>]]. |
| **Strategische link** | Optioneel: koppelt aan [[Directie/01 - Goals#<Doel>]]. |
| **Toelichting** | Context, samenvoegings-keuzes, baseline-status. |

**Template-skelet:**
1. Executive summary (3-5 regels) — kernboodschap deze periode
2. KPI-tabel — alle kern-KPI's met huidige waarde, vorige periode, trend, status 🟢/🟠/🔴
3. Trends / grafieken — 1-3 grafieken voor belangrijkste KPI's
4. Anomalieën — KPI's buiten norm of trend-breuk met duiding
5. Acties — concrete vervolgstappen, wie doet wat voor wanneer
6. Onderbouwing (optioneel) — cijfer-bronnen, links, opmerkingen over data-kwaliteit

### Rapport 2: <Naam>

(Zelfde tabel-structuur als boven, voor het volgende directie-rapport.)

---

## Blok 2 — Sales

### Rapport 3: <Naam>

(Zelfde tabel-structuur, met sales-specifieke template-skelet bv. zwaartepunt op pipeline-tabel en risico-deals.)

---

## Blok 3 — Marketing

### Rapport 4: <Naam>

(Zelfde tabel-structuur, met marketing-specifieke template-skelet bv. kanaal-tabel en trends per kanaal.)

---

## Blok 4 — Operations

### Rapport 5: <Naam>

(Zelfde tabel-structuur, met operations-specifieke template-skelet bv. KPI-status-tabel en rode-KPI-secties.)

---

## Blok 5 — Finance

### Rapport 6: <Naam>

(Zelfde tabel-structuur, met finance-specifieke template-skelet bv. P&L-tabel, cashflow-grafiek en afwijking versus prognose.)

---

## Blok 6 — Klant / Board

### Rapport 7: <Naam>

(Zelfde tabel-structuur, met klant- of board-specifieke template-skelet bv. extra sectie "Vooruitblik volgend kwartaal" en "Open vragen of escalaties". Voor board-deck: vaste 10-12 slides-structuur over kwartalen.)

---

## Gewenste rapportages of KPI's zonder huidige bron

Rapportages of KPI's die in interview gewenst zijn maar waar de bron-data nog niet ingericht is. Doel: lijst maakt expliciet wat eerst opgelost moet worden voordat het rapport in productie kan.

| Gewenst rapport / KPI | Ontbrekende bron | Welke C-skill of L-skill lost dit op |
|---|---|---|
| <Voorbeeld: marketing-attributie per leadbron> | Geen UTM-tracking, geen attribution-tool | C1 Marketing Data Setup uitbreiden, eventueel L4 voor automatisering |
| <Voorbeeld: klant-retentie-cohort> | Geen historische cohort-data in CRM | C2 CRM-Setup met cohort-rapportage, of E1 Dashboard Bouwer |

---

## Bewuste samenvoegingen

Rapportages die in deze versie bewust gecombineerd zijn omwille van bedrijfsomvang of stakeholder-overlap. Bij groei mogelijk opsplitsen.

| Gecombineerd rapport | Combineert blok | Reden | Wanneer opsplitsen |
|---|---|---|---|
| <Voorbeeld: Directie + Operations Weekrapport> | Blok 1 + Blok 4 | Solopreneur, alle KPI's bij één persoon | Bij groei naar 5+ FTE of zodra operations-lead aanstelling komt |

---

## Cross-links

- **Bron-data:** [[Collect/Marketing-Data]] (C1) · [[Collect/CRM-Setup]] (C2) · [[Collect/Financiele-Data]] (C3) · [[Collect/Klantfeedback]] (C4) · [[Collect/Website-Analytics]] (C5) · [[Collect/Concurrentie-Research]] (C6) · [[Operations/KPIs]] (C7)
- **Eigenaren en stakeholders:** [[HR/Team]] (S11)
- **Strategische verankering:** [[Directie/00 - Overzicht]] (S1) · [[Directie/01 - Goals]] (S5)
- **Tooling-bronnen:** [[IT/Toolstack]] (S12)
- **Vervolg-skills:** [[Analyze/Mission-Control]] (A2, live-variant) · [[Analyze/Daily-Briefing]] (A3, daily-sub-rapport) · [[Leverage/Auto-Rapportage-Setup]] (L2, automatisering)

---

## Review-ritme

- **Per kwartaal:** controleer of frequenties, tijdstippen en doelgroepen nog kloppen. Wisselt iemand van rol, vervalt een klantcontract, of komt een nieuwe board-cyclus, dan past de set rapportages aan.
- **Per jaar:** structurele review of de juiste rapportages bestaan. Schrap rapporten die niet gelezen worden, voeg toe wat ontbreekt op basis van het afgelopen jaar.
- **Bij C-skill update:** als een bron-skill (C1 t/m C7) wijzigt (nieuwe KPI's, andere tool, andere frequentie), update de bijbehorende rapport-kaarten.
