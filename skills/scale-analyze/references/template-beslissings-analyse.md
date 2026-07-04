---
type: beslissings-frameworks
bedrijf: "{Bedrijfsnaam}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: A4
playbooks: {aantal}
---

# Beslissings-Frameworks - {Bedrijfsnaam}

> **Wat is dit document?** Een catalogus van playbooks voor de terugkerende strategische beslissingen bij {Bedrijfsnaam}. Per playbook: welke data raadplegen, welke criteria meten, welk gewicht ze krijgen, welke drempel go versus no-go bepaalt en wie verplicht meekijkt. Plus een generieke ad-hoc-checklist voor niet-categoriseerbare keuzes. Dit document beslist niet voor je. Het zorgt dat dezelfde beslissing twee keer op dezelfde manier wordt gemaakt, met dezelfde data, dezelfde criteria, dezelfde meekijker.

---

## Overzicht in één plaatje

```
                     ┌──────────────────────────────┐
                     │   STRATEGISCHE KEUZE          │
                     │   DIENT ZICH AAN              │
                     └──────────────┬───────────────┘
                                    ▼
                  ┌─────────────────┴─────────────────┐
                  │ Valt onder bestaand playbook?     │
                  └─────┬───────────────────┬─────────┘
                       JA                  NEE
                        │                   │
                        ▼                   ▼
              ┌───────────────────┐   ┌─────────────────────┐
              │ Pak playbook,     │   │ Pak ad-hoc-template │
              │ doorloop 8        │   │ (9 punten),         │
              │ dimensies         │   │ of grote/onbekende  │
              └────────┬──────────┘   │ keuze? → schakel    │
                       │              │ over op             │
                       │              │ `beslissingshulp`   │
                       ▼              └──────────┬──────────┘
              ┌───────────────────┐              │
              │ Score → zone?     │              │
              ├───────────────────┤              │
              │ No-go-zone: stop  │              │
              │ Twijfel: meekijker│              │
              │ Go-zone: door     │              │
              └────────┬──────────┘              │
                       │                          │
                       ▼                          ▼
              ┌─────────────────────────────────────┐
              │ Beslissing nemen, uitkomst loggen   │
              │ in Intelligence/Beslissingen of     │
              │ Directie/Research                   │
              └─────────────────────────────────────┘
```

*Linkerkant: terugkerende keuze valt in een bestaand playbook → snel, consistent, datagestuurd. Rechterkant: een keuze die niet in een playbook past → ad-hoc-checklist, of (bij grote impact / onbekende terrein) overschakelen op `beslissingshulp` voor één-shot diepere coaching.*

---

## Playbook-overzicht

| # | Playbook | Frequentie | Data-bronnen | Meekijker verplicht? |
|---|---|---|---|---|
| 1 | {Bv. Klant-acceptatie} | {Bv. 2-4× per maand} | C2 CRM, C3 marge, C4 fit-signalen, S4 ICP | Bij twijfel-zone |
| 2 | {Bv. Prijsverhoging} | {Bv. 1-2× per jaar} | C3 marge, S8 pricing, C6 concurrentie, C4 NPS | Altijd financieel adviseur |
| 3 | {Bv. Tool-investering > €X} | {Bv. 1× per maand} | C3 cashflow, S12 toolstack | Boven €Y |
| 4 | {Bv. Aannamebesluit} | {Bv. 1-2× per kwartaal} | C7 capaciteit, C3 marge, S5 Goals | Altijd partner/mentor |
| 5 | {Eigen toevoeging} | {...} | {...} | {...} |
| 6 | {Eigen toevoeging} | {...} | {...} | {...} |

---

## Playbook [1] - Klant-acceptatie

> **Beslissing in één zin.** Accepteer ik deze nieuwe lead als klant of niet?

**Frequentie:** {Bv. 2-4 × per maand}

**Data-bronnen:** {Cross-link concreet}
- `Collect/CRM-setup.md` (C2), pipeline-volume en huidige capaciteit
- `Collect/Financiele-data.md` (C3), marge-per-klanttype-tabel
- `Collect/Klantfeedback.md` (C4), fit-signalen uit eerdere segmentdata
- `Directie/Playbook/ICP.md` (S4), ICP-segmentdefinities

**Criteria + gewicht + score-template:**

| # | Criterium | Definitie | Gewicht (1-5) | Score-schaal | Voorbeeld-grens |
|---|---|---|---|---|---|
| 1 | Marge | % netto-marge op verwacht jaaromzet bij deze klant | **5** (blocker) | 1=<20%, 3=30%, 5=≥40% | Blocker bij < 25% |
| 2 | Fit ICP | Valt in welk ICP-segment? | 4 | 1=buiten ICP, 3=rand-ICP, 5=kern-ICP | - |
| 3 | Doorlooptijd-impact | Verwachte uren/maand | 3 | 1=>10h, 3=5-10h, 5=<5h | - |
| 4 | Strategische waarde | Opent referenties, branche, casestudie | 2 | 1=geen, 3=mogelijk, 5=duidelijk | - |
| 5 | Energie-fit | Aangename werkrelatie op basis van intake | 3 | 1=mwah, 3=ok, 5=top | Blocker bij score 1 |
| 6 | Cash-timing | Voor of achteraf | 2 | 1=achteraf 60d, 3=achteraf 14d, 5=vooraf | - |

**Score-systeem:** per criterium 1 tot 5, gewicht × score, optellen tot max 95 (bij 6 criteria met deze gewichten). Drempel:

| Zone | Score-range | Actie |
|---|---|---|
| No-go | < 55 | Lead bedanken, vriendelijk doorverwijzen indien mogelijk |
| Twijfel | 55 - 69 | Sparring met meekijker voor definitief ja/nee |
| Go | ≥ 70 | Accepteren, offerte versturen, CRM-overgang naar volgende stadium |

**Blockers (gewicht 5):** Als criterium 1 (Marge) of 5 (Energie-fit) onder de blocker-grens scoort, automatisch no-go ongeacht totaalscore.

**Verplichte meekijker bij twijfel-zone:** {Bv. partner X, of mentor Y}. Cross-link `Directie/Playbook/Team.md` (S11).

**Logging-locatie van de uitkomst:** `Persoonlijk/Intelligence/Beslissingen/YYYY-MM-DD - Klant-acceptatie {Klantnaam}.md` of `{scope}/Sales/Klant-acceptatie-log.md`.

---

## Playbook [2] - Prijsverhoging

> **Beslissing in één zin.** Verhoog ik de prijs voor {pakket / segment / alle klanten}, met hoeveel, per wanneer?

**Frequentie:** {Bv. 1-2 × per jaar}

**Data-bronnen:**
- `Collect/Financiele-data.md` (C3), marge per pakket, marge-trend laatste 12 maanden
- `Directie/Playbook/Producten.md` (S8), huidige prijsstructuur
- `Collect/Concurrentie.md` (C6), vergelijking met markt
- `Collect/Klantfeedback.md` (C4), NPS, prijs-bezwaren in feedback

**Criteria + gewicht + score-template:**

| # | Criterium | Definitie | Gewicht (1-5) | Score-schaal |
|---|---|---|---|---|
| 1 | Marge-druk | Huidige marge versus doelmarge | 5 | 1=marge boven doel, 3=op doel, 5=onder doel |
| 2 | Inflatie | Cumulatieve prijsstijging sinds laatste verhoging | 3 | 1=<3%, 3=3-7%, 5=>7% |
| 3 | Concurrentie-positie | Prijs versus markt | 3 | 1=al hoogste, 3=middenmoot, 5=onder markt |
| 4 | Klanttevredenheid | NPS/CSAT-trend | 4 | 1=dalend, 3=stabiel, 5=stijgend |
| 5 | Risico-tolerantie | % klantverlies wat acceptabel is | 2 | 1=geen, 3=5%, 5=>10% |

**Score-systeem:** gewogen totaal. Drempel:

| Zone | Score-range | Actie |
|---|---|---|
| No-go | < 50 | Geen verhoging dit jaar, monitor opnieuw over 6 maanden |
| Twijfel | 50 - 69 | Beperkt verhogen (3-5%), alleen nieuwe klanten of bij contractverlenging |
| Go | ≥ 70 | Verhogen op alle klanten, communicatie 6-8 weken vooruit |

**Verplichte meekijker:** financieel adviseur (altijd). Cross-link Team.md (S11) → rol "Financieel adviseur".

**Logging:** `{scope}/Directie/Research/Prijsronde YYYY.md` met uitgangspunten, scores, communicatie-plan en verwachte impact.

---

## Playbook [3] - Tool-investering (boven {€X})

> **Beslissing in één zin.** Schaf ik deze tool of dit abonnement aan?

**Drempel-trigger:** dit playbook gaat in werking bij abonnementen > {€50/maand} of one-off > {€500}.

**Frequentie:** {Bv. 1 × per maand}

**Data-bronnen:**
- `Collect/Financiele-data.md` (C3), cashflow, lopende abonnementen-totaal
- `Directie/Playbook/Toolstack.md` (S12), bestaande tools, overlap-check

**Criteria + gewicht + score-template:**

| # | Criterium | Definitie | Gewicht (1-5) | Score-schaal |
|---|---|---|---|---|
| 1 | Tijdsbesparing | Uur per maand bespaard | 5 | 1=<2h, 3=2-5h, 5=>5h |
| 2 | Kosten-baten | Jaarkosten versus uurtarief × tijdsbesparing | 4 | 1=negatief, 3=neutraal, 5=2× of meer terugverdiend |
| 3 | Overlap met toolstack | Vervangt of dubbel | 3 | 1=volledige overlap, 3=deel-overlap, 5=geen overlap |
| 4 | Lock-in-risico | Opzegbaar binnen 1 maand, data-export mogelijk | 3 | 1=jarencontract, 3=jaar, 5=maandelijks + export |
| 5 | Leercurve | Productief binnen X uur | 2 | 1=>20h, 3=8h, 5=<2h |

**Score-systeem:** gewogen totaal. Drempel:

| Zone | Score-range | Actie |
|---|---|---|
| No-go | < 50 | Afwijzen of goedkoper alternatief zoeken |
| Twijfel | 50 - 64 | Proefperiode van 14 of 30 dagen, evalueer voor definitief commit |
| Go | ≥ 65 | Aanschaffen, vermelden in toolstack-inventarisatie |

**Verplichte meekijker:** boven {€X} per jaar verplicht financieel adviseur of partner.

**Logging:** in `{scope}/Directie/Playbook/Toolstack.md` opnemen plus reden / score.

---

## Playbook [4] - Aannamebesluit

> **Beslissing in één zin.** Huur ik iemand in / neem ik iemand aan?

**Frequentie:** {Bv. 1-2 × per kwartaal}

**Data-bronnen:**
- `Collect/Operationele-KPIs.md` (C7), capaciteit-benutting, doorlooptijden
- `Collect/Financiele-data.md` (C3), marge, cashflow-buffer
- `Directie/01 - Goals.md` (S5), past de uitbreiding bij de jaardoelen

**Criteria + gewicht + score-template:**

| # | Criterium | Definitie | Gewicht (1-5) | Score-schaal |
|---|---|---|---|---|
| 1 | Capaciteits-druk | % werkbare uren benut | 5 | 1=<60%, 3=70%, 5=>85% |
| 2 | Marge per uur | Kan uurtarief van inzet terugverdiend worden | 5 (blocker) | 1=nee, 3=nipt, 5=ruim |
| 3 | Strategische versus uitvoer-taak | Werk dat ondernemer moet doen of dat anderen ook kunnen | 4 | 1=alleen ondernemer, 3=deelbaar, 5=uitvoer-taak |
| 4 | Cashflow-buffer | Maanden runway bij volle kosten zonder extra omzet | 4 | 1=<3 mnd, 3=3-6 mnd, 5=>6 mnd |
| 5 | Vaardigheid-fit | Mist de ondernemer deze vaardigheid? | 3 | 1=hijzelf kan dit goed, 3=middelmatig, 5=duidelijke leemte |
| 6 | Coordinatie-overhead | Uren aansturing per week | 2 | 1=>8h, 3=4h, 5=<2h |

**Score-systeem:** gewogen totaal. Drempel:

| Zone | Score-range | Actie |
|---|---|---|
| No-go | < 55 | Niet aannemen, eerst capaciteit anders aanpakken (proces-optimalisatie, tool) |
| Twijfel | 55 - 74 | Start met freelancer of contractor (geen vast contract) |
| Go | ≥ 75 | Parttime of fulltime aanname starten |

**Blockers (gewicht 5):** marge per uur onder grens of capaciteit-druk onder 70%, altijd no-go ongeacht totaal.

**Verplichte meekijker:** partner of mentor (altijd) plus financieel adviseur boven fulltime-contract.

**Logging:** `{scope}/HR/Aannamebesluiten/YYYY-MM-DD - {Rolnaam}.md`.

---

## Playbook [5] - {Eigen toevoeging}

> **Beslissing in één zin.** {Vul in.}

**Frequentie:** {...}

**Data-bronnen:** {...}

**Criteria + gewicht + score-template:**

| # | Criterium | Definitie | Gewicht (1-5) | Score-schaal |
|---|---|---|---|---|
| 1 | {...} | {...} | {...} | {...} |
| 2 | {...} | {...} | {...} | {...} |
| 3 | {...} | {...} | {...} | {...} |

**Score-systeem:** {drempel-tabel}

**Verplichte meekijker:** {...}

**Logging:** {...}

---

## Ad-hoc-template voor keuzes zonder eigen playbook

Wanneer een strategische beslissing niet in een bestaand playbook valt, gebruik je deze checklist. Bij grote of onbekende keuzes: schakel daarna over op de meta-skill `beslissingshulp` voor diepere één-shot-coaching.

```
1. BESLISSING IN ÉÉN ZIN
   _______________________________________________

2. OMKEERBAARHEID
   [ ] Type 1, niet omkeerbaar (doe het langzaam, eis hoge zekerheid)
   [ ] Type 2, omkeerbaar (doe het snel, leer al doende)

3. TIJDSHORIZON
   [ ] 1 maand   [ ] 1 jaar   [ ] 3 jaar   [ ] 10 jaar

4. RELEVANTE DATA
   Bestand 1: _______________________
   Bestand 2: _______________________
   Bestand 3: _______________________
   Externe bron: _______________________

5. AD-HOC-CRITERIA (3 tot 5, gewicht 1-5)
   Criterium               Gewicht   Score (1-5)
   ___________________     ______    ______
   ___________________     ______    ______
   ___________________     ______    ______
   ___________________     ______    ______
   ___________________     ______    ______

   Totaal (gewogen):       ______

6. SCORE-DREMPEL
   No-go-zone:    < ______
   Twijfel-zone:  ______ tot ______
   Go-zone:       ≥ ______

7. MEEKIJKER
   [ ] Niet nodig (kleine omkeerbare keuze)
   [ ] Partner: _______________________
   [ ] Mentor: _______________________
   [ ] Financieel adviseur: _______________________
   [ ] Andere: _______________________

8. NAAR DIEPERE COACHING?
   [ ] Nee, playbook of ad-hoc-score is voldoende
   [ ] Ja, schakel over op skill `beslissingshulp` voor
         first-principles, 10-10-10, bias-check, start-fresh

9. LOGGEN
   Locatie: Persoonlijk/Intelligence/Beslissingen/
            YYYY-MM-DD - {Onderwerp}.md
   of:      {scope}/Directie/Research/
            Beslissing - {Onderwerp}.md
   Inhoud:  beslissing, scores, meekijker-input, uitkomst,
            evaluatie-moment over 3 maanden.
```

---

## Vaste meekijker-rollen

Wie er meekijkt per zone, gegroepeerd vanuit `Directie/Playbook/Team.md` (S11). Vul de namen of rollen in zodat het direct bruikbaar is.

| Rol | Naam / contact | Wanneer betrekken |
|---|---|---|
| Partner | {Naam} | {Bv. bij alle no-go versus go-zone keuzes boven X impact} |
| Mentor | {Naam} | {Bv. bij alle aannames + strategische pivots} |
| Financieel adviseur | {Naam} | {Bv. bij investeringen > €X, alle aannames, prijsverhogingen} |
| Sparringspartner branche | {Naam} | {Bv. bij dienstverlening-keuzes, productlijn-review} |
| Juridisch adviseur | {Naam} | {Bv. bij contract-aannames, leverancier-wissels} |

---

## Cross-links

| SCALE-check | Bestand | Wat het oplevert voor dit document |
|---|---|---|
| S4 ICP | `Directie/Playbook/ICP.md` | Definities die in Klant-acceptatie-playbook gebruikt worden |
| S5 Jaardoelen | `Directie/01 - Goals.md` | Richting die elk playbook expliciet moet dienen |
| S8 Producten/Pricing | `Directie/Playbook/Producten.md` | Input voor prijsverhoging-playbook |
| S11 Team-rollen | `Directie/Playbook/Team.md` | Wie er meekijkt per zone |
| S12 Toolstack | `Directie/Playbook/Toolstack.md` | Overlap-check voor tool-investerings-playbook |
| C2 CRM-setup | `Collect/CRM-setup.md` | Pipeline-data voor klant-acceptatie |
| C3 Financiële data | `Collect/Financiele-data.md` | Marge, cashflow, hoofd-bron voor meerdere playbooks |
| C4 Klantfeedback | `Collect/Klantfeedback.md` | Stem-van-de-klant, NPS, fit-signalen |
| C6 Concurrentie | `Collect/Concurrentie.md` | Markt-positionering voor prijsronde |
| C7 Operationele KPIs | `Collect/Operationele-KPIs.md` | Capaciteit, doorlooptijden, foutpercentage |
| A1 Rapportage | `Analyze/Rapportage.md` | Plaats waar playbook-uitkomsten en drempel-checks periodiek landen |
| A5 Benchmarking | `Analyze/Benchmark.md` | Cross-check op markt-norm voor criteria-instellingen |
| Meta-skill `beslissingshulp` | losse keuze-coaching | Diepere één-shot-coaching bij niet-categoriseerbare of grote keuzes |

---

## Periodieke review

Dit document is **levend**. Plan elke kwartaal-review (zelfde slot als doelen-review) een korte check:

1. Welke beslissingen kwamen voor in het afgelopen kwartaal? Hoe scoorden ze?
2. Klopten de drempels? Was er een keuze die go-zone scoorde maar achteraf fout was, of no-go-zone maar bleek alsnog goed?
3. Moet een criterium-gewicht omhoog of omlaag?
4. Mist er een playbook voor een nieuwe terugkerende beslissing?
5. Welke meekijker werd niet betrokken terwijl dat wel had gemoeten, of andersom?

Update versie-nummer en laatst-bijgewerkt-datum in de frontmatter na elke review.

---

## Notities

{Hier los: observaties die niet in een playbook passen maar wel relevant zijn voor toekomstige iteraties. Bijvoorbeeld: een blinde vlek die ontdekt is, een externe bron die in een volgende ronde meegenomen moet worden, een biases-patroon dat in eerdere beslissingen terugkwam.}
