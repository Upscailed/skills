# Vault Structuur Referentie

De complete mappen-tree die deze skill aanmaakt. Lees dit bij elke run, want de structuur is exact: elke map heeft een doel, en de AI verwacht straks dat dingen op de juiste plek staan.

## Twee scenario's

### Scenario A: solopreneur met één bedrijf

De bedrijfsnaam-map staat direct onder de vault-root. Geen `Bedrijven/`-wrapper.

```
{{vault-root}}/
├── CLAUDE.md
├── {{Bedrijfsnaam}}/
│   ├── Directie/
│   ├── Financiën/
│   ├── Sales/
│   ├── Marketing/
│   ├── Operations/
│   ├── Klantenservice/
│   ├── HR/
│   ├── IT/
│   ├── Inkoop/
│   ├── Juridisch/
│   └── Projects/
├── Persoonlijk/
├── Huddle/
└── Systeem/
```

### Scenario B: ondernemer met meerdere bedrijven

Alle bedrijven onder een `Bedrijven/`-wrapper.

```
{{vault-root}}/
├── CLAUDE.md
├── Bedrijven/
│   ├── {{Bedrijf 1}}/
│   │   ├── Directie/
│   │   ├── ... (10 afdelingen + Projects)
│   ├── {{Bedrijf 2}}/
│   │   ├── ... (zelfde structuur)
│   └── {{Bedrijf N}}/
├── Persoonlijk/
├── Huddle/
└── Systeem/
```

## De 10 afdelingen per bedrijf

Elk bedrijf heeft dezelfde 10 vaste afdelingen. Niet elke afdeling is direct relevant, maar de mappen bestaan zodat informatie altijd op de juiste plek terechtkomt.

| Afdeling | Wat hoort hier | Submappen |
|---|---|---|
| **Directie** | Strategie, koersbepaling, besluitvorming, visie, bedrijfsvoering | `Playbook/`, `Research/` |
| **Financiën** | Boekhouding, facturatie, belastingen, cashflow, budgettering | `Rapportage/` |
| **Sales** | Acquisitie, offertes, onderhandeling, CRM, klantrelaties, upselling | per leadbron |
| **Marketing** | Branding, social media, website, content, campagnes, nieuwsbrieven, PR | `LinkedIn/`, `Nieuwsbrief/` |
| **Operations** | Dienstverlening, productie, kwaliteitscontrole, procesoptimalisatie, planning | `Processen/` |
| **Klantenservice** | Vragen, klachten, retourafhandeling, tevredenheid, nazorg | (vrij) |
| **HR** | Werving, contracten, salarisadministratie, verzuim, opleiding, teamontwikkeling | (vrij) |
| **IT** | Systemen, software, cybersecurity, digitalisering, automatisering, hardware | `AI-Tools/`, `Skills/` |
| **Inkoop** | Leveranciers, voorraad, logistiek, prijsonderhandeling, bezorging | (vrij) |
| **Juridisch** | Contracten, AVG/privacy, verzekeringen, regelgeving, geschillen | (vrij) |
| **Projects** | Lopende projecten | per project |

## Verplichte bestanden in `Directie/`

- `00 - Overzicht.md` — wie is dit bedrijf, wat doet het, voor wie, status
- `01 - Goals.md` — jaardoelen + voortgang
- `02 - Tasks.md` — actielijst
- `Changelog.md` — alle wijzigingen binnen dit bedrijf, nieuwste bovenaan

## Persoonlijk/

De map voor de mens én het cross-bedrijf-niveau (visie, strategie, ICP).

```
Persoonlijk/
├── 00 - Over {{Naam}}.md       (profiel, visie, waarden)
├── 01 - Goals.md               (persoonlijke doelen)
├── 02 - Tasks.md               (persoonlijke acties)
├── Inbox.md                    (ongesorteerde acties)
├── Changelog.md                (persoonlijke + cross-bedrijf wijzigingen)
├── Strategie.md                (visie cross-bedrijf, alleen bij N bedrijven)
├── ICP.md                      (Ideal Customer Profile per bedrijf)
├── Afspraken AI.md             (werkafspraken voor de AI)
├── AI-Tools Overzicht.md       (centraal overzicht)
├── Skills Overzicht.md         (centraal overzicht)
├── Goals/                      (dashboards en voortgangs-views)
├── Skills/                     (persoonlijke en gedeelde skills)
├── AI-Tools/                   (persoonlijke tools)
├── Projects/                   (persoonlijke projecten)
├── Research/                   (persoonlijk onderzoek)
└── Resources/                  (referenties, frameworks, templates)
```

## Huddle/

Centrale map voor periodieke check-ins.

```
Huddle/
├── Daily/      (YYYY-MM-DD.md per dag)
├── Weekly/     (wekelijkse reviews)
└── Monthly/    (maandelijkse en kwartaalreviews)
```

## Systeem/

De motor van de vault.

```
Systeem/
├── Templates/                  (alle sjablonen)
│   ├── Daily Log.md
│   ├── Weekly Review.md
│   ├── Project.md
│   └── Goal.md
└── Structuur/
    ├── Vault Structuur.md      (deze structuur, gedocumenteerd)
    └── Vault Changelog.md      (vault-brede wijzigingen)
```

## Waarom deze structuur

- **Standaard-afdelingen** matchen hoe ondernemers en accountants praten over een bedrijf. Geen verzonnen categorieën.
- **Scheiding mens/bedrijf** voorkomt dat persoonlijke notities in bedrijfsmappen belanden of vice versa. Belangrijk voor privacy en duidelijkheid.
- **Changelogs per bedrijf** maken weekly/monthly reviews mogelijk: "wat is er deze week veranderd in [bedrijf]?".
- **Templates centraliseren** voorkomt dat je per nieuwe daily of project opnieuw moet beslissen wat erin moet.
- **Lege mappen aanmaken** is bewust: zo komt nieuwe informatie automatisch op de juiste plek terecht, zonder dat je elke keer moet bedenken waar iets hoort.
