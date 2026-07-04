---
type: verzekeringen-overzicht
bedrijf: "{Bedrijfsnaam}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: J6
aantal-polissen: 0
jaarpremie-totaal: 0
valuta: EUR
prijs-niveau: incl-assurantiebelasting
gap-analyse-uitgevoerd: ja
---

# Verzekeringen, {Bedrijfsnaam}

> **SCALE-stap:** J6 (Juridisch). **Datum:** YYYY-MM-DD. **Versie:** 1.0.
> **Cross-link:** rechtsvorm gevalideerd tegen [Juridisch/KvK.md](KvK.md) (J1). Personeel-context tegen [HR/Team.md](../HR/Team.md) (S11). Cyber-context tegen [IT/Toolstack.md](../IT/Toolstack.md) (S12).
> **Prijsniveau:** incl. assurantiebelasting (21%), in EUR. Pas aan als jouw bedrijf excl. assurantiebelasting rekent.

## Risico-profiel (samenvatting)

> Dit profiel stuurt de gap-analyse onderaan. Bij wijzigingen in rechtsvorm, dienstverlening, klantdata-verwerking of personeel: profiel bijwerken én gap-analyse opnieuw lopen.

- **Rechtsvorm:** {EZ / ZZP / VOF / BV / NV / Stichting} — bron: [Juridisch/KvK.md](KvK.md)
- **Hoofdactiviteit:** {bv. AI-implementatie, administratie-dienstverlening, advies, ontwerp, productie}
- **B2B / B2C:** {B2B / B2C / beide}
- **Klantdata of persoonsgegevens:** {ja, klantdata in SaaS-tools / ja, beperkt / nee}
- **Personeel in loondienst:** {0 / N medewerkers}
- **Eigen pand:** {ja / nee, huurkantoor / nee, thuiswerker}
- **Bedrijfsvoertuig:** {ja, N voertuigen / nee, prive-auto wordt zakelijk gebruikt}
- **Voorraad of fysieke goederen:** {ja, waarde EUR X / nee}

**Conclusie risico-profiel:** {bv. BV-bestuurder, B2B-dienstverlener met klantdata, 0 medewerkers, geen eigen pand, prive-auto. Kritieke verzekerings-categorieen: aansprakelijkheid (AVB + BAV), cyber, D&O. AOV apart te overwegen voor ondernemer.}

## Samenvatting

- **Aantal polissen actief:** N
- **Jaarpremie-totaal:** EUR X (incl. assurantiebelasting)
- **Categorie met grootste premie:** {bv. Mensen (AOV)}
- **Eerstvolgende einddatum:** YYYY-MM-DD, polis {bv. AVB Achmea}
- **Top-3 duurste polissen:** {polis A, polis B, polis C}
- **Gap-analyse:** N mogelijke gaten geidentificeerd, zie sectie onderaan

---

## 1. Aansprakelijkheid

> AVB (algemene aansprakelijkheid bedrijven) en BAV (beroepsaansprakelijkheid). AVB is voor schade aan personen of zaken door bedrijfsactiviteit. BAV is voor advies-aansprakelijkheid en beroepsfouten, kritiek voor dienstverleners (adviseurs, IT, ontwerp, juristen).

| Polis | Maatschappij | Polisnummer | Dekking + grens | Eigen risico | EUR/jr | Einddatum | Makelaar / tussenpersoon | Claims-status | Status |
|---|---|---|---|---|---|---|---|---|---|
| AVB | {bv. Achmea} | {12345} | Algemene aansprakelijkheid, EUR 2.500.000 per aanspraak / EUR 5.000.000 per jaar | EUR 500 | 480 | YYYY-MM-DD | {bv. Aon} | geen claims laatste 5 jaar | actief |
| BAV | {bv. Hiscox} | {67890} | Beroepsaansprakelijkheid, EUR 1.000.000 per aanspraak, AI-/IT-advies meeverzekerd | EUR 1.000 | 1.200 | YYYY-MM-DD | {bv. rechtstreeks} | geen claims | actief |
| | | | | | | | | | |

**Categorie-subtotaal:** EUR X/jr

---

## 2. Inventaris en zaken

> Inventaris- en goederenverzekering (laptop, kantoor-inventaris, voorraad). Gebouwenverzekering alleen bij eigen pand.

| Polis | Maatschappij | Polisnummer | Dekking + grens | Eigen risico | EUR/jr | Einddatum | Makelaar | Claims-status | Status |
|---|---|---|---|---|---|---|---|---|---|
| Inventaris | {bv. NN} | {nr} | Laptop + kantoor-inventaris, EUR 25.000 | EUR 250 | 180 | YYYY-MM-DD | {makelaar} | geen claims | actief |
| Gebouwen | n.v.t. | | n.v.t. | | | | | huurkantoor, loopt via verhuurder | n.v.t. |
| Goederen | n.v.t. | | n.v.t. | | | | | geen voorraad | n.v.t. |
| | | | | | | | | | |

**Categorie-subtotaal:** EUR X/jr

---

## 3. Mensen

> Verzuim-verzekering bij personeel in loondienst. AOV voor ondernemer zelf. Pensioenregeling (vrijwillig of verplicht via Bpf). Ongevallen-verzekering optioneel.

| Polis | Maatschappij | Polisnummer | Dekking + grens | Eigen risico | EUR/jr | Einddatum | Makelaar | Claims-status | Status |
|---|---|---|---|---|---|---|---|---|---|
| Verzuim | n.v.t. | | n.v.t. | | | | | 0 medewerkers in loondienst (zie HR/Team.md) | n.v.t. |
| AOV | {bv. Movir} | {nr} | Arbeidsongeschiktheid, EUR 4.000/mnd, eindleeftijd 67, wachttijd 1 mnd | n.v.t. | 4.800 | YYYY-MM-DD | {makelaar} | geen claims | actief |
| Pensioen | {bv. ASR} | {nr} | DGA-pensioen, opbouw EUR 8.000/jr | n.v.t. | (premie) | YYYY-MM-DD | {makelaar} | n.v.t. | actief |
| Ongevallen | | | | | | | | | |
| | | | | | | | | | |

**Categorie-subtotaal:** EUR X/jr

---

## 4. Voertuig en transport

> Bedrijfsauto (WA / WA+ / all-risk), goederenvervoer (CMR), werkmaterieel. Bij prive-auto die zakelijk wordt gebruikt: meestal n.v.t.

| Polis | Maatschappij | Polisnummer | Voertuig + kenteken | Dekking | Eigen risico | EUR/jr | Einddatum | Makelaar | Status |
|---|---|---|---|---|---|---|---|---|---|
| Bedrijfsauto | {bv. Allianz} | {nr} | {merk model, kenteken} | WA + casco | EUR 500 | 1.200 | YYYY-MM-DD | {makelaar} | actief |
| Goederenvervoer | n.v.t. | | | n.v.t. | | | | | n.v.t. |
| | | | | | | | | | |

**Categorie-subtotaal:** EUR X/jr

---

## 5. Cyber

> Cyber-verzekering. Kritiek voor IT-/AI-dienstverleners, bedrijven met klantdata, e-commerce, en bedrijven afhankelijk van cloud-tools.

| Polis | Maatschappij | Polisnummer | Dekking-elementen | Dekkingsgrens | Eigen risico | EUR/jr | Einddatum | Makelaar | Status |
|---|---|---|---|---|---|---|---|---|---|
| Cyber | {bv. Hiscox / AIG} | {nr} | Eerste-partij + derde-partij + ransomware + forensisch onderzoek + PR-crisis | EUR 500.000 | EUR 2.500 | 1.500 | YYYY-MM-DD | {makelaar} | actief |
| | | | | | | | | | |

**Categorie-subtotaal:** EUR X/jr

**Dekking-checklist (vul aan per polis):**
- [ ] Eerste-partij-schade (eigen herstel + omzetverlies)
- [ ] Derde-partij-schade (aansprakelijkheid bij data-lek klanten)
- [ ] Ransomware / cyber-extortion
- [ ] AVG-boete-dekking (vaak beperkt of uitgesloten — check)
- [ ] Forensisch onderzoek
- [ ] PR-crisismanagement
- [ ] 24/7 cyber-hotline

---

## 6. Rechtsbijstand

> Zakelijke rechtsbijstand-verzekering met modules voor contractenrecht, incasso, arbeidsrecht, fiscaal, bestuursrecht.

| Polis | Maatschappij | Polisnummer | Modules | Dekkingsgrens | Eigen risico | EUR/jr | Einddatum | Makelaar | Status |
|---|---|---|---|---|---|---|---|---|---|
| Rechtsbijstand | {bv. DAS / Arag} | {nr} | Contractenrecht, incasso, fiscaal, arbeid | EUR 50.000 per zaak | EUR 250 | 540 | YYYY-MM-DD | {makelaar} | actief |
| | | | | | | | | | |

**Categorie-subtotaal:** EUR X/jr

---

## 7. Bestuurders (D&O)

> Bestuurdersaansprakelijkheid. **Alleen relevant bij rechtsvormen met bestuurders (BV, NV, stichting, vereniging).** Bij EZ/ZZP: n.v.t.

| Polis | Maatschappij | Polisnummer | Dekking | Dekkingsgrens | Eigen risico | EUR/jr | Einddatum | Makelaar | Status |
|---|---|---|---|---|---|---|---|---|---|
| D&O | {bv. Aon / Marsh} | {nr} | Bestuurdersaansprakelijkheid + verdedigingskosten + uitlooprisico | EUR 1.000.000 | EUR 2.500 | 950 | YYYY-MM-DD | {makelaar} | actief |
| | | | | | | | | | |

**Categorie-subtotaal:** EUR X/jr

---

## Premie-overzicht (per categorie)

| # | Categorie | Aantal polissen | Jaarpremie totaal | Aandeel in totaal |
|---|---|---|---|---|
| 1 | Aansprakelijkheid | N | EUR X | X% |
| 2 | Inventaris en zaken | N | EUR X | X% |
| 3 | Mensen | N | EUR X | X% |
| 4 | Voertuig en transport | N | EUR X | X% |
| 5 | Cyber | N | EUR X | X% |
| 6 | Rechtsbijstand | N | EUR X | X% |
| 7 | Bestuurders | N | EUR X | X% |
| | **Grand-total** | **N** | **EUR X** | **100%** |

> Bedragen zijn incl. assurantiebelasting (21%), in EUR. Aanpassen als bedrijf op excl. niveau rekent.

---

## Verval-kalender (chronologisch op einddatum)

> Eerstvolgende einddatum bovenaan. Stel een reminder 90 dagen voor de eerstvolgende einddatum zodat heroverweging tijdig kan.

| Einddatum | Polis | Maatschappij | Jaarpremie | Opzegtermijn | Actie binnen | Notitie |
|---|---|---|---|---|---|---|
| YYYY-MM-DD | {AVB} | {Achmea} | EUR 480 | 2 mnd voor einddatum | YYYY-MM-DD | reguliere verlenging, geen wijziging gepland |
| YYYY-MM-DD | {BAV} | {Hiscox} | EUR 1.200 | 3 mnd voor einddatum | YYYY-MM-DD | overwegen dekkingsgrens te verhogen |
| YYYY-MM-DD | {Cyber} | {Hiscox} | EUR 1.500 | 2 mnd voor einddatum | YYYY-MM-DD | dekking-elementen vergelijken |
| YYYY-MM-DD | {D&O} | {Aon} | EUR 950 | 2 mnd voor einddatum | YYYY-MM-DD | reguliere verlenging |
| | | | | | | |

---

## Gap-analyse (mogelijk ontbrekende dekking)

> Signaleringen op basis van risico-profiel boven, geen advies. Voor concrete dekking-keuzes verwijs naar onafhankelijke verzekeringsmakelaar.

Op basis van het risico-profiel lijken de volgende verzekeringen mogelijk relevant maar nog niet aanwezig:

1. **{Verzekering A}**
   - Reden: {bv. B2B-dienstverlener met advies-werk, geen BAV in huidige stack}
   - Risico bij ontbreken: {concrete schade-scenario}
   - Suggestie: gesprek met onafhankelijke makelaar inplannen voor offerte-vergelijking

2. **{Verzekering B}**
   - Reden: {bv. klantdata in SaaS-tools, verwerkings-rol onder AVG, geen cyber-polis}
   - Risico bij ontbreken: data-lek leidt tot AVG-boete plus claims betroffen klanten
   - Suggestie: cyber-offerte met dekkingsgrens minimaal EUR 500.000 vergelijken

3. **{Verzekering C}**
   - Reden: {bv. BV-bestuurder, geen D&O}
   - Risico bij ontbreken: persoonlijke aansprakelijkheid bij onbehoorlijk bestuur
   - Suggestie: D&O-offerte met uitlooprisico (oud bestuur) meenemen

> **Disclaimer:** bovenstaande zijn signaleringen op basis van risico-heuristieken, geen verzekerings-advies. Of een specifieke polis nodig is, welke dekkingsgrens past, welke maatschappij het beste aansluit op het sectorrisico, en welke premie redelijk is, is een gespecialiseerde inschatting. Voor concrete dekking-keuzes verwijst dit document naar een **onafhankelijke verzekeringsmakelaar** of erkend financieel adviseur.

---

## Makelaar / tussenpersoon-overzicht

> Een eigen sectie maakt het bij een schade-claim direct vindbaar wie te bellen.

| Makelaar / kantoor | Polissen via deze partij | Contactpersoon | Telefoon | E-mail | Laatste gesprek |
|---|---|---|---|---|---|
| {bv. Aon Nederland} | AVB, BAV | {naam} | {nr} | {e-mail} | YYYY-MM-DD |
| {bv. rechtstreeks via verzekeraar} | Cyber, D&O | n.v.t. | klantenservice verzekeraar | klantenservice@verzekeraar.nl | n.v.t. |
| | | | | | |

---

## Claims-historie (laatste 5 jaar)

> Houd hier alle gemelde claims bij — ook afgewezen claims. Bij verlenging of overstap is dit het document dat de nieuwe verzekeraar wil zien.

| Datum claim | Polis | Maatschappij | Aard claim | Schadebedrag | Uitkering | Status |
|---|---|---|---|---|---|---|
| YYYY-MM-DD | {AVB} | {Achmea} | {bv. klant viel op kantoor} | EUR 1.200 | EUR 700 (eigen risico afgetrokken) | afgehandeld |
| | | | | | | |

Geen claims laatste 5 jaar? Noteer expliciet: **"Geen claims gemeld in periode YYYY tot YYYY."**

---

## Cross-links

- **[Juridisch/KvK.md](KvK.md)** (SCALE J1) — rechtsvorm bepaalt deel van de verzekerings-behoefte (D&O alleen bij BV, etc.). Bij wijziging rechtsvorm: profiel én polis-mix opnieuw evalueren.
- **[Juridisch/Algemene Voorwaarden.md](Algemene%20Voorwaarden.md)** (SCALE J3) — aansprakelijkheids-uitsluitingen in AV moeten consistent zijn met BAV-dekking.
- **[Juridisch/Privacyverklaring.md](Privacyverklaring.md)** (SCALE J4) — verwerkingsverantwoordelijkheid onder AVG sluit logisch aan op cyber-dekking.
- **[HR/Team.md](../HR/Team.md)** (SCALE S11) — bij wijzigingen in personeel verandert verzuim- en pensioen-behoefte. Solopreneur naar 1 medewerker: verzuim-verzekering verplicht overwegen.
- **[IT/Toolstack.md](../IT/Toolstack.md)** (SCALE S12) — klantdata-verwerking en SaaS-afhankelijkheid bepalen cyber-behoefte.
- **[Directie/00 - Overzicht.md](../Directie/00%20-%20Overzicht.md)** (SCALE S1) — dienstverlening en B2B/B2C bepalen BAV-noodzaak.

---

## Wijzigingen sinds vorige versie

> Houd dit document levend. Per update een korte regel hier, nieuwste bovenaan.

- **YYYY-MM-DD** — Eerste versie aangemaakt, N polissen verspreid over 7 categorieen, M gap-analyse-punten gemarkeerd, jaarpremie-totaal EUR X.

---

## Disclaimer

Dit document is een **inventarisatie** van zakelijke verzekeringen, geen verzekerings-advies. De gap-analyse signaleert mogelijke gaten op basis van risico-heuristieken (rechtsvorm, dienstverlening, klantdata, personeel), maar de concrete keuze of een specifieke polis nodig is, welke dekkingsgrens past, welke maatschappij het beste aansluit, en welke premie redelijk is, valt buiten de scope van deze skill. Voor die keuzes verwijst dit document naar een **onafhankelijke verzekeringsmakelaar** of erkend financieel adviseur die het sectorrisico, omzet, klantcontract en eigen risicotolerantie meeneemt.

De inhoud is gebaseerd op informatie die de ondernemer aanlevert (polisbladen, makelaar-overzichten, boekhouding) plus heuristieken die in het Nederlandse MKB-domein gangbaar zijn. Voor de juridische geldigheid en dekking van een polis is altijd de polis zelf plus de polisvoorwaarden leidend, niet dit overzicht.
