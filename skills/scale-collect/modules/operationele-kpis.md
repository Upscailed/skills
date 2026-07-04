# Operationele KPI's (module van scale-collect)

> Bron-skill: `operationele-kpis` | SCALE-code: C7 | Versie: 1.1.0 | Geschatte tijd: 30 tot 50 minuten

---

# Operationele KPI's

## Wanneer triggeren

Deze skill legt in 30 tot 50 minuten een set operationele KPI's vast in één canoniek document: `Operations/KPIs.md`. Dit is SCALE-stap C7 (Collect) en het ontbrekende stuk tussen verkoop-data (C2 CRM), financiele data (C3) en het werkelijke draaien van het bedrijf. Operationele KPI's meten of de **uitvoering** op koers ligt, niet of de verkoop loopt of de cijfers kloppen: doorlooptijd per project of order, on-time-in-full leveringen, kwaliteits-incidenten, herwerk-percentage, capaciteits-benutting, first-response-time op klantvragen, SLA-naleving, ziekteverzuim, retentie, foutpercentage facturatie.

De skill werkt via een gestructureerd interview in 4 afdelingsblokken (Dienstverlening/Productie, Klantenservice, HR/Team, Operations/Backoffice), één blok per beurt zodat de gebruiker niet wordt overweldigd. Per gekozen KPI worden zeven velden vastgelegd: naam, definitie (formule en hoe gemeten), bron (welke tool of persoon), frequentie (realtime, dag, week, maand), eigenaar (rol of persoon uit HR/Team.md), normwaarde met groen/oranje/rood drempels, en gewenste trend-richting.

Vóór het interview begint, scant de skill diep wat al beschikbaar is in de vault: `Operations/Processen/` voor SOPs met meetpunten, `HR/Team.md` voor eigenaren per rol, `IT/Toolstack.md` voor data-bronnen, `Directie/00 - Overzicht.md` voor genoemde succes-indicatoren, en `Directie/01 - Goals.md` voor jaardoelen die KPI-vertaling vragen. Werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam of vault-eigenaar, alleen over SCALE-Structure-conventies (`Operations/`, `HR/`, `IT/`, `Directie/`).

Trigger-zinnen: 'KPIs bepalen', 'operationele metrics', 'wat ga ik meten', 'operationele KPIs', 'KPI dashboard opzetten', 'uitvoeringsmetrics', 'doorlooptijd meten', 'OTIF instellen', 'kwaliteits-KPIs', 'service-level metrics', 'C7 dichten in SCALE-audit', 'gap C7', 'Operations/KPIs.md aanmaken', 'meten of mijn uitvoering loopt'. Triggert ook bij iedere expliciete verwijzing naar C7 of `Operations/KPIs.md`.

## Doel

Helpt een ondernemer om in 30 tot 50 minuten een set **operationele KPI's** vast te leggen in één canoniek document: `{scope}/Operations/KPIs.md`. Dit is SCALE-stap C7 (Collect) en het ontbrekende meet-vlak tussen de verkoop-data (C2 CRM), de financiele data (C3) en de werkelijke uitvoering van het bedrijf.

*Wat operationele KPI's wel zijn, en wat ze niet zijn.* Operationele KPI's meten of de **uitvoering** op koers ligt. Niet of de verkoop loopt, niet of de cijfers kloppen, niet of de marketing bereik haalt — die zitten in C1, C2 en C3. Operationele KPI's vangen het stuk dat tussen "klant zegt ja" en "klant betaalt en blijft" zit: de productie, de service, het team, de backoffice.

Concreet meten ze dingen als:
- Doorlooptijd per project of order (hoe lang duurt het tot oplevering)
- OTIF (On Time In Full): percentage opleveringen op tijd en compleet
- Kwaliteits-incidenten en herwerk-percentage
- Capaciteits-benutting (hoe vol staan de uitvoerings-uren)
- First Response Time en resolution-time op klantvragen
- SLA-naleving en escalatie-ratio
- Ziekteverzuim, productiviteit per FTE, retentie, Time-To-Hire
- Foutpercentage facturatie, voorraad-omloopsnelheid, on-time delivery

*Onderscheid met andere Collect-skills.* Dit is geen overlap. Het is het ontbrekende stuk.

| Skill | Wat het meet |
|---|---|
| C1 Marketing Data Setup | Marketing-kanalen: bereik, engagement, click-through, conversie van content |
| C2 CRM Setup | Sales-pipeline: leads, opportunities, deal-conversie, sales-cyclus |
| C3 Financiele Data Setup | Omzet, marge, cashflow, debiteuren, kostenstructuur |
| **C7 Operationele KPI's** | **Uitvoering: doorlooptijd, capaciteit, kwaliteit, service-niveau, team-gezondheid** |
| C5 Website Analytics Setup | Website-gedrag: bezoekers, sessies, paden, conversie op site |

*Waarom dit niet optioneel is.* Een bedrijf dat verkoop-data en financiele data heeft maar geen operationele KPI's, weet pas in de financiele rapportage dat de uitvoering hapert. Dan zit het lek al twee maanden in het verleden. Operationele KPI's zien de hapering in dezelfde week dat hij optreedt, in dezelfde dag bij service-KPI's, soms realtime bij capaciteits-KPI's. Het verschil tussen "we sturen op cijfers" en "we sturen blind".

*Waarom de audit-drempel niet genoeg is.* SCALE-audit C7 vraagt minimaal 3 operationele KPI's met streefwaardes. Die drempel haal je in 15 minuten met drie willekeurige cijfers. Deze skill mikt op een **rijk** document: 5 tot 12 KPI's verdeeld over 4 afdelingsblokken, met per KPI definitie, bron, frequentie, eigenaar en normwaardes, plus cross-links naar SOPs, team-rollen en data-bronnen zodat het document direct input is voor de A1 Rapportage Builder en de A2 Mission Control Builder.

Resultaat: SCALE-audit C7 springt van ❌ of ⚠️ naar ✅ en het document is direct herbruikbaar voor A1 (Rapportage), A2 (Mission Control), A3 (Daily Briefing) en A6 (Auto Rapportage Setup).

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  OPERATIONELE KPI'S — SCALE-stap C7 (Collect)             │
│  ~30-50 minuten · 4 afdelingsblokken                      │
└──────────────────────────────────────────────────────────┘

  In 30 tot 50 minuten leggen we vast hoe je gaat meten of
  de uitvoering van je bedrijf op koers ligt. Niet de verkoop,
  niet de financien (die zitten in C2 en C3), maar het werk
  zelf: doorlooptijd, capaciteit, kwaliteit, service-niveau,
  team-gezondheid en backoffice-discipline.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 4 afdelingsblokken (één per beurt, niet alles        │
  │    tegelijk) — gemiddeld 5-10 minuten per blok          │
  │  • Per blok: kies welke KPI's voor jouw bedrijf         │
  │    relevant zijn, sommige blokken slaan we over         │
  │  • Per gekozen KPI 7 velden (naam, definitie, bron,     │
  │    frequentie, eigenaar, normwaardes, trend-richting)   │
  │  • Vooraf scan ik bestaande bronnen (SOPs voor          │
  │    meetpunten, HR/Team voor eigenaren, IT/Toolstack     │
  │    voor data-bronnen) zodat ik veel al weet             │
  │  • Daarna lever ik Operations/KPIs.md op met            │
  │    KPI-kaarten en normwaarde-drempels                   │
  └────────────────────────────────────────────────────────┘

  De 4 afdelingsblokken:
  [1] Dienstverlening / Productie
      doorlooptijd, OTIF, kwaliteit, herwerk, capaciteit
  [2] Klantenservice
      first response, resolution, SLA, escalatie
  [3] HR / Team
      verzuim, retentie, productiviteit per FTE, Time-To-Hire
  [4] Operations / Backoffice
      facturatie-foutpercentage, voorraad-omloop, on-time delivery

  Heb je externe input klaar? Bijvoorbeeld:
  • Een bestaande Excel of dashboard met KPI's die al
    bijgehouden worden
  • Servicelevel-afspraken die in klantcontracten staan
  • Een eerder operations-rapport of audit
  • Cijfers uit je project-management-tool (doorlooptijd-
    historie) of helpdesk-tool (response-tijden)

  Dan kun je dat nu noemen — hoe meer bronnen, hoe minder ik
  hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  OPERATIONELE KPI'S — C7 · 30-50 min · 4 blokken          │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Operations/Processen,
   │    (auto-discover)   │  HR/Team.md,
   │                      │  IT/Toolstack.md,
   │                      │  00-Overzicht,
   │                      │  01-Goals
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Bestaande KPI-sheet,
   │                      │  SLA's in contracten,
   │                      │  operations-rapport,
   │                      │  tool-exports
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per afdelingsblok,
   │                      │  ter validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Selectie per      │  Welke blokken zijn
   │    afdelingsblok     │  relevant?
   │                      │  Welke KPI's binnen
   │                      │  elk blok kies je?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Interview, blok   │  Per gekozen KPI:
   │    voor blok         │  7 velden invullen
   │                      │  [1] Dienstverlening
   │                      │  [2] Klantenservice
   │                      │  [3] HR/Team
   │                      │  [4] Backoffice
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Eigenaar-         │  Cross-link met
   │    koppeling         │  HR/Team.md, één
   │                      │  eigenaar per KPI
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Bron-koppeling    │  Cross-link met
   │                      │  IT/Toolstack.md,
   │                      │  bron per KPI
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 9. Normwaardes       │  Groen/oranje/rood
   │                      │  drempels per KPI,
   │                      │  trend-richting
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 10. Schrijven +      │  Operations/KPIs.md
   │     opslaan          │
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 11. Logging +        │  Changelog +
   │     vervolg          │  hint richting
   │     suggesties       │  A1, A2, A3, A6
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "KPI's bepalen" / "operationele KPI's" / "uitvoeringsmetrics"
- "Wat ga ik meten" / "hoe weet ik of mijn uitvoering loopt"
- "KPI dashboard opzetten" / "operationele metrics"
- "Doorlooptijd meten" / "OTIF instellen" / "kwaliteits-KPI's"
- "Service-level metrics" / "SLA-meting opzetten"
- "Verzuim en retentie monitoren" / "team-KPI's"
- "C7 dichten in SCALE-audit" / "gap C7"
- "Operations/KPIs.md aanmaken" / "KPIs.md schrijven"

Triggert NIET wanneer:
- De gebruiker een **marketing-dashboard** wil opzetten (gebruik `marketing-data-setup` — C1)
- De gebruiker een **CRM-pipeline** wil meten (gebruik `crm-setup` — C2)
- De gebruiker **financiele KPI's** wil instellen — omzet, marge, cashflow (gebruik `financiele-data-setup` — C3)
- De gebruiker **website-statistieken** wil meten (gebruik `website-analytics-setup` — C5)
- De gebruiker een **proces wil documenteren** (gebruik `proces-interviewer` — S10)
- De gebruiker **jaardoelen** wil maken (gebruik `doelen-coach` — S5)
- De gebruiker een **bestaand dashboard wil bouwen** in een tool (gebruik `dashboard-bouwer` — E1)
- De gebruiker een **rapportage-vorm** wil samenstellen (gebruik `rapportage-builder` — A1)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de operationele KPI's vastgelegd moeten worden. Maak hier **geen aannames** over de mapstructuur of vault-naam — elke gebruiker heeft een andere setup.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Operations/`, `HR/`, `IT/`, `Directie/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Operations/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Operations/KPIs.md`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze KPI's voor zijn?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Operations/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Operations/KPIs.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen op basis van wat er staat) of **nieuwe iteratie** (oude archiveren als `KPIs - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard SCALE-Structure-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Operations/KPIs.md` (huidige versie als die bestaat) | Bestaande KPI-kaarten, normwaardes, geschiedenis |
| `Operations/Processen/*.md` | **Verplichte scan** — elke SOP noemt impliciet meetpunten (doorlooptijd, hand-offs, fouten). Dit is de rijkste bron voor C7. |
| `HR/Team.md` | **Verplichte scan** — rol-eigenaren die KPI's gaan dragen. Cross-link in stap 7. |
| `IT/Toolstack.md` | **Verplichte scan** — welke tools data leveren per categorie. Cross-link in stap 8. |
| `Directie/00 - Overzicht.md` | Blok 5 (KPI's) geeft genoemde succes-indicatoren — vaak de overall-cijfers, hier vertaal je ze naar operationeel niveau |
| `Directie/01 - Goals.md` | Jaardoelen die een operationele vertaling vragen (bv. "groei naar 50 klanten" → capaciteits-KPI nodig) |
| `Klantenservice/` (subfolders) | Eerdere service-afspraken, SLA-documenten, escalatieprocedures |
| `Sales/Contracten/` of `Juridisch/` | Klantcontracten met SLA-clausules die als KPI-norm dienen |
| `Directie/Research/*.md` | Eerder operations-onderzoek, audits, benchmark-rapporten |
| `Huddle/Daily/` of `Huddle/Weekly/` (als die conventie bestaat) | Patronen in dagelijkse rapportage die al impliciet KPI's volgen |

Maak per gevonden bron een korte interne aantekening: welke KPI-categorie het raakt (Dienstverlening, Klantenservice, HR, Backoffice), en welke kerngegevens al bekend zijn (potentiele KPI-naam, mogelijke eigenaar, mogelijke data-bron, eventuele norm).

**Belangrijk:** als een bron niet bestaat, skip stilletjes — niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Voor operationele KPI's zijn een paar specifieke bronnen extra waardevol.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen waaruit ik kan putten? Bijvoorbeeld:
> - Een bestaande KPI-sheet of dashboard (Excel, Google Sheets, Notion-dashboard) waarin je al cijfers bijhoudt
> - Servicelevel-afspraken (SLA's) die in klantcontracten of in een service-document staan
> - Een eerder operations-rapport of audit
> - Cijfers-exports uit je project-management-tool (doorlooptijd-historie), helpdesk-tool (response-tijden), of HR-tool (verzuim-statistiek)
> - Een ISO- of kwaliteitssysteem-document met meetpunten
> - Branche-benchmarks die je hebt verzameld (bv. doorlooptijd-normen in jouw sector)
>
> Hoe meer bronnen, hoe minder ik hoef uit te vragen — en hoe realistischer de normwaardes."

Per aangeleverde bron:
- **Bestaande KPI-sheet**: scan op KPI-naam, huidige waarde, eventueel doelwaarde, eigenaar
- **SLA-document of klantcontract**: extraheer service-niveaus (response binnen X uur, oplevering binnen Y dagen) als directe KPI-norm
- **Operations-rapport**: scan op genoemde meetpunten en gevonden patronen
- **Tool-export**: identificeer welke metrics structureel uit de tool komen (vaak goede pre-fill voor frequentie en bron)
- **ISO-document**: extraheer meetpunten en herwerk/non-conformity-definities
- **Branche-benchmark**: gebruik als referentie bij het bepalen van groen/oranje/rood drempels

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 4 afdelingsblokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] DIENSTVERLENING / PRODUCTIE
      SOP "Klant-onboarding" suggereert doorlooptijd-meting,
      hand-off-momenten en herwerk-flag. 00-Overzicht noemt
      "oplevertijd" als kernindicator.
      Bron: Operations/Processen/Onboarding.md, 00-Overzicht.md

  [2] KLANTENSERVICE
      Klantcontract noemt SLA "first response binnen 4 uur
      op werkdagen". Helpdesk-tool levert al response-tijden
      (Toolstack zegt Intercom).
      Bron: Juridisch/Klantcontract.md, IT/Toolstack.md

  [3] HR / TEAM
      Team.md noemt 2 vaste medewerkers + 1 freelancer.
      Geen meetpunten gevonden voor verzuim of retentie.
      Bron: HR/Team.md

  [4] OPERATIONS / BACKOFFICE
      Niets concreet gevonden. Boekhoud-tool (Moneybird in
      Toolstack) zou foutpercentage facturatie kunnen meten,
      maar niet expliciet ingericht.
      Bron: IT/Toolstack.md

  GATEN waar ik nog vragen voor heb:
  - Blok 1: geen historie van doorlooptijden, dus startwaarde
    voor norm moet uit gevoel of pilot komen
  - Blok 3: geen meetpunten in vault, vraag of er behoefte is
  - Blok 4: facturatie-KPI: wel of niet relevant?

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we per afdelingsblok KPI's kiezen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Selectie per afdelingsblok

**Belangrijk:** niet elk bedrijf heeft alle 4 blokken nodig. Een solopreneur zonder team kan blok 3 (HR/Team) op één KPI houden of overslaan. Een bedrijf zonder fysieke productie heeft minder in blok 1, meer in 2 en 4. Vraag eerst welke blokken relevant zijn voordat je aan inhoudelijke vragen begint.

Concrete vraag aan gebruiker:
> "Van deze 4 blokken — welke zijn voor jouw bedrijf relevant en welke kunnen we beperkt of overslaan houden? Mijn voorstel op basis van wat ik heb gevonden:
> - [1] Dienstverlening / Productie: ja, 2-3 KPI's
> - [2] Klantenservice: ja, 1-2 KPI's (op basis van SLA in contract)
> - [3] HR / Team: beperkt, 1 KPI (vanwege kleine omvang)
> - [4] Backoffice: optioneel, 1 KPI als facturatie-fouten relevant zijn"

Pas het voorstel aan op basis van wat de gebruiker zegt. Als hij twijfelt: ga met het voorstel mee en zeg dat hij op elk moment kan zeggen "deze KPI hoeven we niet".

Mik op in totaal 5 tot 12 KPI's. Minder dan 5 voldoet niet aan de C7-quality-eis (3 is het audit-minimum, 5 is de rijke ondergrens). Meer dan 12 wordt onbeheersbaar en niemand kijkt er nog naar.

### Stap 6: Interview, blok voor blok

**Kernregel:** loop **één afdelingsblok per beurt** af. Niet alle 4 tegelijk neerzetten. Per blok: alle gekozen KPI's langsgaan, voor elk KPI de 7 velden invullen, en pas dán door naar het volgende blok.

**Voor elke KPI zeven kernvelden:**

1. **Naam** — kort, herkenbaar, zonder afkortingsoorlog ("Doorlooptijd onboarding" niet "DLT-OB")
2. **Definitie** — formule of meetmethode in 1-2 zinnen. Bv. *"Aantal werkdagen tussen ondertekend contract en eerste opgeleverde sprint, gemeten per klant."*
3. **Bron** — welke tool of welke persoon levert de data. Cross-link naar `IT/Toolstack.md` als het een tool is. Bv. *"Notion (project-status-veld 'Opgeleverd op')"* of *"handmatig door operations-lead in weekly stand-up"*.
4. **Frequentie** — hoe vaak meten en rapporteren. Realtime / dagelijks / wekelijks / maandelijks / per kwartaal.
5. **Eigenaar** — één persoon of rol uit `HR/Team.md` die verantwoordelijk is voor opvolgen als de KPI rood staat. Cross-link naar Team.md. Bv. *"Operations-lead (rol uit Team.md)"*.
6. **Normwaardes** — groen / oranje / rood drempels. Bv. *"Groen: ≤10 werkdagen. Oranje: 11-15 werkdagen. Rood: >15 werkdagen."* Werk in concrete getallen, geen "snel" of "redelijk".
7. **Trend-richting** — moet de KPI omlaag (lager is beter, zoals doorlooptijd of foutpercentage), omhoog (hoger is beter, zoals OTIF of retentie), of stabiel?

Plus per KPI optioneel:
- **Startwaarde / huidige waarde** — wat is het nu, voor zover bekend? Zonder startwaarde is een norm in de lucht hangend.
- **Strategische link** — koppelt deze KPI aan een doel in `Directie/01 - Goals.md`? Zo ja, benoem.
- **Toelichting** — context die nodig is om de KPI goed te interpreteren.

#### Blok 1 — Dienstverlening / Productie

De kerncategorie voor bedrijven die iets opleveren (project, product, dienst, batch). Hier vinden de meeste C7-relevante KPI's hun plek.

Vraag: *"Welke KPI's wil je instellen voor de productie of dienstverlening zelf? Ik stel deze opties voor — kies wat past, of voeg eigen toe."*

KPI-bibliotheek voor dit blok (kies wat relevant is):

| KPI | Wanneer relevant | Voorbeeld-norm |
|---|---|---|
| Doorlooptijd per project of order | Projectmatige dienstverlening of orderverwerking | Groen ≤10 werkdagen, rood >15 |
| OTIF (On Time In Full) | Levering van fysieke producten of beloofde opleveringen op datum | Groen ≥95%, rood <85% |
| Kwaliteits-incidenten | Service-bedrijven (fouten in opleveringen, klacht-aantal) | Groen ≤2/maand, rood >5 |
| Herwerk-percentage | Productie of dienstverlening waar revisies nodig zijn | Groen ≤5%, rood >15% |
| Capaciteits-benutting | Bedrijven met uurloon-gebaseerde uitvoerings-uren | Groen 70-85% (boven 90% is overbelast), rood <60% of >90% |
| First-time-right percentage | Productie of administratie met fout-correctie-cycli | Groen ≥90%, rood <75% |

Loop per gekozen KPI alle 7 velden door. Stel per veld één concrete vraag, wacht op antwoord, ga door.

#### Blok 2 — Klantenservice

Voor bedrijven met klantvraag-stroom of service-component na de eerste oplevering. Service-KPI's hebben vaak de strakste normen omdat ze in klantcontracten staan.

Vraag: *"Welke KPI's wil je instellen voor klantenservice? Zijn er SLA-afspraken die we direct als KPI-norm gebruiken?"*

KPI-bibliotheek voor dit blok:

| KPI | Wanneer relevant | Voorbeeld-norm |
|---|---|---|
| First Response Time | Bedrijf neemt klant-tickets aan (e-mail, chat, ticket-systeem) | Groen ≤4 uur, rood >24 uur |
| Resolution Time | Tickets met inhoudelijke oplos-tijd, niet alleen ontvangst-bevestiging | Groen ≤2 werkdagen, rood >5 |
| SLA-naleving percentage | Bedrijven met contractuele SLA's | Groen ≥98%, rood <90% |
| Escalatie-ratio | Aandeel tickets dat na eerste contact niet is opgelost | Groen ≤10%, rood >25% |
| CSAT of klanttevredenheid-score | Bedrijven die actief survey-en | Groen ≥8.5/10, rood <7.0 |
| Ticket-volume per FTE | Service-team om capaciteit te bewaken | Bedrijfsspecifiek, baseline meten |

Belangrijke nuance bij Blok 2: als er geen klant-ticket-stroom is (project-bedrijf zonder support-component), kan dit blok beperkt blijven tot 1 KPI of overgeslagen worden. Forceer geen service-KPI's bij bedrijven die geen service-flow hebben.

#### Blok 3 — HR / Team

Voor bedrijven met meer dan 1 persoon. Bij een solopreneur zonder team kan dit blok 1 zelf-KPI bevatten (bv. "uren-bestede aan productie versus admin") of worden overgeslagen.

Vraag: *"Welke KPI's wil je instellen voor team-gezondheid en HR? Bij solo-werk kan dit beperkt blijven."*

KPI-bibliotheek voor dit blok:

| KPI | Wanneer relevant | Voorbeeld-norm |
|---|---|---|
| Ziekteverzuim-percentage | Bedrijven met meer dan 2 medewerkers | Groen ≤3%, rood >6% |
| Productiviteit per FTE | Maakt onderscheid tussen "veel uren" en "veel output" | Bedrijfsspecifiek, baseline meten |
| Retentie / verloop-percentage | Op jaarbasis, voor bedrijven met >5 FTE | Groen retentie ≥85%, rood <70% |
| Time-To-Hire | Bedrijven die actief werven | Groen ≤30 dagen, rood >60 |
| eNPS (employee NPS) | Bedrijven met team van >5 FTE | Groen ≥30, rood <0 |
| Trainings-uren per FTE per jaar | Bedrijven met opleidings-ambitie | Groen ≥40 uur, rood <10 |

Bij solopreneur-variant: vraag of er een persoonlijke productiviteits-KPI relevant is, bv. "% van werkweek aan productie versus admin" of "aantal opleverbare uren per week". Mag, maar dat is dan vaak overlap met persoonlijke daily-tracking en niet altijd nuttig hier op te nemen.

#### Blok 4 — Operations / Backoffice

Voor de stille processen die niemand opmerkt totdat ze fout gaan. Facturatie, voorraad, on-time leveringen vanuit leveranciers.

Vraag: *"Welke KPI's wil je instellen voor de backoffice? Dit zijn vaak de processen die je pas mist als ze haperen."*

KPI-bibliotheek voor dit blok:

| KPI | Wanneer relevant | Voorbeeld-norm |
|---|---|---|
| Foutpercentage facturatie | Iedere onderneming met >20 facturen per maand | Groen ≤1%, rood >5% |
| Doorlooptijd factuur na oplevering | Cashflow-effect, snelheid van factureren | Groen ≤2 werkdagen, rood >7 |
| Debiteuren-betaaltijd (DSO) | Iedere B2B-onderneming | Groen ≤30 dagen, rood >45 (overlap met C3, maar mag hier op operationeel niveau) |
| Voorraad-omloopsnelheid | Bedrijven met fysieke voorraad | Branchespecifiek |
| On-time delivery van leveranciers | Bedrijven afhankelijk van leveranciers voor productie | Groen ≥95%, rood <85% |
| Compliance-checks gedaan op tijd | Bedrijven met periodieke compliance-eisen (BTW, jaarafsluiting, audits) | Groen 100%, rood <100% |

Belangrijke nuance bij Blok 4: vermijd overlap met C3 Financiele Data. DSO kan in beide zitten — als hij in C3 staat als finance-KPI, hoeft hij hier niet nogmaals. Operationele backoffice-KPI's gaan over **proces-discipline** (zit het werk in de juiste stap), niet over **financiele uitkomst** (hoeveel geld komt binnen). Voorbeeld: "foutpercentage facturatie" is operationeel (gaat de factuur kloppend de deur uit), "marge per project" is financieel (komt er genoeg geld over).

### Stap 7: Eigenaar-koppeling met HR/Team.md

**Doel:** elke KPI heeft één eigenaar. Geen "iedereen kijkt mee" — dat betekent niemand kijkt. Eén persoon of rol is verantwoordelijk voor opvolgen wanneer de KPI rood staat.

Twee paden:

- **Als `{scope}/HR/Team.md` bestaat**:
  - Lees Team.md uit
  - Voor elke KPI: koppel aan de rol-eigenaar uit Team.md die dezelfde afdeling raakt (doorlooptijd → Operations-lead, response-tijd → Service-lead of solopreneur zelf)
  - Voor solopreneur-variant: meestal valt alles bij dezelfde persoon, maar markeer dan wel de rol-pet die opgezet wordt bij het bekijken van de KPI (operations-rol, service-rol, etc.)
  - Toon per KPI de voorgestelde eigenaar en vraag bevestiging: *"Eigenaar van deze KPI is [naam/rol]. Klopt dat?"*
- **Als `{scope}/HR/Team.md` niet bestaat**:
  - Vraag de skill expliciet aan de gebruiker: *"HR/Team.md bestaat nog niet, dus ik kan eigenaren niet automatisch koppelen. Wie is verantwoordelijk per KPI? Voor solopreneurs is dat vaak één persoon (jij), maar voor teams wil ik dit per KPI weten."*
  - Voeg in de output een opmerking toe: *"Eigenaren zijn nog niet gevalideerd tegen HR/Team.md. Aanrader: bouw eerst Team.md met de skill `team-en-rollen` (S11)."*

**Wat als één persoon eigenaar is van alles?** Dat mag voor solopreneurs. Markeer in dat geval per KPI welke **rol-pet** opgezet wordt (Operations, Service, HR, Finance) zodat de KPI's later — bij groei — makkelijk overdraagbaar zijn.

### Stap 8: Bron-koppeling met IT/Toolstack.md

**Doel:** elke KPI heeft één gedefinieerde data-bron. Als die niet bestaat, is de KPI onmeetbaar en hoort hij niet op het lijstje.

Twee paden:

- **Als `{scope}/IT/Toolstack.md` bestaat**:
  - Lees Toolstack.md uit
  - Voor elke KPI: identificeer welke tool de data levert (CRM voor sales-doorlooptijd, helpdesk voor response-tijd, boekhouding voor facturatie-fouten, project-management voor project-doorlooptijd)
  - Toon per KPI de voorgestelde bron en vraag bevestiging: *"Bron voor deze KPI is [tool] uit je Toolstack. Klopt dat, en levert die tool deze data al in deze vorm?"*
  - Als een tool de data **wel kan leveren maar nu nog niet zo geconfigureerd is**, markeer dat: *"Tool aanwezig, configuratie of rapportage moet nog gebouwd worden — dit is werk voor Leverage (L) of Engineer (E)."*
- **Als `{scope}/IT/Toolstack.md` niet bestaat**:
  - Vraag handmatig per KPI naar de bron: tool, sheet, of handmatige meting
  - Voeg in de output een opmerking toe: *"Bronnen zijn nog niet gevalideerd tegen IT/Toolstack.md. Aanrader: bouw eerst Toolstack.md met de skill `toolstack-inventarisatie` (S12)."*

**Speciaal geval: handmatige meting.** Een KPI mag een handmatige bron hebben ("solopreneur turft elke vrijdag in een tally-sheet"). Markeer dat expliciet — handmatige meting is een Leverage-kandidaat (L1, L4 SOP automatiseren) zodra het volume groeit.

**KPI's zonder bron worden niet opgenomen.** Als een gewenste KPI nergens gemeten kan worden, niet in een tool en niet handmatig: markeer in een aparte sectie "Gewenste KPI's zonder huidige bron" en stel voor om eerst de meet-infrastructuur op te bouwen via L of E.

### Stap 9: Normwaardes vaststellen

**Doel:** per KPI groen/oranje/rood drempels die concreet zijn en hanteerbaar.

Drie typen bronnen voor normwaardes:

1. **Externe norm** — staat in klantcontract (SLA), branche-standaard, ISO-eis, of regelgeving. Gebruik direct.
2. **Historische data** — bestaande KPI-sheet of tool-export geeft baseline. Norm = "minimaal beter dan baseline" of "binnen 1 standaarddeviatie van baseline-gemiddelde".
3. **Aspiratie zonder data** — als er geen externe norm en geen historie is: zet een werknorm in overleg met de gebruiker, markeer als "voorlopig, herijken na eerste 3 metingen". Geen valse precisie.

Per KPI: vraag *"Wat zijn de groen/oranje/rood drempels?"* en stel zelf een eerste suggestie voor op basis van de bibliotheek-voorbeelden hierboven. Laat de gebruiker bevestigen of aanpassen.

**Belangrijk:** rond getallen af op betekenisvolle precisie. "Doorlooptijd ≤10.3 werkdagen" is valse precisie. "≤10 werkdagen" is hanteerbaar. "97.34% OTIF" is valse precisie, "≥95%" werkt.

**Trend-richting** wordt automatisch afgeleid uit de KPI maar moet expliciet zijn voor latere dashboard-bouw:
- Doorlooptijd, herwerk, foutpercentage, response-tijd, verzuim → omlaag is beter
- OTIF, SLA-naleving, CSAT, retentie, capaciteits-benutting (tot een plafond) → omhoog is beter
- Capaciteits-benutting boven 90% → eigenlijk omlaag (overbelast). Voeg in dat geval een toelichting toe.

### Stap 10: Schrijven en opslaan

Gebruik het template uit `references/template-operationele-kpis.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus eigenaar-koppeling plus bron-koppeling plus normwaardes.

Sla op als:
```
{scope}/Operations/KPIs.md
```

Maak de `Operations/`-map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: operationele-kpis
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: C7
aantal-kpis: <getal>
blokken-actief: [dienstverlening, klantenservice, hr, backoffice]
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "kritische KPI's", "essentiele metrics", "next-level monitoring". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Doorlooptijd onboarding ≤10 werkdagen, gemeten in Notion-veld 'Opgeleverd op'" is sterker dan "we meten doorlooptijd".
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **KPI-kaarten in vaste structuur** — naam, definitie, bron, frequentie, eigenaar, normwaardes, trend-richting, optioneel startwaarde en strategische link.
- **Getallen consistent geformatteerd** — werkdagen (niet "dagen" als zaterdag/zondag tellen) of kalenderdagen (expliciet aangeven), percentages met 0 decimalen tenzij echt nodig, valuta met euro-teken en geen decimalen voor bedragen ≥100.
- **Status-emoji's mogen** — voor de normwaardes: 🟢 groen, 🟠 oranje, 🔴 rood. Maakt scannen snel.
- **Eén overzichtstabel bovenaan** — alle KPI's met hun huidige status, eigenaar, bron en frequentie. Daaronder per KPI een kaart met volledig detail.

### Stap 11: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):
1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regel als *"Nieuw: `Operations/KPIs.md` — v1.0, N operationele KPI's verdeeld over 4 afdelingsblokken"*.
2. **Daily** — als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md` in een Iwan-OS-stijl vault, of een Notion-daily-pagina), log dan een eenregelige melding plus link naar het nieuwe bestand. Skip als die conventie niet bestaat.
3. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een C7-doel of operationeel doel heeft: status bijwerken (✅), regel toevoegen aan het voortgangslog.
4. **Scale-audit-suggestie** — als `{scope}/Directie/Research/` een audit-rapport bevat waar C7 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Cross-link met S11 Team en Rollen** — eigenaren per KPI moeten matchen met rol-definities in `HR/Team.md`. Zijn de rollen daar nog niet uitgewerkt, dat eerst doen.
- **Cross-link met S10 SOPs** — KPI's die doorlooptijd of fout-percentage meten leunen op proces-stappen. Een SOP zonder meetpunt levert geen KPI; een KPI zonder bijbehorende SOP levert geen verbeterhouvast.
- **Cross-link met S12 Toolstack** — bronnen per KPI moeten matchen met tools in `IT/Toolstack.md`. Tools die data **wel kunnen** leveren maar nog niet zo geconfigureerd zijn, zijn Leverage-kandidaten.
- **Doorgroei naar A-skills (Analyze)**:
  - **A1 Rapportage Builder** — deze KPI's zijn directe input voor de rapportage-vorm
  - **A2 Mission Control Builder** — KPI-status (groen/oranje/rood) is direct visualiseerbaar in een Mission-Control-dashboard
  - **A3 Daily Briefing** — KPI's met dagelijkse frequentie zijn input voor de daily briefing
  - **A6 Auto Rapportage Setup** — automatisering van de KPI-rapportage zelf
- **Doorgroei naar L-skills (Leverage)** — KPI's met handmatige bron of "tool kan het wel maar moet nog geconfigureerd" zijn directe targets voor L1, L4 (SOP automatiseren).
- **Review-ritme** — KPI's verouderen sneller dan structuur-documenten omdat normwaardes blijken te streng of te ruim te zijn. Stel voor: kwartaal-review met norm-bijstelling, en jaarlijks structurele review of de juiste KPI's wel gekozen zijn.

## Cold-start en fictieve-klant modus

De skill is ontworpen als beurtsgewijs gesprek met vault-pre-fill. Bij twee situaties werkt dat anders:

**Autonome / 1-shot run** (bijvoorbeeld voor evaluaties, bulk-bouw of als de gebruiker expliciet "doe alles in 1 keer" zegt):
- Sla het interview over en gebruik wat in het prompt staat als enige bron.
- Vul ontbrekende velden in met realistische defaults plus expliciete `[VERIFICEREN]`-marker.
- Lever de complete deliverable, niet alleen aanbevelingen.
- Voeg onderaan een sectie "Open punten" toe met alle [VERIFICEREN]-velden, zodat de gebruiker weet wat hij later moet bevestigen.

**Fictieve klant of cold-start (geen bestaande vault):**
- Vraag NIET naar bedrijfsgegevens die in een eerste gesprek logisch te achterhalen zijn; gebruik wat in het prompt staat plus defaults.
- Schrijf de deliverable in de gevraagde output-map, niet in `{scope}/...`-paden.
- Vermeld cross-links naar andere SCALE-stappen als `[VERIFICEREN]` zonder ze in te vullen.
- Skip changelog-updates en daily-log-updates die normaal aan het eind gebeuren.

## Belangrijke regels

- **Eén afdelingsblok per beurt** in het interview. Niet alle 4 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **HR/Team.md en IT/Toolstack.md zijn verplichte cross-checks.** Eigenaar-koppeling en bron-koppeling zijn geen optionele velden. Bestaan die documenten niet, vraag het actief uit en raad aan eerst S11 en S12 te dichten.
- **Schrijf nooit zomaar over een bestaande `Operations/KPIs.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Geen KPI zonder definitie of bron.** Als een gewenste KPI nergens gemeten kan worden, neem hem op in de aparte sectie "Gewenste KPI's zonder huidige bron" en stel voor om eerst de meet-infrastructuur op te bouwen.
- **Geen valse precisie in normwaardes.** Werknormen worden afgerond op hanteerbare precisie. Geen "≤10.3 werkdagen", wel "≤10 werkdagen".
- **Onderscheid bewaken met C1, C2, C3, C5.** Marketing-data → C1. Sales-pipeline → C2. Omzet/marge/cashflow → C3. Website-gedrag → C5. Operationele KPI's = uitvoering. Bij twijfel: noem de bewuste keuze om iets hier of in een C-buurman op te nemen.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een getal, een tool-naam, een persoon) als het te abstract blijft.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe bronnen.** Een bestaande KPI-sheet of een SLA in een klantcontract bespaart een groot deel van het uitvraag-werk.
- **Geen marketing-trucjes.** Geen "imagine if...", geen rhetorische vragen aan het begin van een sectie. Recht voor zijn raap.
- **Mik op 5 tot 12 KPI's, niet op het audit-minimum van 3.** Een rijk KPI-document is direct bruikbaar voor de A-skills. Drie willekeurige cijfers zijn dat niet.
- **Een KPI heeft één eigenaar.** Niet twee. Niet "het team". Eén persoon of rol. Anders volgt niemand op.

## Voorbeeld-output

Zie [`references/template-operationele-kpis.md`](references/template-operationele-kpis.md) voor de exacte structuur die de skill oplevert: KPI-overzichtstabel, KPI-kaart per metric met alle 7 velden, cross-links naar S10 (SOPs), S11 (Team en Rollen) en S12 (Toolstack), sectie voor gewenste KPI's zonder huidige bron, en hint richting A1, A2, A3 en A6.

## Changelog

### 1.1.0 — 2026-05-11

- Description ingekort, oude inhoud naar nieuwe sectie "Wanneer triggeren". Plus Cold-start modus.

### 1.0.0 — initiele release

- Eerste productie-versie.
