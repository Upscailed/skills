---
type: sop
proces: "{Proces-naam}"
bedrijf: "{Bedrijfsnaam}"
eigenaar: "{Persoon of rol}"
frequentie: "{Per klant | Maandelijks | Wekelijks | On-demand | ...}"
doorlooptijd: "{Concrete zone, bv. '2 werkdagen' of '90 minuten'}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S10
---

# SOP — {Proces-naam}

> **Wat is dit document?** De canonieke werkinstructie voor *{Proces-naam}* binnen {Bedrijfsnaam}. Bedoeld zodat een vervanger, freelancer, VA of AI-agent dit proces kan uitvoeren zonder constant te moeten terugvragen. Tegelijk directe input voor latere automatisering (SCALE-stap L1, `sop-automatiseren`).

---

## 1. Identiteit en doel

**Korte beschrijving (één zin):** {Wat doet dit proces in één zin, zonder marketing-taal.}

**Doel voor het bedrijf:** {Wat het proces oplevert voor de eigen organisatie: tijdwinst, kwaliteit, voorspelbaarheid, klant-retentie, cashflow, etc.}

**Doel voor de klant:** {Wat de klant aan dit proces heeft. Soms indirect, soms direct.}

**Wat gaat er mis zonder dit proces?** {Een paar regels — dwingt waarde scherp te formuleren.}

---

## 2. Frequentie en trigger

| Aspect | Waarde |
|---|---|
| **Frequentie** | {Bv. "Per nieuwe klant", "Maandelijks rond de 1e", "Wekelijks vrijdag", "On-demand bij klacht"} |
| **Aantal per jaar (schatting)** | {Concreet aantal als mogelijk} |
| **Trigger** | {Wat zet het proces in gang. Concrete actie, geen vage aanleiding.} |
| **Bron van de trigger** | {Persoon, e-mail, systeem-melding, automatische cron, agenda-item, klantactie} |
| **Klantreis-fase (S9)** | {Welke fase uit `Klantreis.md` activeert dit proces? Bv. "Onboarding", "Service", "Retention"} |

---

## 3. Eigenaar en betrokkenen

| Rol | Persoon of functie | Wanneer in beeld |
|---|---|---|
| **Eind-eigenaar** | {Naam of rol uit `Team.md`} | Verantwoordelijk voor goede uitvoering en uitkomst |
| **Back-up** | {Naam of rol} | Als eind-eigenaar uitvalt |
| **Betrokkene 1** | {Naam, rol of extern} | Bij stap {nr} — {korte rol-beschrijving} |
| **Betrokkene 2** | {Idem} | Bij stap {nr} |
| **Externe partij** | {Bv. boekhouder, jurist, freelancer} | Bij stap {nr} of bij escalatie |

*Cross-link: zie `HR/Team.md` (SCALE S11) voor rol-context.*

---

## 4. Genummerde stappen

> **Lees-instructie:** voer de stappen sequentieel uit. Sommige stappen hebben een beslispunt (zie sectie 5) — daar hoort een keuze gemaakt te worden voordat je doorgaat.

1. **{Werkwoord} {object}** — {Korte concrete handeling, bv. "Open Moneybird en navigeer naar Facturen → Nieuw"}. Uitvoerder: {wie}.
2. **{Werkwoord} {object}** — {Volgende handeling}. Uitvoerder: {wie}.
3. **{Werkwoord} {object}** — {Volgende handeling}. Eventueel beslispunt → zie sectie 5, rij {nr}.
4. **{Werkwoord} {object}** — {Volgende handeling}.
5. **{Werkwoord} {object}** — {Volgende handeling}.
6. **{Werkwoord} {object}** — {Volgende handeling}.
7. **{Werkwoord} {object}** — {Volgende handeling}.
8. **{Werkwoord} {object}** — {Volgende handeling}.
9. **{Werkwoord} {object}** — {Volgende handeling}. Output-check → zie sectie 8.
10. **{Werkwoord} {object}** — {Afsluitende handeling, bv. "Markeer proces in CRM als afgerond"}.

*Schrijfregels: werkwoord aan het begin, één handeling per stap, tool letterlijk benoemen, geen jargon zonder uitleg. Mik op 6 tot 15 stappen. Bullet-lijsten zijn niet toegestaan voor deze sectie.*

---

## 5. Beslispunten

| Stap | Beslispunt | Criteria | Uitkomst A | Uitkomst B (of meer) | Beslisser |
|---|---|---|---|---|---|
| {nr} | {Welke keuze moet gemaakt?} | {Welk gegeven bepaalt de keuze?} | {Wat gebeurt er bij uitkomst A?} | {Wat gebeurt er bij uitkomst B?} | {Wie mag beslissen?} |
| {nr} | {...} | {...} | {...} | {...} | {...} |

*Als het proces lineair is zonder keuze-momenten: noteer "Geen beslispunten — proces is lineair".*

---

## 6. Tools en systemen

| Tool | Gebruikt in stap | Doel in dit proces | Handmatige overdracht? |
|---|---|---|---|
| {Bv. Moneybird} | {nr's} | {Bv. "Factuur aanmaken en versturen"} | {Bv. "Ja — factuurnummer wordt handmatig in Stripe ingevoerd"} |
| {Bv. Gmail} | {nr's} | {Bv. "Verzenden bevestigingsmail"} | {Bv. "Nee — automatisch uit Moneybird"} |
| {Bv. Gedeelde Drive-folder} | {nr's} | {Bv. "Opslag van getekend contract"} | {Bv. "Ja — link handmatig in CRM plakken"} |
| {...} | {...} | {...} | {...} |

*Cross-link: zie `IT/Toolstack.md` (SCALE S12) voor tool-context. Handmatige overdracht-momenten zijn typische automatiseringskansen — zie sectie 10.*

---

## 7. Doorlooptijd en SLA

| Aspect | Waarde |
|---|---|
| **Totale doorlooptijd (kalender)** | {Bv. "2 werkdagen", "5 werkdagen", "30 minuten"} |
| **Werkelijke werktijd (klok)** | {Bv. "90 minuten", "20 minuten per stap"} |
| **SLA of klantbelofte** | {Bv. "Reactie binnen 24 uur", "Factuur uiterlijk 5e van de maand", of "Geen externe SLA"} |
| **Interne deadline** | {Bv. "Voor 17:00 op werkdag van trigger"} |
| **Verschil doorlooptijd ↔ werktijd** | {Korte uitleg waar de tijd zit: wachten op klant, wachten op systeem, wachten op betaling, etc.} |

---

## 8. Output en kwaliteits-check

**Output:** {Wat dit proces concreet oplevert. Bv. "Verstuurde factuur, geregistreerd in Moneybird en gemarkeerd in CRM als 'Gefactureerd'".}

**Kwaliteits-check:** {Concrete actie waarmee je toetst dat de output klopt. Bv. "Factuur twee keer gelezen vóór verzenden: één keer op klant-gegevens en bedrag, één keer op spelling en omschrijving. Daarna controle in Moneybird dat status op 'Verzonden' staat."}

**Wie checkt de kwaliteit:** {Uitvoerder zelf, een collega, een tweede paar ogen, of de klant.}

**Wanneer is het proces officieel afgerond:** {Eén concreet eindpunt — bv. "Wanneer klant ontvangstbevestiging stuurt", of "Wanneer betaling binnen is", of "Wanneer status in CRM op 'Afgerond' staat".}

---

## 9. Faal-scenario's en escalatie

| Faal-scenario | Detectie | Eerste herstel-actie | Escalatie (wanneer, naar wie, via welk kanaal) |
|---|---|---|---|
| {Bv. "Klant reageert niet binnen 3 werkdagen"} | {Bv. "Geen reactie in CRM-thread"} | {Bv. "Stuur herinneringsmail uit template 'Reminder-v2'"} | {Bv. "Na 7 werkdagen → escaleren naar eind-eigenaar via Slack-DM"} |
| {Bv. "Stripe weigert betaling"} | {Bv. "Notificatie in Stripe-dashboard"} | {Bv. "Check kaartgegevens met klant via mail"} | {Bv. "Na 24 uur zonder respons → telefonisch contact"} |
| {Bv. "Werk niet op tijd af door drukte"} | {Bv. "Eigenaar ziet vrijdag dat deadline maandag niet haalbaar is"} | {Bv. "Informeer klant proactief, bied alternatief"} | {Bv. "Bij structurele drukte → herzie capaciteit met directie"} |

*Drie scenario's is meestal genoeg. Mik op de **vaakst voorkomende** of **meest impactvolle** fouten, niet alle theoretische.*

---

## 10. Automatiseringskansen

| Stap (nr) | Type kans | Verwacht effect (tijd, fout-reductie, etc.) | Eerstvolgende actie |
|---|---|---|---|
| {nr} | {Skill / Script / Agent / E-mailflow / No-code / Template} | {Bv. "Bespaart 15 minuten per cyclus, voorkomt typefouten"} | {Bv. "Bouw Make-flow Moneybird → Stripe met factuurnummer-mapping"} |
| {nr} | {...} | {...} | {...} |
| {nr} | {...} | {...} | {...} |

**Top automatiserings-kandidaat voor L1:** {Eén regel met de zwaarste hefboom: welke stap, welk type kans, welke verwachte besparing.}

*Cross-link: deze sectie is directe input voor SCALE-stap L1 (`sop-automatiseren`). Wanneer een automatisering daar wordt opgebouwd, voeg dan onderaan in deze SOP een referentie toe naar het bouwende document.*

---

## Cross-links

| SCALE | Document | Relatie tot deze SOP |
|---|---|---|
| **S9** | `Directie/Playbook/Klantreis.md` | Welke fase activeert dit proces (zie sectie 2). |
| **S11** | `HR/Team.md` | Wie eigenaar en betrokkenen zijn (zie sectie 3). |
| **S12** | `IT/Toolstack.md` | Welke tools dit proces gebruikt (zie sectie 6). |
| **L1** | `Operations/Processen/_l1-automatiseringskansen.md` (of vergelijkbaar wanneer L1 gebouwd is) | Welke kansen uit sectie 10 worden uitgewerkt. |

---

## Versie-historie

| Versie | Datum | Wijziging | Door |
|---|---|---|---|
| 1.0 | YYYY-MM-DD | Eerste versie via `sop-interviewer` (SCALE S10) | {Naam} |
| {...} | {...} | {...} | {...} |
