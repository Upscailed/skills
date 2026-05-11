---
name: algemene-voorwaarden
title: "Algemene Voorwaarden"
description: "Stelt een complete set Algemene Voorwaarden op voor een Nederlandse B2B-dienstverlener. Scant de vault automatisch op bedrijfsgegevens, stelt maximaal 2 gerichte vragen en genereert een juridisch solide document van 15 artikelen (inclusief overmacht, AVG-verwijzing en wijzigingsclausule), klaar voor gebruik bij offertes en contracten. Gebruik deze skill altijd wanneer iemand vraagt om AV, algemene voorwaarden, contractbijlagen, zegt 'ik heb geen voorwaarden', 'J3 dichten', 'gat in SCALE-audit voor juridisch', of wanneer iemand vraagt wat er gebeurt als een klant niet betaalt en er nog geen AV bestaan."
category: operations
tags: [juridisch, av, voorwaarden, contracten, scale-framework, j3]
estimatedTime: "20-30 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Algemene Voorwaarden

## Doel

Stelt een complete set Algemene Voorwaarden op voor een Nederlandse B2B-dienstverlener. De skill scant de vault zodat bedrijfsnaam, diensten en tarieven niet opnieuw ingetypt hoeven te worden. Daarna stelt de skill maximaal 2 gerichte vragen over wat nergens in de vault staat. Het resultaat is een juridisch solide basisdocument van 15 artikelen, klaar voor gebruik als bijlage bij offertes, contracten en op de website.

**Let op:** dit document is een sjabloon op basis van standaard Nederlands dienstverleningsrecht. Bij hoog-risico contracten of specifieke branchevereisten wordt aanbevolen het door een jurist te laten controleren.

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf de AV opgesteld worden. Bied de zichtbare bedrijfsmappen in de vault aan als opties. Bevestig de scope voordat je verder gaat.

Controleer of er al een bestand bestaat op `{scope}/Juridisch/Algemene Voorwaarden.md`. Als dat zo is: vraag of dit een update is (bestaande aanpassen) of een nieuwe versie (oude archiveren als `Algemene Voorwaarden - archief YYYY-MM-DD.md`).

### Stap 2: Vault scannen

Lees de volgende bestanden systematisch en noteer intern wat je vindt:

| Bron | Wat je eruit haalt |
|---|---|
| `{scope}/Directie/00 - Overzicht.md` | Bedrijfsnaam, website, rechtsvorm, diensten, tarieven |
| `{scope}/Juridisch/KvK Administratie.md` (als bestaat) | KvK-nummer, vestigingsadres, rechtsvorm |
| `{scope}/Financiën/` (als bestaat) | Betalingstermijnen, facturatiewijze |
| `{scope}/Operations/Processen/` (als bestaat) | Specifieke leveringsafspraken |

Vul daarna onderstaand intern overzicht in:

- Handelsnaam: [uit vault of leeg]
- Rechtsvorm: [BV / eenmanszaak / VOF / etc.]
- Vestigingsplaats: [uit vault of leeg]
- KvK-nummer: [uit vault of "nog niet beschikbaar"]
- Website: [uit vault of leeg]
- Diensten (beknopt): [uit vault]
- Standaard factuurwijze: [uit vault of leeg]

### Stap 3: Kort interview

Stel alleen vragen over wat echt ontbreekt na de vault-scan. Maximaal 2 vragen, altijd met een aanbevolen standaard erbij zodat de gebruiker snel kan antwoorden.

**Vraag 1 — Betalingstermijn** (als niet uit vault):
> "Hoe lang krijgen klanten om een factuur te betalen? Veelgebruikt voor B2B-dienstverleners is 14 of 30 dagen na factuurdatum. Wat geldt voor jullie?"

**Vraag 2 — Aansprakelijkheidsgrens** (als niet uit vault):
> "Tot welk bedrag zijn jullie aansprakelijk als er iets misgaat? De standaard voor Nederlandse dienstverleners is: beperkt tot het factuurbedrag van de betreffende opdracht. Klopt dat, of is er een andere grens?"

Als beide vragen al beantwoord zijn vanuit de vault: sla Stap 3 over en ga direct naar Stap 4.

### Stap 4: Document samenstellen

Genereer het onderstaande document volledig ingevuld met de verzamelde gegevens. Vervang alle `[placeholders]` door de werkelijke waarden. Markeer `[VERIFICEREN]` op plaatsen waar de vault geen gegevens had en de gebruiker later moet aanvullen.

---

```markdown
---
type: juridisch
bedrijf: [Bedrijfsnaam]
onderwerp: Algemene Voorwaarden
versie: 1.0
status: concept
opgesteld: YYYY-MM-DD
---

# Algemene Voorwaarden [Bedrijfsnaam]

**Versie:** 1.0 | **Datum:** [datum] | **Rechtsvorm:** [rechtsvorm]

---

## Artikel 1 — Definities

In deze Algemene Voorwaarden wordt verstaan onder:

- **Opdrachtnemer:** [Bedrijfsnaam], gevestigd te [Vestigingsplaats], ingeschreven bij de Kamer van Koophandel onder nummer [KvK-nummer of VERIFICEREN].
- **Opdrachtgever:** de natuurlijke persoon of rechtspersoon die met Opdrachtnemer een overeenkomst sluit.
- **Overeenkomst:** elke afspraak tussen Opdrachtgever en Opdrachtnemer tot het verrichten van diensten.
- **Diensten:** de werkzaamheden die Opdrachtnemer verricht, waaronder [beknopte beschrijving diensten].

## Artikel 2 — Toepasselijkheid

2.1 Deze Algemene Voorwaarden zijn van toepassing op alle aanbiedingen, offertes en overeenkomsten waarbij Opdrachtnemer diensten levert aan Opdrachtgever.

2.2 Afwijkingen van deze voorwaarden zijn alleen geldig indien uitdrukkelijk schriftelijk overeengekomen.

2.3 De toepasselijkheid van eventuele inkoop- of andere voorwaarden van Opdrachtgever wordt uitdrukkelijk van de hand gewezen.

2.4 Deze voorwaarden zijn uitsluitend van toepassing op overeenkomsten met zakelijke partijen (B2B). Consumenten vallen buiten de reikwijdte van deze voorwaarden.

## Artikel 3 — Aanbod en totstandkoming

3.1 Alle aanbiedingen en offertes van Opdrachtnemer zijn vrijblijvend, tenzij uitdrukkelijk anders aangegeven.

3.2 Een overeenkomst komt tot stand op het moment dat Opdrachtgever de offerte schriftelijk (waaronder per e-mail) accepteert, of op het moment dat Opdrachtnemer een opdracht schriftelijk bevestigt.

3.3 Mondeling overeengekomen aanvullingen of wijzigingen zijn alleen bindend na schriftelijke bevestiging door Opdrachtnemer.

## Artikel 4 — Uitvoering van de opdracht

4.1 Opdrachtnemer voert de opdracht naar beste inzicht en vermogen uit, overeenkomstig de eisen van goed vakmanschap.

4.2 Opdrachtnemer heeft het recht om werkzaamheden te laten uitvoeren door derden, indien dit voor de uitvoering wenselijk is, na overleg met Opdrachtgever.

4.3 Opgegeven levertijden en deadlines zijn indicatief, tenzij uitdrukkelijk schriftelijk als fatale termijn overeengekomen.

4.4 Opdrachtnemer is niet aansprakelijk voor vertragingen die het gevolg zijn van het niet tijdig aanleveren van benodigde informatie of medewerking door Opdrachtgever.

## Artikel 5 — Verplichtingen van de opdrachtgever

5.1 Opdrachtgever zorgt er tijdig voor dat alle informatie en medewerking die Opdrachtnemer nodig heeft voor de uitvoering van de opdracht, beschikbaar worden gesteld.

5.2 Opdrachtgever staat in voor de juistheid en volledigheid van de door hem verstrekte gegevens.

5.3 Opdrachtgever vrijwaart Opdrachtnemer voor schade die voortvloeit uit het niet nakomen van deze verplichtingen.

## Artikel 6 — Tarieven en facturatie

6.1 Alle vermelde tarieven zijn in euro's en exclusief btw, tenzij uitdrukkelijk anders aangegeven.

6.2 Tarieven zijn gebaseerd op de informatie die bij aanvang van de opdracht beschikbaar was. Bij ingrijpende wijzigingen in de opdracht behoudt Opdrachtnemer zich het recht voor de tarieven aan te passen.

6.3 Opdrachtnemer factureert [factuurmoment — bijv. "maandelijks achteraf" of "bij aanvang en bij oplevering" — VERIFICEREN als niet uit vault].

## Artikel 7 — Betaling

7.1 Betaling dient te geschieden binnen **[betalingstermijn] dagen** na factuurdatum, op de door Opdrachtnemer aangegeven wijze.

7.2 Bij niet-tijdige betaling is Opdrachtgever van rechtswege in verzuim. Vanaf de vervaldatum is de wettelijke handelsrente (artikel 6:119a BW) verschuldigd over het openstaande bedrag.

7.3 Buitengerechtelijke incassokosten komen voor rekening van Opdrachtgever en bedragen minimaal 15% van het openstaande bedrag, met een minimum van €75,-.

7.4 Opdrachtnemer heeft het recht om bij aanhoudende wanbetaling de uitvoering van de opdracht te staken totdat betaling heeft plaatsgevonden.

## Artikel 8 — Aansprakelijkheid

8.1 De aansprakelijkheid van Opdrachtnemer voor directe schade als gevolg van een toerekenbare tekortkoming is beperkt tot **[aansprakelijkheidsgrens]**.

8.2 Opdrachtnemer is nimmer aansprakelijk voor indirecte schade, gevolgschade, gederfde winst, gemiste besparingen of schade door bedrijfsstagnatie.

8.3 Aansprakelijkheid voor schade veroorzaakt door derden die Opdrachtnemer heeft ingeschakeld, is uitgesloten.

8.4 Opdrachtgever dient schade zo spoedig mogelijk, maar uiterlijk binnen 30 dagen na ontdekking, schriftelijk bij Opdrachtnemer te melden. Na verloop van deze termijn vervalt het recht op schadevergoeding.

## Artikel 9 — Intellectueel eigendom

9.1 Alle rechten van intellectueel eigendom op door Opdrachtnemer ontwikkelde of ter beschikking gestelde materialen, methoden en werkwijzen blijven berusten bij Opdrachtnemer, tenzij uitdrukkelijk schriftelijk anders overeengekomen.

9.2 Opdrachtgever verkrijgt een niet-exclusief, niet-overdraagbaar gebruiksrecht op de in het kader van de overeenkomst opgeleverde resultaten, voor de overeengekomen doeleinden.

9.3 Het is Opdrachtgever niet toegestaan om zonder voorafgaande schriftelijke toestemming van Opdrachtnemer de resultaten te verveelvoudigen, te openbaren of aan derden ter beschikking te stellen.

## Artikel 10 — Vertrouwelijkheid

10.1 Partijen verplichten zich over en weer tot geheimhouding van alle vertrouwelijke informatie die zij in het kader van de overeenkomst van elkaar ontvangen.

10.2 Informatie geldt als vertrouwelijk indien dit door de andere partij is medegedeeld, of indien dit uit de aard van de informatie voortvloeit.

10.3 Deze geheimhoudingsplicht geldt niet voor informatie die reeds openbaar was of anderszins rechtmatig bekend is.

## Artikel 11 — Duur en beëindiging

11.1 De overeenkomst wordt aangegaan voor de duur zoals overeengekomen in de offerte of opdrachtbevestiging.

11.2 Abonnementen en doorlopende diensten worden opgezegd met inachtneming van een opzegtermijn van **1 kalendermaand**, tenzij anders overeengekomen.

11.3 Beide partijen kunnen de overeenkomst met onmiddellijke ingang schriftelijk ontbinden indien de andere partij:
- in staat van faillissement wordt verklaard;
- surseance van betaling aanvraagt;
- zijn verplichtingen ernstig en herhaaldelijk niet nakomt en na sommatie niet herstelt.

11.4 Bij ontbinding door Opdrachtgever is Opdrachtnemer gerechtigd reeds verrichte werkzaamheden en gemaakte kosten volledig in rekening te brengen.

## Artikel 12 — Overmacht

12.1 Opdrachtnemer is niet gehouden tot nakoming van enige verplichting indien hij daartoe verhinderd is als gevolg van overmacht. Onder overmacht wordt verstaan: elke van de wil van Opdrachtnemer onafhankelijke omstandigheid die nakoming tijdelijk of blijvend verhindert, waaronder begrepen ziekte van sleutelpersoneel, stroomstoringen, internetuitval, stakingen en overheidsmaatregelen.

12.2 Indien de overmachtsituatie langer dan 30 dagen duurt, hebben beide partijen het recht de overeenkomst schriftelijk te ontbinden, zonder verplichting tot schadevergoeding. Opdrachtnemer behoudt in dat geval recht op vergoeding van reeds verrichte werkzaamheden.

## Artikel 13 — Privacy en gegevensbescherming

13.1 Opdrachtnemer verwerkt persoonsgegevens van Opdrachtgever uitsluitend in het kader van de uitvoering van de overeenkomst en conform de toepasselijke privacywetgeving, waaronder de Algemene Verordening Gegevensbescherming (AVG).

13.2 Voor zover Opdrachtnemer bij de uitvoering van de diensten persoonsgegevens verwerkt namens Opdrachtgever, sluiten partijen zo nodig een verwerkersovereenkomst.

13.3 Voor meer informatie over de verwerking van persoonsgegevens verwijst Opdrachtnemer naar zijn Privacyverklaring, beschikbaar via [website of VERIFICEREN].

## Artikel 14 — Wijziging van de voorwaarden

14.1 Opdrachtnemer behoudt zich het recht voor deze Algemene Voorwaarden te wijzigen of aan te vullen.

14.2 Wijzigingen worden ten minste 30 dagen voor inwerkingtreding schriftelijk of via e-mail aan Opdrachtgever medegedeeld.

14.3 Indien Opdrachtgever de wijziging niet accepteert, heeft hij het recht de overeenkomst te beëindigen tegen de datum waarop de nieuwe voorwaarden van kracht worden.

## Artikel 15 — Toepasselijk recht en geschillen

15.1 Op alle overeenkomsten waarop deze Algemene Voorwaarden van toepassing zijn, is uitsluitend **Nederlands recht** van toepassing.

15.2 Geschillen worden bij voorkeur in onderling overleg opgelost. Indien partijen er niet in slagen een geschil in der minne te schikken, wordt dit exclusief voorgelegd aan de bevoegde rechter in het arrondissement van de vestigingsplaats van Opdrachtnemer ([Vestigingsplaats]).

---

*[Bedrijfsnaam] | [Vestigingsplaats] | KvK [KvK-nummer] | [website]*
*Versie 1.0 — [datum]*
```

---

Vul na het genereren de velden met `[VERIFICEREN]` handmatig aan zodra de gegevens beschikbaar zijn.

### Stap 5: Opslaan + aanbevelingen

Sla het document op als `{scope}/Juridisch/Algemene Voorwaarden.md`. Maak de map `Juridisch/` aan als die nog niet bestaat — log dit dan ook in `Systeem/Structuur/Vault Changelog.md`.

Geef daarna drie concrete aanbevelingen:

1. **Gebruik:** voeg de volgende zin toe aan elke offerte of opdrachtbevestiging: "Op deze overeenkomst zijn de Algemene Voorwaarden van [Bedrijfsnaam] van toepassing, te raadplegen via [website] en op verzoek per e-mail beschikbaar."
2. **Deponering:** overweeg de AV te deponeren bij de Kamer van Koophandel (eenmalig, lage kosten). Dit versterkt de juridische geldigheid.
3. **Juristencheck:** laat de AV bij hoog-risico contracten (opdrachten boven €5.000 of bij datagevoelige werkzaamheden) controleren door een jurist.

Logging:
1. Werk het changelog bij: `{scope}/Directie/Changelog.md`
2. Werk de daily van vandaag bij onder "Gedaan vandaag"
3. Als de map `Juridisch/` nieuw aangemaakt is: log ook in `Systeem/Structuur/Vault Changelog.md`
4. Als er een SCALE-audit staat met J3 op ❌ of ⚠️: stel voor om de audit opnieuw te draaien

## Externe of fictieve klant modus

Niet elke gebruiker is een van Iwan's bedrijven met een ingerichte vault. Als de skill wordt aangeroepen voor een extern bedrijf, een fictieve case of een evaluatie:

- Skip de vault-scan stap. Gebruik wat in het prompt staat als enige bron.
- Vul ontbrekende juridische velden in met realistische defaults plus expliciete `[VERIFICEREN]`-marker. Defaults voor Nederlandse B2B-dienstverleners (betalingstermijn 14 of 30 dagen, aansprakelijkheid beperkt tot factuurbedrag, 1 maand opzegtermijn, Nederlands recht) zijn altijd safe.
- Schrijf de deliverable naar het opgegeven output-pad, niet naar `{scope}/...`-paden in een vault die niet bestaat.
- Verwijs naar gerelateerde SCALE-skills (J1 KvK, J2 BTW, J4 Privacyverklaring, J5 Klantcontract) in een aparte sectie "Aanbevolen vervolgstappen", zonder ze automatisch uit te voeren.
- Skip changelog-, daily- en vault-mutaties die normaal aan het eind gebeuren.
- Sluit af met een "Open punten ter verificatie"-blok dat alle [VERIFICEREN]-velden op één plek lijst, zodat de gebruiker (of fictieve klant) precies weet wat nog ingevuld moet worden.

## Belangrijke regels

- **Vault eerst.** Vraag nooit naar iets dat al ergens in de vault staat. Maximaal 2 vragen.
- **Defaults tonen.** Altijd een aanbevolen standaard meegeven bij elke vraag, zodat de gebruiker snel kan bevestigen of aanpassen.
- **Geen juridisch advies.** Altijd de disclaimer opnemen en deponerings- en juristencheck aanbevelen.
- **Nooit overschrijven** zonder bevestiging als er al een AV bestaat.
- **[VERIFICEREN] zichtbaar laten** in het document voor velden die de vault niet kon invullen.
- **B2B-scope bewaken.** Als er signalen zijn dat het bedrijf ook aan consumenten levert, waarschuw dan dat aanvullende artikelen nodig zijn (herroepingsrecht, consumentenbescherming).

## Gerelateerde skills

Deze skill is onderdeel van de juridische laag van het SCALE-framework. Combineer met:

- **`klantcontract-template` (J1)** — opdrachtbevestiging die naar deze AV verwijst per klantopdracht.
- **`privacyverklaring` (J4)** — AVG-document dat samen met de AV op de website hoort; artikel "Gegevens & privacy" in de AV verwijst hiernaar.
- **`verzekeringen-overzicht` (J5)** — overzicht van bedrijfsverzekeringen dat de aansprakelijkheidsclausule in de AV onderbouwt.
- **`scale-audit`** — controleert of de J-laag compleet is; draai opnieuw na het opstellen van AV om de score op J3 bij te werken.
