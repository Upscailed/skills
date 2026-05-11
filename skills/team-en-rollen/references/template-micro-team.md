---
type: team-rollen
bedrijf: "{Bedrijfsnaam}"
variant: micro-team
aantal-personen: {2 tot 5}
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S11
---

# Team en Rollen, {Bedrijfsnaam}

> **Variant:** micro-team van {N} mensen. Sommige rollen zijn verdeeld, andere zijn dubbel-belast. Mentoren en externe steun zijn apart vermeld.

## Mensen

### {Persoon 1 — Naam}

- **Rol-overzicht:** {bv. Directie, Dienstverlening, Engineer}
- **Eindverantwoordelijk voor:** {bv. strategie, AI-implementatie}
- **Achtergrond:** {bv. 10 jaar boekhoudkundig + AI-implementatiewerk sinds 2025}
- **Tijdsbesteding:** {30-40} uur per week
- **Beslissingsbevoegdheid:**
  - {bv. eindstem in strategische keuzes}
  - {bv. contracten boven €X met tweede handtekening van Persoon 2}
- **Externe rollen:** {bv. zit ook in directie van FIF, Freedom/21, 4GIVN — coördineert cross-bedrijf}

### {Persoon 2 — Naam}

- **Rol-overzicht:** {bv. Sales-backup, Dienstverlening, Marketing-content}
- **Eindverantwoordelijk voor:** {bv. AI-implementatie technisch, content-productie}
- **Achtergrond:** {bv. data-engineering achtergrond, 5 jaar startup-ervaring}
- **Tijdsbesteding:** {bv. 20+} uur per week
- **Beslissingsbevoegdheid:**
  - {bv. uitvoeringskeuzes binnen implementatie-trajecten zelfstandig}
  - {bv. budget tot €X zelfstandig}
- **Externe rollen:** {indien van toepassing — bijv. andere klus, eigen bedrijf}

### {Persoon 3, 4, 5 — alleen toevoegen als die er zijn}

…

---

## Externe steun

| Persoon | Functie | Frequentie | Waarvoor |
|---|---|---|---|
| {Naam} | mentor | {maandelijks / kwartaal} | {strategische sparring / bedrijfskundig advies} |
| {Naam} | accountant | per kwartaal | BTW + jaarrekening |
| {Naam} | jurist | ad hoc | contractcheck, AVG |
| {Naam} | designer-freelancer | per campagne | brand visuals |

---

## Rollen-matrix

Wie is eigenaar van welke kernrol, wie is backup, en wanneer gaat werk over van de een naar de ander?

| Rol | Eigenaar | Backup | Handoff-moment | AI-leverage |
|---|---|---|---|---|
| Directie | {Persoon 1} | — | nvt | Laag |
| Sales | {Persoon 1} | {Persoon 2} | bij prospects > €{X} of bij overflow | Middel |
| Marketing | {Persoon 1} | {Persoon 2} | content-productie deels naar AI-skill | Hoog |
| Dienstverlening | {Persoon 1 + Persoon 2} | — | binnen-trajecten: trekker is wie het binnenhaalt; overflow naar de ander | Middel |
| Operations | {Persoon 1} | {VA-freelancer} | bij overflow naar VA | Hoog |
| Finance | {extern, via FIF / accountant} | {Persoon 1} | volledige boekhouding extern | Hoog |

> Lees deze matrix als een werkkaart. Bij elke verschuiving (een rol bij iemand anders, een nieuwe AI-overdracht, een vaste freelancer) update je de matrix.

---

## Beslissingsbevoegdheid (mandaten)

| Onderwerp | Wie beslist | Met wie afstemmen | Drempel |
|---|---|---|---|
| Strategie en jaarplan | {Persoon 1} | {Persoon 2}, mentor | jaarlijks |
| Klantcontracten | {Persoon 1} | — | tot €{X} zelfstandig, boven €{X} duo |
| Investeringen / tools | {Persoon 1} | {Persoon 2} bij > €{X} | tot €{X}/mnd zelfstandig |
| Uitvoeringstrajecten | {de trekker van het traject} | de ander op vaste check-in moment | wekelijks |
| Marketing-content | {de schrijver} | toetsen aan Brand Guidelines + Tone of Voice | per post zelfstandig |
| Personeels-uitbreiding | {Persoon 1 + Persoon 2} | mentor | gezamenlijke beslissing |

---

## Tools per rol (cross-link Toolstack)

> Zie `IT/Toolstack.md` (S12) voor de complete stack. Hieronder per rol de kerntools en wie de tool-owner is.

| Rol | Kerntools | Owner |
|---|---|---|
| Directie | {bv. Notion, Linear} | {Persoon 1} |
| Sales | {bv. Pipedrive, LinkedIn Sales Navigator} | {Persoon 1} |
| Marketing | {bv. Buffer, Beehiiv} | {Persoon 1} |
| Dienstverlening | {bv. Claude Code, Vercel, Anthropic API} | {Persoon 2} |
| Operations | {bv. Notion, Calendly, Make} | {Persoon 1} |
| Finance | {bv. Moneybird} | {extern} |

➡️ **Als `IT/Toolstack.md` nog niet bestaat:** vul deze tabel inline aan en formaliseer straks via de skill `toolstack-inventarisatie` (S12).

---

## Bijhouden

- **Update na elke structurele verschuiving:** rol-wissel, nieuwe persoon, AI-overdracht van significante flow, nieuwe externe partij.
- **Review-moment:** kwartaal-review.
- **Trigger voor versiebump:** zodra een eigenaar van een kernrol wijzigt of een persoon erbij komt of weggaat.

## Volgende SCALE-stap

- **S12 — Toolstack**: maak `IT/Toolstack.md` met owner-koppeling per tool.
- **L — Leverage**: pak per persoon de rol met de hoogste AI-leverage-kans en kijk welke eerste flow overdraagbaar is.
