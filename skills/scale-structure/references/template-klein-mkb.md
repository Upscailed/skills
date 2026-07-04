---
type: team-rollen
bedrijf: "{Bedrijfsnaam}"
variant: klein-mkb
aantal-personen: {5 tot 15}
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S11
---

# Team en Rollen, {Bedrijfsnaam}

> **Variant:** klein MKB van {N} mensen, georganiseerd in units met een eigenaar-laag.

## Eigenaren en directie

| Persoon | Functie | Aandeel | Eindverantwoordelijk voor |
|---|---|---|---|
| {Naam} | directeur-eigenaar | {%} | strategie, sales, klantrelaties |
| {Naam} | mede-eigenaar | {%} | operationele leiding, finance |

**Mentoren / adviseurs:**
- {Naam} — {functie en bijdrage}
- {Naam} — {functie en bijdrage}

---

## Units

### Sales — {N} personen

- **Unit-eigenaar:** {Naam}
- **Hoofdtaak van de unit:** {bv. inbound + outbound lead-conversie tot ondertekening}
- **Sleutelpersonen:**
  - {Naam} — {rolnaam} — {kerncompetentie}
  - {Naam} — {rolnaam} — {kerncompetentie}
- **AI-leverage-kans:** Middel — lead-research, opvolgmails, CRM-administratie automatiseerbaar.

### Marketing — {N} personen

- **Unit-eigenaar:** {Naam}
- **Hoofdtaak:** {content + campagnes + brand-onderhoud}
- **Sleutelpersonen:**
  - {Naam} — {rolnaam}
- **AI-leverage-kans:** Hoog — content-productie en planning.

### Dienstverlening / Productie — {N} personen

- **Unit-eigenaar:** {Naam}
- **Hoofdtaak:** {de core delivery}
- **Sleutelpersonen:**
  - {Naam} — {senior rol}
  - {Naam} — {specialistische skill}
- **AI-leverage-kans:** {Middel of Laag — afhankelijk van het type werk}

### Operations — {N} personen

- **Unit-eigenaar:** {Naam}
- **Hoofdtaak:** {logistiek + admin + klant-onboarding + proces-bewaking}
- **AI-leverage-kans:** Hoog — administratie en workflow-automatisering.

### Finance — {N} personen

- **Unit-eigenaar:** {Naam}
- **Hoofdtaak:** {boekhouding intern + accountant voor jaarrekening}
- **AI-leverage-kans:** Hoog — facturen, debiteuren, BTW-categorisering.

### HR — {alleen als > 10 personen, anders skippen}

- **Unit-eigenaar:** {Naam}
- **Hoofdtaak:** {werving, contracten, verzuim, ontwikkelgesprekken}

---

## Mandaten-overzicht

| Onderwerp | Wie beslist | Drempel |
|---|---|---|
| Strategische keuzes | directie (samen) | gezamenlijk |
| Klantcontracten | sales-unit-eigenaar | tot €{X} zelfstandig, boven duo |
| Investeringen / tools | directie | tot €{X}/mnd unit-eigenaar zelfstandig, boven directie |
| Personeel — werving | unit-eigenaar + directie | gezamenlijk |
| Personeel — gesprekken | unit-eigenaar | zelfstandig, escalatie naar directie |
| Marketing-content | marketing-unit-eigenaar | binnen brand-guidelines zelfstandig |
| Uitvoeringskeuzes | unit-eigenaar | zelfstandig binnen scope-traject |

---

## Externe partners

| Partner | Rol | Frequentie |
|---|---|---|
| {Naam accountantskantoor} | accountant | per kwartaal + jaarwerk |
| {Naam juristen} | jurist | ad hoc |
| {Naam VA-bureau / freelancer-pool} | flex-capaciteit | per piek |
| {Naam IT-partner} | systeembeheer / cybersecurity | maandelijks |

---

## Tools per unit (cross-link Toolstack)

> Zie `IT/Toolstack.md` (S12) voor de complete stack en alle owners.

| Unit | Kerntools | Tool-owner |
|---|---|---|
| Sales | {CRM + lead-tools} | {Naam} |
| Marketing | {social, e-mail, design} | {Naam} |
| Dienstverlening | {productie-stack} | {Naam} |
| Operations | {planning, admin} | {Naam} |
| Finance | {boekhoud-stack} | {Naam} |

➡️ **Als `IT/Toolstack.md` nog niet bestaat:** formaliseer via de skill `toolstack-inventarisatie` (S12). Bij 5+ mensen wordt het cruciaal: zonder eigenaarschap per tool ontstaat shadow-IT en ontbreken vervangbaarheid en security-overzicht.

---

## Bijhouden

- **Update bij:** nieuwe medewerker, rolwissel binnen een unit, AI-overdracht van significant deel van een unit, externe partner erbij of eraf, nieuwe unit-vorming.
- **Review-moment:** kwartaal-review (laatste vrijdag van maand-3 per kwartaal).
- **Trigger voor versiebump:** unit-eigenaar wisselt, of een unit splitst / merged.

## Volgende SCALE-stap

- **S12 — Toolstack**: per tool een owner. Bij klein-MKB is dit een security-onderwerp.
- **L — Leverage**: per unit één eerste AI-overdracht-flow identificeren en pilot draaien.
- **HR-doorbouwen**: als > 10 mensen of bij verwachte groei, bouw een HR-pagina uit met onboarding-flow, verzuimprotocol en ontwikkelgesprekken-ritme.
