---
type: leverage-roadmap
bedrijf: "{Bedrijfsnaam}"
scope: "{Pad binnen vault}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: L1
sops-behandeld: 0
quick-wins: 0
medium: 0
large: 0
---

# SOP-Automatisering Roadmap — {Bedrijfsnaam}

> **Wat is dit document?** De canonieke L1-roadmap voor de automatisering van bestaande SOPs binnen {Bedrijfsnaam}. Per SOP een spectrum-score, tool-kandidaten en owner-overdracht. Plus drie gefaseerde horizonten (quick-wins, medium, large) waarmee de ondernemer week-voor-week werk uit zijn eigen handen krijgt.

---

## Samenvatting

| Aspect | Waarde |
|---|---|
| **SOPs in deze sessie behandeld** | {Aantal} van {Totaal in `Operations/Processen/`} |
| **Quick-wins geïdentificeerd** | {Aantal} (binnen 1 week haalbaar) |
| **Medium-projecten** | {Aantal} (1-3 maanden) |
| **Large-projecten** | {Aantal} (3-12 maanden) |
| **Totaal verwachte tijdwinst** | {Bv. "8 uur per maand zodra alle quick-wins draaien"} |
| **Eerste actie deze week** | {Eén regel — bv. "Bouw Make-flow Calendly → Moneybird (quick-win #1)"} |
| **MKB-regel** | Eerst quick-wins bouwen en stabiel maken (minstens 1 maand foutloos) voordat medium-projecten starten |

---

## Het leverage-spectrum

Elke SOP en elke stap wordt gescoord op 6 posities:

| # | Positie | Owner | Voorbeeld |
|---|---|---|---|
| 1 | Volledig handmatig | Mens | Werkinstructie zonder tool-ondersteuning |
| 2 | Grotendeels handmatig | Mens met tool | Moneybird-typen, mail handmatig versturen |
| 3 | Deels geautomatiseerd | Mens met partial automation | Calendly boeking → mens stuurt mail |
| 4 | Grotendeels geautomatiseerd | Mens als reviewer | Make-flow stuurt concept, mens drukt op verzendknop |
| 5 | Volledig geautomatiseerd | Systeem | Cron-job verstuurt rapport, mens kijkt naar logs |
| 6 | AI-overgenomen | AI-agent met human-in-the-loop | AI beantwoordt support, escaleert bij twijfel |

**Beweging:** één positie per project. Sprong van 2 naar 4 in één keer mislukt in MKB-context.

---

## Per SOP

### {SOP 1 - Naam}

**Bron-SOP:** [`Operations/Processen/{SOP1-Naam}.md`](../Operations/Processen/{SOP1-Naam}.md)
**Frequentie:** {Per klant / Maandelijks / Wekelijks / ...}
**Eigenaar:** {Persoon of rol uit SOP-sectie 3}

#### Blok 1 — Stabiliteits-check

| Aspect | Waarde |
|---|---|
| Cycli handmatig gedraaid | {Aantal} |
| Laatste SOP-wijziging | YYYY-MM-DD |
| Open issues | {Geen / Kort beschreven} |
| **Conclusie** | ✅ Automatiseren toegestaan / ⚠️ Eerst stabiliseren (terug naar S10) |

#### Blok 2 — Spectrum-score nu (per stap)

| Stap | Korte beschrijving | Huidige positie (1-6) | Tool of mens nu |
|---|---|---|---|
| 1 | {Beschrijving} | {1-6} | {Tool of mens} |
| 2 | {...} | {...} | {...} |
| 3 | {...} | {...} | {...} |

**Proces-niveau-score:** {Bv. "Proces als geheel: positie 2 — Grotendeels handmatig"}

#### Blok 3 — Volgende positie per stap

| Stap | Huidige | Volgende | Verschil | Verwachte besparing |
|---|---|---|---|---|
| 1 | 2 | 3 | {Wat verandert er?} | {X min per cyclus} |
| 2 | {...} | {...} | {...} | {...} |
| 3 | {...} | {...} | {...} | {...} |

#### Blok 4 — Tool-kandidaten

| Stap | Volgende positie | Tool-kandidaat | Alternatieven |
|---|---|---|---|
| 1 | 3 | {Bv. "Calendly webhook → Make → Moneybird"} | {Bv. "Zapier; Python-cron"} |
| 2 | {...} | {...} | {...} |
| 3 | {...} | {...} | {...} |

#### Blok 5 — Benodigde input

Voor de top-kandidaat (stap met grootste impact):

| Aspect | Waarde |
|---|---|
| Data-bron | {Bv. "Calendly-webhook event 'boeking aangemaakt'"} |
| Account-toegang | {Bv. "Make Pro, Calendly Standard, Moneybird Premium"} |
| Training-set | {Bv. "n.v.t. (regel-gebaseerd)" of "10 voorbeelden van type X"} |
| Prompt | {Bv. "n.v.t." of "Eerste versie: {prompt}"} |
| Output-bestemming | {Bv. "Concept-factuur in Moneybird"} |
| Fallback | {Bv. "Slack-notificatie als webhook faalt"} |
| Test-plan | {Bv. "5 test-boekingen in sandbox, side-by-side met handmatig"} |

#### Blok 6 — Owner-overdracht

| Stap | Automatisering | Owner monitoring | Owner escalatie | Frequentie check |
|---|---|---|---|---|
| 1 | {Korte beschrijving} | {Naam of rol} | {Naam of rol back-up} | {Wekelijks / Maandelijks / Realtime} |
| 2 | {...} | {...} | {...} | {...} |

#### Samenvatting deze SOP

- **Nu:** positie {X}, kost {Y} minuten per cyclus.
- **Volgend kwartaal:** positie {X+1}, kost {Y'} minuten per cyclus, totaal {Z} minuten per maand bespaard.
- **Eerstvolgende actie:** {Eén regel met de quick-win voor deze SOP}.

---

### {SOP 2 - Naam}

(Zelfde structuur als SOP 1 herhalen voor elke gekozen SOP, tot maximaal 5.)

---

## Roadmap — drie horizonten

### Quick-wins (binnen 1 week)

| # | Automatisering | SOP | Stap | Tool | Verwachte besparing | Eigenaar | Deadline |
|---|---|---|---|---|---|---|---|
| 1 | {Bv. "Auto-bedankje na factuurbetaling"} | {Factuur-cyclus} | 7 | {Stripe webhook → Brevo} | {10 min/maand} | {Iwan} | {YYYY-MM-DD} |
| 2 | {...} | {...} | {...} | {...} | {...} | {...} | {...} |
| 3 | {...} | {...} | {...} | {...} | {...} | {...} | {...} |

**Regel:** quick-wins worden altijd eerst aangepakt. Na een maand foutloos draaien mag de medium-fase starten.

### Medium (1 tot 3 maanden)

| # | Automatisering | SOPs geraakt | Tool | Voorvereisten | Verwachte impact | Eigenaar | Deadline |
|---|---|---|---|---|---|---|---|
| 1 | {Bv. "CRM ↔ Moneybird ↔ Mail keten"} | {Lead, Factuur} | {Make} | {Klant-ID's uniform; CRM-pipeline-tags op orde} | {2 uur/week} | {Iwan} | {Maand X} |
| 2 | {...} | {...} | {...} | {...} | {...} | {...} | {...} |

**Regel:** medium pas starten als minstens 3 quick-wins productie-stabiel draaien.

### Large (3 tot 12 maanden)

| # | Automatisering | SOPs geraakt | Tool | Voorvereisten | Verwachte impact | Cross-link | Eigenaar | Deadline |
|---|---|---|---|---|---|---|---|---|
| 1 | {Bv. "AI-agent support-mail"} | {Support, Lead} | {Claude + MCP} | {Medium-stack stabiel; 100+ voorbeeld-mails} | {15 uur/maand} | {E3 Workflow Pipeline} | {Iwan} | {Q4} |
| 2 | {...} | {...} | {...} | {...} | {...} | {...} | {...} | {...} |

**Regel:** large pas starten als de medium-stack als data-bron werkt en stabiel is.

---

## Eigenaren-overzicht

Alle automatiseringen verzameld per eigenaar — zodat duidelijk is wie wat monitort.

| Eigenaar | Monitort | Frequentie check | Escalatie-pad |
|---|---|---|---|
| {Naam of rol} | {Lijst van automatiseringen} | {Wekelijks / Maandelijks} | {Wie als deze eigenaar uitvalt} |
| {...} | {...} | {...} | {...} |

---

## Review-ritme

| Wat | Wanneer | Door wie | Output |
|---|---|---|---|
| Status quick-wins | Wekelijks (vrijdag) | Eigenaar | Werkt het nog? Aantal foutmeldingen? |
| Roadmap-update | Maandelijks (eerste maandag) | Eigenaar + AI-skill `sop-automatiseren` | Bijgewerkte versie van dit document |
| Gefaalde automatiseringen | Direct bij failure | Owner monitoring | Notificatie + log in `Operations/Processen/{SOP}.md` |
| Volledige L1-audit | Per kwartaal | Iwan | Springen quick-wins door naar medium? Welke nieuwe SOPs verdienen L1? |

---

## Cross-links

| SCALE | Document | Relatie tot deze roadmap |
|---|---|---|
| **S10** | `Operations/Processen/*.md` | Bron-SOPs — input voor elke regel in dit document |
| **S11** | `HR/Team.md` | Owner-tabel — wie wat monitort |
| **S12** | `IT/Toolstack.md` | Welke tools beschikbaar; welke nieuwe tools voorgesteld |
| **L2** | `IT/Skills/auto-rapportage-setup/` | Specifieke skill voor auto-rapportages (quick-win-kandidaten in deze roadmap) |
| **L3** | `IT/Skills/mailflow-setup/` | Specifieke skill voor mail- en opvolg-flows |
| **L4** | `IT/Skills/finance-automatisering/` | Specifieke skill voor finance-automatiseringen |
| **C1/C2/C3/C7** | `IT/Skills/marketing-data-setup/` etc. | Data-setup-skills wanneer voorvereisten datakwaliteit-werk vereisen |
| **E1** | `IT/Skills/dashboard-bouwer/` | Dashboard als medium-stack levert |
| **E3** | `IT/Skills/workflow-pipeline/` | End-to-end pipeline als large-projecten ketens vereisen |

---

## Versie-historie

| Versie | Datum | Wijziging | Door |
|---|---|---|---|
| 1.0 | YYYY-MM-DD | Eerste versie via `sop-automatiseren` (SCALE L1), {Aantal} SOPs doorgelicht | {Naam} |
| {...} | {...} | {...} | {...} |
