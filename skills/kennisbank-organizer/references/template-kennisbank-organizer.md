---
type: kennisbank
bedrijf: "{Bedrijfsnaam}"
tool: "{Notion | Obsidian | Confluence | Slite | Slab | GitBook | Outline | Astro}"
url: "{link-naar-workspace-of-vault}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: E5
owner-kennisbank: "{Naam}"
---

# Kennisbank - {Bedrijfsnaam}

> **Wat is dit document?** De canonieke structuur en bewakingslaag van de interne kennisbank van {Bedrijfsnaam}. Welke tool, welke categorieen, wie de eigenaar is, hoe vaak elke categorie wordt gereviewd, hoe getagd, wie wat mag lezen of bewerken, hoe nieuwe medewerkers worden ingewerkt en of er een AI-laag op zit. De feitelijke content leeft in `{tool}` op `{url}`. Dit bestand is de uitleg en de checklist.

---

## 1. Tool-keuze

**Gekozen tool:** {Notion / Obsidian / Confluence / Slite / Slab / GitBook / Outline / Astro}.
**Plan / tier:** {bv. "Notion Plus, €8/gebr/mnd, 4 gebruikers"}.
**Url naar workspace:** {link}.
**Motivatie (2 tot 3 zinnen):** {bv. "Team van 4, niet-technisch, al Notion-gebruik. Gratis-tier dekt 10 mensen dus pas later upgrade nodig. Notion AI direct beschikbaar als we de bank willen bevragen."}

**Setup-stappen die zijn doorlopen:**
- [x] Workspace aangemaakt
- [x] Members uitgenodigd met juiste rol
- [x] Top-level categoriepagina's aangemaakt
- [x] Per categorie minimaal 3 docs gemigreerd of gemaakt
- [x] Tag-systeem en status-labels geconfigureerd
- [x] Search getest met 5 typische vragen

---

## 2. Categorieen en owners

> 8 vaste categorieen plus eventueel 1 tot 2 bedrijfsspecifieke.

| # | Categorie | Owner | Fallback-owner | Wat erin komt |
|---|---|---|---|---|
| 1 | **Bedrijfsinfo** | {Naam} | {Naam} | Missie, visie, brand, tone, geschiedenis |
| 2 | **Producten** | {Naam} | {Naam} | Pakketten, pricing, productdetails, roadmap |
| 3 | **Klantinfo** | {Naam} | {Naam} | ICP, klantreis, segmenten, klant-cases |
| 4 | **Processen** | {Naam} | {Naam} | SOPs, werkstroom-beschrijvingen |
| 5 | **Templates** | {Naam} | {Naam} | Contracten, mail-templates, offertes, document-bouwstenen |
| 6 | **Onboarding** | {Naam} | {Naam} | Wat een nieuwe medewerker leest, in welke volgorde, met check-ins |
| 7 | **Tools** | {Naam} | {Naam} | Welke tools, waarvoor, wie heeft toegang |
| 8 | **Trainings** | {Naam} | {Naam} | Cursussen, vaardigheden, AI-skills, frameworks |
| 9+ | **{Eigen categorie}** (optioneel) | {Naam} | {Naam} | {Wat erin komt} |

> Owner-cross-link met `HR/Team.md`. Als een owner verandert, update beide.

---

## 3. Update-cadans

| Categorie | Cadans | Volgende review | Reviewer | Trigger |
|---|---|---|---|---|
| Bedrijfsinfo | Jaarlijks | YYYY-MM-DD | {Naam} | Bij jaarplanning-cyclus |
| Producten | Per kwartaal | YYYY-MM-DD | {Naam} | Met productroadmap-review |
| Klantinfo | Doorlopend | YYYY-MM-DD | {Naam} | Bij nieuwe case of feedback |
| Processen | Per kwartaal | YYYY-MM-DD | {Naam} | Na ten minste 1 kwartaal draaien |
| Templates | Halfjaarlijks | YYYY-MM-DD | {Naam} | Periodiek check op aansluiting wet en stijl |
| Onboarding | Bij elke nieuwe medewerker | YYYY-MM-DD | {Naam} | Feedback van laatste nieuwe medewerker verwerken |
| Tools | Per kwartaal | YYYY-MM-DD | {Naam} | Gelijktijdig met Toolstack-review |
| Trainings | Halfjaarlijks | YYYY-MM-DD | {Naam} | Skill-bibliotheek actueel houden |

---

## 4. Tag-systeem

> Vaste vocabulaire. Geen vrije velden, anders explodeert het.

**Afdeling-tags:**
- `sales`, `marketing`, `finance`, `operations`, `it`, `hr`, `directie`

**Proces-tags:**
- `verkoop`, `onboarding`, `levering`, `support`, `jaarafsluiting`, `productie`, `kwaliteitscontrole`, `inhuur`

**Klantsegment-tags** (uit ICP, S4):
- `{segment-1}`, `{segment-2}`, `{segment-3}`

**Optioneel - fase:**
- `idee`, `concept`, `productie`, `archief`

**Optioneel - vertrouwelijkheid (uit J4):**
- `intern-alleen`, `partner-toegankelijk`, `publiek`

---

## 5. Status-labels per doc

| Label | Betekenis |
|---|---|
| `draft` | Eerste versie, nog niet gereviewd |
| `review` | Klaar voor review door owner |
| `gereviewd` | Owner heeft goedgekeurd, actueel |
| `verifieren` | Op de planning voor volgende review-ronde |
| `archief` | Vervangen door nieuwere versie, niet meer canoniek |

---

## 6. Permissions

| Rol | Bedrijfsinfo | Producten | Klantinfo | Processen | Templates | Onboarding | Tools | Trainings |
|---|---|---|---|---|---|---|---|---|
| **Ondernemer / directie** | RW | RW | RW | RW | RW | RW | RW | RW |
| **Medewerker (intern)** | R | R | R | R | R | R | R | R |
| **Owner van categorie** | RW (eigen) | RW (eigen) | RW (eigen) | RW (eigen) | RW (eigen) | RW (eigen) | RW (eigen) | RW (eigen) |
| **Freelancer / externe** | R | R | (geen) | R-beperkt | R-beperkt | R | R | R |
| **Klant / partner** | R-publiek-deel | R-publiek-deel | (geen) | (geen) | (geen) | (geen) | (geen) | (geen) |

R = read, RW = read en write.

Wijk af waar nodig - leg de afwijking in deze tabel vast.

---

## 7. Onboarding-leespad - Week 1

> 8 tot 12 docs die een nieuwe medewerker in week 1 leest, in volgorde.

| # | Dag | Doc | Categorie | Leestijd | Reden voor week 1 |
|---|---|---|---|---|---|
| 1 | 1 | {Welkom + bedrijfsverhaal} | Bedrijfsinfo / Onboarding | 30 min | Eerste indruk: waar werk ik, waarom bestaan we |
| 2 | 1 | {Bedrijfsoverzicht 00 - Overzicht} | Bedrijfsinfo | 30 min | Wat doet het bedrijf concreet |
| 3 | 1 | {Brand Guidelines + Tone of Voice} | Bedrijfsinfo | 30 min | Hoe spreekt het bedrijf naar buiten |
| 4 | 2 | {ICP + Klantreis} | Klantinfo | 45 min | Wie zijn klanten en wat ervaren ze |
| 5 | 2 | {Producten en pricing} | Producten | 30 min | Wat bieden we aan |
| 6 | 3 | {SOPs in eigen rol - bv. salesproces} | Processen | 60 min | Hoe wordt het werk concreet gedaan |
| 7 | 3 | {Toolstack - alleen tools relevant voor rol} | Tools | 30 min | Welke tools moet ik kunnen gebruiken |
| 8 | 4 | {Templates eigen rol} | Templates | 30 min | Bouwstenen voor dagelijks werk |
| 9 | 5 | {Trainings - startset eigen rol} | Trainings | 60 min | Skills bijbouwen die nu nodig zijn |
| 10+ | 5 | {Optioneel: 1 tot 3 vervolg-docs naar gelang rol} | Diverse | Variabel | Verdieping |

**Mentor of buddy:** {Naam}.
**Check-ins:** dag 3 (15 min "wat is gelukt, wat is nog onduidelijk?") plus eind week 1 (30 min reflectie).
**Vervolg na week 1:** 30-60-90-dagenplan dat verwijst naar dezelfde kennisbank.

---

## 8. Search-strategie

**Native search-functionaliteit:** {beschrijving van wat de tool kan, bv. "Notion-search met fuzzy matching, traag boven 1.000 pagina's"}.
**Wat werkt nu?** {5 typische vragen die zijn getest en de top-3-resultaten}.
**Als search ontoereikend wordt:** {wat is plan B - strakker tag-systeem, RAG-laag, tool-migratie}.

---

## 9. AI / RAG-laag

**Status:** {Go / No-go (uitgesteld tot YYYY-MM-DD)}.

### Bij `go`:

**Gekozen aanpak:** {Tool-native AI / Externe RAG via tool-API / Volledig eigen RAG-stack}.
**Eigenaar pipeline:** {Naam}.
**Tijdsinvestering:** {ureninschatting}.
**Maandkosten:** {schatting}.

**Pipeline-stappen** (alleen voor externe of eigen RAG):
- [ ] Export of API-tap op alle kennisbank-content
- [ ] Chunk in stukken van 500 tot 1.000 tokens met overlap
- [ ] Embed via {OpenAI text-embedding-3-small / Cohere / self-hosted}
- [ ] Opslaan in {Pinecone / Weaviate / Qdrant / pgvector}
- [ ] Retrieval-laag (top-N chunks per vraag)
- [ ] Answer-laag (LLM met retrieval-context plus bronvermelding)
- [ ] Interface ({Slack / kennisbank-widget / stand-alone web-UI})
- [ ] Evaluatie-set (10 tot 20 vragen plus verwachte antwoorden)
- [ ] Update-trigger zodat gewijzigde docs binnen 24 uur opnieuw geembed worden

### Bij `no-go`:

**Reden uitstel:** {te weinig docs, te weinig vragen, budget krap, privacy te kritisch}.
**Review-moment:** {YYYY-MM-DD, typisch over 6 maanden}.
**Wat moet veranderd zijn voor `go`:** {bv. "50-plus docs, 3-plus vragen/week, GDPR-akkoord op EU-LLM-provider"}.

---

## 10. Vulplan - eerste 2 weken

> Per categorie minstens 3 docs binnen 2 weken. Voorkomt het lege-bank-syndroom.

| Categorie | Owner | Week 1 | Week 2 |
|---|---|---|---|
| Bedrijfsinfo | {Naam} | 00-Overzicht, Brand Guidelines, Tone of Voice | Bedrijfsverhaal |
| Producten | {Naam} | Producten.md migreren, FAQ-stub per pakket | Productroadmap-stub |
| Klantinfo | {Naam} | ICP, Klantreis | 2 anonieme cases als template |
| Processen | {Naam} | Top-3 SOPs uit Operations/Processen | Volgende 5 SOPs |
| Templates | {Naam} | Klantcontract, AV | Mail-template-bundel (5 standaard) |
| Onboarding | {Naam} | Leespad-Week-1 | 30-60-90-stub plus buddy-protocol |
| Tools | {Naam} | Toolstack.md migreren | Per top-3-tool een korte how-to |
| Trainings | {Naam} | Lijst van bestaande skills en AI-tools | 1 cursus-aanbeveling per rol |

---

## 11. Reviews en bewaking

### Maand-1-review

- [ ] Per categorie: aantal docs telling
- [ ] Welke categorieen onder 3 docs hangen? → owner aanspreken
- [ ] Welke docs zijn gereviewd en welke nog draft of review?
- [ ] Hoeveel zoekvragen zijn afgevangen (subjectieve telling van team)?
- [ ] Zijn er nieuwe categorieen nodig?

### Kwartaal-review

- [ ] Cadans nagekomen? Per owner check
- [ ] Tags-vocabulaire nog actueel of moet er eentje bij of weg?
- [ ] Permissions nog kloppend (nieuwe medewerker, vertrokken medewerker)?
- [ ] RAG-laag-status check (als no-go: review-datum verstreken? Bij go: pipeline-werkend?)
- [ ] Cross-links nog actueel (S10, S11, S12, J4)?

---

## 12. Cross-links naar SCALE-documenten

| SCALE-check | Document | Hoe relateert het |
|---|---|---|
| S1 - Bedrijfsoverzicht | `Directie/00 - Overzicht.md` | Categorie 1 bron |
| S2 - Brand Guidelines | `Directie/Playbook/Brand Guidelines.md` | Categorie 1 bron |
| S3 - Tone of Voice | `Directie/Playbook/Tone of Voice.md` | Categorie 1 bron |
| S4 - ICP | `Directie/Playbook/ICP.md` | Categorie 3 bron |
| S7 - Bedrijfsverhaal | `Directie/Playbook/Bedrijfsverhaal.md` | Categorie 6 leespad dag 1 |
| S8 - Producten | `Directie/Playbook/Producten.md` | Categorie 2 bron |
| S9 - Klantreis | `Directie/Playbook/Klantreis.md` | Categorie 3 bron |
| **S10 - SOPs** | `Operations/Processen/*.md` | Categorie 4 bron |
| **S11 - Team en rollen** | `HR/Team.md` | Owner-toewijzing per categorie |
| **S12 - Toolstack** | `IT/Toolstack.md` | Tool-keuze referentie plus categorie 7 bron |
| J3 - Algemene Voorwaarden | `Juridisch/Algemene-Voorwaarden.md` | Categorie 5 bron |
| **J4 - Privacyverklaring** | `Juridisch/Privacyverklaring.md` | Intern-vs-extern-classificatie |
| J5 - Klantcontract | `Juridisch/Klantcontract-Template.md` | Categorie 5 bron |
| L1 - SOP Automatiseren | `Leverage/SOP-Automatisering-Roadmap.md` | Maakt categorie 4 rijker |
| E1 - Dashboard | `Engineer/Dashboard-Ontwerp.md` | Kan in categorie 7 of eigen categorie |
| E6 - Skill Builder Coach | `IT/Skills/*` | Skills landen in categorie 8 |

---

## 13. Bijhouden

Dit is een **levend document**. Update bij:
- Tool-wissel (van Notion naar Confluence, bv.)
- Toevoegen of verwijderen van een categorie
- Owner-wissel per categorie
- Cadans-aanpassing
- Tag-vocabulaire-wijziging
- RAG-laag-status-wijziging (van no-go naar go of andersom)

**Versiebump-triggers:**
- Patch (1.0.0 → 1.0.1): owner-wissel, doc-toevoeging, kleine tekst-aanpassing
- Minor (1.0.x → 1.1.0): nieuwe categorie, tag-vocabulaire-uitbreiding, RAG-status-flip
- Major (1.x.y → 2.0.0): tool-migratie, fundamentele herziening van structuur
