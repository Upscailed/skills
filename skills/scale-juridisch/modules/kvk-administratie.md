# KvK Administratie (module van scale-juridisch)

> Bron-skill: `kvk-administratie` | SCALE-code: J1 | Versie: 1.1.0 | Geschatte tijd: 10-20 minuten

---

# KvK Administratie

## Doel

Documenteert de KvK-inschrijving van een Nederlandse onderneming in één enkel, goed gestructureerd bestand dat als bron-document dient voor alle andere juridische documenten in de vault. De skill haalt zoveel mogelijk gegevens uit een geüpload KvK-uittreksel (PDF) of via een KvK-zoek-URL, zodat de gebruiker niet handmatig veldjes hoeft in te tikken die al officieel vastgelegd zijn. Wat de bronnen niet kunnen geven (BTW-ID dat niet op het uittreksel staat, recente bestuurswissel, etc.) wordt via een kort interview aangevuld.

Het resultaat is een document met KvK-nummer, BTW-ID, RSIN, handelsnaam, statutaire naam, rechtsvorm, vestigingsadres, inschrijfdatum, SBI-codes, bestuurders/eigenaren, aandeelhouders en (bij BV) kapitaal. Daarmee dekt het de quality-eis van SCALE-check **J1** (KvK-inschrijving vermeld in `Juridisch/`-bestand) én levert het de bedrijfsgegevens die J3 (Algemene Voorwaarden), J4 (Privacyverklaring) en J5 (Klantcontract) nodig hebben.

**Privacy-disclaimer:** dit document bevat onderneming-identificerende gegevens (KvK-nummer, BTW-ID, RSIN, bestuurderskoppelingen). Bij eenmanszaken kan het vestigingsadres samenvallen met een woonadres. Het bestand is bedoeld voor **intern gebruik**. Voor externe deling (bijvoorbeeld op een website) eerst filteren — typisch publiek deelbaar zijn: handelsnaam, KvK-nummer, BTW-ID en vestigingsplaats. Niet publiek: RSIN, woonadres-bestuurders, geboortedata.

## Run-time introductie

Toon dit blok één keer bij start van de skill, vóór elke vraag:

```
+--------------------------------------------------------------+
|              KvK Administratie - Run-time intro              |
+--------------------------------------------------------------+
| Wat: ik leg de officiële KvK-gegevens van je bedrijf vast    |
|       in één bestand dat ook je AV, privacyverklaring en     |
|       klantcontracten kunnen aanroepen.                      |
|                                                              |
| Hoe:  4 blokken, 10-20 min totaal.                           |
|   1. Scope kiezen (1 vraag)                                  |
|   2. Pre-fill via KvK-uittreksel of zoek-URL (1-2 vragen)    |
|   3. Aanvullen + verifiëren (3-7 gerichte vragen)            |
|   4. Document samenstellen + opslaan                         |
|                                                              |
| Tip: heb je je KvK-uittreksel als PDF bij de hand? Dat       |
|      scheelt 5-10 minuten typen. Anders pak ik het op via    |
|      de KvK-zoek-URL van je bedrijf.                         |
+--------------------------------------------------------------+
```

## Visuele Flow

```
                     +-----------------------+
                     |  Start skill          |
                     |  kvk-administratie    |
                     +----------+------------+
                                |
                                v
                +--------------------------------+
                |  Blok 1: Scope kiezen          |
                |  -> welk bedrijf? (1 vraag)    |
                +--------------+-----------------+
                               |
                               v
                +-------------------------------------+
                |  Blok 2: Pre-fill (proactief)       |
                |  -> KvK-uittreksel PDF beschikbaar? |
                |  -> Of: KvK-zoek-URL?               |
                |  -> Of: handmatig invullen          |
                |  (1-2 vragen, meeste velden auto)   |
                +-----------------+-------------------+
                                  |
                                  v
                +-----------------------------------+
                |  Blok 3: Aanvullen + verifiëren   |
                |  -> BTW-ID (niet in uittreksel)   |
                |  -> Bestuurders nog actueel?      |
                |  -> Bij BV: kapitaal + aandelen   |
                |  -> Adres-wijziging sinds laatst? |
                |  (3-7 gerichte vragen)            |
                +-----------------+-----------------+
                                  |
                                  v
                +-----------------------------------+
                |  Blok 4: Document samenstellen    |
                |  -> Vul template in               |
                |  -> [VERIFICEREN] op gaten        |
                |  -> Opslaan op output-pad         |
                |  -> Privacy-disclaimer bovenaan   |
                |  -> Cross-link J3, J4, J5         |
                +-----------------+-----------------+
                                  |
                                  v
                       +----------------------+
                       |  Output:             |
                       |  {scope}/Juridisch/  |
                       |  KvK-administratie.md|
                       +----------------------+
```

## Wanneer triggeren

Activeer deze skill bij elk van de volgende signalen:

- "Leg mijn KvK-gegevens vast", "documenteer mijn inschrijving", "KvK administreren"
- "Mijn KvK-nummer staat nergens", "ik weet niet meer wat mijn BTW-ID is"
- "J1 dichten", "gat in SCALE-audit bij juridisch", "scale-audit zegt KvK ontbreekt"
- "Ik heb een uittreksel uit het Handelsregister, kun je dat verwerken?"
- "Voeg mijn RSIN/SBI-codes/bestuurders toe aan de vault"
- "Mijn AV/privacyverklaring vraagt om KvK-data die er nog niet is"
- Iemand draait de skill `algemene-voorwaarden`, `privacyverklaring` of `klantcontract` op een scope waar `{scope}/Juridisch/KvK-administratie.md` ontbreekt en de skill voorstelt om eerst J1 te dichten.
- De gebruiker noemt een recente wijziging in officiële gegevens: adres-wijziging, bestuurswissel, naamswijziging, omzetting eenmanszaak naar BV.

## NIET triggeren

Negeer deze skill in deze situaties:

- De gebruiker is **niet** ingeschreven bij de KvK (zuiver privé-project, hobby zonder ondernemerschap). Geef in plaats daarvan aan dat J1 voor deze scope `n.v.t.` is.
- De scope is `Persoonlijk/` (persoonlijke vault, geen bedrijf). Markeer J1 als n.v.t. en sla de skill over.
- De gebruiker wil een **nieuwe** onderneming inschrijven en heeft nog geen KvK-nummer. Deze skill documenteert een bestaande inschrijving; voor het inschrijvingsproces zelf is dit niet de juiste skill.
- Alleen vraag naar BTW-administratie zonder KvK-context. Doorverwijzen naar de skill `btw-administratie` (J2).
- Het bestand `{scope}/Juridisch/KvK-administratie.md` bestaat al én is recent (< 6 maanden) bijgewerkt. Vraag dan eerst of het een **update** moet zijn of dat er alleen een veld bijgewerkt hoeft te worden.

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf de KvK-administratie opgesteld moet worden. Bied de zichtbare bedrijfsmappen in de vault aan als opties (typisch: alles in `Bedrijven/` met een eigen `Directie/`-submap, of de huidige Upscailed-OS-root als de skill in de Upscailed-vault zelf draait).

Bevestig de scope expliciet. Controleer daarna of het bestand al bestaat op `{scope}/Juridisch/KvK-administratie.md`:

- **Bestaat niet** → ga naar Stap 2.
- **Bestaat wel** → vraag: "Wil je dit (1) volledig vervangen, (2) een specifiek veld bijwerken, of (3) een nieuwe versie met de oude als archief opslaan?". Bij optie 3: hernoem het bestaande bestand naar `KvK-administratie - archief YYYY-MM-DD.md` voordat je verder gaat.

### Stap 2: Pre-fill - proactief

Stel deze vraag (één keer, met drie keuzes):

> "Wat heb je beschikbaar voor pre-fill?
>
> 1. **KvK-uittreksel als PDF** (uittreksel Handelsregister, te downloaden via kvk.nl) — bevat ~90% van wat we nodig hebben.
> 2. **De KvK-zoek-URL van het bedrijf** (bijvoorbeeld via `https://www.kvk.nl/zoeken/?source=all&q={bedrijfsnaam}` of een directe vestigingspagina) — bevat het publieke deel.
> 3. **Niets** — we vullen alles handmatig in via een kort interview."

#### 2a. Bij KvK-uittreksel-PDF

Vraag de gebruiker het bestand te uploaden of het pad te geven. Lees de PDF en extraheer (typisch zichtbaar op een uittreksel):

| Veld | Vindplaats op uittreksel |
|---|---|
| KvK-nummer | bovenin, "Dossiernummer" of "KvK-nummer" |
| Handelsnaam / statutaire naam | "Naam onderneming" + "Statutaire naam" |
| Rechtsvorm | "Rechtsvorm" |
| Vestigingsadres | "Vestigingsadres" |
| Postadres (indien afwijkend) | "Correspondentie-adres" |
| Inschrijfdatum | "Datum vestiging" / "Datum oprichting" |
| RSIN | "RSIN" (alleen bij rechtspersonen, BV/Stichting/etc.) |
| SBI-codes | "Activiteiten" — codes + omschrijving |
| Bestuurders / eigenaar(s) | "Functionarissen" / "Eigenaar" |
| Bij BV: maatschappelijk + geplaatst kapitaal | "Kapitaal" |
| Bij BV: enig aandeelhouder | "Enig aandeelhouder" (indien vermeld) |

**Let op — wat het uittreksel NIET geeft:**
- BTW-ID (komt via een aparte brief van de Belastingdienst, formaat `NL...B01`).
- Werknemers, bankrekening, omzet (privacygevoelig, niet op openbaar uittreksel).
- Geboortedatum bestuurders bij online-versie (alleen bij betaald rechtsgeldig uittreksel).

Voor BTW-ID: vraag actief in Stap 3.

#### 2b. Bij KvK-zoek-URL

Vraag de gebruiker de bedrijfsnaam óf een directe URL. Construeer indien nodig de zoek-URL: `https://www.kvk.nl/zoeken/?source=all&q={URL-encoded-bedrijfsnaam}`.

Probeer via een web-fetch het publieke deel op te halen (KvK-nummer, handelsnaam, vestigingsplaats, rechtsvorm, SBI-hoofdactiviteit). Veel details (RSIN, bestuurders, kapitaal) zijn alleen via een betaald uittreksel beschikbaar — die velden blijven leeg en krijgen `[VERIFICEREN]`.

Als de web-fetch niet werkt (geen connectivity, of de pagina is dynamisch gerenderd): val terug op handmatig in Stap 3 en suggereer dat de gebruiker alsnog een uittreksel uploadt.

#### 2c. Bij handmatig

Sla pre-fill over. Alle velden worden via Stap 3 verzameld.

### Stap 3: Aanvullen + verifiëren

Maak intern een lijst van ontbrekende of te verifiëren velden en stel alleen daarover vragen. Bundel vragen logisch, niet één-voor-één.

**Verifieer altijd** (ook bij volledige pre-fill, omdat KvK-gegevens kunnen verouderen):

1. **Adres-wijziging:** "Is het vestigingsadres `[adres uit uittreksel]` nog actueel? KvK-uittreksels kunnen achter lopen na een verhuizing."
2. **Bestuurswissel:** "Zijn de bestuurders/eigenaren `[lijst uit uittreksel]` nog correct, of is er recent iemand toe- of afgetreden?"
3. **Bij BV — aandeelhouderswissel:** "Klopt de aandeelhoudersstructuur `[wat het uittreksel zegt]` nog?"

**Vul aan** wat ontbreekt. Veelgebruikte aanvulvragen:

- **BTW-ID** (altijd, als niet expliciet meegegeven): "Wat is je BTW-identificatienummer? Dat staat op de brief van de Belastingdienst en heeft het formaat `NL[9 cijfers]B[2 cijfers]`. Als je BTW-vrijgesteld bent (KOR), zeg dat dan."
- **Postadres** (als afwijkend van vestigingsadres): "Heb je een apart postadres? Anders gebruiken we het vestigingsadres."
- **Website + algemene e-mail** (administratief contactpunt): "Wat is de zakelijke website en het algemene e-mailadres dat we als contact opnemen?"
- **Bij eenmanszaak/VOF — privacy-keuze:** "Bij eenmanszaak/VOF is het vestigingsadres vaak het woonadres. Wil je dit in het bestand alleen als plaats opnemen (vestigingsplaats) of inclusief straat + huisnummer?"
- **Branche/sector kort:** "Klopt de SBI-hoofdactiviteit `[code + omschrijving]` als beschrijving van wat je doet, of wil je een vrije omschrijving toevoegen?"

Vraag in totaal 3-7 vragen — niet meer. Als velden onbeantwoordbaar blijven: laat ze als `[VERIFICEREN]` in het output-document staan.

### Stap 4: Document samenstellen

Vul het template in `references/template-kvk-administratie.md` volledig in met de verzamelde gegevens. Vervang elk `[placeholder]` door de werkelijke waarde. Laat `[VERIFICEREN]` zichtbaar staan op plekken waar pre-fill en interview samen geen waarde opleverden.

**Rechtsvorm-secties (sectie 5 Bestuur en eigenaarschap, sectie 6 Kapitaal en aandelen):** render ALLEEN de subsectie voor de gekozen rechtsvorm. Bij BV: skip subsecties voor EZ en VOF. Bij EZ: skip subsecties voor BV en VOF. Bij VOF/Maatschap: skip subsecties voor EZ en BV. Sectie 6 (Kapitaal en aandelen) is uitsluitend voor BV en wordt bij andere rechtsvormen volledig weggelaten. Zo blijft het document compact en relevant per rechtsvorm.

Zorg dat de privacy-disclaimer en de "intern gebruik"-vlag bovenaan het document staan. Voeg ook de cross-links naar J3/J4/J5 toe (bestand-paden binnen dezelfde scope), zodat die documenten dit bestand kunnen aanroepen.

### Stap 5: Opslaan + aanbevelingen

Sla het document op als `{scope}/Juridisch/KvK-administratie.md`. Maak de map `Juridisch/` aan als die nog niet bestaat — log dit dan ook in `Systeem/Structuur/Vault Changelog.md` als de vault een dergelijk centraal changelog kent.

Geef tot slot drie concrete aanbevelingen aan de gebruiker:

1. **Up-to-date houden:** zet een terugkerende reminder (jaarlijks, bijvoorbeeld in januari) om de KvK-administratie te verifiëren tegen een vers uittreksel. Bestuurswissels en adres-wijzigingen blijven anders ongezien.
2. **Cross-links activeren:** als `Algemene Voorwaarden.md`, `Privacyverklaring.md` of `Klantcontract.md` al bestaan in deze scope, controleer dan of die documenten de juiste KvK-data (KvK-nummer, vestigingsplaats, rechtsvorm) gebruiken en update ze waar nodig.
3. **Externe deling:** voor publicatie op een website of in een colofon, gebruik alléén handelsnaam, KvK-nummer, BTW-ID en vestigingsplaats. RSIN, woonadres-bestuurders en geboortedata blijven intern.

Logging:

1. Werk het changelog bij van het bijbehorende bedrijf (`{scope}/Directie/Changelog.md` of equivalent).
2. Werk de daily van vandaag bij onder "Gedaan vandaag", als de vault een daily-flow gebruikt.
3. Als de map `Juridisch/` nieuw aangemaakt is en de vault een centraal vault-changelog kent: log daar ook.
4. Als er een SCALE-audit-bestand bestaat waarin J1 op ❌ of ⚠️ staat: stel voor om de audit opnieuw te draaien.

## Belangrijke regels

- **Pre-fill heeft voorrang.** Vraag nooit handmatig naar iets dat een KvK-uittreksel of zoek-URL al heeft geleverd. Maximaal 3-7 vragen na pre-fill.
- **Altijd verifiëren bij pre-fill.** KvK-uittreksels kunnen weken tot maanden oud zijn — adres en bestuurders altijd kort bevestigen, ook als het uittreksel ze geeft.
- **Privacy zichtbaar.** Privacy-disclaimer bovenaan het document, plus de "intern, niet voor externe deling zonder filtering"-vlag. Niet weglaten.
- **Eenmanszaak woonadres.** Bij eenmanszaak/VOF actief de keuze stellen tussen volledig vestigingsadres of alleen vestigingsplaats, omdat het vaak hetzelfde adres als het woonadres is.
- **BTW-ID staat niet op uittreksel.** Vraag dit altijd apart. Mogelijk antwoord: BTW-vrijgesteld (kleine ondernemersregeling, KOR) — dan veld als `BTW-vrijgesteld (KOR)` documenteren.
- **[VERIFICEREN] zichtbaar laten.** Velden die noch pre-fill noch interview konden invullen, krijgen `[VERIFICEREN]` in het output-document — niet stilletjes leeg laten.
- **Nooit overschrijven** zonder bevestiging. Bestaat het bestand al → expliciet vragen of het update, gedeeltelijke wijziging of versie-vervanging is.
- **Cross-link met J3/J4/J5.** Het document moet aanroepbaar zijn vanuit de skills voor Algemene Voorwaarden, Privacyverklaring en Klantcontract — neem dus altijd KvK-nummer, BTW-ID, vestigingsplaats, rechtsvorm en handelsnaam op in een goed leesbaar overzicht bovenin.
- **Geen juridisch advies.** Deze skill documenteert; ze toetst niet of de inschrijving fiscaal optimaal is, of de rechtsvorm past bij de schaal. Bij twijfel verwijzen naar een accountant of jurist.
- **Vault-onafhankelijk.** Geen hard-coded paden naar één specifieke vault. Werk altijd vanuit `{scope}` en respecteer de mappenstructuur die in de actieve vault aanwezig is.

## Changelog

### 1.1.0 — 2026-05-11

- Conditional rendering: BV-cases skippen EZ/VOF-subsecties en omgekeerd.

### 1.0.0 — initiele release

- Eerste productie-versie.
