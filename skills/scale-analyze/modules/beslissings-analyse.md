# Beslissings-analyse (module van scale-analyze)

> Bron-skill: `beslissings-analyse` | SCALE-code: A4 | Versie: 1.1.0 | Geschatte tijd: 45 tot 75 minuten

---

# Beslissings-analyse

## Wanneer NIET deze skill?

Deze skill bouwt een **beslissings-infrastructuur**: een herbruikbare catalogus van playbooks voor terugkerende strategische keuzes (klant-acceptatie, prijsverhoging, tool-investering, aanname). Het is geen one-shot beslissingshulp.

Wil je een eenmalige keuze maken tussen 2-3 concrete opties, bijvoorbeeld "moet ik deze ene klant aannemen" of "kies ik tool A of B", gebruik dan skill `beslissingshulp` (meta-skill voor losse grote keuzes met first-principles, scenario's en bias-check).

Bij twijfel: vraag eerst aan de gebruiker of hij een herhaalbare structuur wil opzetten (deze skill) of een eenmalige analyse nodig heeft (`beslissingshulp`). Schakel pas door zodra die modus helder is.

## Doel

Helpt een ondernemer om in 45 tot 75 minuten een **data-gedreven beslis-infrastructuur** vast te leggen in één canoniek document: `{scope}/Analyze/Beslissings-Frameworks.md`. Dit is SCALE-stap A4 (Analyze) en levert per terugkerende strategische beslissing een playbook plus één generiek template voor ad-hoc keuzes.

*Waarom dit fundamenteel is.* De meeste ondernemers nemen dezelfde soorten beslissingen elk kwartaal opnieuw: nieuwe klant accepteren of niet, prijs verhogen of niet, investeren in een tool, iemand aannemen, feature bouwen, dienst stoppen, leverancier wisselen. Elke keer wordt het op gevoel gedaan, met andere argumenten, met andere data. Resultaat: inconsistente keuzes, vergeten lessen uit eerdere beslissingen, en een grote afhankelijkheid van de stemming van die ochtend. Een beslis-playbook bevriest het denkwerk dat één keer goed moet gebeuren, zodat de uitvoering daarna sneller en consistenter is.

*Wat dit document is, en wat het niet is.* Dit is **geen** rapport over één concrete keuze ("moet ik klant X aannemen"). Dat is wat de meta-skill `beslissingshulp` doet voor losse twijfels. Dit document is een **playbook-catalogus**: voor elke terugkerende strategische beslissing-categorie een eigen mini-framework met criteria, gewichten, drempels en meekijkers. Pas wanneer een concrete beslissing langskomt, wordt het playbook eruit getrokken, doorgewerkt, en de uitkomst weggeschreven naar een aparte beslis-notitie.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit A4 stelt dat minimaal 1 analyse-bestand een concrete aanbeveling moet doen (geen pure data-dump). Die drempel haal je met één case-study uit eerdere beslissingen. Deze skill mikt op een **werkende beslis-infrastructuur**: minimaal 4 playbooks voor de meest voorkomende terugkerende beslissingen plus een generiek template, allemaal cross-linked naar de C-laag-data zodat de playbooks niet vermolmen.

Resultaat: SCALE-audit A4 springt van niet aanwezig of ⚠️ naar ✅, plus elk later beslis-moment kan in 10 tot 20 minuten worden uitgevoerd in plaats van een uur improviseren.

## Verschil met skill `beslissingshulp`

| | `beslissings-analyse` (deze skill, A4) | `beslissingshulp` (meta-skill, Ben AI) |
|---|---|---|
| Doel | Beslis-infrastructuur opbouwen, playbook per terugkerende keuze-categorie | Eén losse grote keuze coachen, moment-keuze |
| Aanleiding | Ondernemer wil voor alle aankomende klant-accepts, prijs-rondes, aannames een vast proces | Ondernemer twijfelt nu over één concrete grote beslissing |
| Input | C-laag-data, S5 Goals, S11 Team-rollen, eerdere beslis-historie | Persoonlijke context, gevoel, scenario's, bias-check |
| Output | `Analyze/Beslissings-Frameworks.md`, playbook-catalogus | `Persoonlijk/Intelligence/Beslissingen/YYYY-MM-DD - X.md`, beslis-rapport |
| Frequentie | Eén keer opgebouwd, periodiek bijgewerkt | Telkens bij een nieuwe twijfel |
| Tooling | Datacross-links, score-tabellen, drempelwaarden | First-principles, 10-10-10, start-fresh, bias-check |
| Cross-link | A4 levert het playbook, `beslissingshulp` past het toe bij twijfel | `beslissingshulp` kan het A4-playbook erbij pakken als de keuze in een bestaande categorie valt |

Beide skills zijn complementair. Wanneer een concrete keuze in een bestaande playbook-categorie valt, pak je het playbook uit A4. Voelt de keuze zo groot of zo nieuw dat het standaard-pad niet past, schakel dan over op `beslissingshulp` voor diepere één-shot-coaching.

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  BESLISSINGS-ANALYSE / SCALE-stap A4 (Analyze)           │
│  ~45-75 minuten · 4-6 playbooks + 1 ad-hoc-template       │
└──────────────────────────────────────────────────────────┘

  In 45 tot 75 minuten bouwen we een data-gedreven beslis-
  infrastructuur. Niet één losse keuze, maar een playbook-
  catalogus voor terugkerende strategische beslissingen.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • Eerst 2 vragen: welk bedrijf, welke beslissingen     │
  │    komen bij jou het vaakst terug?                      │
  │  • Daarna per playbook (één per beurt, 6-10 min):       │
  │      - Beslissing in één zin                            │
  │      - Welke C-laag-data wordt geraadpleegd             │
  │      - 3-7 harde criteria met gewicht (1-5)             │
  │      - Score-systeem en go/no-go-drempel                │
  │      - Verplichte meekijker(s) plus escalatie-pad       │
  │  • Standaard-set: 4 playbooks (klant-acceptatie,        │
  │    prijsverhoging, tool-investering, aannamebesluit)    │
  │    plus 1-2 eigen aanvullingen + 1 ad-hoc-template      │
  │  • Vooraf scan ik vault: C2 CRM, C3 Financiële data,    │
  │    C4 Klantfeedback, C7 Operationele KPIs, S5 Goals,    │
  │    S11 Team, eerdere beslis-rapporten                   │
  │  • Aan het eind: cross-links naar C-laag, S5, S11 en    │
  │    naar `beslissingshulp` voor één-shot-keuzes          │
  │  • Output: gevuld Beslissings-Frameworks.md met         │
  │    playbook-tabellen, score-templates, en een           │
  │    generieke ad-hoc-checklist                           │
  └────────────────────────────────────────────────────────┘

  Heb je externe documenten klaar? Bijvoorbeeld:
  • Eerdere beslis-rapporten of -aantekeningen
  • Een lijstje "als ik tijd had, zou ik X anders doen"
  • Win-loss-analyse, klant-acceptatie-historie
  • Investeringen-overzicht van de laatste 12 maanden
  • Notities uit mentor- of sparringsessies over koers

  Dan kun je die nu noemen of plakken, hoe meer bronnen,
  hoe rijker het pre-fill.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele flow

```
┌──────────────────────────────────────────────────────────┐
│  BESLISSINGS-ANALYSE · A4 · 45-75 min · 4-6 playbooks    │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   │                      │  Welke besl. terugkerend?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  C2 CRM, C3 Fin, C4 Fb,
   │    (auto-discover)   │  C7 KPIs, S5 Goals,
   │                      │  S11 Team, beslis-historie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Beslis-historie,
   │                      │  win-loss, investerings-
   │                      │  log, mentor-notities
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Welke playbooks
   │                      │  voor de hand liggen
   │                      │  o.b.v. bedrijfsfase
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, play-  │  Standaard 4 + eigen:
   │    book voor playbook│  [1] Klant-acceptatie
   │                      │  [2] Prijsverhoging
   │                      │  [3] Tool-investering
   │                      │  [4] Aannamebesluit
   │                      │  [5+] Eigen toevoeging
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Ad-hoc-template   │  Generieke checklist
   │                      │  voor keuzes zonder
   │                      │  eigen playbook
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  {scope}/Analyze/
   │    opslaan           │  Beslissings-
   │                      │  Frameworks.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog + cross-
   │    vervolg-          │  link naar
   │    suggesties        │  `beslissingshulp`
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Beslissings-framework" / "beslis-playbook" / "beslis-criteria definiëren"
- "Wanneer accepteer ik een klant" / "klant-acceptatie-criteria"
- "Wanneer doe ik een prijsverhoging" / "prijsronde-checklist"
- "Investerings-criteria opzetten" / "tool-investering checken"
- "Aanname-checklist" / "wanneer huur ik iemand in"
- "Go no-go drempel" / "data-gedreven beslissen" / "strategische keuze-template"
- "A4 dichten in SCALE-audit" / "gap A4" / "Beslissings-Frameworks.md aanvullen"
- "Beslis-infrastructuur" / "ik wil mijn keuzes consistenter maken"

Triggert NIET wanneer:
- De gebruiker **één losse grote twijfel** wil uitwerken (gebruik `beslissingshulp`, die zoomt in op één concrete keuze met first-principles, scenario's en bias-check)
- De gebruiker **periodieke rapportage** wil opzetten over bedrijfsdata (gebruik `rapportage-builder`, A1, andere skill)
- De gebruiker een **dashboard** wil bouwen met real-time KPI's (gebruik `mission-control-builder`, A2)
- De gebruiker een **dagelijkse briefing** wil ontvangen (gebruik `daily-briefing`, A3)
- De gebruiker een **benchmark-rapport** wil samenstellen (gebruik `benchmarking`, A5)
- De gebruiker enkel **doelen** wil bijstellen (gebruik `doelen-coach`, S5, dan eventueel hier een playbook uit afleiden)
- De gebruiker **operationele KPI's** wil definiëren (gebruik `operationele-kpis`, C7, levert input voor deze skill)

## Workflow

### Stap 1: Scope kiezen plus terugkerende-keuzes-check

Vraag voor welk bedrijf en in welk pad de beslis-infrastructuur gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Directie/`, `Analyze/`, `Collect/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Directie/`, etc.)
- Een **versgemaakte SCALE-skelet** waar nog geen `Analyze/`-map bestaat

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze beslis-infrastructuur voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")
3. **Terugkerende keuzes:** welke 3 tot 5 soorten strategische beslissingen kom je elk kwartaal of elke maand opnieuw tegen? Voorbeelden die je kunt aanreiken als de gebruiker stil valt: nieuwe klant accepteren, prijsverhoging, tool-aanschaf, iemand aannemen of niet, feature wel of niet bouwen, dienst stoppen, leverancier wisselen, project annuleren, eigen tijd herverdelen tussen bedrijven.

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Analyze/`-map. Bevestig de gevonden scope voordat je doorgaat. Maak de `Analyze/`-map aan als die nog niet bestaat (vault-onafhankelijk, geen hardcoded paden).

Controleer daarna of `{scope}/Analyze/Beslissings-Frameworks.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Beslissings-Frameworks - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Waar nuttig voor |
|---|---|
| `Directie/00 - Overzicht.md` (S1) | Algemene context, fase, propositie, bepaalt welke playbooks relevant zijn |
| `Directie/01 - Goals.md` (S5) | Jaardoelen, bepaalt de richting waar criteria aan moeten meten ("draagt deze klant bij aan jaardoel X?") |
| `Directie/02 - Tasks.md` | Bestaande beslis-acties die wachten op een framework |
| `Directie/Playbook/Team.md` (S11) | Wie er meekijkt per beslissing (sparringspartner, mentor, partner, financieel adviseur) |
| `Directie/Playbook/ICP.md` (S4) | Klant-acceptatie-criteria worden hier deels gevoed, wie is wel/niet ICP |
| `Directie/Playbook/Producten.md` (S8) | Prijspunten, marge per pakket, input voor prijsverhoging-playbook |
| `Directie/Research/*.md` | Eerdere strategische analyses, mentor-notities, koers-overdenkingen |
| `Collect/CRM-setup.md` (C2) | Pipeline-data, capaciteit, volume, win-rates voor klant-acceptatie |
| `Collect/Financiele-data.md` (C3) | Marge, cashflow, omzet-per-klant, input voor prijs, investering, aanname |
| `Collect/Klantfeedback.md` (C4) | Klanttevredenheid, input voor prijsverhoging (kan markt het hebben), klant-acceptatie (fit-signalen) |
| `Collect/Operationele-KPIs.md` (C7) | Doorlooptijden, capaciteit, foutpercentage, input voor aanname, tool-investering |
| `Collect/Concurrentie.md` (C6) | Marktpositie, input voor prijsverhoging-playbook |
| `Persoonlijk/Intelligence/Beslissingen/*.md` of `Directie/Research/Beslissing-*.md` | Eerdere beslis-rapporten, bron voor playbook-categorieën die al in de praktijk zijn voorgekomen |
| `Analyze/Beslissings-Frameworks.md` (huidige versie als die bestaat) | Wat al staat, als basis voor update |

Maak per gevonden bron een korte interne aantekening: welk playbook het raakt, en wat de relevante kerninzichten zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes, niet alarmeren. Markeer ontbrekende C-laag-bronnen aan het einde als gat met cross-link naar de bijbehorende skill (bv. "C2 ontbreekt → run skill `crm-setup` voor pipeline-data, anders blijft klant-acceptatie-playbook op gevoel").

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. A4-specifieke bronnen die vaak goud waard zijn:

- **Eerdere beslis-rapporten** of -aantekeningen in dossiers, e-mailthreads, notitie-apps
- **"Spijt-lijstje"** van eerdere keuzes die anders hadden gemoeten (gouden bron voor criteria die destijds ontbraken)
- **Win-loss-analyse** (welke klanten zeiden ja, welke nee, en waarom), input voor klant-acceptatie
- **Investerings-overzicht** van de laatste 12 maanden (welke tools/abo's zijn aangeschaft, welke renderen, welke staan stof te verzamelen), input voor tool-investering
- **Mentor- of sparring-notities** over strategische koers (bv. "Iwan, doe niet alles alleen", "Iwan, prijsverhoging mag jaarlijks")
- **Klant-acceptatie-historie**, een lijst van klanten waarvan je achteraf dacht "had ik moeten weigeren" (anti-patronen)
- **Aanname-historie**, eerdere inhuur-of-niet-keuzes, met resultaat (productiviteit, geld, kwaliteit)

Concrete vraag aan gebruiker:
> "Heb je externe documenten waaruit ik kan putten? Bijvoorbeeld eerdere beslis-aantekeningen, een spijt-lijstje van keuzes die anders hadden gemoeten, een win-loss-analyse, een overzicht van investeringen of inhuur-historie, of notities uit mentor-gesprekken over je koers? Je mag URL's noemen, bestanden uploaden of tekst plakken. Hoe meer bronnen, hoe rijker het pre-fill, vooral het spijt-lijstje is goud, want daar zit de criteria-leemte die we juist willen dichten."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen
- **PDF/document**: lees de inhoud, vat samen wat relevant is per potentieel playbook
- **Geplakte tekst**: behandel als research-input

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per voorgesteld playbook**, plus welke C-laag-data per playbook beschikbaar is. Doel: voorkomen dat het interview vraagt naar wat al ergens staat én laten zien welke playbooks data-gevoed kunnen worden en welke nu nog op gevoel zouden moeten.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden en de bedrijfsfase, stel ik
deze 5 playbooks voor:

  [1] KLANT-ACCEPTATIE (ja/nee bij nieuwe lead)
      Data beschikbaar: C2 CRM (pipeline-volume), C3 marge-
      per-klanttype, C4 klanttevredenheid per segment
      Frequentie: 2-4× per maand
      Bron: salesproces.md, win-loss-analyse extern

  [2] PRIJSVERHOGING (jaarlijkse ronde of ad-hoc)
      Data beschikbaar: C3 marge, S8 huidige prijsstructuur,
      C6 concurrentie (gedeeltelijk)
      Frequentie: 1-2× per jaar
      Bron: producten.md, mentor-notitie "jaarlijks mag"

  [3] TOOL-INVESTERING (abonnement of one-off > €X)
      Data beschikbaar: C3 cashflow, investerings-overzicht
      extern
      Frequentie: 1× per maand
      Bron: investerings-log extern

  [4] AANNAMEBESLUIT (freelancer, parttime, fulltime)
      Data beschikbaar: C7 capaciteit, C3 marge,
      doelen-koppeling onduidelijk
      Frequentie: 1-2× per kwartaal
      Bron: capaciteit-spreadsheet extern

  [5] DIENST STOPPEN of DOORZETTEN (productlijn-review)
      Data beschikbaar: C3 omzet per dienst, C4 feedback,
      maar je hebt nog geen product-mix-analyse gedaan
      Frequentie: 1× per kwartaal
      Bron: gebruiker noemde mondeling

  GATEN waar ik nog vragen voor heb:
  - Playbook [1]: welk concreet kwaliteitssignaal weegt
    zwaarder dan marge bij klant-acceptatie?
  - Playbook [3]: wat is de bedragsgrens waarboven een
    investering door het playbook moet?
  - Playbook [5]: heb je een product-mix-analyse, of
    moet die er eerst komen via skill `rapportage-builder`?

  Klopt deze lijst? Wil je playbooks toevoegen of schrappen
  voordat we de invulling per playbook gaan doen?
```

Wacht op bevestiging voordat je naar stap 5 gaat. **Sluit altijd af met de drie standaard-vragen:**
1. Welke playbooks horen erbij die ik mis?
2. Welke voorgestelde playbooks zijn voor jouw fase nog niet relevant?
3. In welke volgorde willen we de playbooks doorlopen, meest pijnlijke beslissing eerst?

### Stap 5: Interview, playbook voor playbook

**Kernregel:** behandel **één playbook per beurt**. Wacht op het antwoord, dán pas het volgende playbook. Niet alle playbooks tegelijk neerzetten, dat overweldigt.

Per playbook leggen we **acht dimensies** vast (vast format):

| Dimensie | Wat we vastleggen | Voorbeeld |
|---|---|---|
| 1. Beslissing in één zin | Wat er bij elke voorkomende instantie gekozen moet worden | "Accepteer ik deze nieuwe lead als klant of niet?" |
| 2. Frequentie | Hoe vaak komt deze beslissing voor | "2-4× per maand" |
| 3. Data-bronnen | Welke vault-bestanden of externe data raadplegen voor deze keuze (cross-link C-laag) | "C2 pipeline-volume, C3 marge per klanttype, C4 fit-signalen" |
| 4. Criteria | 3 tot 7 harde meetbare criteria met definitie | "Marge ≥ 40%, doorlooptijd-impact < 5h/maand, fit met ICP-segment 1 of 2, etc." |
| 5. Gewicht per criterium | Score 1-5 (5 = blocker, 1 = nice-to-have) | "Marge: 5 / Fit ICP: 4 / Capaciteit: 3 / Strategische waarde: 2" |
| 6. Score-systeem | Hoe scoren we per criterium (schaal 1-5 of binair) en hoe optellen | "Per criterium 1-5, gewicht × score, max = 100, drempel = 65" |
| 7. Go/no-go-drempel | Hard getal of percentage waaronder no-go, daarboven go, daartussen meekijker nodig | "<55 no-go, 55-69 meekijker, ≥70 go" |
| 8. Verplichte meekijker(s) | Wie kijkt mee bij twijfel-zone of standaard-zone (cross-link S11) | "Twijfel-zone: vraag aan partner-X. Standaard: solo. Boven €Y: financieel-adviseur." |

Per playbook: stel 4 tot 6 vragen, afhankelijk van hoe gevuld de pre-fill al was. Als een playbook in pre-fill al rijk gevuld is, stel je alleen verdiepingsvragen. Als het playbook leeg is, doorloop je de acht dimensies stuk voor stuk.

Voorbeelden per playbook hieronder. **De skill is niet beperkt tot deze vijf**, als de gebruiker eigen voorbeelden noemt (bv. "kies ik een specifieke leverancier", "moet ik dit project annuleren", "moet ik mijn tijd herverdelen tussen bedrijven"), volg dezelfde acht dimensies maar pas de criteria aan op het specifieke domein.

#### Playbook [1] - Klant-acceptatie (ja/nee bij nieuwe lead)

**Beslissing:** accepteer ik deze nieuwe lead als klant of niet?

Suggesties voor harde criteria (kies 4 tot 6, gewichten in dialoog):
- **Marge** (% of euro): hoeveel houdt het bedrijf over per uur of per pakket bij deze klant?
- **Fit met ICP-segment**: valt deze klant in segment 1 of 2 (kern-ICP), in segment 3 (rand-ICP) of buiten (niet-ICP)?
- **Doorlooptijd-impact**: hoeveel uur per maand kost deze klant naar verwachting, en past dat in de huidige capaciteit?
- **Strategische waarde**: opent deze klant deuren (referenties, branche, case-study)?
- **Risico-profiel**: kredietwaardigheid, complexiteit van de vraag, kans op scope-creep?
- **Energie-fit**: blijft de relatie aangenaam (gebaseerd op intake-gesprek)?
- **Cash-timing**: wanneer betaalt deze klant, voor of na de dienstverlening?

Kernvragen aan de gebruiker:
1. Welke 4 tot 6 criteria zijn voor jou de doorslag-gevers bij klant-acceptatie?
2. Welk criterium is een **blocker** (gewicht 5, onder een bepaalde drempel direct no-go ongeacht andere scores)?
3. Welke drempelwaarde markeert "no-go-zone", "twijfel-zone" en "go-zone"?
4. Wie kijkt verplicht mee bij een twijfel-zone-keuze (sparringspartner, mentor, partner)?
5. Welke C-laag-data raadpleeg je standaard voor dit playbook?

#### Playbook [2] - Prijsverhoging (jaarlijkse ronde of ad-hoc)

**Beslissing:** verhoog ik de prijs voor (een specifiek pakket / een segment / alle klanten), ja, hoeveel, per wanneer?

Suggesties voor harde criteria:
- **Marge-druk**: zit de huidige marge onder het doel (uit C3 financiële data)?
- **Inflatie**: cumulatieve prijsstijging sinds laatste verhoging (CBS-index of branche-index)?
- **Concurrentie-positie**: waar zit prijs ten opzichte van concurrenten (uit C6)?
- **Klanttevredenheid**: NPS / CSAT, kan de markt een verhoging hebben (uit C4)?
- **Pakket-prestatie**: hoeveel klanten in welk pakket, hoeveel last van prijs versus afzet (uit C2 + C3)?
- **Risico-tolerantie**: hoeveel klanten ben je bereid te verliezen bij een verhoging van X%?

Kernvragen:
1. Voor welk segment of pakket weeg je deze prijsverhoging? Alle klanten, of specifiek?
2. Welke marge-drempel triggert "het is tijd voor een prijsronde"?
3. Welke verhogings-grootte hoort bij welke score? (Bv. score 70+: 5%, score 80+: 10%, score 90+: nieuwe prijspagina.)
4. Hoeveel klant-verlies tolereer je per pakket, en wat is de procedure als verlies > drempel?
5. Wie kijkt verplicht mee bij een prijsronde (financieel adviseur, partner, mentor)?

#### Playbook [3] - Tool-investering (abonnement of one-off boven drempel)

**Beslissing:** koop ik deze tool / dit abonnement / deze training, ja of nee, op welke termijn?

Suggesties voor harde criteria:
- **Tijdsbesparing per maand** (uur): hoeveel manuele werk wordt door deze tool weggenomen?
- **Kosten-baten** (€): kosten per jaar versus tijdsbesparing × uurtarief?
- **Vervangbaar?**: bestaat er een goedkoper alternatief, of overlap met huidige toolstack (cross-link `toolstack-inventarisatie` S12)?
- **Lock-in-risico**: data-portabiliteit, contract-duur, opzegtermijn?
- **Integratie-fit**: koppelt het met bestaande systemen?
- **Leercurve**: hoeveel uur duurt het voor deze tool productief is?

Kernvragen:
1. Welke bedragsgrens triggert dit playbook? (Bv. > €50/maand abonnement, > €500 one-off.)
2. Welke 4 tot 5 criteria zijn doorslaggevend voor jou?
3. Welke drempel-score is go/no-go?
4. Wat is de standaard-proefperiode voordat je definitief commit? (Bv. 14 dagen, 30 dagen, één maand betaald proberen.)
5. Wie kijkt verplicht mee bij investeringen boven €X?

#### Playbook [4] - Aannamebesluit (freelancer, parttime, fulltime)

**Beslissing:** huur ik iemand in / neem ik iemand aan voor deze taak of niet?

Suggesties voor harde criteria:
- **Capaciteits-druk**: zit ik consistent boven 80% van mijn werkbare uren (uit C7)?
- **Marge per uur**: kan ik het uurtarief van deze inzet terugverdienen met factureerbare uren?
- **Strategische rol versus uitvoer-taak**: is dit werk dat ik moet doen voor de strategie, of werk dat iemand anders ook kan?
- **Vaardigheid-fit**: heeft deze persoon vaardigheid die ik mis?
- **Cashflow-impact**: kan het bedrijf 3 tot 6 maanden de extra kosten dragen als de omzet niet meteen meegroeit?
- **Coordinatie-overhead**: hoeveel tijd kost het mij om deze persoon te aansturen?

Kernvragen:
1. Welke 4 tot 5 criteria zijn voor jou doorslag-gevend bij een aannamebesluit?
2. Wat is de minimum-capaciteitsdrempel waaronder je nog niet zou aannemen (bv. < 70% benutting)?
3. Wat is de cashflow-buffer-eis voor je tot een aanname overgaat (bv. 6 maanden salaris op rekening)?
4. Welke meekijker (financieel adviseur, partner, mentor) is verplicht voor je een aanname doet?
5. Wat is de standaard-vorm bij een eerste poging, freelancer, contractor, parttime, fulltime?

#### Playbook [5+] - Eigen toevoegingen

Standaard suggesties die de gebruiker zelf kan opvoeren:
- **Dienst stoppen of doorzetten**, productlijn-review
- **Leverancier wisselen**, bij contracteinde of slechte ervaring
- **Project annuleren**, bij scope-creep of doelen-misalignment
- **Eigen tijd herverdelen tussen bedrijven**, kwartaal-balans bij multi-business ondernemers
- **Partnership aangaan** (joint venture, samenwerking, doorverwijs-deal)
- **Marketing-kanaal stoppen of opschalen** (gebaseerd op acquisitie-kosten en LTV)

Doorloop voor elk de acht dimensies. Beperk je tot maximaal 6 playbooks in totaal in de eerste iteratie. Meer wordt onbeheersbaar en zorgt dat geen enkel playbook scherp wordt.

### Stap 6: Ad-hoc-template

Niet elke strategische keuze valt onder een bestaand playbook. Voor de **niet-categoriseerbare gevallen** levert het document een generieke checklist op die altijd kan worden gevolgd. Doel: ook bij nieuwe of zeldzame beslissingen heeft de ondernemer een vast stramien.

De ad-hoc-checklist (zie template-bestand voor exacte tekst):
1. **Beslissing in één zin**, wat moet er beslist worden?
2. **Omkeerbaarheid**, kan ik hier op terugkomen? (Type 1: niet omkeerbaar, doe het langzaam. Type 2: omkeerbaar, doe het snel.)
3. **Tijdshorizon**, over welke termijn werkt deze keuze? (1 maand, 1 jaar, 3 jaar, 10 jaar.)
4. **Welke data is relevant**, welke C-laag-bestanden of externe data bekijken?
5. **3 tot 5 ad-hoc-criteria**, wat is hier het belangrijkst? (Gewogen 1-5.)
6. **Score-systeem**, zelfde patroon als playbooks (1-5 per criterium, drempel bepalen).
7. **Verplichte meekijker(s)**, bij grote tijdshorizon of niet-omkeerbare keuze: meekijker uit S11 verplicht.
8. **Cross-link naar `beslissingshulp`**, als de keuze diepere coaching nodig heeft (10-10-10, bias-check, scenario's), schakel over.
9. **Loggen**, uitkomst in `Persoonlijk/Intelligence/Beslissingen/YYYY-MM-DD - Onderwerp.md` of `{scope}/Directie/Research/Beslissing - Onderwerp.md`.

Vraag aan de gebruiker:
> "Voor keuzes die buiten de playbooks vallen, neem ik een generieke 9-punts-ad-hoc-checklist op. Wil je daarin nog iets aanpassen, bijvoorbeeld een extra criterium dat voor jou altijd geldt (zoals 'past dit bij jaardoel X'), of een vaste meekijker die altijd meekijkt bij grote keuzes?"

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-beslissings-analyse.md` als skelet. Vul het met de uitkomsten uit pre-fill, interview en ad-hoc-template.

Sla op als:
```
{scope}/Analyze/Beslissings-Frameworks.md
```

Maak de `Analyze/`-map aan als die nog niet bestaat (vault-onafhankelijk).

Frontmatter (verplicht):
```yaml
---
type: beslissings-frameworks
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: A4
playbooks: <aantal>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "kristalheldere beslissingen", "next-level keuze-discipline", "naadloze go/no-go-flow". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** Een criterium "Marge ≥ 40% per uur" is sterker dan "winstgevendheid moet kloppen".
- **Geen em-dashes** (,). Gebruik komma's, haakjes of losse zinnen.
- **Korte playbook-koppen** (gewoon de beslissings-naam, niet creatief verzonnen).
- **Score-tabellen letterlijk uitschrijven**, niet "voorbeeld-tabel, vul zelf in". De ondernemer moet het ding kunnen openen en gebruiken zonder verder nadenkwerk.
- **Cross-links expliciet noemen** in een eigen sectie aan het eind, niet alleen verspreid in playbooks.

**Visuele weergave in het document:**
- Per playbook een vast acht-dimensie-blok plus een score-tabel (criteria × gewicht × score-template × drempel)
- Een vergelijkende overzichts-tabel boven (welke playbooks bestaan, welke data per playbook, welke frequentie, welke meekijker)
- Onderaan: de ad-hoc-template plus de cross-link-tabel naar C-laag, S5, S11 en `beslissingshulp`

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf**, `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Analyze/Beslissings-Frameworks.md`, v1.0, N playbooks met criteria/gewicht/drempel plus ad-hoc-template opgeleverd"*.
2. **Daily**, als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault, log onder *Gedaan vandaag → [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie**, als er een audit-rapport in `Directie/Research/` staat waar A4 op ❌ of ⚠️ staat: stel voor de audit opnieuw te draaien zodat de score springt.

Vervolgsuggesties die je altijd noemt:
- **Cross-link naar `beslissingshulp`:** bij twijfel-zone-uitkomsten kan deze meta-skill helpen om dieper te gaan (first-principles, scenario's, bias-check).
- **Cross-link naar C-laag-skills (C2, C3, C4, C7):** als een playbook niet data-gevoed is, blijft het op gevoel. Stel voor de ontbrekende C-skill te runnen.
- **Cross-link naar S5 (`doelen-coach`):** een playbook hoort terug te koppelen naar de jaardoelen, controleer of jouw criteria daadwerkelijk doel-bijdragend zijn.
- **Cross-link naar S11 (`team-en-rollen`):** als de meekijker-rol niet expliciet in Team.md staat, leg hem daar vast zodat duidelijk is wie wanneer wordt betrokken.
- **Cross-link naar A1 (`rapportage-builder`):** als playbook-drempels alleen periodiek meten of het wel of niet klopt, hoort dat in de maand- of kwartaalrapportage te landen.
- **Periodiek bijwerken:** dit document moet 1× per kwartaal (zelfde slot als de doelen-review) tegen de werkelijkheid worden gehouden. Welke beslissingen kwamen voor, klopten de drempels, moeten gewichten omhoog of omlaag?

## Belangrijke regels

- **Eén playbook per beurt** in het interview. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Minimaal 4 playbooks** in een eerste iteratie, maximaal 6. Onder de 4 is geen infrastructuur, boven de 6 wordt geen enkele scherp.
- **Acht dimensies per playbook verplicht.** Niet inkorten tot "criteria + drempel", dan vermolmt het, want de cross-link naar data ontbreekt en de meekijker ook.
- **Criteria moeten meetbaar zijn.** Geen "voelt goed" of "past bij ons". Wel "Marge ≥ 40%", "doorlooptijd-impact < 5h/maand", "score op kredietcheck ≥ 70".
- **Gewicht 5 = blocker.** Onder de drempel direct no-go ongeacht andere scores. Markeer expliciet welke criteria gewicht 5 hebben, want die overruled de optelling.
- **Drempel in drie zones.** No-go-zone (onder X), twijfel-zone (X tot Y, meekijker verplicht), go-zone (boven Y). Een binaire drempel is te bot voor strategische keuzes.
- **Verplichte meekijker is een feature, geen weakness.** Bij twijfel-zone moet er iemand meedoen. Dat is wat een playbook onderscheidt van een persoonlijke checklist.
- **Cross-links naar data moeten concreet zijn.** "C3 Financiële data" is niet genoeg. Wel: "C3 Financiële data → marge-per-klanttype-tabel".
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaand `Beslissings-Frameworks.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs met een single-business vault, voor mensen met een multi-business vault, en voor klanten die net hun SCALE-skelet hebben opgezet. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe documenten.** Eerdere beslis-rapporten, een spijt-lijstje, win-loss-analyse, vaak hebben ondernemers dit ergens los liggen.
- **Geen verwarring met `beslissingshulp`.** Deze skill bouwt de **infrastructuur**, `beslissingshulp` coacht één **moment**. Bij elke gebruikersvraag eerst even checken in welke modus we werken.
- **Periodieke review hoort erbij.** Een playbook dat één keer is opgebouwd en daarna vergeten wordt is dood. Plan een kwartaal-touch in de Tasks.

## Voorbeeld-output

Zie [`references/template-beslissings-analyse.md`](references/template-beslissings-analyse.md) voor de exacte structuur die de skill oplevert.

## Changelog

### 1.1.0 — 2026-05-11

- Scope-waarschuwing in description plus nieuwe sectie "Wanneer NIET deze skill?" verwijzend naar beslissingshulp voor one-shot keuzes.

### 1.0.0 — initiele release

- Eerste productie-versie.
