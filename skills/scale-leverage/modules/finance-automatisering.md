# Finance Automatisering (module van scale-leverage)

> Bron-skill: `finance-automatisering` | SCALE-code: L4 | Versie: 1.0.0 | Geschatte tijd: 45 tot 90 minuten

---

# Finance Automatisering

## Doel

Helpt een ondernemer om in 45 tot 90 minuten **zes finance-workflows** te automatiseren en vast te leggen in één canoniek document: `{scope}/Leverage/Finance-Automatisering.md`. Dit is SCALE-stap L4 (Leverage) en de hefboom-laag bovenop C3 (Financiele Data Setup) en V1 (Salesproces): cijfers en pipeline-fases zijn vastgelegd, hier wordt het handmatige werk weggenomen.

*Waarom dit fundamenteel is.* Een ondernemer die zijn finance handmatig draait, verliest gemiddeld 4 tot 8 uur per maand aan facturen schrijven, bankafschriften categoriseren, herinneringen sturen, BTW-cijfers verzamelen en de boekhouder bijpraten. Die uren zijn niet de duurste kosten. De echte kost is dat het werk **traag** gebeurt: facturen gaan 3 dagen te laat de deur uit, betalingen worden 10 dagen na due-date pas opgemerkt, BTW wordt in de laatste 48 uur voor de deadline in elkaar gezet en de boekhouder hoort van afwijkingen pas bij de kwartaalafsluiting. Elk van die vertragingen kost cash (DSO loopt op), kost concentratie (de ondernemer denkt drie keer over dezelfde transactie na) en kost geld bij de boekhouder (extra uren voor het uitzoekwerk).

*Wat een L4-automatisering oplost.* Door zes workflows te automatiseren die elk een typisch herhaalpunt aanpakken, ontstaat een finance-stroom waarin de ondernemer alleen nog op uitzonderingen reageert en niet meer op het standaardwerk. De ondernemer blijft eindverantwoordelijk, de boekhouder blijft eindverantwoordelijk voor de fiscale juistheid, maar het volume aan handmatige tikwerk gaat met 60 tot 80 procent omlaag.

*Waarom dit het zusje is van L1 en L2.* L1 (SOP Automatiseren) automatiseert herhalende operationele processen. L2 (Auto Rapportage Setup) automatiseert de rapportages zelf. L4 zoomt specifiek in op **finance-werkstromen**: de zes processen waar geld in beweging komt en waar elke vertraging direct in DSO of cashflow zichtbaar wordt. L4 leunt op de cijfer-definities uit C3, op de pipeline-trigger uit V1 en op het BTW-regime uit J2, en levert de stuur-data terug aan A1 (Rapportage) en A2 (Mission Control).

*Waarom de audit-drempel niet genoeg is.* SCALE-audit L4 vraagt minimaal 1 financieel proces dat geautomatiseerd is (een auto-incasso, een factuur-mail, een herinnering). Die drempel haal je in een uur door één Make-flow op te zetten. Maar één geïsoleerde flow lost het probleem niet op: facturen worden auto-verstuurd, maar boekingen lopen nog handmatig achteraan. Of: herinneringen gaan automatisch, maar de cashflow-forecast wordt nog steeds in een spreadsheet bijgewerkt. Deze skill mikt op een **samenhangende set** van zes workflows die elkaar voeden: de deal-won-trigger uit V1 start de facturatie, de facturatie voedt het debiteurenbeheer, het debiteurenbeheer voedt de cashflow-forecast, de cashflow-forecast voedt de boekhouder-handoff. Eén stroom in plaats van zes losse stappen.

Resultaat: SCALE-audit L4 springt van rood of oranje naar groen, én het document is direct werkbaar als blauwdruk voor implementatie (Make, n8n, of custom). Ook bruikbaar als referentiedocument bij overleg met de boekhouder of bij overdracht naar een opvolger.

**Disclaimer:** dit document is een blauwdruk en organisatorische documentatie van finance-automatisering, geen fiscaal of boekhoudkundig advies. De fiscale eindverantwoordelijkheid blijft bij de ondernemer en de boekhouder of administratiekantoor (bijvoorbeeld Fit In Finance). Bij twijfel over BTW-verwerking, balans-posten, jaarrekening, complexe boekingsregels of grenswaarden tussen regimes: verwijs de skill expliciet door. Automation versnelt, controleert niet.

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  FINANCE AUTOMATISERING - SCALE-stap L4 (Leverage)        │
│  ~45-90 minuten · 7 interview-blokken                     │
└──────────────────────────────────────────────────────────┘

  In 45 tot 90 minuten leggen we vast hoe zes finance-
  werkstromen geautomatiseerd worden, van factuur tot
  boekhouder-handoff. Daarna gaat 60 tot 80 procent van het
  handmatige finance-tikwerk eruit, blijven cijfers actueel
  en is de boekhouder altijd in sync.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 7 blokken interview (één per beurt, niet alles       │
  │    tegelijk), gemiddeld 5-12 minuten per blok           │
  │  • Per blok 2-5 korte vragen, altijd met een            │
  │    aanbevolen standaard erbij                           │
  │  • Vooraf scan ik je vault (Collect/Financiele-Data,    │
  │    Sales/Salesproces, Juridisch/BTW-administratie,      │
  │    IT/Toolstack, Financiën/) zodat we voortbouwen op    │
  │    wat C3, V1, J2 en S12 al hebben vastgelegd           │
  │  • Daarna lever ik Finance-Automatisering.md op met     │
  │    per workflow: trigger, tool-stack, fallback,         │
  │    eigenaar, KPI en implementatie-checklist             │
  └────────────────────────────────────────────────────────┘

  De 7 blokken:
  [1] Scope + huidige situatie (wat draait al, wat niet)
  [2] Workflow 1: Facturatie (deal-won → factuur in
      Moneybird/e-Boekhouden → verstuur)
  [3] Workflow 2: Boekingen (PSD2-import + regel-engine
      + AI-fallback)
  [4] Workflow 3: Debiteurenbeheer (D+7/+14/+30 + incasso-
      escalatie)
  [5] Workflow 4: BTW-aangifte-voorbereiding (kwartaal-1e,
      accountant-klaar)
  [6] Workflow 5: Cashflow-forecast (rolling, pipeline +
      contracten + uitgaven)
  [7] Workflow 6: Boekhouder-handoff (maandpakket met
      export + vragen + anomalieën)

  Heb je externe input klaar? Bijvoorbeeld:
  • Een actief Make- of n8n-account (of wens om dat op
    te zetten) plus eventueel bestaande scenarios
  • API-tokens of read-only inlog voor Moneybird,
    e-Boekhouden, Stripe of Mollie (alleen vermelden
    welke tools, geen tokens hier plakken)
  • Stripe- of Mollie-dashboard-screenshot van laatste
    week om recurring-volume te zien
  • Banking-export (CSV uit je bank-app) van laatste 3
    maanden om het categoriserings-patroon vast te
    leggen
  • Bestaande herinneringsteksten of incasso-brieven die
    je nu handmatig gebruikt
  • Het laatste boekhouder-rapport (Q-afsluiting of
    jaarrekening) zodat we weten welke vorm de handoff
    moet hebben

  Hoe meer voorwerk, hoe sneller we tot een implementeer-
  klare blauwdruk komen.

  Let op: dit is een implementatie-blauwdruk en operationele
  documentatie, geen fiscaal advies. De boekhouder of
  Fit In Finance blijft eindverantwoordelijk voor de
  fiscale juistheid. Automation versnelt, vervangt niet
  de controle.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  FINANCE AUTOMATISERING - L4 · 45-90 min · 7 blokken      │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   │                      │  Leverage/ of
   │                      │  Financien/?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  C3 Financiele-Data,
   │    (auto-discover)   │  V1 Salesproces,
   │                      │  J2 BTW, S12 Toolstack,
   │                      │  Financien/, Operations/
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe input?    │  Make-account,
   │                      │  tool-tokens (alleen
   │                      │  beschikbaarheid),
   │                      │  Stripe-screenshot,
   │                      │  bank-CSV,
   │                      │  herinneringsteksten
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is
   │                      │  per blok, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, blok   │  7 blokken,
   │    voor blok         │  2-5 vragen elk
   │                      │  [1] Scope + huidig
   │                      │  [2] Facturatie
   │                      │  [3] Boekingen
   │                      │  [4] Debiteuren
   │                      │  [5] BTW-voorbereid
   │                      │  [6] Cashflow-fcst
   │                      │  [7] Boekhouder-handoff
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Cross-link met    │  C3 Financiele-Data,
   │    aangrenzende      │  V1 Salesproces,
   │    SCALE-stappen     │  J2 BTW, S12 Toolstack,
   │                      │  A1 Rapportage,
   │                      │  A2 Mission Control
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Leverage/
   │    opslaan           │  Finance-Automatisering.md
   │                      │  of Financien/
   │                      │  Automatisering.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    aanbevelingen     │  3 vervolgstappen
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Finance automatiseren" / "finance-automatisering opzetten"
- "Factuur automatisch versturen" / "auto-facturatie" / "automatische facturatie"
- "Auto-incasso opzetten" / "automatische incasso"
- "Betalingsherinneringen automatiseren" / "auto-herinneringen" / "herinneringsflow"
- "Debiteuren-flow" / "debiteurenbeheer automatiseren" / "incasso-flow"
- "BTW-aangifte voorbereiden" / "BTW automatiseren" / "kwartaal-BTW klaarzetten"
- "Cashflow-forecast bouwen" / "rolling forecast" / "cashflow-prognose"
- "Boekhouder-pakket maken" / "maandelijkse handoff naar accountant" / "Fit In Finance overdracht"
- "Bankafschriften categoriseren" / "PSD2-koppeling" / "boekingen automatisch importeren"
- "L4 dichten in SCALE-audit" / "gap L4"
- "Finance-Automatisering.md aanmaken" / "Automatisering.md schrijven"
- "Hoe automatiseer ik mijn finance" / "finance hefboom" / "tikwerk eruit halen"

Triggert NIET wanneer:
- De gebruiker een **boekhoudpakket wil kiezen of opzetten**. Dat is een tool-keuze. Verwijs naar `toolstack-inventarisatie` (S12) of een boekhouder. Deze skill bouwt automatiseringen rond het pakket dat er al is.
- De gebruiker de **financiële data wil structureren** zonder automatisering. Dat is C3 `financiele-data-setup`. Deze skill leunt erop, maar bouwt niet de data-laag.
- De gebruiker een **echte rapportage wil genereren** met cijfers erin. Dat is A1 `rapportage-builder`. Deze skill levert wel de data-stroom die A1 consumeert.
- De gebruiker een **dashboard wil bouwen**. Dat is A2 `mission-control-builder` of E1. Deze skill levert wel de cijfers die zo'n dashboard live houdt.
- De gebruiker een **BTW-aangifte zelf wil indienen**. Aangifte gebeurt in het boekhoudpakket of bij de Belastingdienst, niet in dit document. Deze skill bereidt voor.
- De gebruiker een **jaarrekening wil opstellen**. Dat is werk voor de boekhouder of accountant.
- De gebruiker een **operationeel proces wil automatiseren** dat niets met geld te maken heeft (klantenservice, marketing-mailflow, planning). Gebruik dan L1 `sop-automatiseren` of L3 `mailflow-setup`.
- Het bedrijf heeft **geen actieve omzet of vaste lasten**. Dan is er nog niets om te automatiseren. Eerst C3 op orde, dan terug naar L4.

## Workflow

### Stap 1: Scope kiezen en bestand-locatie bepalen

Vraag voor welk bedrijf en in welk pad de finance-automatisering wordt vastgelegd. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Leverage/`, `Financiën/`, `IT/`, `Sales/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Leverage/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van `os-builder`) waar Leverage nog leeg is

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze finance-automatisering voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bijvoorbeeld de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `IT/`-, `Financiën/`- of `Sales/`-map. Bevestig de gevonden scope voordat je doorgaat.

**Pad-keuze voor het output-bestand.** Twee paden zijn beide goed:

- `{scope}/Leverage/Finance-Automatisering.md` past binnen de SCALE-Leverage-conventie (bewust ondergebracht bij alle Leverage-blauwdrukken zodat L1, L2, L3 en L4 visueel bij elkaar staan)
- `{scope}/Financiën/Automatisering.md` past beter bij bedrijven die alle finance-documenten centraal in Financiën beheren

Vraag de gebruiker welke voorkeur:
> "Wil je dit document onder `Leverage/` plaatsen (SCALE-conventie, naast L1, L2, L3) of onder `Financiën/` (centraal bij je financiële documenten)? Beide kanten werken. Mijn standaard-suggestie is **`Leverage/Finance-Automatisering.md`** omdat dat alle Leverage-blauwdrukken bij elkaar zet."

Controleer daarna of het gekozen output-pad al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Finance-Automatisering - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

Maak de bovenliggende map (`Leverage/` of `Financiën/`) aan als die nog niet bestaat.

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, geen hard-coded absolute paden.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Leverage/Finance-Automatisering.md` (huidige versie als die bestaat) | Bestaande blauwdruk, workflows, fallbacks |
| `Financiën/Automatisering.md` (alternatieve naam, als die bestaat) | Idem |
| `Collect/Financiele-Data.md` (C3) | **Verplichte check** — boekhoudpakket, betalingsplatform, bank, kerncijfer-definities, frequenties, eigenaren |
| `Financiën/Data-Setup.md` (C3 alternatief, als die bestaat) | Idem |
| `Sales/Salesproces.md` (V1) | **Verplichte check** — pipeline-fases en het Won-criterium (trigger voor facturatie-flow) |
| `Sales/CRM-Setup.md` (C2, als die bestaat) | CRM-tool waar deal-won-status leeft (HubSpot, Pipedrive, Notion) |
| `Juridisch/BTW-administratie.md` (J2) | **Verplichte check** — BTW-regime (21% / 9% / vrijgesteld / KOR / OSS), aangifte-frequentie, deadlines |
| `IT/Toolstack.md` (S12) | **Verplichte check** — welk boekhoudpakket, betalingsplatform, bank, factuurtool, eventuele Make- of n8n-instantie |
| `Directie/00 - Overzicht.md` | Bedrijfsnaam, type dienstverlening, omzetorde-grootte (relevant voor volume) |
| `Directie/01 - Goals.md` | Omzetdoel en eventueel automatiserings- of efficiency-doel |
| `Financiën/Rapportage/` (als bestaat) | Eerdere maand- of kwartaalrapporten (vorm van handoff naar accountant) |
| `Operations/Processen/` | Bestaande SOPs rond facturatie, herinneringen, BTW-aangifte (die we automatiseren) |
| `HR/Team.md` (S11, als bestaat) | Eigenaren per workflow |

Maak per gevonden bron een korte interne aantekening: welk van de 7 blokken het raakt en welke kerngegevens al bekend zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is. Wel: als **C3, V1, J2 of S12 ontbreekt**, vermeld dat expliciet aan de gebruiker en stel voor die eerst (of parallel) te doen. L4 leunt op die fundering en blauwdrukken zonder die input worden vaag.

Vul daarna onderstaand intern overzicht in:

- Bedrijfsnaam: [uit vault of leeg]
- Boekhoudpakket: [Moneybird / e-Boekhouden / Exact / Snelstart / Twinfield / anders / onbekend — uit C3 of Toolstack]
- Betalingsplatform: [Stripe / Mollie / iDEAL via bank / PayPal / handmatig / geen — uit C3 of Toolstack]
- Bank: [Rabobank / ABN / ING / bunq / anders / onbekend] + PSD2-koppeling actief: [ja / nee / onbekend]
- BTW-regime: [21% / 9% / vrijgesteld / KOR / OSS / onbekend — uit J2]
- BTW-aangifte-frequentie: [kwartaal / maand — uit J2]
- Deal-won-trigger uit V1: [welke fase markeert won, welke tool registreert het]
- Bestaande automatiseringen: [bv. "Stripe-Moneybird-webhook actief", "geen automatisering, alles handmatig"]
- Orkestratie-tool: [Make / n8n / Zapier / custom / geen — uit Toolstack]
- Aantal facturen per maand: [getal of "onbekend"]
- Aantal bank-transacties per maand: [getal of "onbekend"]
- Boekhouder: [naam, frequentie van overleg, indien Fit In Finance vermelden]
- Aantal FTE: [getal of "1 (solopreneur)"]

### Stap 3: Externe input ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Bij finance-automatisering zijn er vaak structurele bronnen buiten de vault die de blauwdruk preciezer maken.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen die we kunnen meenemen? Bijvoorbeeld:
> - Een **Make- of n8n-account** dat al actief is (eventueel met bestaande scenarios voor andere processen). Zo ja: welke scenarios zijn er al, welke aanloopkosten zijn er.
> - **API-toegang** voor je boekhoudpakket (Moneybird, e-Boekhouden, Exact) en betalingsplatform (Stripe, Mollie). Geef alleen aan of je die toegang **hebt of kunt aanvragen**. Plak **geen tokens of API-keys** hier; die horen in een vault-manager, niet in een markdown-document.
> - Een **Stripe- of Mollie-dashboard-screenshot** van de afgelopen week om recurring-volume en gemiddelde transactiewaarde te zien.
> - **Banking-export** uit je bank-app (CSV of PDF, laatste 3 maanden) zodat we de patronen kunnen herkennen voor de regel-engine in workflow 2.
> - **Bestaande herinneringsteksten** of **incasso-brieven** die je nu handmatig stuurt. Inhoud van die teksten neem ik over voor de auto-herinneringsflow.
> - Het **laatste boekhouder-pakket** (Q-afsluiting, jaarrekening, of mail-thread met je accountant). Zo weten we welke vorm de handoff in workflow 6 moet hebben.
> - Eventuele **logs van eerder mislukte automatiseringen** (Zapier-fouten, Make-errors, of een verhaal van wat er misging). Daar leren we welke fallbacks moeten worden ingebouwd.
> 
> Hoe meer input, hoe minder ik hoef uit te vragen en hoe preciezer de blauwdruk. Een ruwe export of screenshot is veel waardevoller dan een schatting uit het hoofd."

Per aangeleverde bron:
- **Make/n8n-overzicht**: noteer welke scenarios al draaien, welke kosten en welk niveau van vertrouwen
- **API-toegang-status**: noteer per tool: "API beschikbaar / API beschikbaar maar nog niet geactiveerd / geen API"
- **Stripe/Mollie-dashboard**: identificeer aantal recurring-abonnementen, gemiddelde transactiewaarde, frequentie van payouts
- **Banking-CSV**: scan op categorieën (huur, software, salarissen, inkomende klant-betalingen), zoek herhaalpatronen die straks via regel-engine kunnen
- **Herinnerings- of incassoteksten**: bewaar letterlijk, gebruik in workflow 3 als template
- **Boekhouder-pakket**: identificeer welke velden de accountant standaard wil zien, welke vragen er typisch terug komen
- **Mislukte-automatiseringen-logs**: noteer welke fout-modi voorkomen moeten worden (bv. dubbele facturen, race-condition tussen webhooks)

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4. Markeer in dat geval velden waar geen bron voor is met `[VERIFICEREN]` zodat de gebruiker later kan aanvullen.

**Privacy-let op**: laat de gebruiker geen API-keys, OAuth-tokens, klantnamen-met-bedragen of complete bank-rekeningnummers plakken. Vraag om geanonimiseerde versies of laat de gebruiker zelf de structuur beschrijven zonder identificeerbare gegevens.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 7 blokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat én de gebruiker bevestigen of de informatie correct is begrepen.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] SCOPE + HUIDIGE SITUATIE
      Bedrijf: {Naam}
      Pad: {scope}
      Output-bestand: {scope}/Leverage/Finance-Automatisering.md
      Bestaat al: nee (eerste versie)
      Boekhoudpakket: Moneybird (uit C3 + Toolstack)
      Betalingsplatform: Stripe (uit C3)
      Bank: Rabobank + PSD2-koppeling met Moneybird actief
      BTW-regime: 21% standaard, aangifte per kwartaal (uit J2)
      Orkestratie-tool: nog geen Make/n8n
      Boekhouder: Fit In Finance, kwartaaloverleg
      Huidige automatiseringen: Stripe-Moneybird-webhook
        actief; rest handmatig

  [2] WORKFLOW 1 — FACTURATIE
      Deal-won-trigger uit V1: fase "Won", geregistreerd
        in {CRM-naam}
      Huidige factuur-flow: handmatig, Iwan maakt zelf
        factuur in Moneybird
      Volume: ~15 facturen per maand
      Auto-mogelijkheid: CRM-webhook → Moneybird-API
        → mail naar klant

  [3] WORKFLOW 2 — BOEKINGEN
      PSD2-koppeling: actief (Rabobank → Moneybird)
      Categorisatie nu: deels regel-engine in Moneybird,
        ~30% handmatig
      AI-fallback: nog niet aanwezig

  [4] WORKFLOW 3 — DEBITEURENBEHEER
      Huidige herinneringen: ad hoc, Iwan stuurt mail
        als hij eraan denkt
      DSO uit C3: 38 dagen
      Volume openstaande facturen: gemiddeld 8 per moment

  [5] WORKFLOW 4 — BTW-AANGIFTE
      Regime: 21%, kwartaal (uit J2)
      Deadlines J2: 30 april, 31 juli, 31 oktober, 31 januari
      Huidige flow: Fit In Finance trekt rapport uit
        Moneybird, doet aangifte
      Auto-mogelijkheid: rapport op de 1e van het
        nieuwe kwartaal automatisch klaar zetten

  [6] WORKFLOW 5 — CASHFLOW-FORECAST
      Pipeline-data uit V1: 12 deals in pipeline,
        gewogen waarde EUR 45k
      Recurring uit C3: EUR 18k/mnd MRR
      Vaste lasten uit C3: EUR 6.5k/mnd
      Huidige forecast: spreadsheet, maandelijks
        bijgewerkt
      Wens: wekelijks, rolling 13 weken

  [7] WORKFLOW 6 — BOEKHOUDER-HANDOFF
      Boekhouder: Fit In Finance
      Huidige frequentie: per kwartaal (samenvallend
        met BTW-aangifte)
      Wens: maandelijks pakket (grootboek + vragen +
        anomalieën)

  GATEN waar ik nog vragen voor heb:
  - Blok 2: welke factuur-template gebruik je nu, en wil
    je dezelfde template auto-versturen?
  - Blok 3: hoe wil je omgaan met onduidelijke posten?
    AI-suggestie laten maken of altijd handmatig?
  - Blok 4: bestaande herinneringsteksten zou ik graag
    zien om over te nemen
  - Blok 5: op welke dag van het kwartaal moet de
    accountant het rapport hebben (1e of later)?
  - Blok 6: vanaf welk pipeline-percentage tel je een
    deal mee in de forecast?
  - Blok 7: welke vragen krijg je nu typisch van Fit In
    Finance? Die kunnen we proactief beantwoorden in
    het pakket.

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat. Flag inconsistenties expliciet (bijvoorbeeld: C3 zegt Stripe, maar betalingen lopen in werkelijkheid via Mollie; of: J2 zegt KOR, maar omzet ligt boven 20.000 euro — verwijs in dat geval naar Fit In Finance voordat de blauwdruk wordt gebouwd).

### Stap 5: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**. Wacht op het antwoord, dan pas het volgende blok. Niet alle blokken tegelijk neerzetten.

Per blok: 2 tot 5 vragen, afhankelijk van hoe gevuld de pre-fill al was. Als een blok in pre-fill al rijk gevuld is, stel je alleen check-vragen. Als het blok leeg is, stel je open vragen om het te vullen. **Altijd een aanbevolen standaard meegeven** bij elke vraag, zodat de gebruiker snel kan bevestigen of corrigeren.

Voor elke workflow leg je standaard vast: **trigger** (wat start de flow), **stappen** (wat gebeurt er), **tool-stack** (welke API's, welke orkestratie), **fallback** (wat als er iets misgaat), **eigenaar** (wie houdt het in de gaten), **KPI** (waar meet je het op).

#### Blok 1: Scope en huidige situatie

Behandeld in stap 1 en pre-fill, hier alleen een korte bevestiging plus twee scope-vragen:

> "We bouwen de finance-automatisering-blauwdruk voor {Bedrijfsnaam} op `{gekozen pad}`. Klopt dit?"

> "Welke van de zes workflows wil je **als eerste implementeren**? Standaard-suggestie bij een MKB-dienstverlener: **workflow 1 (facturatie)** of **workflow 3 (debiteurenbeheer)**, omdat die direct DSO verlagen en cashflow verbeteren. Bij een productbedrijf met veel transacties: **workflow 2 (boekingen)** vaak het meest impact, omdat boekingen-volume hoog is."

> "Welk **risico-niveau** kies je voor de automatiseringen? Drie opties:
> - **Conservatief**: alles automatisch, maar elke flow heeft een dry-run-modus + dagelijkse review van uitvoeringen. Standaard bij start.
> - **Standaard**: automatisch, ondernemer krijgt alleen alert bij afwijking. Standaard na 1-2 maanden draaien.
> - **Aggressief**: automatisch, alleen escalatie bij hard failure. Pas overwegen na 6 maanden draaien."

#### Blok 2: Workflow 1 — Facturatie-automatisering

**Wat we vastleggen:** trigger (deal-won uit V1), stappen (CRM → boekhoudpakket → mail), tool-stack, fallback, eigenaar, KPI.

Vier vragen:

1. **Trigger-bron.** Vraag waar deal-won wordt geregistreerd:
   > "In V1 staat dat een deal 'Won' wordt in {pipeline-fase} van {CRM-naam}. Klopt dat? En stuurt de CRM een **webhook** naar buiten op statuswijziging, of moeten we pollen?"
   
   Standaard-suggestie: webhook als de CRM het ondersteunt (HubSpot, Pipedrive en Notion-via-Make ondersteunen webhooks). Polling alleen als de tool dat niet kan.

2. **Factuur-data en template.** Vraag wat er in de factuur moet:
   > "Welke velden moeten op de factuur staan? Standaard: klantnaam, factuurnummer (auto-volgend uit boekhoudpakket), regelitems (uit deal-data of vaste pakket-prijslijst), BTW-regel ({uit J2: 21% / 9% / verlegd / 0% bij OSS}), totaal incl./excl. BTW, betaalvoorwaarden (standaard 14 of 30 dagen). Welke betaalvoorwaarden gebruik je?"
   
   Als de gebruiker met **abonnementen** werkt: noteer dat Stripe en Mollie meestal het maandelijkse recurring-deel zelf afhandelen, en dat de auto-flow alleen op **eenmalige facturen** ziet.

3. **Verzendmoment en kanaal.** Vraag wanneer de factuur de deur uit gaat:
   > "Wil je de factuur **direct** versturen bij deal-won, of **handmatige laatste check** voor verzenden? Standaard: directe verzending bij standaard-pakketten (waar de inhoud voorspelbaar is), handmatige check bij maatwerk-projecten. Welke is voor jullie passend?"
   
   Kanaal: standaard mail vanuit boekhoudpakket. Vraag of er **e-Boekhouden/Moneybird-PDF + mail-template** moet zijn of een eigen mail vanuit Gmail/Outlook met PDF-bijlage.

4. **Fallback en alerts.** Vraag wat er bij fouten moet gebeuren:
   > "Wat moet er gebeuren als de auto-factuur faalt (bijvoorbeeld klant niet in boekhouding, BTW-regel onduidelijk, of API-error)? Standaard-suggestie: drie escalatie-niveaus. (a) Retry na 5 minuten. (b) Bij dubbele faal: mail naar jou met de fout-details. (c) Bij API-down langer dan 1 uur: SMS-alert. Klopt dat patroon of wil je het anders?"

Per workflow noteren in document: trigger, stappen, tool-stack, fallback, eigenaar (vaak ondernemer zelf bij solopreneur, anders rol-cross-link Team.md), KPI (`tijd tussen deal-won en factuur verstuurd`, doel: < 1 uur).

#### Blok 3: Workflow 2 — Boekingen-automatisering

**Wat we vastleggen:** PSD2-import, regel-engine, AI-fallback voor onduidelijke posten, eigenaar, KPI.

Vier vragen:

1. **PSD2-koppeling-status.** Vraag of bank al gekoppeld is:
   > "Uit C3: {bank-naam} + {ja/nee PSD2-koppeling actief}. Standaard-suggestie bij ja: gebruik de koppeling die al loopt. Bij nee: zet PSD2 op via Cohunt, Tink of via het boekhoudpakket zelf (Moneybird, e-Boekhouden en Exact ondersteunen PSD2 direct). Wil je dit nu opzetten of bestaat het al?"

2. **Regel-engine voor categorisatie.** Vraag welke categorieën al automatisch gaan:
   > "Welke transacties worden nu al automatisch gecategoriseerd? Standaard-categorieën waar regels op draaien: huur (vaste counterparty), software-abonnementen (vaste tegenrekeningen voor Adobe, Google Workspace, etc.), salarissen (loonadministratie-counterparty), vaste verzekeringen, klantbetalingen (op factuurnummer matching). Welke van die regels staan al, en welke wil je nog opzetten?"

3. **AI-fallback voor onduidelijke posten.** Vraag hoe edge-cases worden afgehandeld:
   > "Voor transacties waar de regel-engine niet uitkomt (nieuwe leverancier, ongebruikelijke omschrijving): wil je een **AI-fallback** die een **suggestie** doet welke categorie het hoort te zijn, of altijd handmatige beoordeling? Standaard-suggestie: AI doet een **voorstel** met confidence-score, jij keurt 1× per week alle suggesties goed in een batch. Dat houdt jou in control én bespaart 60-80% van de categorisatie-tijd."
   
   Bewaar de positie: AI suggereert, mens beslist. **Nooit** AI direct laten boeken zonder review, anders ontstaat een audit-trail-probleem voor de boekhouder.

4. **Frequentie en review-ritme.** Vraag hoe vaak wordt gekeken:
   > "Hoe vaak wil je de geboekte mutaties reviewen? Standaard: **wekelijks 15 minuten** voor batch-goedkeuring van AI-suggesties en check op afwijkingen. Direct na de wekelijkse review staan de boekingen klaar voor maand-afsluiting."

Per workflow noteren: trigger (dagelijkse PSD2-pull, default 07:00), stappen, regel-engine, AI-fallback, eigenaar, KPI (`% transacties auto-gecategoriseerd zonder review`, doel: 70%+; en `tijd tussen banktransactie en geboekt`, doel: < 24 uur).

#### Blok 4: Workflow 3 — Debiteurenbeheer

**Wat we vastleggen:** herinneringsschema (D+7, D+14, D+30), incasso-escalatie (D+45 of D+60), eigenaar, KPI (DSO).

Vijf vragen:

1. **Welke facturen tellen mee?** Vraag de scope:
   > "Welke facturen krijgen automatische herinneringen? Standaard: **alle openstaande verkoopfacturen** die de betaaltermijn (typisch 14 of 30 dagen) hebben overschreden. Uitzondering: facturen met **getekende uitstelafspraak** worden geëxcludeerd. Klopt deze scope?"

2. **Herinneringsschema D+7, D+14, D+30.** Vraag of de standaard past:
   > "Standaard-schema: dag 7 na vervaldatum een **vriendelijke reminder** (mail), dag 14 een **directere herinnering** (mail), dag 30 een **laatste sommatie** (mail + eventueel SMS, met aankondiging van incasso). Wil je deze drie momenten houden of het ritme aanpassen? Sommige bedrijven kiezen voor D+3, D+10, D+21 om sneller te zijn."

3. **Inhoud van de herinneringen.** Vraag of er bestaande teksten zijn:
   > "Heb je bestaande herinneringsteksten die ik kan overnemen? Zo niet, ik stel drie templates op (vriendelijk, direct, sommatie) in jouw tone-of-voice op basis van `tone-of-voice` (S3). Welke richting? Standaard: vriendelijk eerst (klant verdient een tweede kans), direct in het midden (zakelijk, concrete actie gevraagd), sommatie aan het einde (duidelijk over consequenties)."
   
   Belangrijk: alle teksten moeten **factuurnummer**, **bedrag**, **vervaldatum**, **iDEAL- of overboeking-link** bevatten. Bij sommatie ook **aankondiging van incasso** met de naam van het incassobureau dat ingeschakeld wordt.

4. **Incasso-escalatie.** Vraag welk bureau en wanneer:
   > "Wanneer wordt een factuur overgedragen aan incasso? Standaard-keuze: **D+45** (snel, voor bedrijven met strakke cashflow) of **D+60** (geduldiger, geeft klant nog een rondje). Welk bureau gebruik je? Veelgekozen: **Bos Incasso**, **Intrum**, **TenneT Incasso**. Als geen bureau: voorstel om met Fit In Finance te overleggen welke aanbeveling daar geldt."
   
   Voorwaarde voor automatische incasso-overdracht: de klant moet vooraf in de algemene voorwaarden (J3) hebben geaccepteerd dat bij wanbetaling incasso volgt. Cross-check.

5. **Eigenaar en uitzonderingen.** Vraag wie het in de gaten houdt:
   > "Wie krijgt elke woensdag een overzicht van **welke herinneringen vandaag de deur uit gaan**? Standaard: jij zelf, voor de check of er klanten tussen zitten die je liever zelf belt. Voor bekende grote klanten of relatie-gevoelige cases: voorstel om die uit de auto-flow te houden met een **stop-flag** in de CRM of het boekhoudpakket."

Per workflow noteren: trigger (dagelijkse pull van openstaande facturen, default 09:00), stappen per D+7/D+14/D+30/D+45-of-60, templates, escalatie, eigenaar, KPI (`DSO`, doel: ≤ 30 dagen; en `% facturen betaald binnen termijn`, doel: 85%+).

#### Blok 5: Workflow 4 — BTW-aangifte-voorbereiding

**Wat we vastleggen:** automatisch BTW-rapport op de 1e van het nieuwe kwartaal, accountant-klaar, eigenaar.

Drie vragen:

1. **Welke vorm wil de accountant?** Vraag wat Fit In Finance of de boekhouder krijgt:
   > "Wat krijgt {boekhouder-naam} nu standaard van je voor de BTW-aangifte? Veelgebruikt: (a) Moneybird- of e-Boekhouden-BTW-rapport (PDF of CSV), (b) grootboek-export over het kwartaal, (c) een korte mail met afwijkingen ('deze maand 1 oninbare factuur, 2 OSS-transacties'). Welke combinatie is voor {boekhouder} de standaard?"

2. **Timing en deadline.** Vraag wanneer het pakket klaar moet zijn:
   > "BTW-aangifte-deadlines uit J2: {deadlines uit J2}. Standaard-suggestie: pakket wordt **op de 1e van het nieuwe kwartaal** automatisch gegenereerd en gemaild naar de accountant. Dat geeft de boekhouder twee tot vier weken speling vóór de officiële deadline. Werkt dat ritme?"

3. **Anomalie-detectie.** Vraag of we proactief afwijkingen flaggen:
   > "Wil je dat de auto-flow proactief **anomalieën** vlagt voordat het pakket de deur uit gaat? Standaard-checks: (a) BTW-percentage afwijkend (een 9%-transactie tussen 21%-regels valt op), (b) verlegde BTW zonder bijbehorende EU-klant, (c) onverwacht hoge of lage omzet vergeleken met vorige kwartalen (delta > 30%), (d) OSS-omzet zonder J2-OSS-registratie. Welke wil je actief?"

Per workflow noteren: trigger (cron op de 1e van het kwartaal, 06:00), stappen, anomalie-checks, eigenaar (boekhouder als consument, ondernemer als bron-eigenaar), KPI (`tijd tussen kwartaal-einde en accountant-pakket verstuurd`, doel: ≤ 1 dag).

#### Blok 6: Workflow 5 — Cashflow-forecast (rolling)

**Wat we vastleggen:** wekelijkse rolling-forecast op basis van pipeline + recurring + vaste uitgaven, eigenaar, KPI.

Vier vragen:

1. **Forecast-horizon.** Vraag hoever vooruit:
   > "Hoever vooruit moet de forecast lopen? Standaard-suggestie: **rolling 13 weken** (één kwartaal). Voor jongere bedrijven met grotere onzekerheid: 8 weken. Voor stabielere bedrijven: 26 weken (half jaar). Welke horizon past?"

2. **Pipeline-inputs uit V1.** Vraag welke deals meetellen:
   > "Welke pipeline-deals uit V1 tellen mee in de forecast? Standaard-suggestie: **alle deals vanaf fase {Voorstel} en hoger**, gewogen met fase-kans-percentage uit V1. Een deal in Voorstel met 40%-kans en EUR 10.000 telt voor EUR 4.000 in de forecast. Werkt dit gewicht-model, of wil je een eigen vermenigvuldigings-tabel?"
   
   Voor abonnementen-bedrijven: ook **MRR-churn-prognose** meenemen, met behoud-percentage uit historische data of een standaard-aanname (bv. 95% maandelijkse retentie).

3. **Recurring + vaste lasten uit C3.** Vraag of de baseline klopt:
   > "Uit C3: MRR EUR {bedrag}, vaste lasten EUR {bedrag}/maand. Deze worden als **deterministische** stromen meegenomen (geen kans-weging). Klopt dat? Andere bekende toekomstige in- of uitgaven (verwachte belasting-betaling, geplande investering, vakantie-uitgave)?"

4. **Update-frequentie en alerts.** Vraag wanneer:
   > "Standaard-suggestie: forecast wordt **elke maandagochtend 07:00** automatisch ververst en gemaild als HTML-rapport. Alerts gaan op een **kritieke drempel** (bijvoorbeeld liquide middelen onder EUR 10.000 binnen 4 weken) live naar jou. Werkt dit ritme?"

Per workflow noteren: trigger (cron maandag 07:00, plus alert-trigger bij drempel), stappen, formules, eigenaar, KPI (`forecast-accuratesse`, doel: afwijking ≤ 10% over 4-weken-horizon; en `aantal kritieke alerts per maand`, monitor).

#### Blok 7: Workflow 6 — Boekhouder-handoff (maandpakket)

**Wat we vastleggen:** maandelijks pakket met grootboek-export, vragen-overzicht, anomalieën, eigenaar.

Drie vragen:

1. **Wie krijgt het pakket en hoe.** Vraag de ontvanger:
   > "Wie ontvangt het maandpakket? Standaard: {boekhouder-naam, indien Fit In Finance vermelden}, via mail of via een gedeelde Drive-map. Welk kanaal werkt voor {boekhouder}?"

2. **Inhoud van het pakket.** Vraag wat erin moet:
   > "Standaard-inhoud per maandpakket: (a) grootboek-export uit boekhoudpakket (CSV en PDF), (b) **vragen-overzicht** met posten die jij nog niet weet hoe te boeken (uit workflow 2 — onduidelijke transacties die je hebt doorgeschoven), (c) **anomalie-lijst** met wat opviel (delta vs vorige maand, ongebruikelijke counterparties), (d) **cashflow-snapshot** uit workflow 5. Welke onderdelen wil je standaard? Mijn suggestie: alle vier."

3. **Timing.** Vraag wanneer:
   > "Standaard-suggestie: pakket wordt **op de 5e van de volgende maand** klaargezet en automatisch gemaild. Dat geeft de boekhouding tijd om de maand af te sluiten. Werkt deze datum, of wil je later (10e)?"

Per workflow noteren: trigger (cron op de 5e van de maand, 06:00), stappen, eigenaar, KPI (`tijd tussen maand-einde en boekhouder-pakket verzonden`, doel: ≤ 5 dagen; en `aantal terugkomende vragen van boekhouder`, doel: dalend).

### Stap 6: Cross-link met aangrenzende SCALE-stappen

In het output-document neem een aparte sectie "Cross-links en afhankelijkheden" op met:

| SCALE-stap | Hoe deze automatisering ermee verbindt |
|---|---|
| C3 Financiele Data Setup | Cijfer-definities, bronnen en frequenties komen uit C3. Wijziging in C3 (ander pakket, andere bron) raakt direct alle workflows hier. |
| V1 Salesproces | Deal-won-trigger uit pipeline-fase activeert workflow 1 (facturatie). Pipeline-data voedt workflow 5 (cashflow-forecast). |
| C2 CRM Setup | De CRM-tool waar deal-won wordt geregistreerd. Webhook of polling-koppeling loopt vanuit hier. |
| J2 BTW-administratie | Regime (21% / 9% / vrijgesteld / KOR / OSS) bepaalt factuur-format en BTW-aangifte-flow in workflow 4. |
| J3 Algemene Voorwaarden | Incasso-escalatie in workflow 3 leunt op de wanbetalingsclausule in de algemene voorwaarden. |
| S12 Toolstack | Boekhoudpakket, betalingsplatform, bank en orkestratie-tool staan in S12. Mismatch? Toolstack bijwerken. |
| S11 Team en Rollen | Eigenaar per workflow cross-linkt naar Team.md. |
| A1 Rapportage Builder | Maandrapportage consumeert KPI's uit alle 6 workflows (DSO, % auto-gecategoriseerd, factuur-tijd). |
| A2 Mission Control | Dashboard toont realtime workflow-status, alerts, en cashflow-forecast. |
| L1 SOP Automatiseren | Operationele SOPs die niet finance-specifiek zijn (bv. klantonboarding) lopen daar. |
| L3 Mailflow Setup | Generieke mail-orkestratie (welkomstmails, nurture) loopt daar. Finance-mails (factuur, herinnering) lopen hier. |

### Stap 7: Document samenstellen

Gebruik het template uit `references/template-finance-automatisering.md` als skelet. Vul het volledig in met de uitkomsten uit pre-fill plus interview.

Sla op als:
```
{scope}/Leverage/Finance-Automatisering.md
```
of:
```
{scope}/Financiën/Automatisering.md
```
(afhankelijk van de keuze in blok 1)

Maak de bovenliggende map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: automation-blueprint
bedrijf: <Naam>
onderwerp: Finance Automatisering
versie: 1.0
status: <blauwdruk | in implementatie | live>
laatst-bijgewerkt: YYYY-MM-DD
scale-check: L4
boekhoudpakket: <Moneybird | e-Boekhouden | Exact | Snelstart | Twinfield | anders>
betalingsplatform: <Stripe | Mollie | iDEAL via bank | PayPal | handmatig | anders>
btw-regime: <21% standaard | 9% verlaagd | vrijgesteld | KOR | OSS | onbekend>
orkestratie-tool: <Make | n8n | Zapier | custom | geen>
risico-niveau: <conservatief | standaard | aggressief>
geautomatiseerde-workflows: [facturatie, boekingen, debiteuren, btw-voorbereiding, cashflow-forecast, boekhouder-handoff]
---
```

**Schrijfregels:**

- Werk in het **Nederlands**.
- **Geen marketing-superlatieven.** Geen "ultieme finance-stack", "perfecte cashflow-machine", "next-level automatisering". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Make-scenario `CRM-deal-won → Moneybird-factuur → mail-via-Moneybird`, max 5 stappen, retry-policy 3× met 5 min interval" is sterker dan "auto-factuur-flow met fallback".
- **Geen em-dashes.** Gebruik komma's, haakjes of losse zinnen.
- **Definities expliciet.** Bij elke workflow: trigger, stappen, tool-stack, fallback, eigenaar, KPI. Niet "automatische factuur" maar "deal-won-webhook uit HubSpot → Moneybird-API `/sales_invoices` (POST) → mail-template `Factuur verstuurd` via Moneybird-mailer, fallback: retry 3× met 5 min, dan mail naar Iwan met fout-details".
- **Markeer `[VERIFICEREN]`** op plekken waar geen bron of antwoord voor was. Beter een zichtbare gap dan een verzonnen detail.
- **Status-emoji's mogen** — blauwdruk 🟠, in implementatie 🟡, live 🟢, gepauzeerd ⚪, geblokkeerd 🔴.
- **Privacy-let op:** zet **geen API-keys, tokens, klantnamen, bedragen per klant of bankrekeningnummers** in dit document. Werk met **placeholders** (`{API_KEY_MONEYBIRD}` met verwijzing "in 1Password/Bitwarden") of geanonimiseerde categorieën (`klantsegment A`, `top-5-klant`). Het document is een blauwdruk, niet een credentials-store.
- **Bewaar bron-citaten letterlijk** waar de gebruiker een specifieke definitie of voorbeeld-tekst (bv. herinneringsmail) heeft genoemd. In een aparte sectie "Brondocumenten" onderaan.
- **Disclaimer onderaan:** voeg een korte slotparagraaf toe: *"Dit document is een blauwdruk en operationele documentatie van finance-automatisering, geen fiscaal of boekhoudkundig advies. De fiscale eindverantwoordelijkheid blijft bij de ondernemer en de boekhouder of administratiekantoor (bijvoorbeeld Fit In Finance). Automation versnelt, vervangt niet de controle."*

### Stap 8: Logging en aanbevelingen

Logging (allemaal in dezelfde tool-call-ronde, niet later):

1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw: `Leverage/Finance-Automatisering.md`, v1.0, blauwdruk voor 6 finance-workflows opgesteld op basis van C3, V1 en J2"*.
2. **Daily** — als de vault een `Huddle/Daily/YYYY-MM-DD.md` heeft (geldt in Iwan's OS, niet alle vaults hebben dit), log onder *Gedaan vandaag → [Bedrijf]*. Sla over als die conventie niet bestaat.
3. **Vault Changelog** — als de map `Leverage/` of `Financiën/` nieuw is aangemaakt en deze vault een `Systeem/Structuur/Vault Changelog.md` heeft, log dat daar ook.
4. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een L4-doel of efficiency-doel heeft: status bijwerken (🟢), regel toevoegen aan het voortgangslog.
5. **Scale-audit-suggestie** — als er een audit-rapport in `Directie/Research/` staat waar L4 op ❌ of ⚠️ staat, stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:

1. **Begin met één workflow, niet alle zes tegelijk.** De volgorde-aanbeveling volgens conservatieve implementatie: (1) facturatie → directe DSO-winst, (2) debiteurenbeheer → cashflow direct beter, (3) boekhouder-handoff → boekhouder-uren omlaag, (4) BTW-voorbereiding, (5) boekingen, (6) cashflow-forecast. Stel voor er eerst één live te zetten en twee weken te draaien voordat de volgende erbij komt.
2. **Dry-run voor productie.** Voor elke workflow: eerst 1 of 2 weken in dry-run-modus (logs alle acties, doet niets). Pas live zetten als de logs schoon zijn. Bouw deze gate expliciet in de blauwdruk in.
3. **Boekhouder-overleg vóór live.** Stel voor om de blauwdruk te bespreken met de boekhouder of Fit In Finance voordat workflow 4 (BTW) en workflow 6 (handoff) live gaan. Zo dekt de fiscale flank en is er een gedeelde verwachting over de output.
4. **Credentials-management.** Vermeld dat API-keys en tokens horen in 1Password, Bitwarden of een vergelijkbare manager, met read-only-scope waar mogelijk (Stripe heeft restricted keys, Moneybird heeft scoped tokens). Bouw geen credentials in de blauwdruk zelf.
5. **L4 wordt kwartaal-gereviewd.** Stel voor de blauwdruk elk kwartaal langs te lopen: nog steeds correcte tool-stack, nog steeds passende risico-niveau, nog steeds correcte volumes en frequenties. Bij wisseling van boekhoudpakket of betalingsplatform vraagt de blauwdruk een grote update.
6. **A1 en A2 als opvolgers.** Zodra workflows lopen, voeden ze A1 (Rapportage) met realtime KPI's en A2 (Mission Control) met live-status. Stel voor om die in dezelfde maand op te pakken zodat de winst van L4 ook in het dashboard zichtbaar wordt.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle 7 tegelijk neerzetten. Wacht op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in C3, V1, J2 of S12 staat. Pre-fill-validatie in stap 4 voorkomt dat. Als C3, V1, J2 of S12 ontbreekt, vermeld het en stel voor die eerst (of parallel) te doen.
- **C3 + V1 + J2 zijn verplichte cross-checks.** Boekhoudpakket en kerncijfers (C3), deal-won-trigger (V1), BTW-regime en deadlines (J2) moeten matchen met wat in die documenten staat. Zo niet, log de mismatch en stel voor de bron-skill aan te roepen.
- **Per workflow: trigger, stappen, tool-stack, fallback, eigenaar, KPI.** Een workflow zonder één van die zes is geen blauwdruk maar een wens. Wees streng op dit punt.
- **Schrijf nooit zomaar over een bestaande blauwdruk heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Privacy boven volledigheid.** Geen API-keys, tokens, klantnamen, bedragen per klant of bankrekeningnummers. Placeholders en categorieën. Het document is een blauwdruk, geen credentials-store.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe input.** Een Make-overzicht, banking-CSV of bestaande herinneringsteksten bespaart 60-70% van het uitvraag-werk en maakt de blauwdruk precies.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een API-endpoint, een tegenrekening, een timing) als het te abstract blijft.
- **Geen fiscaal of boekhoudkundig advies.** Verwijs door naar een boekhouder of Fit In Finance bij elke vraag die richting BTW-verwerking, balans-posten, jaarrekening of grenswaarden tussen regimes gaat. Automation versnelt, vervangt geen controle.
- **AI-fallback in workflow 2: voorstel, geen besluit.** AI mag categorisatie-suggesties doen, maar de mens beslist. Zo blijft de audit-trail intact en is de boekhouder rustig.
- **Dry-run-modus voor elke workflow.** Een nieuwe automatisering eerst loggen wat hij zou doen, pas live na schone logs. Bouw deze gate expliciet in de blauwdruk in.
- **Geen marketing-trucjes.** Geen "imagine if...", geen rhetorische vragen aan het begin van een sectie. Recht voor zijn raap.
- **Mik op werkbare diepte, niet op het audit-minimum.** Eén geautomatiseerde flow haalt de drempel. Zes samenhangende workflows met elkaar verbonden via C3, V1 en J2 levert echte hefboom.

## Voorbeeld-output

Zie [`references/template-finance-automatisering.md`](references/template-finance-automatisering.md) voor de exacte structuur die de skill oplevert: per workflow een gestructureerde tabel met trigger, stappen, tool-stack, fallback, eigenaar en KPI, plus cross-link-sectie naar C3, V1, J2, S12, S11, A1, A2 en de andere Leverage-stappen.
