# Rapport Template

Het format voor het audit-rapport dat de skill aan het eind genereert. Sla op als `{scope}/Directie/Research/YYYY-MM-DD - SCALE Audit.md` (of bij `Persoonlijk/` in `Persoonlijk/Research/YYYY-MM-DD - SCALE Audit.md`).

## Statusbalk-mapping

20 blokken voor de hoofdscore. Bereken aantal volle blokken: `floor(percentage / 5)`. Vul aan met lege blokken tot 20 totaal.

```
0%   = ░░░░░░░░░░░░░░░░░░░░
5%   = █░░░░░░░░░░░░░░░░░░░
10%  = ██░░░░░░░░░░░░░░░░░░
25%  = █████░░░░░░░░░░░░░░░
50%  = ██████████░░░░░░░░░░
75%  = ███████████████░░░░░
100% = ████████████████████
```

Voor compacte balken in de per-laag-tabel: 10 blokken (`floor(percentage / 10)`).

## Status-iconen

| Score | Icoon | Wanneer |
|---|---|---|
| 80-100% | ✅ | Op orde |
| 50-79% | 🟢 | Goed bezig |
| 25-49% | ⚠️ | Aandacht nodig |
| 0-24% | ❌ | Achter |

Per check-item:
| Status | Icoon | Betekenis |
|---|---|---|
| Geslaagd | ✅ | Bestaat én voldoet aan kwaliteit |
| Begin gemaakt | ⚠️ | Bestaat, kwaliteit is nog onder de maat |
| Ontbreekt | ❌ | Bestaat niet of is leeg |
| N.v.t. | ⏭️ | Op n.v.t. gezet via audit-config |

---

## Template

```markdown
---
type: audit-rapport
scope: {{scope-naam}}
datum: {{YYYY-MM-DD}}
versie: 1.0.0
totaal-percentage: {{X}}
---

# SCALE Audit Rapport — {{Scope-naam}}

**Datum:** {{YYYY-MM-DD}}
**Scope:** `{{scope-pad}}`
**Versie audit-skill:** 1.0.0

{{vergelijking-met-vorige-audit}}

---

## Compleetheid totaal

```
{{statusbalk-20}} {{X}}%
```

**Score:** {{X}}% ({{behaalde-punten}} van {{totaal-punten}} punten, {{nvt-aantal}} op n.v.t.)
**Status:** {{status-icoon}} {{status-tekst}}

---

## Per laag

| Laag | Score | Status | Behaald |
|---|---|---|---|
| **S** Structure | `{{balk-10}}` {{X}}% | {{icoon}} | {{behaald}}/{{max}} |
| **C** Collect | `{{balk-10}}` {{X}}% | {{icoon}} | {{behaald}}/{{max}} |
| **A** Analyze | `{{balk-10}}` {{X}}% | {{icoon}} | {{behaald}}/{{max}} |
| **L** Leverage | `{{balk-10}}` {{X}}% | {{icoon}} | {{behaald}}/{{max}} |
| **E** Engineer | `{{balk-10}}` {{X}}% | {{icoon}} | {{behaald}}/{{max}} |

## Cross-cutting domeinen

| Domein | Score | Status | Behaald |
|---|---|---|---|
| Juridisch | `{{balk-10}}` {{X}}% | {{icoon}} | {{behaald}}/{{max}} |
| Marketing-aanwezigheid | `{{balk-10}}` {{X}}% | {{icoon}} | {{behaald}}/{{max}} |
| Sales-systeem | `{{balk-10}}` {{X}}% | {{icoon}} | {{behaald}}/{{max}} |

---

## Top 3 prioriteiten komende maand

### 1. {{Prioriteit 1}}
**Wat:** {{korte beschrijving van wat er moet gebeuren}}
**Waarom nu:** {{een zin waarom dit als eerste}}
**Aanbevolen skill of actie:** {{skill-naam of stappenplan}}

### 2. {{Prioriteit 2}}
**Wat:** {{...}}
**Waarom nu:** {{...}}
**Aanbevolen skill of actie:** {{...}}

### 3. {{Prioriteit 3}}
**Wat:** {{...}}
**Waarom nu:** {{...}}
**Aanbevolen skill of actie:** {{...}}

---

## Detail per laag

### Laag S — Structure

| # | Check | Status | Toelichting |
|---|---|---|---|
| S1 | Bedrijfsoverzicht | ✅ | Missie, doelgroep, aanbod en status zijn ingevuld |
| S2 | Brand Guidelines | ⚠️ | Bestand bestaat (47 woorden), te kort en geen kleur-hex gevonden |
| S3 | Tone of Voice | ❌ | Bestand bestaat niet |
| S4 | ICP | ⚠️ | Sectie in `Persoonlijk/ICP.md` bestaat maar pijn-veld is leeg |
| S5 | Jaardoelen meetbaar | ✅ | Tabel met 3 doelen en cijfer-targets |
| ... | | | |

### Laag C — Collect

(zelfde tabel-format)

### Laag A — Analyze

(zelfde tabel-format)

### Laag L — Leverage

(zelfde tabel-format)

### Laag E — Engineer

(zelfde tabel-format)

### Cross-cutting: Juridisch

(zelfde tabel-format)

### Cross-cutting: Marketing-aanwezigheid

(zelfde tabel-format)

### Cross-cutting: Sales-systeem

(zelfde tabel-format)

---

## Op n.v.t. gezet

De volgende checks zijn niet meegenomen in de score op basis van `{{scope}}/audit-config.md`:

- ⏭️ J1 (KvK-inschrijving) — Persoonlijke map, geen bedrijfsinschrijving relevant
- ⏭️ J2 (BTW-nummer) — Geen BTW-plichtige activiteit
- ⏭️ ...

---

## Vervolgskills die nu de meeste impact hebben

Op basis van waar de gaten zitten:

- **`tone-of-voice`** — om de Tone of Voice op te bouwen (Laag S, gat S3)
- **`brand-guidelines`** — om Brand Guidelines te verdiepen (Laag S, gat S2)
- **`upscailed-security-audit`** — om technische security te checken (los van deze business-audit)

Alle skills staan op [github.com/Upscailed/skills](https://github.com/Upscailed/skills).

---

## Vergelijking met vorige audit

(alleen aanwezig als er een vorige audit bestaat)

| Maatstaf | Vorige ({{vorige-datum}}) | Nu ({{huidige-datum}}) | Delta |
|---|---|---|---|
| Totaal | {{X}}% | {{Y}}% | {{+/-}} |
| S Structure | {{X}}% | {{Y}}% | {{+/-}} |
| C Collect | {{X}}% | {{Y}}% | {{+/-}} |
| A Analyze | {{X}}% | {{Y}}% | {{+/-}} |
| L Leverage | {{X}}% | {{Y}}% | {{+/-}} |
| E Engineer | {{X}}% | {{Y}}% | {{+/-}} |

**Belangrijkste voortgang:** {{een zin over de grootste verbetering}}
**Ondanks aandacht:** {{een zin over wat is achtergebleven}}

---

## Audit-config

Wil je items toevoegen/verwijderen van de "niet van toepassing"-lijst? Bewerk `{{scope}}/audit-config.md`. De volgende audit pikt de wijzigingen op.

---

*Gegenereerd door de `scale-audit` skill van Upscailed.*
```

## Voorbeeld van een ingevuld rapport

Hier is hoe het rapport eruit ziet voor een opstart-bedrijf:

```markdown
# SCALE Audit Rapport — Voorbeeld Boekhoudkantoor

**Datum:** 2026-05-05
**Scope:** `Bedrijven/Voorbeeld Boekhoudkantoor/`

## Compleetheid totaal

```
████████████░░░░░░░░ 60%
```

**Score:** 60% (24 van 40 punten, 4 op n.v.t.)
**Status:** 🟢 Goed bezig

## Per laag

| Laag | Score | Status | Behaald |
|---|---|---|---|
| **S** Structure | `████████░░` 80% | ✅ | 9.5/12 |
| **C** Collect | `███░░░░░░░` 30% | ⚠️ | 2/7 |
| **A** Analyze | `██░░░░░░░░` 20% | ❌ | 1/5 |
| **L** Leverage | `█░░░░░░░░░` 10% | ❌ | 0.5/4 |
| **E** Engineer | `███░░░░░░░` 30% | ⚠️ | 2/6 |

## Top 3 prioriteiten komende maand

### 1. Tone of Voice document opstellen
**Wat:** Schrijf een Tone of Voice document voor het bedrijf. Bij dienstverlening met tientallen klanten is communicatie-consistentie cruciaal.
**Waarom nu:** Brand Guidelines staat al, maar zonder Tone of Voice praat elke email anders. Dit is een fundament-gat in Laag S.
**Aanbevolen skill:** `tone-of-voice`

### 2. Daily Business Briefing inrichten
**Wat:** Bouw een geautomatiseerde dagstart die de belangrijkste cijfers (nieuwe klanten, openstaande facturen, taken) samenvat.
**Waarom nu:** Laag A scoort 20%. Een Daily Briefing is de eerste analyse-laag en geeft direct dagelijkse waarde.
**Aanbevolen skill of actie:** Combinatie van scheduled task + lichtgewicht skill bouwen via `mcp-bouwer`

### 3. Salesproces vastleggen
**Wat:** Documenteer het traject van eerste contact tot getekende offerte voor nieuwe klanten.
**Waarom nu:** Cross-cutting Sales-systeem scoort 33%. Dit ontgrendelt straks ook L3 (klantcommunicatie automatisering).
**Aanbevolen skill of actie:** Handwerk in `Sales/Salesproces.md`
```

Gebruik dit voorbeeld als referentie voor toon en detailniveau in nieuwe rapporten.
