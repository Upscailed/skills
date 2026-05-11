---
type: salesproces
bedrijf: "{Bedrijfsnaam}"
business-type: "{B2B | B2C | hybride}"
cyclus-lengte: "{uren | dagen | weken | maanden}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: V1
aantal-fases: {getal}
forecast-model: weighted-pipeline
---

# Salesproces: {Bedrijfsnaam}

> **Wat is dit document?** Het canonieke salesproces van {Bedrijfsnaam}: hoe een deal van eerste lead tot getekende klant beweegt. Per fase: wanneer een deal er in komt (entry), wat er gebeurt (kern-acties), wat bewezen moet zijn om door te gaan (exit), hoe lang het duurt, wat de kans op winst is en wie eigenaar is. Plus een forecast-model, KPI's, sales-materiaal en cross-links naar S4 (ICP), S8 (Producten en Pricing), C2 (CRM-Setup), V3 (Opvolg-flow), J5 (Klantcontract) en S11 (Team).

---

## Overzicht in één plaatje

```
┌──────────┐   ┌──────────────┐   ┌───────────┐   ┌──────────┐   ┌────────────────┐   ┌──────────────┐
│    1     │   │       2      │   │     3     │   │    4     │   │       5        │   │      6       │
│ Prospect │ → │ Eerste contact│ → │ Discovery │ → │ Voorstel │ → │ Onderhandeling │ → │ Won / Lost   │
│   10%    │   │     20%       │   │    40%    │   │   60%    │   │      80%       │   │ 100% / 0%    │
└──────────┘   └──────────────┘   └───────────┘   └──────────┘   └────────────────┘   └──────────────┘
   ~tijd          ~tijd               ~tijd         ~tijd            ~tijd                 sluiting
```

*Pas de fase-set aan op het business-type en de cyclus-lengte (zie blok 1 in de skill voor de drie startsjablonen).*

---

## 1. Fase-set

| # | Fase | Default kans-% | Gemiddelde duur | Eigenaar | Backup |
|---|---|---|---|---|---|
| 1 | Prospect | 10% | {1-7 dagen} | {Naam of rol} | {Naam of "-"} |
| 2 | Eerste contact | 20% | {1-7 dagen} | {Naam} | {Naam} |
| 3 | Discovery | 40% | {7-14 dagen} | {Naam} | {Naam} |
| 4 | Voorstel | 60% | {7-21 dagen} | {Naam} | {Naam} |
| 5 | Onderhandeling | 80% | {3-14 dagen} | {Naam} | {Naam} |
| 6 | Won / Lost | 100% / 0% | sluiting | {Naam} | {Naam} |

---

## 2. Per fase uitgewerkt

### Fase 1: Prospect

| Dimensie | Inhoud |
|---|---|
| **Entry-criterium** | {Wanneer komt een deal hier in. Bv. "Lead heeft contact opgenomen via formulier, e-mail of LinkedIn-bericht én past op het eerste oog bij ICP-segment X, Y of Z."} |
| **Kern-acties** | {Wat doet het bedrijf hier. Bv. "Kwalificatie-vragen sturen, fit-check tegen ICP, beslissen of we doorgaan. 1-3 touchpoints in 1-7 dagen."} |
| **Exit-criterium** | {Wat moet bewezen voor volgende fase. Bv. "Kwalificatie-fit OK én lead heeft gereageerd op uitnodiging voor kennismaking."} |
| **Doorlooptijd (gemiddeld)** | {Bv. "1-7 dagen"} |
| **Kans-%** | 10% |
| **Eigenaar** | {Naam} |
| **Tools** | {Bv. "HubSpot Free voor CRM, Gmail voor mail, ICP.md voor kwalificatie-criteria"} |
| **KPI's** | {Aantal nieuwe leads per maand, % gekwalificeerd, doorlooptijd} |

---

### Fase 2: Eerste contact

| Dimensie | Inhoud |
|---|---|
| **Entry-criterium** | {Bv. "Lead is gekwalificeerd én heeft afspraak in agenda gezet (Calendly) of mondeling toegezegd."} |
| **Kern-acties** | {Bv. "Bevestigingsmail sturen, korte voorbereiding van vraag, kennismakingsgesprek (15-30 min)."} |
| **Exit-criterium** | {Bv. "Kennismakingsgesprek heeft plaatsgevonden én lead bevestigt interesse in vervolg (Discovery-gesprek)."} |
| **Doorlooptijd (gemiddeld)** | {Bv. "1-7 dagen"} |
| **Kans-%** | 20% |
| **Eigenaar** | {Naam} |
| **Tools** | {Calendly, Zoom of Google Meet, CRM voor logging} |
| **KPI's** | {Conversie Prospect → Discovery (%), no-show-rate} |

---

### Fase 3: Discovery

| Dimensie | Inhoud |
|---|---|
| **Entry-criterium** | {Bv. "Lead heeft Discovery-gesprek ingepland (60 min) na positieve kennismaking."} |
| **Kern-acties** | {Bv. "Discovery-gesprek voeren (script: `Sales/Discovery-script.md`), behoefte vastleggen, scope-grenzen verkennen, budget-orde-van-grootte bespreken, vervolgafspraak voor voorstel inplannen."} |
| **Exit-criterium** | {Bv. "Probleem en gewenste oplossing helder, budget-range besproken, lead akkoord op opstellen voorstel."} |
| **Doorlooptijd (gemiddeld)** | {Bv. "7-14 dagen"} |
| **Kans-%** | 40% |
| **Eigenaar** | {Naam} |
| **Tools** | {Discovery-script in Notion, Zoom-opname, CRM} |
| **KPI's** | {Conversie Discovery → Voorstel (%), gemiddelde scope-grootte} |
| **B2B-extra: stakeholders** | {Bv. "Beslisser, beïnvloeder en gebruiker in kaart brengen"} |

---

### Fase 4: Voorstel

| Dimensie | Inhoud |
|---|---|
| **Entry-criterium** | {Bv. "Discovery-gesprek heeft plaatsgevonden, scope is helder genoeg om kosten te berekenen."} |
| **Kern-acties** | {Bv. "Voorstel opstellen in PandaDoc (template `voorstel-2026-v1`), intern reviewen, sturen, follow-up plannen na 3 en 7 dagen."} |
| **Exit-criterium** | {Bv. "Klant heeft voorstel ontvangen én inhoudelijk gereageerd (vraag, opmerking of akkoord-signaal)."} |
| **Doorlooptijd (gemiddeld)** | {Bv. "7-21 dagen"} |
| **Kans-%** | 60% |
| **Eigenaar** | {Naam} |
| **Tools** | {PandaDoc voor voorstel, e-mail voor opvolging, CRM voor stadium} |
| **KPI's** | {Conversie Voorstel → Onderhandeling (%), gemiddelde tijd-tot-reactie} |
| **Cross-link** | Bedragen uit `Directie/Playbook/Producten.md` |

---

### Fase 5: Onderhandeling

| Dimensie | Inhoud |
|---|---|
| **Entry-criterium** | {Bv. "Voorstel verstuurd én klant heeft inhoudelijke vraag of feedback (over scope, prijs of timing) gegeven."} |
| **Kern-acties** | {Bv. "Bespreking van scope of prijs, eventueel aanpassen voorstel (versie 2), e-handtekening klaarzetten."} |
| **Exit-criterium** | {Bv. "Akkoord op scope én prijs én contract is gestuurd voor handtekening."} |
| **Doorlooptijd (gemiddeld)** | {Bv. "3-14 dagen"} |
| **Kans-%** | 80% |
| **Eigenaar** | {Naam} |
| **Tools** | {PandaDoc voor herziene voorstellen, SignWell of Adobe Sign voor handtekening, CRM} |
| **KPI's** | {Conversie Onderhandeling → Won (%), gemiddelde korting} |

---

### Fase 6: Won / Lost

| Dimensie | Inhoud (Won) | Inhoud (Lost) |
|---|---|---|
| **Entry-criterium** | {Contract getekend} | {Klant zegt definitief af, of geen reactie >30 dagen} |
| **Kern-acties** | {Welkomstmail, factuur, onboarding-kick-off} | {Reden vastleggen, korte bedank-mail, eventueel win-back-flag in CRM} |
| **Exit-criterium** | Onboarding-fase start | Win-back-evaluatie over 6 maanden |
| **Doorlooptijd (gemiddeld)** | sluiting | sluiting |
| **Kans-%** | 100% | 0% |
| **Eigenaar** | {Naam} | {Naam} |
| **Tools** | {Moneybird voor factuur, Notion voor onboarding-checklist} | {CRM-tag "win-back-{maand}"} |
| **KPI's** | Win-rate, deal-grootte, time-to-cash | Lost-reden-distributie |
| **Cross-link** | Contract uit `Juridisch/Klantcontract.md` | Win-back-flow in V3 Opvolg-flow |

---

## 3. Sales-materiaal

| Materiaal | Per fase | Status | Locatie of actie |
|---|---|---|---|
| **Discovery-vragenscript** | Discovery | {Bestaand / nog te maken} | {`Sales/Discovery-script.md` of "te schrijven"} |
| **Voorstel-template** | Voorstel | {Tool: PandaDoc / Notion / Docs} | {Locatie of template-ID} |
| **Pricing-overzicht** | Voorstel + Onderhandeling | Bestaand | `Directie/Playbook/Producten.md` |
| **E-mailtemplates (opvolg)** | Eerste contact, Voorstel-opvolg, Onderhandeling | {Bestaand / nog te maken} | {Locatie of "te schrijven"} |
| **Casestudies of referenties** | Voorstel, Onderhandeling | {Bestaand / nog te maken} | {Locatie} |
| **Onboarding-checklist** | Direct na Won | {Bestaand / nog te maken} | {Locatie of "te schrijven"} |

---

## 4. KPI's per fase

| KPI | Per | Target | Huidige stand | Meetritme |
|---|---|---|---|---|
| **Aantal nieuwe leads** | Maand | {getal} | {getal of "-"} | Wekelijks |
| **Conversie Prospect → Eerste contact** | % | {%} | {%} | Maandelijks |
| **Conversie Eerste contact → Discovery** | % | {%} | {%} | Maandelijks |
| **Conversie Discovery → Voorstel** | % | {%} | {%} | Maandelijks |
| **Conversie Voorstel → Won** | % | {%} | {%} | Maandelijks |
| **Win-rate (Won / (Won+Lost))** | % | {%} | {%} | Maandelijks |
| **Deal-velocity (dagen tot Won)** | Dagen | {dagen} | {dagen} | Maandelijks |
| **Gemiddelde deal-grootte (EUR)** | EUR | {bedrag} | {bedrag} | Maandelijks |
| **Win-rate per segment** | % per ICP-segment | {%} | {%} | Kwartaal |

---

## 5. Forecast-model: weighted pipeline

**Formule:** Verwachte omzet = som over alle open deals van (deal-bedrag × kans-% van huidige fase).

**Update-ritme:** {Wekelijks / Maandelijks}.

**Target-omzet:** {Bedrag per kwartaal of jaar uit `Directie/01 - Goals.md`}.

**Voorbeeld-tabel (vul met huidige pipeline):**

```
Open pipeline op {YYYY-MM-DD}:

  Fase             Deals  Totaal-bedrag  Kans-%  Gewogen
  Prospect          {n}    EUR {x}        10%   EUR {x*0.1}
  Eerste contact    {n}    EUR {x}        20%   EUR {x*0.2}
  Discovery         {n}    EUR {x}        40%   EUR {x*0.4}
  Voorstel          {n}    EUR {x}        60%   EUR {x*0.6}
  Onderhandeling    {n}    EUR {x}        80%   EUR {x*0.8}

  Totaal gewogen forecast: EUR {totaal}
  Target kwartaal: EUR {target}
  Gap of overschot: EUR {verschil}
```

*Cross-link:* deze forecast-tabel is input voor sales-rapportage in A1 (Rapportage).

---

## 6. Eigenaarschap per fase

| Fase | Eigenaar | Backup | Pet (bij solopreneur) |
|---|---|---|---|
| Prospect | {Naam} | {Naam of "-"} | Acquisitie |
| Eerste contact | {Naam} | {Naam} | Acquisitie |
| Discovery | {Naam} | {Naam} | Acquisitie |
| Voorstel | {Naam} | {Naam} | Acquisitie + scope-design |
| Onderhandeling | {Naam} | {Naam} | Acquisitie |
| Won (overdracht) | {Naam} | {Naam} | Overdracht naar Delivery |
| Lost (afsluiting) | {Naam} | {Naam} | Acquisitie |

*Cross-link:* rollen overeen met `HR/Team.md` (S11).

---

## 7. Toolkoppeling

| Tool-categorie | Tool | Gebruikt in fase(s) | Status koppeling |
|---|---|---|---|
| **CRM** | {HubSpot / Pipedrive / Notion / Airtable} | Alle | Cross-link C2 `Sales/CRM-Setup.md` |
| **Kalender** | {Google Calendar / Outlook / Calendly} | Eerste contact, Discovery, Onderhandeling | {Werkt / Wens} |
| **Voorstel-tool** | {PandaDoc / Notion / Docs / Word} | Voorstel | {Werkt / Wens} |
| **E-handtekening** | {SignWell / DocuSign / Adobe Sign} | Onderhandeling, Won | {Werkt / Wens} |
| **Facturatie** | {Moneybird / e-Boekhouden / Stripe} | Won | {Werkt / Wens} |
| **Communicatie** | {Gmail / Outlook / Slack} | Alle | Werkt |

*Handmatige overdrachten die nu nog niet geautomatiseerd zijn (kandidaat voor L-fase):*
- {Bv. "Won-status in CRM → handmatig factuur in Moneybird aanmaken"}
- {Bv. "Voorstel verstuurd → handmatig opvolgmail na 3 dagen plannen"}

---

## 8. Won-Lost-analyse

**Verplichte velden bij sluiting (in CRM):**

| Veld | Waarvoor |
|---|---|
| **Reden** | Doorslaggevende factor (prijs, fit, doorlooptijd, vertrouwen, klik) |
| **Lessen** | Wat halen we hieruit voor toekomstige deals |
| **Vervolg-actie** | Bij Won: onboarding-start. Bij Lost: win-back-flag, of definitief afsluiten |

**Review-ritme:** {Maandelijks / Kwartaal}.

**Voorbeelden van afgelopen periode (vul met data uit win-loss-lijst):**

| Datum | Klant | Won/Lost | Bedrag | Fase waar deal sloot | Reden | Lessen |
|---|---|---|---|---|---|---|
| {YYYY-MM-DD} | {Klant 1} | Won | EUR {x} | Onderhandeling | {Reden} | {Les} |
| {YYYY-MM-DD} | {Klant 2} | Lost | EUR {x} | Voorstel | {Reden} | {Les} |
| {YYYY-MM-DD} | {Klant 3} | Won | EUR {x} | Voorstel | {Reden} | {Les} |
| {YYYY-MM-DD} | {Klant 4} | Lost | EUR {x} | Discovery | {Reden} | {Les} |

*Cross-link:* win-back-flow voor Lost-deals wordt in V3 (Opvolg-flow) verder uitgewerkt.

---

## Cross-links naar andere SCALE-checks

| SCALE-check | Document | Relatie tot dit salesproces |
|---|---|---|
| S4, ICP | `Directie/Playbook/ICP.md` | Bepaalt kwalificatie-criteria in Prospect en Discovery |
| S8, Producten en Pricing | `Directie/Playbook/Producten.md` | Levert bedragen, pakketten en scope-modules voor Voorstel |
| S9, Klantreis | `Directie/Playbook/Klantreis.md` | Detailleert de bredere customer journey waarin dit salesproces zit |
| S11, Team en Rollen | `HR/Team.md` | Eigenaars per fase komen hier vandaan |
| S12, Toolstack | `IT/Toolstack.md` | CRM, voorstel-tool, e-handtekening en facturatie staan hier gecatalogiseerd |
| C2, CRM-Setup | `Sales/CRM-Setup.md` | Pipeline-fases en datamodel komen 1-op-1 overeen met dit salesproces |
| V3, Opvolg-flow | `Sales/Opvolg-flow.md` | Opvolg-momenten per fase plus win-back-flow voor Lost |
| A1, Rapportage | `Analyse/Rapportage.md` | KPI's plus forecast-model leveren de sales-rapportage |
| J5, Klantcontract | `Juridisch/Klantcontract.md` | Wordt gestuurd bij Won |
| S10, SOPs | `Operations/Processen/` | Zwaarste handmatige fase (vaak Voorstel) is kandidaat voor een SOP |

---

## Acties die uit dit salesproces voortvloeien

> Zet hier de top 3-5 verbeter-acties die het meeste opleveren, op basis van bottlenecks of ontbrekende materialen.

1. **Fase {N}, {Bottleneck of gat}** → {Bv. "Schrijf Discovery-script in `Sales/Discovery-script.md`"}.
2. **Fase {N}, {Bottleneck of gat}** → {Voorgestelde actie}.
3. **Fase {N}, {Bottleneck of gat}** → {Voorgestelde actie}.

---

## Bijhouden

Dit is een **levend document**. Update bij:

- Wijziging in pakketten of pricing (raakt Voorstel)
- Nieuwe ICP-segmentatie (raakt Prospect en Discovery)
- Wijziging in CRM-Setup (pipeline-fases moeten gelijk blijven)
- Nieuwe tool of vervangen tool (raakt blok 7)
- Win-loss-data van het afgelopen kwartaal (raakt kans-% en KPI-targets)
- Nieuwe teamleden of rolverdeling (raakt blok 6)

**Versiebump-triggers:**
- Patch (1.0.0 → 1.0.1): kleine tekstuele aanpassingen, één KPI bijgewerkt, één tool-status gewijzigd
- Minor (1.0.x → 1.1.0): nieuwe fase, nieuwe KPI-set, nieuwe forecast-update na kwartaal
- Major (1.x.y → 2.0.0): fundamentele fase-set-wijziging (van B2B-zes naar B2C-vier), of complete herziening na rebrand of pivot
