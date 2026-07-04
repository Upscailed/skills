---
type: data-setup
bedrijf: "{Bedrijfsnaam}"
onderwerp: Financiele Data Setup
versie: 1.0
status: actief
laatst-bijgewerkt: YYYY-MM-DD
scale-check: C3
boekhoudpakket: "{Moneybird | e-Boekhouden | Exact | Snelstart | Twinfield | anders}"
btw-regime: "{21% standaard | 9% verlaagd | vrijgesteld | KOR | onbekend}"
aantal-fte: "{getal of '1 (solopreneur)'}"
rapportage-frequentie: "{maandelijks | kwartaal | beide}"
---

# Financiële Data Setup, {Bedrijfsnaam}

> **SCALE-stap:** C3 (Collect). **Datum:** YYYY-MM-DD. **Versie:** 1.0.
> **Output-pad:** dit document leeft op `{scope}/Collect/Financiele-Data.md` of `{scope}/Financiën/Data-Setup.md`.
> **Cross-link:** boekhoudpakket en betalingsplatform staan in `IT/Toolstack.md` (S12). BTW-regime in `Juridisch/BTW-administratie.md` (J2). Aantal FTE in `HR/Team.md` (S11).
> **Disclaimer:** dit document is een data-setup en organisatorische documentatie, geen fiscaal of boekhoudkundig advies. Voor twijfel over verwerking, fiscale optimalisatie of complexe boekhoudvragen: verwijs door naar je boekhouder of administratiekantoor (bijvoorbeeld Fit In Finance).

## Samenvatting

- **Boekhoudpakket:** {bv. Moneybird, Premium, EUR 24/mnd}
- **Betalingsplatform:** {bv. Stripe, Standard, gekoppeld aan Moneybird}
- **Bank:** {bv. Rabobank, PSD2-koppeling met Moneybird actief}
- **BTW-regime:** {21% standaard / 9% verlaagd / vrijgesteld / KOR}
- **Aantal FTE:** {getal}
- **Rapportage-frequentie hoofd:** {maandelijks / per kwartaal}
- **Aantal kerncijfers gedefinieerd:** N (omzet, kosten, marge, cashflow, DSO, winst-per-FTE)
- **Aantal openstaande punten:** N (zie sectie "Aandachtspunten")

---

## 1. Bronnen-inventaris

> Welke tool of bron levert welke ruwe data. Een wijziging hier (van pakket wisselen, nieuwe bank) raakt direct alle definities hieronder.

### 1.1 Boekhoudpakket

| Veld | Waarde |
|---|---|
| Naam | {bv. Moneybird} |
| Plan | {bv. Premium} |
| Kosten/maand | EUR {bedrag} |
| Account-eigenaar | {persoon of rol, cross-link `HR/Team.md`} |
| Actieve modules | boekhouding, facturatie, urenregistratie, salaris |
| Koppelingen actief | Stripe via webhook, Rabobank via PSD2, e-mail-import |
| Login-locatie | {URL} |
| Status | 🟢 actief |

### 1.2 Betalingsplatform

| Veld | Waarde |
|---|---|
| Naam | {bv. Stripe} |
| Plan | {bv. Standard, 1.4% + EUR 0.25 per transactie} |
| Account-eigenaar | {persoon of rol} |
| Koppelt door naar | {boekhoudpakket via API, payout naar Rabobank} |
| Recurring of eenmalig | beide / alleen recurring / alleen eenmalig |
| Status | 🟢 actief |

### 1.3 Bank

| Veld | Waarde |
|---|---|
| Naam | {bv. Rabobank zakelijk} |
| Rekening-houder | {Bedrijfsnaam BV} |
| PSD2-koppeling met boekhouding | ja / nee |
| Login-locatie | {URL of app} |
| Aantal rekeningen | {bv. 1 zakelijk, 1 spaar} |

### 1.4 Factuurtool

| Veld | Waarde |
|---|---|
| Naam | {bv. ingebakken in Moneybird} of {externe tool} |
| Volume per maand (gemiddeld) | {N facturen} |
| Templates beheerd door | {persoon of rol} |

### 1.5 Urenregistratie (indien van toepassing)

| Veld | Waarde |
|---|---|
| Naam | {bv. Moneybird-uren / Toggl / geen} |
| Doorkoppeling naar facturatie | automatisch / handmatig / n.v.t. |

---

## 2. Kerncijfers en definities

> Voor elk cijfer: bron, berekening, frequentie, eigenaar. Een cijfer zonder definitie is een cijfer waarover ruzie ontstaat.

### 2.1 Omzet

| Cijfer | Definitie | Bron | Berekening | Frequentie | Eigenaar |
|---|---|---|---|---|---|
| Netto omzet (totaal) | Omzet excl. BTW over periode | Moneybird | Som van verkoopfacturen, excl. BTW, op factuurdatum | maandelijks | boekhouder + jij |
| Omzet per dienst-categorie | Splitsing in {bv. abonnement, advies, project} | Moneybird (op categorie-label) | Som per categorie | maandelijks | jij |
| Recurring omzet (MRR) | Maandelijks terugkerende omzet uit abonnementen | Stripe | Som actieve abonnementen × maandprijs | realtime | jij |
| Eenmalige omzet | Niet-recurring projecten of one-shot facturen | Moneybird | Omzet totaal min MRR-omzet | maandelijks | jij |

### 2.2 Kosten

| Cijfer | Definitie | Bron | Berekening | Frequentie | Eigenaar |
|---|---|---|---|---|---|
| Vaste kosten | Huur, software, salarissen, vaste verzekeringen | Moneybird (op kostencategorie) | Som van vaste-categorie-posten | maandelijks | boekhouder + jij |
| Variabele kosten | Inkoop, freelancers, ads, project-specifiek | Moneybird (op kostencategorie) | Som van variabele-categorie-posten | maandelijks | jij |
| Software-abonnementen | Som van SaaS-uitgaven | Toolstack.md + Moneybird | Cross-check met Toolstack | per kwartaal | jij |
| DGA-loon (indien BV) | Brutosalaris DGA | Loonadministratie | Maandelijks vast bedrag | maandelijks | accountant |

### 2.3 Marge

| Cijfer | Definitie | Bron | Berekening | Frequentie | Eigenaar |
|---|---|---|---|---|---|
| Bruto marge totaal | Omzet min directe kosten | Moneybird | Netto omzet - variabele kosten | maandelijks | jij |
| Bruto marge per dienst-categorie | Marge per categorie zoals abonnement, advies | Moneybird | Per categorie: omzet - directe kosten | per kwartaal | jij |
| Netto marge | Omzet min alle kosten | Moneybird | Netto omzet - totaal kosten - DGA-loon | per kwartaal | jij |
| Marge per klant (top-5) | Marge top-5 grootste klanten | Moneybird + handmatig | Per klant: omzet - directe kosten | per kwartaal | jij |

### 2.4 Cashflow

| Cijfer | Definitie | Bron | Berekening | Frequentie | Eigenaar |
|---|---|---|---|---|---|
| Cashflow in (maand) | Totaal inkomende betalingen | Bank + Stripe | Som inkomende mutaties | maandelijks | jij |
| Cashflow uit (maand) | Totaal uitgaande betalingen | Bank | Som uitgaande mutaties | maandelijks | jij |
| Netto cashflow (maand) | In min uit | berekend | Cashflow in - cashflow uit | maandelijks | jij |
| Debiteuren-saldo | Open verkoopfacturen | Moneybird | Som van openstaande verkoopfacturen | wekelijks | jij |
| Crediteuren-saldo | Open inkoopfacturen | Moneybird | Som van openstaande inkoopfacturen | wekelijks | jij |
| Liquide middelen | Bank + Stripe + andere tegoeden | Bank + Stripe-dashboard | Som van actuele saldi | dagelijks | jij |

### 2.5 DSO (Days Sales Outstanding)

| Cijfer | Definitie | Bron | Berekening | Frequentie | Eigenaar |
|---|---|---|---|---|---|
| DSO | Gemiddelde dagen wachten op betaling | Moneybird (debiteuren) + verkooprapport | (Debiteuren-saldo / omzet over periode) × dagen in periode | maandelijks | jij |

> Gezonde drempel: **DSO ≤ 45 dagen**. Daarboven actief opvolgen via skill `opvolg-flow` (V3) of latere automatisering.

### 2.6 Winst per FTE

| Cijfer | Definitie | Bron | Berekening | Frequentie | Eigenaar |
|---|---|---|---|---|---|
| Winst per medewerker | Bruto winst gedeeld door aantal FTE | berekend uit 2.3 + HR/Team.md | Bruto marge (kwartaal) / aantal FTE | per kwartaal | jij |

> Voor solopreneur: gelijk aan bruto winst (1 FTE).

---

## 3. Ophaal-frequentie

> Welke cijfers met welke frequentie beschikbaar zijn. Bron-frequentie en consumeer-frequentie kunnen verschillen.

| Frequentie | Cijfers | Bron | Methode |
|---|---|---|---|
| Realtime | MRR, liquide middelen | Stripe-dashboard, banking-app | API of dashboard |
| Dagelijks | banksaldo, omzet die dag | Banking-app, Moneybird | Dashboard-check |
| Wekelijks | debiteuren-saldo, crediteuren-saldo | Moneybird | Dashboard-check |
| Maandelijks | netto omzet, kosten, bruto marge, DSO, cashflow | Moneybird (na maandafsluiting) | Maandrapportage-export |
| Per kwartaal | marge per dienst-categorie, marge per klant, winst per FTE, vergelijking jaardoel | Moneybird + handmatig | Kwartaalrapportage |

---

## 4. Consumenten van de data

> Voor wie of welke tool wordt deze data klaargezet. Format en frequentie hangen af van de consument.

| Consument | Welke cijfers | Format | Frequentie |
|---|---|---|---|
| {Bv. Iwan zelf} | alle stuur-cijfers | maandrapport in vault | maandelijks |
| Boekhouder of administratiekantoor | omzet, kosten, BTW-aangifte-data | direct uit Moneybird | per kwartaal + jaar |
| A1 Rapportage Builder (skill) | omzet, kosten, marge, cashflow, DSO | markdown-rapport | maandelijks |
| A2 Mission Control (dashboard) | MRR, liquide middelen, DSO, omzet-vs-doel | dashboard-widget of JSON | realtime + maandelijks |
| L4 Finance Automatisering (toekomst) | alle realtime-cijfers + alerts | API of webhook | bij wijziging |
| E1 Dashboard Bouwer (toekomst) | alle gedefinieerde cijfers | custom dashboard | configureerbaar |

---

## 5. Eerste rapportage-template

> De eerste maandrapportage of kwartaalrapportage die direct gevuld kan worden. Aanmaak en eerste invulling gebeurt via skill `rapportage-builder` (A1).

**Status:** {te bouwen / klaargezet maar leeg / eerste keer ingevuld op YYYY-MM-DD}

**Locatie:** `{scope}/Financiën/Rapportage/YYYY-MM - Maandrapport.md` (of `YYYY-Qx - Kwartaalrapport.md`)

**Bevat:**
- Samenvatting (omzet, marge, cashflow, DSO)
- Vergelijking met jaardoel (uit `Directie/01 - Goals.md`)
- Delta vs. vorige periode
- Aandachtspunten (DSO te hoog, klant-concentratie, etc.)

---

## 6. Cross-links en afhankelijkheden

| SCALE-stap | Hoe deze setup ermee verbindt |
|---|---|
| [S12 Toolstack](../IT/Toolstack.md) | Boekhoudpakket, betalingsplatform en bank staan in Toolstack. Mismatch? Toolstack bijwerken. |
| [J1 KvK-administratie](../Juridisch/KvK-administratie.md) | Rechtsvorm bepaalt verwerking (eenmanszaak versus BV). |
| [J2 BTW-administratie](../Juridisch/BTW-administratie.md) | BTW-regime bepaalt netto versus bruto rapportage. |
| [S11 Team en Rollen](../HR/Team.md) | Aantal FTE is input voor winst-per-medewerker. |
| A1 Rapportage Builder | Consumeert deze setup voor maand- en kwartaalrapport. |
| A2 Mission Control | Toont kerncijfers uit deze setup op dashboard. |
| A4 Beslissings Analyse | Gebruikt marge-per-dienst en cashflow voor scenario-analyse. |
| L4 Finance Automatisering | Automatiseert bronnen en frequenties uit deze setup. |
| E1 Dashboard Bouwer | Custom dashboard gebruikt deze definities als basis. |

---

## 7. Aandachtspunten en risico's

> Punten die opgelost of gemonitord moeten worden. Bij wijziging hier ook de relevante secties hierboven aanpassen.

- [VERIFICEREN] {Open punten waar geen bron voor was}
- {Bv. DSO is 58 dagen, boven drempel van 45. Plan: skill `opvolg-flow` (V3) inschakelen.}
- {Bv. Marge per dienst-categorie nog niet beschikbaar omdat categorieën in Moneybird ontbreken. Plan: labels aanmaken.}
- {Bv. Bank-PSD2-koppeling werkt niet. Plan: CSV-import handmatig of opnieuw aansluiten.}

---

## 8. Brondocumenten

> Letterlijke citaten of verwijzingen naar externe documenten die deze setup hebben gevoed.

- {Bv. Moneybird-export van 2026-04, opgeslagen als `Financiën/Bronnen/Moneybird-export-2026-04.csv`}
- {Bv. Stripe-dashboard-screenshot van 2026-05-08}
- {Bv. Boekhouder-mail van 2026-05-01: "Maandafsluiting altijd voor de 10e van de volgende maand."}

---

## 9. Wijzigingen sinds vorige versie

> Houd dit document levend. Per update een korte regel, nieuwste bovenaan.

- **YYYY-MM-DD** - Eerste versie aangemaakt, N bronnen geïnventariseerd, M kerncijfers gedefinieerd, frequentie-tabel opgezet, cross-links naar S12, J1, J2 en A-/L-/E-stappen ingericht.

---

## Disclaimer

Dit document is een data-setup en organisatorische documentatie, geen fiscaal of boekhoudkundig advies. Voor twijfel over verwerking, fiscale optimalisatie of complexe boekhoudvragen: verwijs door naar je boekhouder of administratiekantoor (bijvoorbeeld Fit In Finance).
