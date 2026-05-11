---
type: crm-setup
bedrijf: "<Naam>"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: C2
crm-tool: "<Tool-naam>"
aantal-pipeline-fases: <getal>
aantal-contact-velden: <getal>
aantal-deal-velden: <getal>
---

# CRM Setup — <Naam>

> SCALE-check C2 (Collect). Dit document beschrijft de tool-keuze, het datamodel, de pipeline-fases en de integraties van het CRM-systeem. Het is de fundering voor V1 (Salesproces), V3 (Opvolg-Flow), A1 (Rapportage) en C1 (Marketing-data).

## 1. Tool-keuze

| Onderdeel | Waarde |
|---|---|
| Gekozen tool | `<Tool-naam>` |
| Plan | `<Plan-naam>` |
| Maandkosten | EUR `<bedrag>` |
| Jaarkosten | EUR `<bedrag>` |
| Aantal zetels | `<getal>` |
| Reden van keuze | `<1 zin>` |
| Alternatieven overwogen | `<lijst>` |
| Cross-link Toolstack | `IT/Toolstack.md` regel `<tool>` |

## 2. Contact-velden

Velden die per contact worden vastgelegd. Verplichte velden zijn gemarkeerd.

| Veld | Type | Verplicht | Dropdown-waarden / opmerking |
|---|---|---|---|
| Naam | tekst | ja | Voornaam + achternaam |
| Bedrijf | tekst | `<ja/optioneel>` | Bij B2B verplicht |
| E-mail | mail | ja | Hoofd-mailadres |
| Telefoon | tekst | optioneel | Voor warm contact |
| Segment | dropdown | ja | `<lijst uit ICP.md>` |
| Fase | dropdown | ja | Verwijst naar pipeline (sectie 4) |
| Eigenaar | dropdown | ja | Verwijst naar HR/Team.md |
| Bron | dropdown | optioneel | `<LinkedIn, Nieuwsbrief, etc.>` |
| Branche | dropdown | optioneel | `<lijst>` |
| Datum eerste contact | datum | optioneel | Voor cohort-analyse |
| `<Eigen veld 1>` | `<type>` | `<ja/optioneel>` | `<toelichting>` |

**Totaal:** `<getal>` velden waarvan `<getal>` verplicht.

## 3. Deal-velden

Velden die per deal (opportunity) worden vastgelegd.

| Veld | Type | Verplicht | Toelichting |
|---|---|---|---|
| Titel | tekst | ja | Korte naam, bv. "Boekhouding 2026 — Klant X" |
| Bedrag | EUR | ja | Verwachte deal-waarde, excl. btw, `<eenmalig/jaarbedrag>` |
| Kans % | dropdown | ja | Hangt aan pipeline-fase (sectie 4) |
| Sluitings-datum | datum | ja | Verwachte close-datum |
| Verwachte omzet | berekend | optioneel | = Bedrag × Kans% |
| Producten/diensten | dropdown | optioneel | Cross-link Producten-en-Pricing.md |
| Bron | dropdown | optioneel | Idem contact-bron |
| Reden gewonnen | tekst | bij won | Voor leerlus |
| Reden verloren | tekst | bij lost | Voor leerlus |

**Totaal:** `<getal>` velden waarvan `<getal>` verplicht.

## 4. Pipeline-fases

De fases die een deal doorloopt, met kans-percentage en default-doorlooptijd.

| # | Fase | Kans % | Default doorlooptijd | Wanneer (criteria) |
|---|---|---|---|---|
| 1 | `<Fase 1>` | `<%>` | `<dagen>` | `<criterium>` |
| 2 | `<Fase 2>` | `<%>` | `<dagen>` | `<criterium>` |
| 3 | `<Fase 3>` | `<%>` | `<dagen>` | `<criterium>` |
| 4 | `<Fase 4>` | `<%>` | `<dagen>` | `<criterium>` |
| 5 | Won | 100% | `<dagen>` | Klant getekend, factuur verzonden |
| 6 | Lost | 0% | `<dagen>` | Definitief afgehaakt, reden vastgelegd |

**Totaal:** `<getal>` fases (inclusief Won/Lost).

**Pipeline-type:** `<B2B-zakelijk / B2C-eenvoudig / Consultant / Eigen>`

**Forecast-logica:** verwachte omzet per maand = som van (Bedrag × Kans%) voor alle deals met sluitings-datum in die maand.

## 5. Tagging-systeem

Tag-dimensies over contacten en deals.

| Dimensie | Verplicht? | Waarden | Bron |
|---|---|---|---|
| Segment | ja | `<lijst uit ICP>` | `Directie/Playbook/ICP.md` |
| Bron | optioneel | `<LinkedIn, Nieuwsbrief, etc.>` | Eigen marketing-kanalen |
| Branche | optioneel | `<lijst>` | Eigen vastlegging |
| Klant-status | optioneel | Lead, Klant, Oud-klant, Niet-klant | Lifecycle |
| Prioriteit | optioneel | Hoog, Medium, Laag | Handmatig of automatisch |

## 6. Integraties

Tools die met de CRM koppelen.

| Koppeling | Tool | Status | Doel |
|---|---|---|---|
| E-mail-sync | `<Gmail/Outlook>` | 🟢 actief / 🟡 wens | Mails loggen bij contact |
| Kalender-sync | `<Google Cal/Outlook>` | 🟢 / 🟡 | Meetings koppelen aan deals |
| Factuur-koppeling | `<Moneybird/Stripe>` | 🟢 / 🟡 | Won-deal triggert factuur |
| Marketing-tool | `<Beehiiv/Mailchimp>` | 🟢 / 🟡 | Nieuwsbrief-inschrijvers worden contacten |
| Formulier-tool | `<Tally/Typeform>` | 🟢 / 🟡 | Website-formulier creëert lead |
| LinkedIn | LinkedIn Sales Navigator | 🟢 / 🟡 | Profielen ophalen |
| Slack/Teams | `<Slack/Teams>` | 🟢 / 🟡 | Notificaties bij won-deal |

**Hoogste prioriteit nog te bouwen:** `<koppeling>`

## 7. Eigenaarschap en toegang

| Rol | Persoon | Cross-link |
|---|---|---|
| Hoofd-eigenaar (admin) | `<Naam>` | `HR/Team.md` rol `<rol>` |
| Schrijvende gebruiker | `<Naam(en)>` | `HR/Team.md` |
| Lezende gebruiker | `<Naam(en)>` | `HR/Team.md` |
| Data-kwaliteit-owner | `<Naam>` | `HR/Team.md` |

**Pipeline-review-ritme:** `<dagelijks/wekelijks/maandelijks>`

**Solopreneur-variant:** als alle rollen bij één persoon liggen, geef dat aan met opmerking *"Solopreneur, alle rollen bij `<Naam>`."*

## 8. Cross-links naar SCALE-stappen

| SCALE-check | Document | Relatie |
|---|---|---|
| S4 (ICP) | `Directie/Playbook/ICP.md` | Segmenten in CRM komen exact overeen met ICP-segmenten |
| S12 (Toolstack) | `IT/Toolstack.md` | Gekozen CRM-tool staat geregistreerd in Toolstack |
| S11 (Team) | `HR/Team.md` | Eigenaars in CRM zijn geregistreerde rollen in Team |
| V1 (Salesproces) | `Sales/Salesproces.md` | Pipeline-fases zijn input voor het salesproces |
| V3 (Opvolg-Flow) | `Sales/Opvolg-Flow.md` | Opvolg-automatisering triggert op CRM-statussen |
| A1 (Rapportage) | `Directie/Rapportage.md` | Deal-velden zijn bron voor sales-rapportage |
| C1 (Marketing-data) | `Marketing/Marketing-Data.md` | Marketing-bronnen landen in CRM via tagging |

## 9. Open punten

Acties die nog moeten gebeuren om de CRM-setup volledig werkend te krijgen.

- [ ] `<Bv. Pipedrive-account aanmaken en NL-talige interface activeren>`
- [ ] `<Bv. Contact-velden in tool aanmaken volgens sectie 2>`
- [ ] `<Bv. Pipeline-fases configureren met kans-percentages volgens sectie 4>`
- [ ] `<Bv. Gmail-sync activeren>`
- [ ] `<Bv. Bestaande leads importeren uit Excel-export>`
- [ ] `<Bv. Eerste pipeline-review inplannen, datum X>`

## 10. Versie-historie

| Datum | Versie | Wijziging | Door |
|---|---|---|---|
| YYYY-MM-DD | 1.0 | Eerste versie, gegenereerd via skill `crm-setup` | `<Naam>` |
