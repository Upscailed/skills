# SCALE Audit Checklist

De volledige lijst van checks die de audit doorloopt. Per item: het pad, de existence-check, de quality-check (om ⚠️ vs ✅ te bepalen), en welke skill helpt om het gat te dichten.

Bij elke check wordt eerst gekeken of de check op n.v.t. staat in `[scope]/audit-config.md`. Zo ja: skip de check en markeer ⏭️.

## Path-conventies

- `{scope}` = de gekozen audit-scope. Voorbeelden:
  - `Bedrijven/Mijn Bedrijf BV/`
  - `Mijn Bedrijf BV/` (top-level bij solopreneurs met één bedrijf)
  - `Persoonlijk/`
- `{scope-naam}` = de naam van de scope, gebruikt in cross-references (bv. `Persoonlijk/ICP.md` heeft per bedrijf een sectie waar `scope-naam` matcht)

## Hoe quality-checks lezen

Elke check heeft drie niveaus:

- **❌ Ontbreekt**: bestand bestaat niet, of bestaat maar is volledig leeg (0 bytes)
- **⚠️ Begin gemaakt**: bestand bestaat, maar inhoud voldoet niet aan de quality-criteria (bijv. alleen placeholders, te kort)
- **✅ Geslaagd**: bestand bestaat én voldoet aan alle quality-criteria

Bij twijfel: pas ⚠️ toe en motiveer in één zin waarom.

---

## Laag S — Structure (12 items)

### S1. Bedrijfsoverzicht ingevuld
- **Pad**: `{scope}/Directie/00 - Overzicht.md`
- **Existence**: bestand bestaat
- **Quality**: secties **Missie**, **Doelgroep**, **Aanbod**, en **Status** zijn elk minimaal 1 volle zin (geen `<!-- ... -->`-comments of lege regel onder de heading)
- **Skill om gat te dichten**: handwerk; zie ook `os-builder` voor het skelet

### S2. Brand Guidelines
- **Pad**: `{scope}/Directie/Playbook/Brand Guidelines.md`
- **Existence**: bestand bestaat
- **Quality**: minimaal 100 woorden body-tekst, EN bevat minstens één kleur-hex (`#XXXXXX`) of een expliciete typografie-regel (lettertype + gewicht/stijl)
- **Skill om gat te dichten**: `brand-guidelines`

### S3. Tone of Voice
- **Pad**: `{scope}/Directie/Playbook/Tone of Voice.md`
- **Existence**: bestand bestaat
- **Quality**: minimaal 200 woorden body-tekst, bevat minstens één Do en één Don't met voorbeeldzin
- **Skill om gat te dichten**: `tone-of-voice`

### S4. ICP (Ideal Customer Profile)
- **Pad**: `Persoonlijk/ICP.md` (cross-bedrijf bestand) heeft een sectie met de scope-naam, OF `{scope}/Directie/Playbook/ICP.md`
- **Existence**: sectie of bestand bestaat
- **Quality**: minimaal 80 woorden in de scope-sectie, bevat zowel een **pijn**-beschrijving als een **oplossing**-beschrijving
- **Skill om gat te dichten**: handwerk via `tone-of-voice` (de skill stelt ICP-vragen)

### S5. Jaardoelen meetbaar
- **Pad**: `{scope}/Directie/01 - Goals.md`
- **Existence**: bestand bestaat
- **Quality**: bevat minstens 1 doel met een meetbaar target (een tabel met cijfers, of expliciete cijfers in de doelbeschrijving). Geen lege tabelcellen, geen `{x}`-placeholders
- **Skill om gat te dichten**: handwerk

### S6. SWOT-analyse
- **Pad**: `{scope}/Directie/Research/SWOT.md` (of vergelijkbaar in Research)
- **Existence**: bestand bestaat dat "swot" of "sterktes" of "kansen" in de header bevat
- **Quality**: alle 4 kwadranten (Strengths, Weaknesses, Opportunities, Threats) hebben minstens 2 bullet-items
- **Skill om gat te dichten**: handwerk

### S7. Bedrijfsverhaal / Origin Story
- **Pad**: `{scope}/Directie/Playbook/Verhaal.md` of een sectie "Verhaal" of "Achtergrond" in `00 - Overzicht.md`
- **Existence**: tekst bestaat
- **Quality**: minimaal 150 woorden, vertelt waarom het bedrijf bestaat en hoe het is ontstaan
- **Skill om gat te dichten**: handwerk

### S8. Producten en Pricing
- **Pad**: `{scope}/Directie/Playbook/Producten.md` of een sectie "Aanbod" of "Producten" in `00 - Overzicht.md`
- **Existence**: tekst bestaat
- **Quality**: bevat minstens 1 product/dienst met expliciete prijs of pricing-model
- **Skill om gat te dichten**: handwerk

### S9. Klantreis
- **Pad**: `{scope}/Directie/Playbook/Klantreis.md` of vergelijkbaar
- **Existence**: bestand bestaat
- **Quality**: bevat minstens 3 fases (bijv. awareness, beslissing, levering, retentie) met concrete touchpoints per fase
- **Skill om gat te dichten**: handwerk

### S10. SOPs / werkprocessen
- **Pad**: `{scope}/Operations/Processen/`
- **Existence**: map bestaat en bevat minstens 1 .md-bestand
- **Quality**: minimaal 1 proces is uitgewerkt met genummerde stappen (1., 2., ...) en is langer dan 80 woorden
- **Skill om gat te dichten**: `proces-interviewer` (uit dezelfde bibliotheek)

### S11. Team en rollen
- **Pad**: `{scope}/HR/Team.md` of vergelijkbaar
- **Existence**: bestand bestaat
- **Quality**: minimaal 1 rol beschreven met verantwoordelijkheden. Bij solopreneur: dat de gebruiker zichzelf positioneert in alle vier kernrollen (sales, marketing, ops, finance) telt ook
- **Skill om gat te dichten**: handwerk

### S12. Toolstack-overzicht
- **Pad**: `{scope}/IT/Toolstack.md` of vergelijkbaar
- **Existence**: bestand bestaat
- **Quality**: lijst van minimaal 5 tools met per tool kort het doel en de afdeling waar het voor wordt gebruikt
- **Skill om gat te dichten**: handwerk

---

## Laag C — Collect (7 items)

### C1. Marketing-data
- **Pad**: `{scope}/Marketing/Data.md` of vermelding in `Toolstack.md` van een analytics-tool (Google Analytics, Plausible, Fathom, etc.)
- **Quality**: identificeert minstens 2 metrics die worden bijgehouden (bv. bezoekers, conversies)

### C2. Sales-data (CRM of pipeline)
- **Pad**: `{scope}/Sales/CRM.md` of vermelding van een CRM-tool in Toolstack
- **Quality**: identificeert hoe leads worden bijgehouden, met minstens 2 statusvelden (bv. nieuw, gekwalificeerd, gewonnen)

### C3. Financiële data
- **Pad**: `{scope}/Financiën/Rapportage/` (map met minstens 1 rapport) of een actief boekhoudsysteem in Toolstack
- **Quality**: minimaal 1 rapportage-bestand of expliciete vermelding dat boekhouding actueel is

### C4. Klanttevredenheid
- **Pad**: `{scope}/Klantenservice/Feedback.md` of een review-bron vermeld
- **Quality**: minimaal 3 reviews/feedbacks gedocumenteerd, of een actieve review-collectie-flow beschreven

### C5. Website-data
- **Pad**: `{scope}/Marketing/Website-Analytics.md` of analytics-vermelding in Toolstack
- **Quality**: minimaal benoemd welke tool de website-data trackt en welke metrics worden gevolgd

### C6. Concurrentie-monitoring
- **Pad**: `{scope}/Directie/Research/Concurrentie.md`
- **Quality**: bevat minstens 3 concurrenten met per concurrent een korte typering

### C7. Operationele data
- **Pad**: `{scope}/Operations/KPIs.md` of vergelijkbaar
- **Quality**: minimaal 3 operationele KPIs met streefwaardes

---

## Laag A — Analyze (5 items)

### A1. Rapportages per afdeling
- **Pad**: `{scope}/[Afdeling]/Rapportage/` (per afdeling die je hebt)
- **Quality**: minstens 1 afdeling heeft een terugkerend rapport (bv. maandrapport)

### A2. CEO-dashboard / Mission Control
- **Pad**: `{scope}/IT/AI-Tools/` met een dashboard-tool, of een Mission Control HTML in `Persoonlijk/`
- **Quality**: dashboard bestaat en toont KPIs op één plek

### A3. Daily Business Briefing
- **Pad**: scheduled task of skill die dagelijks een briefing uitvoert
- **Quality**: er bestaat een mechanisme dat dagelijks of werkdagelijks de belangrijkste cijfers samenvat

### A4. Beslissingsondersteuning
- **Pad**: `{scope}/Directie/Research/` met analyses
- **Quality**: minstens 1 analyse-bestand dat een concrete aanbeveling doet (geen pure data-dump)

### A5. Benchmarking
- **Pad**: `{scope}/Directie/Research/Benchmark.md`
- **Quality**: vergelijking met minstens 2 concurrenten of een branchenorm op minstens 3 metrics

---

## Laag L — Leverage (4 items)

### L1. Geautomatiseerde SOPs
- **Pad**: `{scope}/Operations/Processen/*.md` (markeren welke geautomatiseerd zijn)
- **Quality**: minstens 1 proces is gemarkeerd als (deels) geautomatiseerd, met de tool/skill die het uitvoert

### L2. Auto-rapportages
- **Pad**: scheduled tasks of skills die rapportages genereren
- **Quality**: minstens 1 rapportage draait automatisch (niet handmatig)

### L3. Klantcommunicatie automatisering
- **Pad**: `{scope}/Marketing/Workflows/` of een mailprovider in Toolstack met workflows
- **Quality**: minstens 1 geautomatiseerde flow draait (welkomstmail, follow-up, etc.)

### L4. Financiële automatisering
- **Pad**: `{scope}/Financiën/Automatisering.md` of vermelding in Toolstack
- **Quality**: minstens 1 financieel proces is geautomatiseerd (auto-incasso, factuur-mail, herinnering)

---

## Laag E — Engineer (6 items)

### E1. Dashboards / Mission Control
- **Pad**: `{scope}/IT/AI-Tools/` met dashboard
- **Quality**: tool bestaat en is operationeel (heeft Dev-log met recente activiteit, of staat live)

### E2. Eigen apps
- **Pad**: `{scope}/IT/AI-Tools/`
- **Quality**: minstens 1 app gebouwd (geen lege tool-card)

### E3. Workflows en pipelines
- **Pad**: scheduled tasks of automation-tools
- **Quality**: minstens 1 multi-stap workflow draait

### E4. Klantportaal
- **Pad**: tool-card of expliciete vermelding van klantportaal
- **Quality**: bestaat en is bereikbaar voor klanten

### E5. Interne kennisbank
- **Pad**: de vault zelf telt mee, plus eventueel een aparte tool
- **Quality**: vault is doorzoekbaar (telt automatisch als ✅ als de skill in een vault draait)

### E6. AI-assistent op maat
- **Pad**: `{scope}/IT/Skills/`
- **Quality**: minstens 2 bedrijfsspecifieke skills

---

## Cross-cutting domein 1: Juridisch (5 items)

### J1. KvK-inschrijving
- **Quality**: vermeld in `00 - Overzicht.md` of in een `Juridisch/`-bestand met KvK-nummer
- **Vaak n.v.t. voor**: `Persoonlijk/`

### J2. BTW-nummer
- **Quality**: BTW-nummer vermeld in juridische documenten
- **Vaak n.v.t. voor**: `Persoonlijk/`, of bedrijven die BTW-vrijgesteld zijn

### J3. Algemene Voorwaarden
- **Pad**: `{scope}/Juridisch/Algemene Voorwaarden.md` of `.pdf`
- **Quality**: bestand bestaat en is langer dan 500 woorden

### J4. Privacyverklaring
- **Pad**: `{scope}/Juridisch/Privacyverklaring.md`
- **Quality**: bestand bestaat en is langer dan 300 woorden, dekt minimaal: welke data, doel, retentie, rechten van de betrokkene

### J5. Klantcontract-template
- **Pad**: `{scope}/Juridisch/Contract-Template.md` of `.docx`
- **Quality**: bestand bestaat
- **Vaak n.v.t. voor**: bedrijven zonder klant-contracten (B2C-webshops bv.)

### J6. Verzekeringen
- **Pad**: vermelding in `{scope}/Juridisch/Verzekeringen.md`
- **Quality**: minstens beroepsaansprakelijkheid en cyber/AVG-verzekering vermeld of expliciet niet relevant verklaard

---

## Cross-cutting domein 2: Marketing-aanwezigheid (4 items)

### M1. Website live
- **Quality**: in `00 - Overzicht.md` of `Toolstack.md` staat een actieve URL die bereikbaar is

### M2. Social accounts
- **Quality**: minstens 2 social accounts vermeld (LinkedIn, Instagram, X, etc.) met URL

### M3. Content roadmap
- **Pad**: `{scope}/Marketing/Content Roadmap.md` of vergelijkbaar
- **Quality**: bestand bevat een planning voor minstens de komende 4 weken

### M4. Mailinglijst / nieuwsbrief
- **Pad**: vermelding van mailprovider (Mailchimp, Beehiiv, ConvertKit) in Toolstack, of een `Marketing/Nieuwsbrief/`-map met content
- **Quality**: provider geconfigureerd of minstens 1 verzonden nieuwsbrief

---

## Cross-cutting domein 3: Sales-systeem (3 items)

### V1. Salesproces vastgelegd
- **Pad**: `{scope}/Sales/Salesproces.md` of in `Operations/Processen/`
- **Quality**: minimaal 4 stappen van lead tot deal, met per stap wie verantwoordelijk is

### V2. Pricing helder
- Reuse van **S8 (Producten en Pricing)**: als die check ✅ is, telt deze ook ✅

### V3. Opvolg-flow
- **Pad**: `{scope}/Sales/Opvolg-Flow.md` of vermelding in een workflow-tool
- **Quality**: hoe leads worden opgevolgd na initieel contact, met minimaal 2 follow-up-momenten

---

## Score-berekening

```
totaal_punten = som van alle scores (✅=1, ⚠️=0.5, ❌=0)
totaal_max = aantal checks dat NIET op n.v.t. staat
percentage = round(totaal_punten / totaal_max * 100)
```

Per laag dezelfde formule, alleen op de checks van die laag.

## Prioriteren van top 3

Voor de "Top 3 prioriteiten":

1. **Fundament eerst**: Structure-items wegen zwaarder dan Engineer-items, omdat zonder Structure de andere lagen sowieso geen waarde hebben
2. **Quick wins**: items die ⚠️ zijn (begin gemaakt) gaan voor items die ❌ zijn (volledig ontbrekend), tenzij het ⚠️-item triviaal lijkt
3. **Enabler-effect**: items die andere checks ontgrendelen (bv. Toolstack maakt L1-L4 makkelijker beoordeelbaar) krijgen prioriteit
4. **Maximaal 3 items**: meer is geen prioriteitenlijst meer

Per prioriteit: één zin "wat te doen" + 1 aanbevolen skill of stappenplan.
