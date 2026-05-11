---
name: privacyverklaring
nummer: 14
title: "Privacyverklaring"
description: "Stelt in 15-20 minuten een AVG-conforme privacyverklaring op voor een Nederlands bedrijf. Scant eerst de vault op bedrijfsgegevens en gekoppelde tools (data-verwerkers). Stelt daarna maximaal 3 gerichte vragen. Output: een kant-en-klaar document van minimaal 300 woorden dat welke data, doel, retentie en rechten van betrokkenen dekt, opgeslagen in Juridisch/Privacyverklaring.md. Activeer altijd wanneer iemand zegt: 'privacyverklaring maken', 'AVG-document', 'privacy policy', 'J4 dichten', 'gat in SCALE-audit voor privacy'."
category: operations
tags: [juridisch, privacy, AVG, GDPR, scale-framework, j4, dienstverlening, klant]
estimatedTime: "15-20 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Privacyverklaring

## Doel

Stelt een AVG-conforme privacyverklaring op voor een Nederlands bedrijf. De skill scant de vault op bedrijfsgegevens en gekoppelde tools (potentiële data-verwerkers) zodat die niet opnieuw ingetypt hoeven te worden. Daarna stelt de skill maximaal 3 gerichte vragen over wat nergens in de vault staat. Het resultaat is een juridisch solide document dat voldoet aan de minimale AVG-eisen: welke data, doel, retentie en rechten van betrokkenen.

**Let op:** dit document is een sjabloon op basis van de AVG (Algemene Verordening Gegevensbescherming). Bij complexe verwerkingen, bijzondere persoonsgegevens of grote klantenbestanden wordt aanbevolen een privacy-specialist te raadplegen.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  PRIVACYVERKLARING                                         │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  Bedrijfsgegevens +
   │                      │  tools/verbindingen
   │                      │  (data-verwerkers)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Kort interview    │  Max. 3 vragen over
   │                      │  wat ontbreekt
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Document          │  Volledig ingevuld,
   │    samenstellen      │  AVG-conform
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Opslaan +         │  Juridisch/Privacy-
   │    aanbevelingen     │  verklaring.md
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Privacyverklaring maken" of "privacy policy opstellen"
- "Ik heb nog geen privacyverklaring"
- "AVG-document" of "GDPR-statement"
- "J4 dichten" of "gat in SCALE-audit voor privacy"
- "Wat moet ik doen met persoonsgegevens van klanten?"

Triggert NIET wanneer:
- De gebruiker Algemene Voorwaarden wil (gebruik skill `algemene-voorwaarden`)
- De gebruiker een verwerkersovereenkomst (DPA) nodig heeft met een specifieke leverancier
- De privacyverklaring al bestaat en alleen gedeeltelijk bijgewerkt moet worden

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf de privacyverklaring opgesteld wordt. Bied de zichtbare bedrijfsmappen in de vault aan als opties. Bevestig de scope voordat je verder gaat.

Controleer of er al een bestand bestaat op `{scope}/Juridisch/Privacyverklaring.md`. Als dat zo is: vraag of dit een update is of een nieuwe versie (oude archiveren als `Privacyverklaring - archief YYYY-MM-DD.md`).

### Stap 2: Vault scannen

Lees de volgende bestanden systematisch en noteer intern wat je vindt:

| Bron | Wat je eruit haalt |
|---|---|
| `{scope}/Directie/00 - Overzicht.md` | Bedrijfsnaam, website, rechtsvorm, type dienstverlening |
| `{scope}/Juridisch/KvK Administratie.md` (als bestaat) | KvK-nummer, vestigingsadres |
| `{scope}/IT/Connections.md` (als bestaat) | Alle gekoppelde tools — dit zijn de potentiële data-verwerkers |
| `{scope}/IT/AI-Tools/` (als bestaat) | AI-tools die mogelijk persoonsgegevens verwerken — verwerk ze altijd als verwerker als ze klantdata kunnen ontvangen |
| `{scope}/IT/Skills/` (als bestaat) | Skills die externe API's aanroepen (bijv. Claude API via Anthropic) |
| `{scope}/Marketing/` (als bestaat) | Nieuwsbrief-tools, analytics, advertentieplatforms |

Stel intern een lijst samen van alle gevonden data-verwerkers (tools/platforms die persoonsgegevens kunnen ontvangen):

Voorbeelden die je kunt tegenkomen:
- **E-mail** (Gmail, Outlook, Mailchimp) — verwerkt contactgegevens
- **Agenda** (Google Calendar) — verwerkt namen en afspraakinformatie
- **Betalingen** (Stripe, Mollie, PayPal) — verwerkt financiële en contactgegevens
- **CRM** (HubSpot, Pipedrive, etc.) — verwerkt uitgebreide klantprofielen
- **Analytics** (Google Analytics) — verwerkt bezoekersdata
- **Cloud-opslag** (Google Drive, OneDrive) — verwerkt documenten met persoonsgegevens
- **AI-assistenten** (Claude, ChatGPT, etc.) — verwerkt mogelijk gedeelde klantinformatie
- **WhatsApp/communicatie** — verwerkt contactgegevens en berichten

### Stap 3: Kort interview

Stel alleen vragen over wat echt ontbreekt na de vault-scan. Maximaal 3 vragen, altijd met een aanbevolen standaard erbij.

**Vraag 1 — Welke data verzamel je actief?**
> "Via welke kanalen verzamel je persoonsgegevens, en wat vraag je daarbij op? Denk aan: contactformulier op de website (naam, e-mail, telefoon?), intake-formulier, nieuwsbriefaanmelding, of alleen via directe gesprekken/e-mail."

Gebruik de antwoorden om de verwerkingstabel in Stap 4 te vullen.

**Vraag 2 — Retentie: hoe lang bewaar je klantgegevens?**
> "Hoe lang bewaar je persoonsgegevens van (voormalige) klanten nadat de samenwerking is afgerond? Gebruikelijke termijnen voor B2B-dienstverleners: 2 jaar voor marketingdata, 7 jaar voor financiële administratie (wettelijke bewaarplicht). Wat geldt voor jullie?"

**Vraag 3 — Privacy-contactpersoon:**
> "Wie is het aanspreekpunt voor privacy-vragen van klanten of bezoekers? Welk e-mailadres mag daarvoor gepubliceerd worden?"

Sla de antwoorden op voor gebruik in Stap 4. Als een antwoord al uit de vault is afgeleid, sla die vraag dan over.

### Stap 4: Document samenstellen

Genereer het onderstaande document volledig ingevuld met de verzamelde gegevens. Vervang alle `[placeholders]` door de werkelijke waarden. Markeer `[VERIFICEREN]` op plaatsen waar de vault geen gegevens had.

---

```markdown
---
type: juridisch
bedrijf: [Bedrijfsnaam]
onderwerp: Privacyverklaring
versie: 1.0
status: concept
opgesteld: YYYY-MM-DD
---

# Privacyverklaring [Bedrijfsnaam]

**Versie:** 1.0 | **Datum:** [datum] | **Laatste update:** [datum]

[Bedrijfsnaam] hecht veel waarde aan de bescherming van persoonsgegevens. In deze privacyverklaring leggen wij uit welke gegevens wij verwerken, waarom, hoe lang wij ze bewaren en welke rechten u heeft.

---

## 1. Wie zijn wij?

**Verwerkingsverantwoordelijke:**
[Bedrijfsnaam]
[Rechtsvorm]
Gevestigd te [Vestigingsplaats]
KvK-nummer: [KvK-nummer of VERIFICEREN]
Website: [website]
E-mail privacy-vragen: [privacy-contactadres]

## 2. Welke persoonsgegevens verwerken wij?

Wij verwerken de volgende categorieën persoonsgegevens:

| Categorie | Voorbeelden | Hoe verzameld |
|---|---|---|
| Contactgegevens | Naam, e-mailadres, telefoonnummer | [kanaal — bijv. contactformulier, e-mail, intake] |
| Bedrijfsgegevens | Bedrijfsnaam, functietitel, KvK-nummer | [kanaal] |
| Communicatiegegevens | E-mailberichten, notities uit gesprekken | Directe communicatie |
| Financiële gegevens | Factuurgegevens, betalingsinformatie | Facturatie en betalingsverwerking |
[Voeg extra rijen toe op basis van interview Stap 3]

Wij verwerken **geen** bijzondere persoonsgegevens (zoals gezondheidsgegevens, BSN of strafrechtelijke gegevens), tenzij dit uitdrukkelijk is overeengekomen en noodzakelijk voor de dienstverlening.

## 3. Waarvoor gebruiken wij deze gegevens?

Wij verwerken persoonsgegevens voor de volgende doeleinden:

| Doel | Rechtsgrondslag | Toelichting |
|---|---|---|
| Uitvoering van de overeenkomst | Noodzakelijk voor de overeenkomst (art. 6 lid 1 sub b AVG) | Om onze diensten te kunnen leveren |
| Facturatie en financiële administratie | Wettelijke verplichting (art. 6 lid 1 sub c AVG) | Belastingwetgeving vereist bewaring van factuurgegevens |
| Contact en klantenservice | Gerechtvaardigd belang (art. 6 lid 1 sub f AVG) | Beantwoorden van vragen en opvolgen van opdrachten |
| Nieuwsbrief of updates | Toestemming (art. 6 lid 1 sub a AVG) | Alleen indien u zich heeft aangemeld |
[Voeg extra rijen toe indien van toepassing]

## 4. Hoe lang bewaren wij uw gegevens?

Wij bewaren persoonsgegevens niet langer dan noodzakelijk:

| Categorie | Bewaartermijn | Reden |
|---|---|---|
| Contactgegevens (prospects) | [termijn — bijv. 2 jaar na laatste contact] | Gerechtvaardigd belang |
| Klantgegevens (actief) | Duur van de overeenkomst + [termijn — bijv. 2 jaar] | Relatiebeheer en garanties |
| Financiële administratie | 7 jaar | Wettelijke bewaarplicht (Belastingdienst) |
| Nieuwsbrief-abonnees | Tot uitschrijving | Op basis van toestemming |

Na verloop van de bewaartermijn worden gegevens veilig verwijderd of geanonimiseerd.

## 5. Met wie delen wij uw gegevens?

Wij delen persoonsgegevens alleen met derden indien dit noodzakelijk is voor de uitvoering van onze diensten of wanneer wij hiertoe wettelijk verplicht zijn. Met alle verwerkers hebben wij een verwerkersovereenkomst gesloten (of vallen zij onder standaardcontractbepalingen van de Europese Commissie).

**Onze verwerkers:**

[Vul in op basis van de toolstack-scan in Stap 2. Voorbeelden:]

| Verwerker | Doel | Land |
|---|---|---|
| [Tool / platform] | [Doel] | [NL / EU / VS*] |

*Bij verwerkers buiten de EU (bijv. Google, Stripe) wordt gebruik gemaakt van standaard contractbepalingen (SCC's) van de Europese Commissie als waarborg voor doorgifte.

Wij verkopen uw persoonsgegevens nooit aan derden.

## 6. Beveiliging

Wij nemen passende technische en organisatorische maatregelen om uw persoonsgegevens te beveiligen tegen verlies, ongeautoriseerde toegang of misbruik. Dit omvat onder meer:
- Versleutelde opslag en communicatie (HTTPS, TLS)
- Toegangsbeperking tot persoonsgegevens op need-to-know-basis
- Regelmatige evaluatie van onze beveiligingsmaatregelen

## 7. Uw rechten

Als betrokkene heeft u de volgende rechten onder de AVG:

- **Recht op inzage** — U kunt opvragen welke gegevens wij van u verwerken.
- **Recht op rectificatie** — U kunt onjuiste gegevens laten corrigeren.
- **Recht op verwijdering** — U kunt verzoeken uw gegevens te laten verwijderen, mits geen wettelijke bewaarplicht geldt.
- **Recht op beperking** — U kunt verzoeken de verwerking tijdelijk te beperken.
- **Recht op dataportabiliteit** — U kunt uw gegevens in een gestructureerd formaat opvragen.
- **Recht van bezwaar** — U kunt bezwaar maken tegen verwerking op basis van gerechtvaardigd belang.
- **Recht op intrekking van toestemming** — Indien verwerking is gebaseerd op toestemming, kunt u deze altijd intrekken.

Voor het uitoefenen van uw rechten kunt u contact opnemen via: **[privacy-contactadres]**

Wij reageren binnen 30 dagen op uw verzoek.

## 8. Klachten

Bent u niet tevreden over de manier waarop wij omgaan met uw persoonsgegevens? U heeft het recht een klacht in te dienen bij de Autoriteit Persoonsgegevens (www.autoriteitpersoonsgegevens.nl).

## 9. Wijzigingen

Wij behouden ons het recht voor deze privacyverklaring te wijzigen. De meest recente versie is altijd te vinden op [website]. Bij ingrijpende wijzigingen informeren wij u actief via e-mail of via een melding op onze website.

## 10. Aanbevelingen

Om deze privacyverklaring rechtsgeldig en actueel te houden:

1. **Website:** Plaats deze privacyverklaring als pagina op [website] en link ernaar vanuit elk contactformulier. Dit is een AVG-vereiste voor organisaties met een website.
2. **Verwerkersovereenkomsten:** Controleer voor elke verwerker in sectie 5 of er een verwerkersovereenkomst (DPA) is gesloten. Google Workspace, Stripe en vergelijkbare platforms bieden dit standaard aan in hun instellingen.
3. **Bijhouden:** Werk deze verklaring bij bij elke nieuwe tool die persoonsgegevens verwerkt, of minimaal jaarlijks.

---

*[Bedrijfsnaam] | [Vestigingsplaats] | [privacy-contactadres] | [website]*
*Privacyverklaring v1.0 — [datum]*
```

---

Vul na het genereren de velden met `[VERIFICEREN]` handmatig aan zodra de gegevens beschikbaar zijn. Controleer ook de verwerkers-tabel: voeg voor elke tool uit de Connections.md het land toe (EU of buiten EU).

### Stap 5: Opslaan + aanbevelingen

Sla het document op als `{scope}/Juridisch/Privacyverklaring.md`. Maak de map `Juridisch/` aan als die nog niet bestaat.

De aanbevelingen staan al als sectie 10 in het document zelf — je hoeft ze niet los te herhalen.

Logging:
1. Werk het changelog bij: `{scope}/Directie/Changelog.md`
2. Werk de daily van vandaag bij onder "Gedaan vandaag"
3. Als er een SCALE-audit staat met J4 op ❌ of ⚠️: stel voor om de audit opnieuw te draaien

## Belangrijke regels

- **Vault eerst.** Scan altijd de Connections.md en toolstack om verwerkers te identificeren. Vraag nooit naar iets dat al in de vault staat.
- **Maximaal 3 vragen.** Altijd een aanbevolen standaard meegeven zodat de gebruiker snel kan bevestigen of aanpassen.
- **Geen juridisch advies.** Altijd de disclaimer opnemen en aanbevelen een privacy-specialist te raadplegen bij complexe situaties.
- **Nooit overschrijven** zonder bevestiging als er al een privacyverklaring bestaat.
- **[VERIFICEREN] zichtbaar laten** voor velden die de vault niet kon invullen.
- **Buiten-EU-verwerkers markeren.** Als een tool buiten de EU gevestigd is (Google, Stripe, OpenAI, etc.), altijd vermelden dat SCC's van toepassing zijn.
- **Bijzondere persoonsgegevens signaleren.** Als het bedrijf gezondheids-, gelofs- of andere bijzondere gegevens verwerkt, direct waarschuwen dat aanvullende maatregelen vereist zijn.
