---
type: juridisch
bedrijf: "{Bedrijfsnaam}"
onderwerp: BTW Administratie
versie: 1.0
status: concept
laatst-bijgewerkt: YYYY-MM-DD
scale-check: J2
btw-regime: "{21% standaard | 9% verlaagd | vrijgesteld | KOR}"
---

# BTW Administratie {Bedrijfsnaam}

> **Wat is dit document?** Het canonieke BTW-dossier van {Bedrijfsnaam}. Welk BTW-regime van toepassing is, op welke gronden, hoe vaak aangifte wordt gedaan, welke deadlines gelden en welke registraties (KOR, OSS, buitenland) actueel zijn. Dit document dient als basis voor alle facturatie, aangiftes, jaarrekening en AI-werk rondom BTW. Het is administratieve documentatie. Het is **geen fiscaal advies**. Bij twijfel: verwijs naar een fiscaal adviseur of administratiekantoor.

**Versie:** 1.0 | **Datum:** {datum} | **Rechtsvorm:** {rechtsvorm}

---

## 1. Bedrijfsgegevens

| Veld | Waarde |
|---|---|
| **Handelsnaam** | {Bedrijfsnaam} |
| **Rechtsvorm** | {BV / eenmanszaak / VOF / Stichting / etc.} |
| **KvK-nummer** | {KvK-nummer of [VERIFICEREN]} |
| **Vestigingsadres** | {Adres of [VERIFICEREN]} |
| **SBI-code (hoofdactiviteit)** | {SBI-code en omschrijving of [VERIFICEREN]} |
| **Website** | {URL of [VERIFICEREN]} |
| **Bron bedrijfsgegevens** | {`Juridisch/KvK-administratie.md` / `Directie/00 - Overzicht.md` / [VERIFICEREN]} |

---

## 2. BTW-status en regime

### 2.1 BTW-identificatienummer

| Veld | Waarde |
|---|---|
| **BTW-ID** | {NL123456789B01 of [VERIFICEREN]} |
| **Datum eerste BTW-registratie** | {YYYY-MM-DD of [VERIFICEREN]} |
| **Status** | actief / niet actief / vrijgesteld |
| **Bron** | {BTW-beschikking d.d. ... / Mijn Belastingdienst / [VERIFICEREN]} |

### 2.2 Toepasselijk regime

**Gekozen regime:** {21% standaard | 9% verlaagd | BTW-vrijgesteld | Kleineondernemersregeling (KOR)}

#### Bij regime "21% standaard"
- Alle leveringen vallen onder het standaard BTW-tarief van 21%.
- Aangifte volgens onderstaande frequentie (zie sectie 3).
- Op facturen wordt 21% BTW apart vermeld met BTW-bedrag, BTW-ID en KvK-nummer.

#### Bij regime "9% verlaagd"
- Welke diensten of producten vallen onder 9%: {bv. boeken, voedingsmiddelen, persoonlijke verzorging, fietsenreparatie, etc., [VERIFICEREN]}
- Mogelijk gemengd regime: een bedrijf kan tegelijk 21% en 9% factureren afhankelijk van het item. Bij gemengd regime, beschrijven welk percentage per type levering geldt.
- Onderbouwing van 9%-keuze: {wetsartikel of regeling, [VERIFICEREN]}

#### Bij regime "BTW-vrijgesteld"
- **Reden voor vrijstelling:** {bv. medische zorg, onderwijs, financiële dienstverlening, sociaal-cultureel werk, journalistiek, [VERIFICEREN]}
- **Beschikking van Belastingdienst:** {ja / nee / [VERIFICEREN]}. Als ja, beschikkingsdatum en kenmerk: {…}
- **Gevolgen:** geen BTW op facturen, maar ook geen aftrek van voorbelasting op inkopen.
- **Aandachtspunt:** vrijstelling geldt alleen voor specifieke branches. Als de aard van de dienstverlening verschuift, kan de vrijstelling vervallen. Periodiek toetsen.

#### Bij regime "Kleineondernemersregeling (KOR)"
- **Aanmelddatum bij Belastingdienst:** {YYYY-MM-DD of [VERIFICEREN]}
- **Bevestiging KOR ontvangen:** {ja / nee / [VERIFICEREN]}. Bevestigingsdatum: {…}
- **Omzet-grens 20.000 euro per kalenderjaar.** Bij overschrijding vervalt de KOR direct en geldt vanaf dat moment het reguliere regime (meestal 21%).
- **Verwachte omzet komend jaar:** {bedrag of [VERIFICEREN]}
- **Marge tot KOR-grens:** {20.000 minus verwachte omzet, bv. "ruim onder" of "krap, monitoren"}
- **Gevolgen:** geen BTW op facturen, geen periodieke BTW-aangifte, maar ook geen aftrek van voorbelasting.

> **Aandachtspunt regime:** een verkeerde keuze kan navordering en boetes opleveren. Als er twijfel is of het juiste regime is gekozen (bijvoorbeeld grensgeval rond KOR-grens, of onzekerheid over branche-vrijstelling), laat dit toetsen door een fiscaal adviseur of administratiekantoor.

---

## 3. Aangifte en BTW-verlegging

### 3.1 Aangifte-frequentie

| Veld | Waarde |
|---|---|
| **Frequentie** | {per kwartaal / per maand / per jaar} |
| **Sinds** | {YYYY-MM-DD of [VERIFICEREN]} |
| **Aanleiding frequentie-keuze** | {standaard Belastingdienst / op verzoek (bv. snellere teruggave) / [VERIFICEREN]} |
| **Aangifteweg** | {boekhoudpakket, naam, bv. Moneybird / e-Boekhouden / via administratiekantoor / direct Mijn Belastingdienst} |
| **Beheerder aangifte** | {ondernemer zelf / administratiekantoor naam / accountant / [VERIFICEREN]} |

### 3.2 Verlegde BTW (B2B internationaal)

Verlegde BTW is van toepassing bij leveringen aan zakelijke klanten in het buitenland met een geldig BTW-ID. Jij factureert 0% en de klant geeft het in zijn eigen land aan.

| Veld | Waarde |
|---|---|
| **Verlegde BTW van toepassing?** | {ja / nee / n.v.t.} |
| **Bij ja, type klanten** | {bv. SaaS-klanten in andere EU-landen, consultancy aan UK-bedrijven, etc.} |
| **Verificatie BTW-ID's** | {bv. via VIES (https://ec.europa.eu/taxation_customs/vies/) voor EU-klanten} |
| **Vermelding op factuur** | "BTW verlegd" met verwijzing naar artikel 138 of 196 Btw-richtlijn (afhankelijk van type levering) |

### 3.3 Aftrek voorbelasting

- Aftrekbaar bij regime "21%" en "9%": ja, voor zakelijke inkopen met BTW.
- Niet aftrekbaar bij regime "vrijgesteld" of "KOR".
- Bij gemengd gebruik (deels zakelijk, deels privé): pro-rata aftrek volgens onderbouwing.

---

## 4. Buitenland en OSS-registratie

### 4.1 Verkopen aan EU-particulieren (B2C)

| Veld | Waarde |
|---|---|
| **Verkoop je aan particulieren in andere EU-landen?** | {ja / nee} |
| **Bij ja, geschatte EU-omzet (consumenten) per jaar** | {bedrag of [VERIFICEREN]} |
| **OSS-registratie (One Stop Shop)** | {ja, sinds {datum} / nee / n.v.t.} |
| **Verplicht vanaf** | 10.000 euro grensoverschrijdende B2C-omzet per kalenderjaar binnen de EU |
| **Aangifteweg OSS** | {Mijn Belastingdienst → OSS-portaal / [VERIFICEREN]} |

### 4.2 Lokale buitenland-registraties

| Veld | Waarde |
|---|---|
| **Voorraad in andere EU-landen?** | {ja, in {land(en)} / nee} |
| **Vaste vestiging in buitenland?** | {ja / nee} |
| **Aparte BTW-registraties (per land)** | {opsomming of "geen"} |

### 4.3 Inkoop vanuit buitenland

| Veld | Waarde |
|---|---|
| **Intracommunautaire verwervingen (EU)** | {ja, type goederen of diensten / nee} |
| **Invoer-BTW (import buiten EU)** | {ja, voor … / nee} |
| **BTW-verlegging op inkoop** | {ja, regelmatig / incidenteel / nee} |

---

## 5. Aangiftes en deadlines

### 5.1 Aangifte-kalender (op basis van huidige frequentie)

Bij **kwartaalaangifte**:

| Tijdvak | Deadline indienen | Status |
|---|---|---|
| Q1 (jan-mrt) | 30 april | {ingediend op {datum} / nog te doen} |
| Q2 (apr-jun) | 31 juli | {ingediend op {datum} / nog te doen} |
| Q3 (jul-sep) | 31 oktober | {ingediend op {datum} / nog te doen} |
| Q4 (okt-dec) | 31 januari volgend jaar | {ingediend op {datum} / nog te doen} |

Bij **maandaangifte**: telkens uiterlijk de laatste dag van de maand erna.

Bij **jaaraangifte**: uiterlijk 31 maart van het jaar erna (op goedkeuring Belastingdienst).

### 5.2 Recente aangiftes

| Periode | Ingediend op | Resultaat (te betalen / teruggave) | Bedrag | Referentie |
|---|---|---|---|---|
| {Q3 2025} | {2025-10-22} | {te betalen / teruggave} | {bedrag of [VERIFICEREN]} | {referentie van Belastingdienst} |
| {Q2 2025} | {…} | {…} | {…} | {…} |
| {Q1 2025} | {…} | {…} | {…} | {…} |
| {Q4 2024} | {…} | {…} | {…} | {…} |

### 5.3 Eerstvolgende deadline

| Veld | Waarde |
|---|---|
| **Volgend tijdvak** | {bv. Q4 2025} |
| **Deadline indienen** | {bv. 2026-01-31} |
| **Status voorbereiding** | {nog niet gestart / in voorbereiding / klaar voor indienen} |
| **Reminder ingesteld?** | {ja, een week vóór deadline / nee, aanbevolen: zet in 02 - Tasks.md} |

### 5.4 Openstaande punten

- {bv. "Suppletie aangifte 2024 nog in te dienen voor correctie BTW op …"}
- {bv. "Geen openstaande punten"}

---

## 6. Brondocumenten

Letterlijke citaten en verwijzingen naar officiële stukken. Niet interpreteren of herschrijven, alleen overnemen wat in de bron staat.

### 6.1 BTW-beschikking

**Datum beschikking:** {YYYY-MM-DD of [VERIFICEREN]}
**Kenmerk:** {kenmerk Belastingdienst of [VERIFICEREN]}
**Relevante passage:**
> {letterlijk citaat over BTW-plicht, regime en frequentie, of [VERIFICEREN]}

**Bestandslocatie in vault:** {`Juridisch/Documenten/BTW-beschikking.pdf` of [VERIFICEREN]}

### 6.2 KOR-aanmeldbevestiging (indien van toepassing)

**Datum aanmelding:** {YYYY-MM-DD of n.v.t.}
**Datum bevestiging Belastingdienst:** {YYYY-MM-DD of [VERIFICEREN]}
**Relevante passage:**
> {letterlijk citaat, of n.v.t.}

**Bestandslocatie in vault:** {`Juridisch/Documenten/KOR-beschikking.pdf` of n.v.t.}

### 6.3 OSS-registratiebevestiging (indien van toepassing)

**Datum registratie:** {YYYY-MM-DD of n.v.t.}
**Geregistreerd voor:** {bv. EU-brede B2C levering van digitale diensten}
**Relevante passage:**
> {letterlijk citaat, of n.v.t.}

**Bestandslocatie in vault:** {`Juridisch/Documenten/OSS-registratie.pdf` of n.v.t.}

### 6.4 Eventuele andere stukken

- {bv. correctie- of naheffingsaanslag, beschikking BTW-vrijstelling, brief Belastingdienst over wijziging regime}

---

## 7. Aandachtspunten en risico's

Hier expliciet opnemen wat opvolging behoeft. Lege lijst is ook een uitkomst, beter geen risico's dan bedachte risico's.

- {bv. "Omzet groeit hard, marge tot KOR-grens is nog 3.500 euro. Bij overschrijding vervalt KOR direct, dus kwartaalcheck instellen."}
- {bv. "Vrijstelling op basis van zorg-regeling, maar zonder schriftelijke beschikking. Aanbeveling: beschikking aanvragen of laten toetsen door fiscaal adviseur."}
- {bv. "Verkoop aan particulieren in DE en BE start dit kwartaal. OSS-registratie nodig zodra grens van 10.000 euro EU-omzet wordt overschreden."}
- {bv. "Suppletie 2024 nog open, Q4 sluit pas correct als die is ingediend."}

---

## 8. Cross-references

| Document | Pad | Wat het toevoegt |
|---|---|---|
| KvK-administratie | `Juridisch/KvK-administratie.md` | Rechtsvorm, KvK-nummer, vestiging, basis voor factuurvoetregels |
| Algemene Voorwaarden | `Juridisch/Algemene Voorwaarden.md` | Verwijst naar BTW-regime op facturen |
| Bedrijfsoverzicht | `Directie/00 - Overzicht.md` | Branche en dienstverlening, onderbouwing regime-keuze |
| Jaarrekening | `Financiën/Rapportage/` | Omzetbasis voor regime-toetsing en KOR-grens |
| Tasks (deadline-reminders) | `Directie/02 - Tasks.md` | Aangifte-herinneringen per kwartaal |

---

## 9. Wijzigingshistorie

| Datum | Versie | Wat | Door |
|---|---|---|---|
| {datum} | 1.0 | Eerste versie, BTW-status volledig vastgelegd via skill `btw-administratie` | {Naam of "AI-skill"} |

---

*{Bedrijfsnaam} | {Vestigingsplaats} | KvK {KvK-nummer} | BTW-ID {BTW-ID}*
*Versie 1.0, {datum}, SCALE-check J2*

> **Disclaimer:** dit document is administratieve documentatie. Het is **geen fiscaal advies**. Voor toetsing van regime-keuze, KOR-grens, OSS-verplichting, vrijstelling-grond of internationale BTW-structuur: raadpleeg een fiscaal adviseur, administratiekantoor (bijvoorbeeld Fit In Finance) of accountant.
