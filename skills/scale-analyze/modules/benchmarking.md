# Benchmarking (module van scale-analyze)

> Bron-skill: `benchmarking` | SCALE-code: A5 | Versie: 1.0.0 | Geschatte tijd: 30 tot 60 minuten

---

# Benchmarking

## Doel

Helpt een ondernemer om in 30 tot 60 minuten een **bruikbare benchmark-meting** vast te leggen in één canoniek document: `{scope}/Directie/Research/Benchmarking.md`. Dit is SCALE-stap A5 (Analyze) en de brug tussen het verzamelde cijfermateriaal (Sprint 3 Collect: C1 marketing-data, C2 CRM, C3 financiele-data, C4 klantfeedback, C5 website-analytics, C6 concurrentie, C7 operationele-kpis) en de strategische conclusies (S6 SWOT, S5 Goals, A4 Beslissingen).

*Waarom benchmarking meer is dan "wij doen het goed".* Veel MKB-ondernemers meten alleen tegen zichzelf: "vorig jaar 40 klanten, dit jaar 50, dus we groeien". Dat is voortgangsmeting, geen benchmarking. Echte benchmarking vergelijkt een eigen prestatie tegen een externe norm: de branchegemiddelde, de top-25%, een directe concurrent. Pas dan zie je waar je echt staat. Een bruto-marge van 35% klinkt mooi, maar als de branche-gemiddelde 45% is en de top-25% op 55% zit, is het een zwakte, geen sterkte.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit A5 vraagt vergelijking met minstens 2 concurrenten of een branchenorm op minstens 3 metrics. Die drempel haal je in 20 minuten met halve cijfers, maar dan heb je geen bruikbaar beslissingsdocument. Deze skill mikt op 5 tot 10 benchmark-punten met expliciete bron, datum, branchegemiddelde, top-percentielen, eigen positie en conclusie.

*De cross-link met `concurrentie-research` (C6) en de C-skills (C1-C7).* De skill `concurrentie-research` levert in zijn output een tabel "Benchmarkpunten" die expliciet bedoeld is als input voor A5. Als die file bestaat, leest deze skill hem eerst in. De C-skills (operationele-kpis, financiele-data-setup, website-analytics-setup, klantfeedback-collector, marketing-data-setup, crm-setup) leveren de eigen KPI-scores. De ondernemer hoeft die cijfers dus niet opnieuw te zoeken, hij valideert en breidt uit.

*Het "appels met appels"-principe.* Een benchmark heeft alleen waarde als de vergelijking deugt. Branche-gemiddelde voor accountantskantoren met 50+ FTE zegt weinig over een eenmanszaak. SaaS-benchmarks van OpenView (waar mediane ACV $25k is) zeggen weinig over een €99/maand-product. Deze skill dwingt expliciet af dat per benchmark-punt de vergelijkbaarheid (zelfde definitie, vergelijkbare omvang, vergelijkbare fase) wordt getoetst en als caveat vastgelegd.

Resultaat: SCALE-audit A5 springt van niet-gestart of gedeeltelijk naar voldaan, het document is direct herbruikbaar als input voor S6 SWOT (sterktes en zwaktes worden objectief), voor S5 Goals (gap-analyse levert concrete jaardoel-targets), voor A4 Beslissingen (cijfermatige onderbouwing), en voor klantgesprekken of investeerders-presentaties.

## Run-time introductie (toon aan gebruiker bij start)

Voor de meting begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
+----------------------------------------------------------+
|  BENCHMARKING, SCALE-stap A5 (Analyze)                    |
|  ~30-60 minuten · 5 fasen                                 |
+----------------------------------------------------------+

  We vergelijken in 30 tot 60 minuten jouw eigen prestaties
  tegen branchegemiddelden of directe concurrenten op 5-10
  metrics. Per punt: branchegemiddelde, top-25%, top-10%,
  jouw positie, en conclusie (sterkte, kans of actiepunt).

  +--------------------------------------------------------+
  |  WAT JE TE WACHTEN STAAT                                |
  |                                                         |
  |  - Vooraf scan ik diep wat al in je vault staat:        |
  |    eigen KPI's (uit Collect-skills) en concurrent-data  |
  |    (uit Concurrentie.md). Daaruit haal ik de eerste     |
  |    benchmark-kandidaten.                                |
  |  - Korte check op welke categorieen relevant zijn       |
  |    (omzet, marge, groei, personeel, digitalisatie,      |
  |    klanttevredenheid, marktaandeel) en welke metrics    |
  |    je wilt vergelijken.                                 |
  |  - Actieve research naar branche-rapporten en publieke  |
  |    benchmarks. Bronnen die ik gebruik: CBS Statline,    |
  |    Eurostat, KvK-sectorrapporten, ECB sectoraal,        |
  |    branche-verenigingen, McKinsey/PwC/Deloitte,         |
  |    SaaS-benchmarks (OpenView, Bessemer), agency-norms.  |
  |  - Per benchmark-punt: appels-met-appels-check          |
  |    (zelfde definitie, vergelijkbare omvang, fase).      |
  |    Caveats expliciet vastleggen.                        |
  |  - Daarna lever ik een gevuld Benchmarking.md op met    |
  |    gap-analyse en concrete actiepunten als input voor   |
  |    SWOT (S6) en Goals (S5).                             |
  +--------------------------------------------------------+

  De 5 fasen:
  [1] Scope kiezen + bestaans-check
  [2] Vault scannen (eigen KPI's + concurrent-data + Goals)
  [3] Benchmark-categorieen kiezen + metrics shortlisten
  [4] Externe research naar branche-bronnen
  [5] Vergelijking + gap-analyse + opslaan

  Heb je externe rapporten klaar (sector-rapport, AI-scan,
  jaarcijfers van een concurrent, branche-vereniging-PDF,
  een McKinsey- of PwC-publicatie)? Dan kun je die nu
  noemen of plakken. Hoe meer betrouwbare bronnen, hoe
  scherper de vergelijking.
```

Vraag aan het einde of de gebruiker direct wil starten, of eerst externe rapporten wil aanleveren.

Vraag daarbij specifiek of de gebruiker een recente `Concurrentie.md` heeft of er een wil draaien voordat we beginnen, en of de Collect-skills (C1-C7) al zijn gedraaid. Zonder eigen KPI's wordt benchmarking lastig: dan kan de skill alleen kwalitatief vergelijken.

## Visuele Flow

```
+----------------------------------------------------------+
|  BENCHMARKING, A5 · 30-60 min · 5 fasen                   |
+-------------+--------------------------------------------+
              |
              v
   +----------------------+
   | 1. Scope kiezen      |  Welk bedrijf?
   |                      |  Welk pad?
   +-----------+----------+
              |
              v
   +----------------------+
   | 2. Vault scannen     |  Eigen KPI's (C1-C7),
   |    (auto-discover)   |  concurrent-data (C6),
   |                      |  jaardoel-targets (S5),
   |                      |  eerdere benchmarks
   +-----------+----------+
              |
              v
   +----------------------+
   | 3. Categorieen +     |  Welke 5-10 metrics?
   |    metrics kiezen    |  Omzet, marge, groei,
   |                      |  personeel, digitaal,
   |                      |  klanttevredenheid,
   |                      |  marktaandeel
   +-----------+----------+
              |
              v
   +----------------------+
   | 4. Externe research  |  CBS, Eurostat, KvK,
   |    + appels-check    |  ECB, branche-rapport,
   |                      |  McKinsey/PwC/Deloitte,
   |                      |  SaaS- of agency-norms
   +-----------+----------+
              |
              v
   +----------------------+
   | 5. Vergelijken +     |  Per metric: eigen,
   |    gap-analyse +     |  gem, top-25, top-10,
   |    opslaan           |  positie, context,
   |                      |  conclusie + actie
   +-----------+----------+
              |
              v
   +----------------------+
   | 6. Logging +         |  Changelog +
   |    vervolg-          |  hint naar S6 SWOT,
   |    suggesties        |  S5 Goals, A4
   +----------------------+
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Benchmark" / "benchmarking" / "benchmark-meting"
- "Vergelijking met concurrenten" of "concurrent-vergelijking op cijfers"
- "Branchecijfers" / "branche-vergelijking" / "sector-vergelijking"
- "Hoe presteren wij ten opzichte van [de branche / de markt / concurrent X]?"
- "A5 dichten in SCALE-audit" / "gap A5"
- "Industry benchmark" / "peer comparison"
- "Gap-analyse t.o.v. branche" of "gap-analyse op KPI's"
- "Periodieke vergelijking opzetten"
- Iedere expliciete verwijzing naar `Directie/Research/Benchmarking.md`

Triggert NIET wanneer:
- De gebruiker concurrenten in kaart wil brengen (gebruik `concurrentie-research`, C6, dat is de input)
- De gebruiker eigen KPI's wil definieren (gebruik `operationele-kpis`, C7)
- De gebruiker financiele data wil structureren (gebruik `financiele-data-setup`, C3)
- De gebruiker een SWOT wil maken (gebruik `swot-analyse`, S6, benchmark levert input maar is breder)
- De gebruiker jaardoelen wil zetten (gebruik `doelen-coach`, S5, benchmark levert gap-analyse als seed)
- Er al een actuele Benchmarking.md staat en alleen 1 metric bijgewerkt moet worden (pas dan direct die regel aan)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de benchmark gemaakt moet worden. Maak **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Directie/`, `Marketing/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Directie/`, etc.)
- Een **versgemaakte SCALE-skelet** (bijv. output van `os-builder`) die nog leeg is op `Directie/Research/`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze benchmark voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bijv. huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Directie/Research/Benchmarking.md` al bestaat:
- Bestaat niet, eerste versie, doorgaan
- Bestaat wel, vraag of dit een **update** (1 of meerdere metrics bijwerken) of **nieuwe iteratie** (oude archiveren als `Benchmarking - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

Output-pad voor het uiteindelijke document: bij voorkeur `{scope}/Directie/Research/Benchmarking.md`. Als de scope een andere conventie heeft (`{scope}/Analyze/Benchmarking.md` in een SCALE-skelet-only vault), volg dan die conventie.

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: alleen relatieve paden binnen de bedrijfs-root, geen hard-coded absolute paden.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt | Voedt benchmark-categorie |
|---|---|---|
| `Directie/Research/Concurrentie.md` (output `concurrentie-research`, C6) | Concurrent-profielen met sterktes/zwaktes, sectie "Benchmarkpunten" met best-in-class per as | Concurrent-data, marktaandeel, kanaal-aanwezigheid |
| `Directie/Research/Benchmarking.md` (vorige versie, indien aanwezig) | Eerder geregistreerde metrics + bronnen + datums | Alle, om delta zichtbaar te maken |
| `Directie/00 - Overzicht.md` | Bedrijfsomvang, fase, sector, FTE, omzet-orde-van-grootte | Kalibreert appels-met-appels-toetsing |
| `Directie/01 - Goals.md` (S5) | Jaardoel-targets per as (omzet, klanten, marge), kwartaal-status | Gap-analyse: target vs benchmark |
| `Financien/Rapportage/*.md` of `Financien/Jaarcijfers.md` (indien C3 gedraaid) | Bruto-marge, netto-marge, omzet, kostenstructuur, MRR/ARR, cashflow | Financiele KPI's |
| `Operations/KPIs.md` of `Directie/Research/KPIs.md` (output `operationele-kpis`, C7) | Operationele KPI's per afdeling: doorlooptijd, foutpercentage, NPS, retentie, throughput | Operationele KPI's |
| `Marketing/Analytics.md` (output `website-analytics-setup`, C5) | Bezoekers, sessies, bounce rate, conversie, top-bron | Digitaal/marketing |
| `Marketing/Marketing Data.md` (output `marketing-data-setup`, C1) | Kanaal-performance, CAC, CTR, engagement, e-mail open rate | Marketing |
| `Klantenservice/Feedback.md` (output `klantfeedback-collector`, C4) | NPS, CSAT, reviewscore, klacht-percentage | Klanttevredenheid |
| `Sales/CRM Setup.md` of CRM-export (output `crm-setup`, C2) | Pipeline-conversie, win-rate, sales-cyclus, deal-grootte | Verkoop |
| `HR/Team.md` (output `team-en-rollen`, S11) | FTE, productiviteit per FTE, omzet per FTE | Personeel |

**Belangrijk, concurrentie-research is de primaire pre-fill-bron voor benchmark-categorieen:**

Als `{scope}/Directie/Research/Concurrentie.md` bestaat:
1. Lees het volledig in
2. Extract de complete inhoud van de sectie "Benchmarkpunten" (de tabel met "Best in class" per as). Die zijn expliciet bedoeld als A5-input.
3. Noteer welke concurrent-profielen relevante cijfers bevatten (bijv. publieke jaarcijfers, prijslijsten, klant-reviewscores die je later in de meting kunt gebruiken).
4. Gebruik die punten als startpunt voor de metric-shortlist in stap 3.

Als `Concurrentie.md` NIET bestaat:
- Skip stilletjes, maar noteer dat de concurrent-vergelijking dan vooral uit interview-input plus branche-rapporten moet komen.
- Suggereer in stap 6 om `concurrentie-research` te draaien voordat de Benchmarking als "definitief" wordt gemarkeerd.

**Belangrijk, C-skill-output is de primaire pre-fill-bron voor eigen KPI-scores:**

Per metric die in stap 3 kandidaat wordt, controleer of een C-skill al de eigen score heeft vastgelegd. Bij ontbrekende skills, suggereer in stap 6 om de relevante C-skill te draaien voor robuustere eigen cijfers.

Maak per gevonden bron een korte interne aantekening: welke benchmark-categorie het raakt, met welk cijfer of welke observatie, en wat de datum van dat cijfer is.

**Belangrijk:** als een bron niet bestaat, skip stilletjes, niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

### Stap 3: Benchmark-categorieen kiezen en metrics shortlisten

Toon de gebruiker een korte samenvatting van wat de vault-scan heeft opgeleverd, gegroepeerd per benchmark-categorie. Doel: samen kiezen welke 5-10 metrics in de benchmark mee gaan.

**Standaard-categorieen (kies wat relevant is voor het bedrijf):**

1. **Financieel** (omzet, bruto-marge, netto-marge, MRR/ARR, omzet-groei jaar-op-jaar, cashflow-positie)
2. **Operationeel** (doorlooptijd kernproces, foutpercentage, throughput, retentie, churn)
3. **Personeel** (FTE, omzet per FTE, FTE-groei, personeelsverloop, training-uren per FTE)
4. **Digitalisatie** (% workflows geautomatiseerd, aantal core-tools, AI-adoptie, data-volwassenheid)
5. **Klanttevredenheid** (NPS, CSAT, reviewscore, klacht-percentage, response-time)
6. **Marketing/zichtbaarheid** (CAC, organisch verkeer, e-mail open rate, social engagement, naamsbekendheid)
7. **Verkoop** (win-rate, sales-cyclus, deal-grootte, pipeline-coverage)
8. **Marktaandeel/positie** (geschatte share-of-voice, share-of-wallet, prijsniveau t.o.v. branche)

Per categorie: stel **maximaal 2 vragen** aan de gebruiker om de shortlist te maken. Voorbeelden:

> "Op basis van je Concurrentie.md en operationele-kpis.md heb ik 12 kandidaat-metrics gevonden. Een bruikbare benchmark bevat 5 tot 10 metrics, niet meer. Welke 3 categorieen zijn voor jouw bedrijf op dit moment het meest strategisch om mee te beginnen? Bijvoorbeeld: financieel + klanttevredenheid + digitalisatie."

> "Per gekozen categorie pak ik 2-3 metrics waarvoor jij eigen cijfers hebt of waarvoor we ze redelijk kunnen schatten. Voor [categorie X] zou ik kiezen voor [metric a, b, c]. Klopt dat, of wil je een metric anders zien?"

Streefaantal: **5 tot 10 metrics totaal**. Niet 3 (minimum-audit, te dun), niet 15 (te dun verspreid, geen actiegerichtheid).

Voor elke gekozen metric, leg vast:
- **Naam metric** (exact, zonder synoniemen)
- **Eigen score + datum + bron** (uit vault-scan of door gebruiker te leveren)
- **Definitie** (exact wat wordt gemeten: bruto-marge = omzet minus inkoop, gedeeld door omzet, in %)
- **Vergelijkings-as**: tegen wie ga je vergelijken? (Branchegemiddelde, top-25%, top-10%, een specifieke directe concurrent, of meerdere?)

Als een metric kandidaat is maar er geen eigen score bestaat: noteer als "EIGEN SCORE ONTBREEKT, vereist [naam C-skill] eerst". Niet stilletjes blanco laten.

### Stap 4: Externe research en appels-met-appels-toetsing

Voer actieve research uit naar branchecijfers per gekozen metric. Gebruik onderstaande bronnen (volgorde van betrouwbaarheid voor Nederlandse MKB):

**4a. Voorkeursbronnen (Nederlandse / Europese context)**

| Bron | Wat erin staat | Wanneer gebruiken |
|---|---|---|
| **CBS Statline** (cbs.nl/statline) | Officiele Nederlandse sector-statistieken, FTE per SBI-code, omzet-ontwikkeling, productiviteit, e-commerce-adoptie | Voor alle macro-economische metrics binnen Nederland |
| **KvK-sectorrapporten en sectorscan.kvk.nl** | Aantal bedrijven per sector, fase-verdeling, omzet-grootteklassen, regionale verdeling | Voor marktomvang, marktaandeel-schatting, sector-trends |
| **Eurostat** (ec.europa.eu/eurostat) | Europese vergelijking als Nederlandse data te dun is, of voor cross-border-context | Wanneer NL te smal is voor de metric |
| **ECB sectoraal** (ecb.europa.eu) | Financiele sector-data, marge-ontwikkeling, kredietverlening, MKB-financieringscondities | Voor financiele dienstverlening en macro-financieel |
| **Branchevereniging-rapporten** (NBA, NOVAA, SRA, Thuiswinkel.org, IAB, MKB-Nederland, Cumela, Bouwend Nederland, etc.) | Sector-specifieke benchmarks, jaargemiddelden, ledencijfers | Voor branche-specifieke metrics, vaak gratis na registratie |
| **McKinsey / PwC / Deloitte / BCG / EY publicaties** | Global en Europese benchmarks, AI-adoptie, digitalisatie-maturiteit, MKB-trends | Voor digitalisatie, AI-adoptie, transformation-benchmarks |
| **SaaS-benchmarks: OpenView, Bessemer, ChartMogul, ProfitWell** | ARR-groei, NRR, CAC-payback, churn voor SaaS | Alleen als bedrijf SaaS is, anders apples-orgels |
| **Agency-benchmarks: SoDA, Hubspot Agency, Setup** | Marge, utilization, klant-LTV voor bureaus | Voor marketing- en consulting-bureaus |
| **Concurrent-jaarcijfers** (via Handelsregister of jaarcijfers-publicaties) | Omzet, marge, FTE van directe concurrenten als ze publicatieplichtig zijn (BV met balanstotaal > grenzen) | Voor directe peer-vergelijking, mits BV en publicatieplichtig |

Gebruik WebSearch + WebFetch om actief te zoeken. Per gevonden bron:
1. Bezoek de pagina, noteer de exacte tabel, het jaar, en de definitie die de bron hanteert.
2. Sla URL, publicatiedatum en sample-omvang (aantal respondenten, aantal bedrijven, sector-scope) op.
3. Als WebSearch of WebFetch niet beschikbaar zijn, vraag de gebruiker of hij rapport-PDF's of links kan aanleveren. Gebruik GEEN trainingsdata als vervanging, dat leidt tot verouderde of onverifieerbare cijfers.

**4b. Appels-met-appels-toetsing (verplicht per metric)**

Voor elke benchmark-bron die je vindt, toets expliciet:

| Toets | Vraag | Gevolg bij mismatch |
|---|---|---|
| Definitie | Meet de bron exact hetzelfde als jouw eigen metric? (Bijv. "marge" kan bruto, netto, EBIT, EBITDA zijn) | Caveat vastleggen, eventueel eigen cijfer herrekenen volgens bron-definitie |
| Omvang | Is de gemiddelde sample-omvang vergelijkbaar met jouw bedrijf (FTE, omzet, fase)? | Caveat vastleggen, of strikter segment kiezen binnen de bron |
| Fase | Vergelijkt de bron gevestigde bedrijven met scale-ups, of MKB met enterprise? | Caveat vastleggen, indien mogelijk segment-data gebruiken |
| Geografie | Nederlandse, Europese of mondiale data? Hoe veel wijkt NL af? | Caveat vastleggen, vermeld geografie expliciet |
| Datum | Hoe oud is de meting? (Bij macro-economie is 2 jaar al oud) | Datum altijd vermelden, oude meting markeren als "context, niet exact" |
| Steekproef | Is de bron representatief (random sample, ledencijfers, zelf-selectie via survey)? | Lager-betrouwbaarheids-bronnen markeren als "indicatief" |

Als een metric geen redelijke vergelijking heeft (geen bron, of alleen appels-met-peren), noteer dat eerlijk in de output en suggereer de metric uit de shortlist te halen of als "kwalitatief" te markeren.

**4c. Concurrent-specifieke meting (optioneel)**

Naast branchegemiddelden kan een directe concurrent-vergelijking waardevol zijn (en is in de SCALE-audit als alternatief op branchenorm toegestaan). Per concurrent die je vergelijkt:
1. Controleer of de concurrent publicatieplichtig is (BV, balanstotaal-grenzen). Zo ja, jaarrekening via Handelsregister of jaarcijfers.nl, omzet en marge zijn dan beschikbaar.
2. Publieke prijsinformatie (website-tarieven) levert prijsbenchmark.
3. LinkedIn-volgers, organisch verkeer (SimilarWeb), reviewscores (Google, Trustpilot) leveren marketing- en klant-benchmarks.
4. Concurrent-jobpostings tonen FTE-groei.

Per concurrent: noteer datum waarop de informatie is opgehaald, omdat publieke data verandert.

### Stap 5: Vergelijking, gap-analyse en opslaan

Vul per metric het volgende uit (zie `references/template-benchmarking.md` voor exacte structuur):

| Veld | Inhoud |
|---|---|
| Metric | Naam + definitie (exact) |
| Eigen score | Cijfer + meetdatum + bron-in-vault |
| Branchegemiddelde | Cijfer + bron + publicatiedatum + sample |
| Top-25% | Cijfer + bron (waar beschikbaar) |
| Top-10% | Cijfer + bron (waar beschikbaar) |
| Eigen positie | Achter (>10% onder gemiddelde), op (binnen +/-10%), voor (>10% boven), met cijfermatige delta |
| Appels-toetsing | Definitie, omvang, fase, geografie, datum, steekproef. Caveats expliciet. |
| Context | Waarom is deze metric relevant voor dit bedrijf? Wat zegt het over de bedrijfsgezondheid? |
| Conclusie | Sterkte, neutraal, kans of actiepunt. Maximaal 2 zinnen. |
| Cross-link | Naar welke andere documenten relevant (S6 SWOT, S5 Goals, C-skills) |

**Gap-analyse als brug naar S5 Goals:** vergelijk de eigen score met de jaardoel-target uit `Directie/01 - Goals.md`. Drie scenario's:
1. **Eigen score < target < branchegemiddelde:** Goal is correct gekalibreerd, focus is goed. Conclusie: door blijven werken.
2. **Eigen score < branchegemiddelde < target:** Goal is ambitieus, maar realistisch in een 2-3-jaars-pad. Conclusie: tussenstap formuleren (eerst gemiddelde halen).
3. **Target > top-25%:** Goal is mogelijk te ambitieus, controleer aannames. Conclusie: target verfijnen of bestaande aanpak fundamenteel anders inrichten.

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "revolutionair", "disruptief", "next-level", "game-changing", "ongekend", "indrukwekkend", "exceptioneel". Feitelijk en menselijk.
- **Geen em-dashes** (--). Gebruik komma's, haakjes of losse zinnen.
- **Per metric expliciete bron en datum.** Zonder bron en datum is een benchmark niet falsifieerbaar en daarmee niet bruikbaar.
- **Caveats expliciet zichtbaar.** Niet onderaan een voetnoot, maar in het metric-blok zelf.
- **Conclusies in actievorm waar van toepassing.** Niet "we doen het redelijk", wel "marge ligt 8 punten onder branchegemiddelde, prijszetting heronderzoeken in Q3 2026".
- **Streef naar 5-10 metrics.** Als shortlist na stap 3 nog onder de 5 zit, vraag de gebruiker of een categorie erbij moet. Als boven de 10 komt, prioriteren.
- **Markeer onbetrouwbare cijfers expliciet** als "[INDICATIEF]" of "[VERIFICEREN]" zodat de lezer weet welke uitspraken hard zijn.

Sla op als:
```
{scope}/Directie/Research/Benchmarking.md
```

(Of `{scope}/Analyze/Benchmarking.md` als de vault een SCALE-skelet-conventie volgt, blijf consistent met de scope.)

Maak de `Directie/Research/`-map (of `Analyze/`-map) aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: benchmarking
bedrijf: <Naam>
status: concept
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: A5
bouwt-op:
  - "Directie/Research/Concurrentie.md (C6)"
  - "Operations/KPIs.md of Directie/Research/KPIs.md (C7)"
  - "Financien/Rapportage/*.md (C3)"
  - "Marketing/Analytics.md (C5)"
  - "Klantenservice/Feedback.md (C4)"
voedt:
  - "Directie/Research/SWOT.md (S6, objectieve sterktes/zwaktes)"
  - "Directie/01 - Goals.md (S5, gap-analyse als seed voor doelen)"
  - "Directie/Research/Beslissingen.md (A4)"
---
```

### Stap 6: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):

1. **Changelog bedrijf** in `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Directie/Research/Benchmarking.md` v1.0, [N] metrics benchmarked tegen [X branchebronnen / Y concurrenten], gap-analyse + actiepunten."*

2. **Daily**, als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (geldt in Iwan's OS, niet alle vaults hebben dat), log dan onder *Gedaan vandaag / [Bedrijf]*. Sla over als die map niet bestaat.

3. **Scale-audit-suggestie**, als er een audit-rapport in `Directie/Research/` staat waar A5 op niet-voldaan of gedeeltelijk staat: stel voor de audit opnieuw te draaien zodat de score springt.

Vervolgsuggesties die je altijd noemt:

- **SWOT (S6):** sterktes en zwaktes worden door de benchmark objectief, niet alleen gevoel. Suggereer skill `swot-analyse` te draaien of de bestaande SWOT.md bij te werken met de benchmark-cijfers.
- **Goals (S5):** gap-analyse-conclusies uit stap 5 zijn directe seeds voor jaardoel-targets. Stel voor `doelen-coach` te draaien.
- **Concurrentie-research (C6):** als geen `Concurrentie.md` bestond, of als die ouder is dan 6 maanden, suggereer revisie via skill `concurrentie-research`.
- **Beslissingen-laag (A4):** koppel actiepunten uit de conclusies aan een beslissingsoverzicht (bijv. `Directie/Research/Beslissingen.md`) of skill `beslissingshulp`, zodat benchmark niet stand-alone blijft.
- **Periodieke revisie:** stel een terugkerende actie voor om de benchmark per kwartaal of halfjaarlijks bij te werken. Branchecijfers zijn levend, een meting van 18 maanden geleden is gedateerd.
- **Ontbrekende C-skills:** als bij stap 3 metrics zijn gemarkeerd als "EIGEN SCORE ONTBREEKT", suggereer de relevante C-skill (operationele-kpis, financiele-data-setup, website-analytics-setup, klantfeedback-collector, marketing-data-setup) te draaien voordat de benchmark als "definitief" wordt gemarkeerd.

## Belangrijke regels

- **Vault eerst.** Vraag nooit naar een eigen KPI-score die al in de vault staat. De Collect-skills (C1-C7) zijn de bron, niet de ondernemer opnieuw.
- **Minimaal 3 metrics, mik op 5-10.** De SCALE-eis is 3. Halve antwoorden voldoen niet, mik op 5 tot 10 voor een bruikbaar document.
- **Appels-met-appels per metric, expliciet.** Definitie, omvang, fase, geografie, datum, steekproef. Caveats vastleggen, niet verzwijgen.
- **Per benchmark-bron: URL of bestandsnaam plus publicatiedatum.** Zonder bron is een vergelijking niet falsifieerbaar.
- **Webresearch actief uitvoeren.** WebSearch en WebFetch zijn aanbevolen voor stap 4. Vermeld bronnen transparant. Geen trainingsdata als vervanging.
- **Geen marketing-superlatieven.** Feitelijk schrijven, geen "indrukwekkend", "uitzonderlijk", "top".
- **Geen em-dashes.** Gebruik komma's, haakjes of losse zinnen.
- **Concurrent-vergelijking alleen op publieke data.** Geen aannames over privegegevens van concurrenten. Wat je publiek kunt verifieren, dat gebruik je.
- **Concurrentie.md eerst, dan benchmark-categorieen pre-fillen.** Als die bestaat, is 30-50% van het categorie-werk al gedaan. De ondernemer hoeft dat niet over te doen.
- **Geen Concurrentie.md? Suggereer hem eerst te draaien.** Niet blokkeren, maar het verschil in scherpte is significant.
- **Bestaande C-skill-output respecteren.** Als operationele-kpis.md een NPS-score van 42 noemt, is dat de eigen score, niet een nieuwe vraag aan de gebruiker.
- **Nooit overschrijven** zonder bevestiging als er al een Benchmarking.md bestaat.
- **Gap-analyse is verplicht.** Een benchmark zonder gap-analyse is statistiek. De vergelijking met S5-targets maakt het actiegericht.
- **Conclusies in actievorm waar van toepassing.** Niet "we doen het redelijk", wel "marge ligt onder gemiddelde, prijszetting heronderzoeken".
- **Geen aannames over vault-structuur.** Werk voor solopreneurs met single-business vault, voor multi-business vault, en voor klanten met versgemaakte SCALE-skelet. Alleen relatieve paden binnen `{scope}`.
- **Respecteer de stem van de ondernemer.** De benchmark moet aanvoelen alsof het bedrijf zichzelf eerlijk de spiegel voorhoudt, niet alsof een consultant cijfers heeft opgelegd.
- **Mik op rijke diepte, niet op het audit-minimum.** A5-audit vraagt vergelijking op 3 metrics. Wij mikken op 5-10 met bron, datum, caveats, conclusie en cross-link.

## Voorbeeld-output

Zie [`references/template-benchmarking.md`](references/template-benchmarking.md) voor de exacte structuur die de skill oplevert: per metric een blok met eigen score, branchegemiddelde, top-25%, top-10%, eigen positie, appels-toetsing, context en conclusie, plus een samenvattende gap-analyse en actielijst.
