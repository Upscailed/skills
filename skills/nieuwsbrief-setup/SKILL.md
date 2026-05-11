---
name: nieuwsbrief-setup
title: "Nieuwsbrief Setup"
description: "Helpt een ondernemer in 40 tot 75 minuten een e-mail-nieuwsbrief op te zetten en de eerste editie klaar te zetten, met als output één canoniek document: `{scope}/Marketing/Nieuwsbrief-Setup.md` plus een concept voor editie 1. Dit is SCALE-stap M4 (Marketing) en de fundering voor L3 (Mailflow-Setup, opvolg-automatisering via mail). Zonder nieuwsbrief blijft contact met leads en klanten ad-hoc: je hebt geen herhaalbaar kanaal om autoriteit op te bouwen, ICP-segmenten op te voeden of conversie te triggeren. De skill werkt via een gestructureerd interview in 8 blokken, één blok per beurt zodat het niet overweldigt: provider-keuze, sender-domein en DNS (SPF/DKIM/DMARC voor deliverability), template in brand-stijl, signup-form en welkomstmail, doelgroep-segmentatie, inhoud-mix en cadans, AVG en compliance, eerste editie. Vóór het interview begint, scant de skill diep wat al beschikbaar is: ICP-segmenten uit `Directie/Playbook/ICP.md`, brand-keuze uit `Directie/Playbook/Brand Guidelines.md`, schrijfregels uit `Directie/Playbook/Tone of Voice.md`, content-roadmap uit `Marketing/Content-Roadmap.md`, bestaande tools uit `IT/Toolstack.md`, privacyverklaring-link uit `Juridisch/Privacyverklaring.md`. Per provider wordt gevraagd: MailerLite (gratis tot 1000 subs, NL-gebruiksvriendelijk), Mailchimp (gratis tot 500), Beehiiv (gratis tot 2500 + groei-tools), ConvertKit/Kit (gratis tot 1000, creator-flow), Substack (gratis maar eigen merk lastig), Brevo (gratis tot 300/dag), Loops (developer-vriendelijk), Resend (developer-vriendelijk, API-first), of zelfbouw met Postmark + custom frontend. Vastgelegd worden: signup-form-URL en double-opt-in (AVG-eis), welkomstmail-template, segmentatie-as (cross-link S4 ICP), inhoud-mix (educatie, aanbod, persoonlijk), cadans (wekelijks, 2-wekelijks, maandelijks, start meestal lager), onderwerp-regel-format, KPI-drempels (open-rate >25%, click-rate >2%), automations (welkom-flow, segmentering, win-back na 90 dagen inactief). Werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam of vault-eigenaar, alleen over de SCALE-Marketing-conventie. Activeer altijd wanneer iemand zegt: 'nieuwsbrief opzetten', 'mailprovider kiezen', 'newsletter starten', 'e-mail-marketing inrichten', 'MailerLite opzetten', 'Beehiiv setup', 'welkomstmail-flow bouwen', 'DKIM en SPF instellen', 'sender-domein configureren', 'signup-form maken', 'double-opt-in inrichten', 'M4 dichten in SCALE-audit', 'gap M4', 'Marketing/Nieuwsbrief-Setup.md aanmaken', 'eerste nieuwsbrief sturen', 'nieuwsbrief-cadans bepalen', 'segmentering voor mail'. Triggert ook bij iedere expliciete verwijzing naar M4, Nieuwsbrief-Setup.md, of vragen rond deliverability, open-rate, opt-in en mail-automations."
category: operations
tags: [scale-framework, m4, marketing, email, nieuwsbrief, deliverability, avg]
estimatedTime: "40 tot 75 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Nieuwsbrief Setup

## Doel

Helpt een ondernemer om in 40 tot 75 minuten een **e-mail-nieuwsbrief** technisch én strategisch op te zetten en de **eerste editie** klaar te zetten. Output: één canoniek document `{scope}/Marketing/Nieuwsbrief-Setup.md` plus een concept voor editie 1 onder `{scope}/Marketing/Nieuwsbrief/YYYY-MM-DD - <Onderwerp>.html` of `.md`. Dit is SCALE-stap M4 (Marketing) en het kanaal dat L3 (Mailflow-Setup) nodig heeft om opvolg-automatiseringen op te kunnen draaien.

*Waarom dit fundamenteel is.* Een nieuwsbrief is geen extra to-do op de marketing-lijst. Het is het enige kanaal dat je **bezit**: niet afhankelijk van een algoritme of platform-eigenaar. Minstens vier latere SCALE-stappen leunen erop:

- **L3 (Mailflow-Setup)** — Opvolg-automatisering via mail (welkom-flow, lead-nurture, win-back) draait alleen als er een nieuwsbrief-account staat met geconfigureerde sender en automation-engine.
- **V3 (Opvolg-Flow)** — Sales-opvolging na een gesprek of voorstel kan triggeren op nieuwsbrief-segmenten en opens.
- **M3 (Content-Roadmap)** — Content krijgt distributie via de nieuwsbrief. Zonder kanaal verdwijnt content na publicatie, met nieuwsbrief blijft het 12 tot 24 uur in inboxen rondgaan.
- **A1 (Rapportage)** — Open-rate, click-rate en lijst-groei zijn marketing-KPI's die in rapportage en dashboards landen.

*Wat je verliest zonder dit document.* Drie concrete pijnpunten die deze skill voorkomt:

1. **Verloren leads.** Mensen melden zich aan via de website of een event, maar er gebeurt niets. Geen welkomstmail, geen vervolg, contact verdwijnt.
2. **Slechte deliverability.** Mails landen in spam omdat SPF, DKIM en DMARC niet staan, of omdat de sender-domein een gratis-mail-adres is (gmail.com, outlook.com). Een eerste editie naar 200 mensen bereikt er dan 60.
3. **AVG-boetes en imago-schade.** Geen double-opt-in, geen opt-out per mail, geen link naar privacyverklaring: één klacht bij de Autoriteit Persoonsgegevens is genoeg voor een onderzoek.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit M4 vraagt minimaal een provider geconfigureerd of 1 verzonden nieuwsbrief. Die drempel haal je in 30 minuten met een gratis Mailchimp-account en een test-mail. Deze skill mikt op een **werkbaar** systeem: provider gekozen op basis van team-grootte en techniek-niveau, sender-domein met SPF/DKIM/DMARC, template in brand-stijl, signup-form live met double-opt-in, welkomstmail klaar, segmentatie cross-linked aan ICP, inhoud-mix en cadans vastgelegd, AVG-compliance dichtgezet, en een eerste editie klaar om te versturen. Zodat de nieuwsbrief direct bruikbaar is voor L3, V3, M3 en A1.

Resultaat: SCALE-audit M4 springt van Niet of Deels naar Ja en het document is direct herbruikbaar voor L3, V3, M3 en A1.

## Run-time introductie (toon aan gebruiker bij start)

Voordat het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  NIEUWSBRIEF SETUP — SCALE-stap M4 (Marketing)             │
│  ~40-75 minuten · 8 blokken                                │
└──────────────────────────────────────────────────────────┘

  In 40 tot 75 minuten zetten we een e-mail-nieuwsbrief op:
  provider gekozen, sender-domein geconfigureerd voor goede
  deliverability, template in jouw brand, signup-form live,
  welkomstmail klaar en de eerste editie staat klaar om te
  versturen. Dit kanaal is fundament voor L3 (mailflow), V3
  (opvolg-flow) en distributie van M3 (content-roadmap).

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 8 blokken interview (één per beurt) — gemiddeld      │
  │    5-10 minuten per blok                                │
  │  • Pre-fill: ik scan eerst ICP, Brand Guidelines,       │
  │    Tone of Voice, Content-Roadmap, Toolstack en         │
  │    Privacyverklaring zodat ik al veel weet              │
  │  • Daarna lever ik Marketing/Nieuwsbrief-Setup.md op    │
  │    plus een concept voor editie 1                       │
  └────────────────────────────────────────────────────────┘

  De 8 blokken:
  [1] Provider-keuze          [2] Sender-domein + DNS
  [3] Template + signup-form  [4] Welkomstmail
  [5] Segmentatie             [6] Inhoud + cadans
  [7] AVG + compliance        [8] Eerste editie

  Heb je externe input klaar? Bijvoorbeeld:
  • Een eerdere nieuwsbrief-poging (Mailchimp-export, screenshot)
  • Domein-naam en DNS-toegang (registrar, Cloudflare, etc.)
  • Eigen tone-of-voice-doc of brand-voorbeelden
  • Bestaande contactlijst (CSV, oude database)
  • Content-ideeën voor editie 1
  • Privacyverklaring-link

  Dan kun je dat nu noemen, hoe meer bronnen, hoe minder ik
  hoef uit te vragen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  NIEUWSBRIEF SETUP — M4 · 40-75 min · 8 blokken            │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  ICP.md (segmenten),
   │    (auto-discover)   │  Brand Guidelines,
   │                      │  Tone of Voice,
   │                      │  Content-Roadmap,
   │                      │  Toolstack (mail-tool),
   │                      │  Privacyverklaring
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe docs?     │  Eerdere nieuwsbrief,
   │                      │  domein-toegang,
   │                      │  contactlijst, content-
   │                      │  ideeën voor editie 1
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is,
   │                      │  per blok, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, per    │  8 blokken:
   │    blok              │  [1] Provider-keuze
   │                      │  [2] Sender + DNS
   │                      │  [3] Template + form
   │                      │  [4] Welkomstmail
   │                      │  [5] Segmentatie
   │                      │  [6] Inhoud + cadans
   │                      │  [7] AVG + compliance
   │                      │  [8] Eerste editie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Cross-link check  │  S2 Brand, S3 ToV,
   │                      │  S4 ICP, M3 Content,
   │                      │  J4 Privacy, S12 Tool
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Marketing/
   │    opslaan           │  Nieuwsbrief-Setup.md
   │                      │  + Editie 1 concept
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    vervolg           │  hint richting L3,
   │    suggesties        │  V3, S12-update
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Nieuwsbrief opzetten" / "newsletter starten" / "e-mail-marketing inrichten"
- "Mailprovider kiezen" / "MailerLite opzetten" / "Beehiiv setup" / "ConvertKit inrichten"
- "Welkomstmail-flow bouwen" / "welkomstmail klaarzetten"
- "DKIM en SPF instellen" / "sender-domein configureren" / "deliverability fixen"
- "Signup-form maken" / "double-opt-in inrichten"
- "Nieuwsbrief-cadans bepalen" / "hoe vaak nieuwsbrief sturen"
- "Eerste nieuwsbrief sturen" / "editie 1 klaarmaken"
- "M4 dichten in SCALE-audit" / "gap M4"
- "Marketing/Nieuwsbrief-Setup.md aanmaken"
- "Segmentering voor mail" / "mail-segmenten op basis van ICP"

Triggert NIET wanneer:
- De gebruiker **mailflow-automatisering** wil bouwen (gebruik `mailflow-setup` — L3, dat bouwt op een werkende nieuwsbrief-provider)
- De gebruiker een **content-roadmap** wil opstellen (gebruik `content-roadmap` — M3, dat levert de content waar de nieuwsbrief uit put)
- De gebruiker een **privacyverklaring** wil schrijven (gebruik `privacyverklaring` — J4, dat document linkt vanuit de nieuwsbrief)
- De gebruiker een **brand-guidelines** of **tone-of-voice** wil opstellen (gebruik `brand-guidelines` of `tone-of-voice` — S2, S3, leveren input voor template en schrijfstijl)
- De gebruiker een **toolstack-inventaris** wil (gebruik `toolstack-inventarisatie` — S12, registreert de gekozen provider)
- De gebruiker een **specifieke editie** wil schrijven, los van setup (gebruik dan een tekstschrijver-flow op basis van het bestaande Nieuwsbrief-Setup.md)
- De gebruiker een **CRM** wil opzetten (gebruik `crm-setup` — C2, levert contact-velden waar nieuwsbrief-segmenten op landen)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad de nieuwsbrief-setup gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Marketing/`, `Directie/`, `IT/`, `Juridisch/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Marketing/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van bijvoorbeeld `os-builder`) die nog leeg is op `Marketing/Nieuwsbrief-Setup.md`

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze nieuwsbrief-setup voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Marketing/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Marketing/Nieuwsbrief-Setup.md` al bestaat:
- Bestaat niet → eerste versie, doorgaan
- Bestaat wel → vraag of dit een **update** (aanvullen op basis van wat er staat) of **nieuwe iteratie** (oude archiveren als `Nieuwsbrief-Setup - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

**Output-pad keuze:** standaard `{scope}/Marketing/Nieuwsbrief-Setup.md`. De eerste editie landt onder `{scope}/Marketing/Nieuwsbrief/YYYY-MM-DD - <Onderwerp>/` (map met `post.md` of `editie.html`).

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, niet op hard-coded absolute paden naar specifieke vaults.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Marketing/Nieuwsbrief-Setup.md` (huidige versie als die bestaat) | Bestaande provider-keuze, sender-domein, cadans |
| `Directie/Playbook/ICP.md` | **Verplichte check** — segmenten die als mail-lijst of tag terugkomen |
| `Directie/Playbook/Brand Guidelines.md` | **Verplichte check** — kleuren, typografie, logo voor template |
| `Directie/Playbook/Tone of Voice.md` | **Verplichte check** — schrijfregels voor onderwerp-regels en mailtekst |
| `Marketing/Content-Roadmap.md` | Content-thema's die de nieuwsbrief kan vertegenwoordigen |
| `Marketing/Nieuwsbrief/` (subfolders) | Eerdere edities, terugkerend format |
| `IT/Toolstack.md` | **Verplichte check** — bestaande mail-tool als die al in de toolstack staat |
| `Juridisch/Privacyverklaring.md` | **Verplichte check** — URL/locatie van privacyverklaring voor footer-link |
| `Juridisch/Algemene Voorwaarden.md` | Verwijzing in template-footer |
| `Sales/CRM-Setup.md` | Contact-velden waar nieuwsbrief-inschrijvers kunnen landen |
| `Directie/00 - Overzicht.md` | Genoemde propositie, doelgroep, sender-naam (bedrijfsnaam of persoon) |
| `Directie/01 - Goals.md` | Marketing-doelen, eventueel nieuwsbrief-doelen (lijst-groei, open-rate) |

Maak per gevonden element een korte interne aantekening: in welk nieuwsbrief-blok het past en welke kerngegevens al bekend zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is. Als kritieke bronnen ontbreken (ICP, Brand, ToV, Privacyverklaring), markeer dat voor de pre-fill en stel aan het einde de juiste vervolgskills voor.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Bij een nieuwsbrief-setup zijn er vaak **operationele input-bronnen** buiten de vault.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen waaruit ik kan putten? Bijvoorbeeld:
> - Een eerdere nieuwsbrief-poging (Mailchimp-export, screenshot, eerder gestuurde mail)
> - Domein-naam en DNS-toegang (registrar zoals TransIP/Cloudflare/Vimexx, voor SPF/DKIM/DMARC)
> - Een bestaande contactlijst (CSV uit Excel, uit oude database, uit een event)
> - Content-ideeën of een onderwerp voor editie 1
> - Privacyverklaring-link of bestand
> - Brand-voorbeelden (kleuren-hex, logo-bestand, eerder ontworpen mail)
>
> Hoe meer bronnen, hoe minder ik hoef uit te vragen en hoe rijker de setup wordt."

Per aangeleverde bron:
- **Eerdere nieuwsbrief**: scan op opzet (header, sectie-structuur, CTA), provider-naam, verzend-cadans. Gebruik als input voor blok 1 en 3.
- **Domein-info**: noteer registrar en of de gebruiker zelf bij DNS kan. Input voor blok 2 (SPF/DKIM/DMARC).
- **Contactlijst**: scan op kolommen (mail, naam, segment, opt-in-datum). Belangrijk: lijst is **niet automatisch AVG-compliant** als opt-in niet expliciet is, dat moet besproken in blok 7.
- **Content-ideeën**: directe input voor blok 6 (inhoud-mix) en blok 8 (editie 1).
- **Privacyverklaring**: noteer URL of pad voor template-footer.
- **Brand-voorbeelden**: directe input voor blok 3 (template).

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 8 blokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] PROVIDER-KEUZE
      Geen mail-tool in Toolstack.md gevonden. Geen eerdere
      nieuwsbrief in Marketing/Nieuwsbrief/. Lijkt vers veld.

  [2] SENDER-DOMEIN + DNS
      Hoofd-domein uit 00-Overzicht: <bedrijf.nl>. DNS-toegang
      nog te bevestigen.

  [3] TEMPLATE + SIGNUP-FORM
      Brand Guidelines bekend: primaire kleur <hex>, font
      <naam>, logo in Resources/. Tone of Voice: <archetype>.
      Signup-form nog niet bestaand.

  [4] WELKOMSTMAIL
      Niets concreets gevonden. Wel hint uit 00-Overzicht
      over propositie die in welkomstmail terugkomt.

  [5] SEGMENTATIE
      Vanuit ICP zie ik <N> segmenten: <lijst>. Logische
      mail-segmenten.

  [6] INHOUD + CADANS
      Content-Roadmap noemt thema's <X, Y, Z>. Cadans nog
      niet vastgelegd.

  [7] AVG + COMPLIANCE
      Privacyverklaring aanwezig op pad <X>. Double-opt-in
      nog te configureren in provider.

  [8] EERSTE EDITIE
      Eventuele onderwerp-suggesties uit Content-Roadmap of
      recente Directie-events.

  GATEN waar ik nog vragen voor heb:
  - Provider nog niet gekozen
  - DNS-toegang nog te bevestigen
  - Welkomstmail nog te schrijven
  - Cadans nog te bepalen

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, blok voor blok

**Kernregel:** loop **één blok per beurt** af. Niet alle 8 tegelijk neerzetten. Per blok: alle bekende input langsgaan, eventueel ontbrekende info toevoegen, en pas dán door naar het volgende blok.

#### Blok 1 — Provider-keuze

Vraag welke mailprovider de basis wordt. Negen realistische opties, elk met sweet-spot:

| Optie | Wanneer een goede keuze | Indicatieve kosten |
|---|---|---|
| **MailerLite** | < 1.000 subs, NL-gebruikersvriendelijk, eenvoudige automations | EUR 0 (gratis tot 1.000), daarna vanaf EUR 9/mnd |
| **Mailchimp** | < 500 subs, bekende interface, brede integraties | EUR 0 (gratis tot 500), daarna vanaf EUR 11/mnd |
| **Beehiiv** | Creator of expert die op groei mikt, ingebouwde monetisatie en referral-tools | EUR 0 (gratis tot 2.500), daarna vanaf USD 39/mnd |
| **ConvertKit (Kit)** | Solopreneur / creator, automations en tagging als hart van flow | EUR 0 (gratis tot 1.000), daarna vanaf USD 15/mnd |
| **Substack** | Schrijvers die abonnementen / betaalde nieuwsbrief willen, eigen merk lastig | EUR 0 (10% commissie bij betaald) |
| **Brevo (Sendinblue)** | Transactional én nieuwsbrief op één plek, EU-gehost | EUR 0 (gratis tot 300/dag, max 9.000/mnd), daarna vanaf EUR 9/mnd |
| **Loops** | Developer-vriendelijk, modern, automation-first | EUR 0 (gratis tot 1.000), daarna vanaf USD 49/mnd |
| **Resend** | Developer met code-base, API-first transactional + broadcast | EUR 0 (gratis tot 3.000/mnd), daarna vanaf USD 20/mnd |
| **Zelfbouw (Postmark + frontend)** | Volledig eigen stack, integratie met eigen app/database | Vanaf USD 15/mnd Postmark + eigen ontwikkeluren |

Vraag aan gebruiker:
1. *"Hoe technisch wil je worden? Klikken-en-slepen (MailerLite, Mailchimp), creator-flow met tagging (Kit, Beehiiv), of code-first (Resend, Postmark)?"*
2. *"Wat is je verwachte lijst-omvang in 12 maanden?"* (bepaalt of gratis tier voldoet)
3. *"Wil je naast de nieuwsbrief ook **transactional** mails (orderbevestigingen, wachtwoord-resets) uit dezelfde tool?"* (relevant voor Brevo, Resend, Postmark)
4. *"Heb je een voorkeur voor EU-gehoste provider?"* (Brevo is EU; MailerLite zit deels in EU; Mailchimp/Beehiiv/Kit zijn US)

Vastleggen in document: gekozen tool, plan, indicatieve kosten, reden van keuze (1 zin), evt. alternatieven die zijn overwogen.

**Match-heuristiek voor de aanbeveling:**
- Solopreneur, niet-technisch, NL-markt, < 1.000 subs → **MailerLite**
- Solopreneur, content-creator, focus op groei en monetisatie → **Beehiiv** of **Kit**
- Schrijver, eerst gratis dan paid-tier abonnementen → **Substack**
- MKB, transactional + broadcast op één plek, EU-voorkeur → **Brevo**
- Bedrijf met eigen app of webshop, dev-team → **Resend** of **Loops**
- Volledig zelfbouw met bestaande backend → **Postmark + frontend**

#### Blok 2 — Sender-domein + DNS (deliverability)

Vraag welk **verzend-domein** wordt gebruikt en bevestig dat de DNS-records correct staan voor goede inbox-levering.

Standaard-set:

| Onderdeel | Wat het is | Verplicht? |
|---|---|---|
| **Sender-domein** | Het domein in het mailadres (bv. `nieuwsbrief@bedrijf.nl`) | ja, eigen domein |
| **SPF-record** | DNS TXT-record die aangeeft welke servers namens jouw domein mogen mailen | ja |
| **DKIM-record** | DNS TXT-record met een publieke sleutel waarmee provider mails ondertekent | ja |
| **DMARC-record** | DNS TXT-record met beleid hoe ontvangers omgaan met mails die SPF/DKIM falen | ja (start met `p=none` voor monitoring) |
| **From-naam** | De naam die ontvanger ziet (bv. "Iwan van Bedrijf" of "Bedrijf") | ja |
| **Reply-to-adres** | Adres waar antwoorden landen (vaak `info@bedrijf.nl` of hoofd-adres) | ja |

Vraag aan gebruiker:
1. *"Welk verzend-domein? Het mailadres wordt iets als `<naam>@<jouw-domein.nl>`. Welk domein gebruiken we, en welke naam wil je vóór de `@`?"*
2. *"Heb je toegang tot de DNS van dat domein?"* (registrar zoals TransIP, Cloudflare, Vimexx, Hostnet, of via beheerder)
3. *"From-naam: jouw naam, bedrijfsnaam, of combinatie ('Iwan van Bedrijf')?"*
4. *"Reply-to-adres: hetzelfde als verzend-adres of een ander adres (bv. `info@`)?"*

**Belangrijk om uit te leggen:**
- Gebruik **nooit** een gratis-mail-adres als sender (`gmail.com`, `outlook.com`, `hotmail.com`). DMARC blokkeert dat per 2024 voor bulk-mail. Eigen domein is verplicht.
- SPF, DKIM, DMARC zijn drie aparte TXT-records die per provider verschillen. De gekozen provider geeft de exacte waarden in zijn dashboard, jij voegt ze toe in de DNS.
- **DMARC start altijd op `p=none`** (alleen monitoring) voor 1-3 maanden. Pas daarna naar `p=quarantine` of `p=reject`. Te snel op `reject` zetten betekent dat legitieme mails ook gebounced kunnen worden.
- Sommige providers (MailerLite, Beehiiv) ondersteunen **CNAME-records** in plaats van TXT voor DKIM. Identiek effect, andere syntax.

Vastleggen: domein, from-naam, reply-to, status van SPF/DKIM/DMARC (geconfigureerd / wachtrij / nog te doen), DNS-registrar, deadline om alle records live te krijgen.

#### Blok 3 — Template + signup-form

Vraag hoe de nieuwsbrief-template eruit ziet (brand-stijl) en hoe nieuwe inschrijvers binnenkomen.

**Template-onderdelen:**

| Element | Toelichting | Bron |
|---|---|---|
| Logo | Bovenaan, klikbaar naar website | `{scope}/Directie/Playbook/Brand Guidelines.md` |
| Header-kleur | Achtergrond banner | Brand Guidelines |
| Primaire kleur | CTA-knoppen, links | Brand Guidelines |
| Typografie | Font web-safe of hosted (Google Fonts, Adobe) | Brand Guidelines |
| Footer | Adres bedrijf (AVG-eis), opt-out-link, social-icons, privacyverklaring-link | Juridisch + Brand |
| CTA-stijl | Knop-kleur, hoek-radius, woordkeuze ("Lees verder", "Boek gesprek") | Tone of Voice |
| Sectie-structuur | Default lay-out per editie (intro, kern, side-blok, CTA) | Eigen ontwerp |

**Signup-form-onderdelen:**

| Element | Toelichting |
|---|---|
| **Velden** | Minimaal e-mail (1). Optioneel: naam, segment, branche. Hou klein = meer conversie |
| **Locatie** | Website-footer, dedicated landingspagina (`/nieuwsbrief`), pop-up of inline in posts |
| **Double-opt-in** | **Verplicht** voor AVG. Inschrijver krijgt bevestigings-mail met klik-link, alleen na klik echt aan lijst toegevoegd |
| **Bedankt-pagina** | Eigen pagina na inschrijving, of provider-default |
| **Tracking** | Conversie-event in Plausible/GA4 op succesvolle inschrijving |

Vraag aan gebruiker:
1. *"Heb je een logo-bestand en brand-kleuren bij de hand, of haal ik die uit Brand Guidelines?"*
2. *"Waar komt het signup-form? Website-footer, dedicated `/nieuwsbrief`-pagina, pop-up, of inline in blog-posts?"*
3. *"Welke velden vragen we? E-mail alleen (hoogste conversie), of ook naam, segment?"*
4. *"Heb je een bedankt-pagina of gebruiken we provider-default?"*

Vastleggen: template-bron (provider-built-in, eigen HTML, of een betaalde template), velden in signup-form, locatie(s) op website, double-opt-in aan/uit (moet aan zijn), bedankt-pagina URL.

#### Blok 4 — Welkomstmail

Vraag wat in de welkomstmail komt. Dit is de **eerste mail** die elke nieuwe inschrijver krijgt, automatisch verstuurd direct na bevestiging.

**Welkomstmail-onderdelen:**

| Element | Toelichting |
|---|---|
| **Onderwerp** | Kort, persoonlijk. Voorbeeld: "Welkom bij <Bedrijf> — hier krijg je waar je je voor opgaf" |
| **Aanhef** | Eerstepersoons-aanhef ("Hé!", "Hi <naam>") — afhankelijk van ToV |
| **Beloften** | Wat krijgt de lezer? Frequentie + soort content + waarom hij blij gaat zijn |
| **Quick-win** | Eén concrete waarde meteen in mail 1: een download, een tip, een link naar de 3 beste posts |
| **Sender-introductie** | Wie ben jij, waarom doe je dit? Persoonlijke noot, geen corporate-blurb |
| **Vraag terug** | Eén micro-vraag: "Waar zit je grootste vraagstuk?" of een 1-klik-segmentatie ("Welk thema interesseert je meest?") — verhoogt engagement én levert ICP-data op |
| **Footer** | Adres, opt-out, privacyverklaring-link |

Vraag aan gebruiker:
1. *"Wie schrijft de welkomstmail: 'wij' (bedrijf) of 'ik' (persoon)? Persoonlijk verhoogt response."*
2. *"Wat is de quick-win in mail 1? Een concrete tip, een gratis download, een gids, of een link naar 3 best presterende posts?"*
3. *"Heb je een micro-vraag terug die we kunnen stellen voor segmentatie of engagement?"*
4. *"Wil je de welkomstmail-flow uitbreiden tot 3 mails (mail 1 direct, mail 2 na 2 dagen, mail 3 na 5 dagen), of starten met alleen mail 1?"*

Vastleggen: onderwerp, sender-toon (persoonlijk vs bedrijfsstem), kern-belofte (1 zin), quick-win-aanbod, micro-vraag terug, automation-trigger (direct na bevestiging double-opt-in), aantal mails in welkomst-flow.

**Cross-link L3:** *"De welkomstmail-flow is technisch een mailflow. Een uitgebreide nurture-sequence (5+ mails, segment-conditionals, win-back) hoort in L3 (skill `mailflow-setup`). Hier leggen we alleen mail 1 + optioneel 2-3 vast."*

#### Blok 5 — Doelgroep-segmentatie

Vraag hoe de mail-lijst gesegmenteerd wordt. Standaard 1 lijst met tags, geen aparte lijsten per segment (modernere providers werken met **tags** binnen één lijst).

**Segmentatie-assen:**

| Dimensie | Voorbeeld-waarden | Bron |
|---|---|---|
| **ICP-segment** | <segmenten uit ICP> | Cross-link `Directie/Playbook/ICP.md` |
| **Inschrijfbron** | Website, Event, Webinar, LinkedIn-bio, Lead-magnet | Eigen marketing-kanalen |
| **Lifecycle** | Lead, Klant, Oud-klant, Trial | Cross-link CRM (sectie 5 daarvan) |
| **Interesse-thema** | Inhoudelijke thema's, bv. "AI-praktisch", "Cijfer-inzicht", "Branding" | Content-Roadmap |
| **Engagement** | Actief (laatste 90 dagen geopend), Inactief (90+ dagen geen open), Power-user (>5 opens/maand) | Provider-automatisch |

Vraag aan gebruiker:
1. *"Hoeveel segmenten herken je in je ICP, en wil je die als tags terugzien in de mail-lijst?"*
2. *"Wil je inschrijfbron tracken (per landingspagina een aparte tag)? Helpt om te zien welke marketing-bronnen kwalitatief beste leads opleveren."*
3. *"Wil je lifecycle scheiden? Wel of niet apart mailen naar bestaande klanten vs prospects."*
4. *"Wil je een micro-vraag in de welkomstmail om interesse-thema af te leiden?"*

Vastleggen per segment: tag-naam (Engels of Nederlands, consistent met CRM-tagging), bron (handmatig, automatisch via signup-form-veld, automatisch via klikgedrag), gebruik (wel/niet apart gemailde campagnes).

**Belangrijke regel:** segmentatie alleen als je het **gebruikt**. Een tag-bos zonder concrete inzet is overhead. Start met 1-2 dimensies, breid uit als de lijst groeit.

#### Blok 6 — Inhoud-mix + cadans

Vraag wat in elke editie staat en hoe vaak de nieuwsbrief uitgaat.

**Inhoud-mix-modellen:**

| Model | Format | Wanneer een goede keuze |
|---|---|---|
| **Educatie + aanbod (80/20)** | 80% inhoud (tips, inzichten, case), 20% commercieel | Solopreneur die autoriteit bouwt |
| **Curatie + comment** | Verzameling van X links/posts met korte commentaar | Tijds-beperkt, breed thema |
| **Persoonlijk-eerst** | Eigen verhaal of week-update bovenaan, content lager | Creator-stijl, sterke persoonlijke merk |
| **Diepgang-essay** | Eén lange tekst per editie (1.000-2.500 woorden) | Substack-stijl, abonnement-model |
| **Mix-format** | Roterend (week 1 essay, week 2 curatie, week 3 case) | Lange-termijn, gevarieerde lijst |

**Cadans-opties:**

| Cadans | Voor wie | Risico |
|---|---|---|
| **Wekelijks** | Creator, agency, hoge content-velocity | Burn-out, lijst-fatigue als kwaliteit zakt |
| **2-wekelijks** | Solopreneur, balans content en aanbod | Sweet spot voor de meeste MKB |
| **Maandelijks** | Lage content-velocity, technische niche | Lijst koelt af tussen edities |
| **Onregelmatig** | Specifieke aanleidingen (productlancering, event) | Onbetrouwbaar, slechte open-rate |

Vraag aan gebruiker:
1. *"Welke inhoud-mix past? 80/20 educatie-aanbod, curatie, persoonlijk-eerst, diepgang-essay, of mix?"*
2. *"Welke cadans is realistisch om vol te houden voor 6 maanden? Tip: kies de laagste die je voor zeker volhoudt en verhoog als het lekker loopt. Wekelijks beginnen en daarna terugvallen voelt slechter dan 2-wekelijks beginnen en versnellen."*
3. *"Welke onderwerp-regel-formats wil je hanteren?"* Standaard-formats:
   - **Vraag**: "Waarom schroef jij nog niet aan X?"
   - **Cijfer**: "Drie redenen waarom Y faalt"
   - **Persoonlijk**: "Wat ik vorige week leerde over Z"
   - **Belofte**: "Hoe je A inricht in 30 minuten"
   - **Hook**: "Dit gaat een lange editie worden"
4. *"Welke KPI's willen we halen?"* Standaard-drempels (zie hieronder).

**KPI-standaarden voor SCALE-niveau (2026):**

| KPI | Drempel | Goed | Wereldklasse |
|---|---|---|---|
| **Open-rate** | > 20% | > 25% | > 40% |
| **Click-rate** | > 1.5% | > 2% | > 5% |
| **Click-to-open-rate (CTOR)** | > 8% | > 12% | > 20% |
| **Unsubscribe-rate per editie** | < 0.5% | < 0.2% | < 0.1% |
| **Bounce-rate (hard + soft)** | < 2% | < 1% | < 0.5% |
| **Spam-complaint-rate** | < 0.1% | < 0.05% | 0% |
| **Lijst-groei per maand** | > 1% | > 5% | > 10% |

**Belangrijk:** open-rate is sinds Apple Mail Privacy Protection (2021) **geïnflateerd**. Telkens als een Apple-mail-gebruiker een mail ontvangt, telt die als "geopend" zonder dat de gebruiker daadwerkelijk opent. Reëel beeld: open-rate is een ruwe indicator, click-rate en CTOR zijn betrouwbaarder.

Vastleggen: gekozen inhoud-mix, cadans, onderwerp-regel-formats (max 5), KPI-drempels.

#### Blok 7 — AVG + compliance

Vraag of alle AVG-vereisten gedekt zijn. Dit is een **verplicht** blok, geen optioneel.

**AVG-eisen voor nieuwsbrief:**

| Eis | Hoe in te vullen | Bron |
|---|---|---|
| **Rechtsgrond (toestemming)** | Double-opt-in inschrijving, expliciet aangevinkt vakje. Geen "default-aan" of "pre-checked" boxes (AVG art. 7) | Provider-instelling |
| **Privacyverklaring-link** | In elke mail-footer én bij signup-form, klikbaar naar `Juridisch/Privacyverklaring.md` of website-pagina | Cross-link J4 |
| **Opt-out-link in elke mail** | Eén klik = uitgeschreven, geen log-in nodig. Provider voegt dit automatisch toe in footer | Provider-default |
| **Adres bedrijf** | Volledig postadres in elke mail-footer (verplicht voor commerciële mail) | Eigen vastlegging |
| **Bewaartermijn** | Hoe lang bewaar je inschrijver-data na uitschrijving? Standaard direct verwijderen na opt-out, of geanonimiseerd voor stats | Privacyverklaring |
| **Datalekken-flow** | Bij datalek (bv. provider gehackt): binnen 72 uur melden bij AP. Provider moet ISO 27001 of equivalent hebben | Provider-keuze |
| **Verwerkersovereenkomst (VOK)** | AVG art. 28: contract tussen jou en provider waarin afspraken staan over gegevensverwerking | Provider-portaal |
| **EU-server-locatie of adequaatheid** | Provider buiten EU mag, mits Standard Contractual Clauses (SCC) of adequaatheidsbesluit. MailerLite en Brevo hebben EU-opties | Provider-keuze |

Vraag aan gebruiker:
1. *"Heb je de privacyverklaring al (J4 gedraaid)?"* Zo nee, wijs op skill `privacyverklaring`.
2. *"Wat is het volledige postadres van het bedrijf voor de mail-footer?"*
3. *"Heb je een verwerkersovereenkomst getekend met de gekozen provider?"* Vaak automatisch in provider-instellingen, even bevestigen.
4. *"Wat is je bewaartermijn-beleid na uitschrijving?"* Standaard: direct verwijderen, optioneel geanonimiseerd voor stats max 12 maanden.

**Belangrijke regel — geen import zonder opt-in:** als de gebruiker een oude contactlijst aanlevert (uit Excel, CRM, oude database), check of die mensen daadwerkelijk **expliciet** opt-in hebben gegeven voor nieuwsbrief. Zo niet, raad sterk af om die lijst zomaar te importeren. Alternatief: stuur eerst een **opt-in-mail** ("Wil je nog steeds nieuwsbrief van ons?") en alleen wie klikt komt op de nieuwe lijst. Dat is conform AVG én betere lijst-kwaliteit.

Vastleggen: privacyverklaring-link, postadres voor footer, VOK-status, bewaartermijn, import-strategie voor oude contacten.

#### Blok 8 — Eerste editie

Vraag wat er in de eerste nieuwsbrief-editie komt. Dit is geen leeg-papier-moment: gebruik de inputs uit blok 3 (template), blok 4 (toon uit welkomstmail), blok 6 (inhoud-mix) en de Content-Roadmap.

**Editie 1-structuur:**

| Sectie | Inhoud | Lengte |
|---|---|---|
| **Onderwerp-regel** | Volgens format uit blok 6, max 50 tekens | 1 regel |
| **Preheader** (preview-tekst) | Aanvulling op onderwerp, niet herhalen. 70-90 tekens | 1 regel |
| **Aanhef** | Persoonlijk, conform Tone of Voice | 1 zin |
| **Intro / hook** | Waarom open je deze mail? Wat ga je nu lezen? | 2-4 zinnen |
| **Kern-content** | Hoofd-stuk: tip, inzicht, case, essay, links | 200-1.500 woorden afhankelijk van format |
| **Side-blok** (optioneel) | Korte aanvulling, secundair item | 50-150 woorden |
| **CTA** | Eén heldere actie: lees verder, boek gesprek, antwoord op mail | 1 knop + onderschrift |
| **PS** (optioneel) | Persoonlijke afsluiter, vaak best-gelezen onderdeel | 1-2 zinnen |
| **Footer** | Naam, adres, opt-out, privacyverklaring-link, social-icons | provider-default |

Vraag aan gebruiker:
1. *"Heb je een onderwerp of thema in gedachten voor editie 1? Tip: maak het een 'kennismakings-editie' die jouw belofte uit de welkomstmail invult — eerste echte 'aflevering'."*
2. *"Welk format voor editie 1? Korte tip, langere case, persoonlijk verhaal, of curatie?"*
3. *"Wat is de CTA in editie 1? Boek-gesprek, antwoord-op-mail, klik-door-naar-blog?"*
4. *"Schrijf ik een **concept-tekst** op basis van Tone of Voice en Content-Roadmap, of geef je zelf de tekst aan?"*

Als de gebruiker concept-tekst wil: schrijf de editie in **2-3 versies** (een korte, een uitgebreide, eventueel een persoonlijker tussenvariant) en laat hem kiezen. Hou rekening met ToV-regels (jij/u-vorm, geen em-dashes, geen marketing-superlatieven).

Vastleggen: onderwerp-regel-suggesties (3-5), preheader, intro, kern-content of placeholder, CTA, verzend-datum (suggestie binnen 2 weken na setup-afronding). Sla het concept op onder `{scope}/Marketing/Nieuwsbrief/YYYY-MM-DD - <Onderwerp>/post.md` (of `.html` als provider HTML-export gebruikt). Maak de submap aan.

### Stap 6: Cross-link check

Voordat je het document schrijft, valideer 6 cross-links expliciet:

1. **S2 Brand** — Brand Guidelines geleverd, kleuren en logo verwerkt in template. Geen Brand Guidelines? Markeer en stel `brand-guidelines` voor.
2. **S3 Tone of Voice** — ToV geleverd, schrijfregels (jij/u, em-dashes, superlatieven) verwerkt in welkomstmail en editie 1. Geen ToV? Markeer en stel `tone-of-voice` voor.
3. **S4 ICP** — Segmenten in mail-tags komen overeen met ICP-segmenten. Verschil? Markeer en stel update voor.
4. **M3 Content-Roadmap** — Content-thema's voor edities komen uit Content-Roadmap. Geen Roadmap? Markeer en stel `content-roadmap` voor.
5. **J4 Privacyverklaring** — Privacyverklaring-link in footer staat live. Geen Privacyverklaring? **Blokkerend** voor go-live: stel `privacyverklaring` voor en pauzeer setup tot J4 klaar is, of accepteer expliciet risico van AVG-overtreding.
6. **S12 Toolstack** — Gekozen provider staat in `IT/Toolstack.md`. Niet aanwezig? Stel update voor.

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-nieuwsbrief-setup.md` als skelet. Vul het met de uitkomsten uit pre-fill plus interview plus cross-link check.

Sla op als:
```
{scope}/Marketing/Nieuwsbrief-Setup.md
```

Maak de `Marketing/`-map aan als die nog niet bestaat.

Eerste editie wordt opgeslagen als:
```
{scope}/Marketing/Nieuwsbrief/YYYY-MM-DD - <Onderwerp>/post.md
```
(Of `editie.html` als provider HTML-export verwacht.)

Frontmatter voor `Nieuwsbrief-Setup.md` (verplicht):
```yaml
---
type: nieuwsbrief-setup
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: M4
provider: <Provider-naam>
sender-domein: <domein.nl>
cadans: <wekelijks/2-wekelijks/maandelijks>
status-spf: <ja/wachtrij/nog te doen>
status-dkim: <ja/wachtrij/nog te doen>
status-dmarc: <ja/wachtrij/nog te doen>
double-opt-in: <ja/nee>
aantal-segmenten: <getal>
---
```

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "perfecte deliverability", "revolutionaire automation", "next-level open-rate". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "MailerLite Starter-plan, EUR 0/mnd tot 1.000 subs, EU-server in Litouwen" is sterker dan "een mailprovider".
- **Geen em-dashes** (—). Gebruik komma's, haakjes of losse zinnen.
- **Tabelvorm waar mogelijk** — datamodel, KPI-drempels, AVG-eisen zijn tabel-werk, geen essays.
- **Quality-eis voor M4:** minstens provider gekozen + sender-domein bevestigd + SPF/DKIM/DMARC-plan + double-opt-in aan + privacyverklaring-link + cadans + eerste editie concept. Onder die drempel niet opleveren.

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde, niet later):

1. **Changelog bedrijf** — `{scope}/Directie/Changelog.md`: nieuwste datum bovenaan, regels als:
   - *"Nieuw: `Marketing/Nieuwsbrief-Setup.md` — v1.0, provider <Naam>, cadans <X>, <N> segmenten"*
   - *"Nieuw: `Marketing/Nieuwsbrief/YYYY-MM-DD - <Onderwerp>/post.md` — concept editie 1"*
2. **Daily** — als de vault een daily-logging conventie heeft (bv. `Huddle/Daily/YYYY-MM-DD.md` in een Iwan-OS-stijl vault, of een Notion-daily-pagina), log dan een eenregelige melding plus link. Skip als die conventie niet bestaat.
3. **Goals-bestand** — als `{scope}/Directie/01 - Goals.md` een M4-doel of marketing-doel heeft (lijst-groei, eerste nieuwsbrief): status bijwerken (Ja), regel toevoegen aan voortgangslog.
4. **Toolstack-update-suggestie** — als de gekozen provider nog niet in `IT/Toolstack.md` staat, stel voor `toolstack-inventarisatie` opnieuw te draaien of snelle update toe te voegen.
5. **Scale-audit-suggestie** — als `{scope}/Directie/Research/` een audit-rapport bevat waar M4 op Niet of Deels staat, stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:
- **Doorgroei naar L3 Mailflow-Setup** — Nu er een provider staat en een welkomstmail (mail 1), kun je uitbreiden naar volledige mailflows: lead-nurture-sequence, segmentering-gebaseerde flows, win-back na 90 dagen inactief. L3 bouwt direct hierop.
- **Cross-link met M3 Content-Roadmap** — Edities zijn distributiekanaal voor content. Werk Content-Roadmap bij zodat content-thema's automatisch een nieuwsbrief-editie voeden.
- **Cross-link met V3 Opvolg-Flow** — Sales-opvolging na voorstel of gesprek kan triggeren op nieuwsbrief-engagement (heeft die persoon de laatste 3 edities geopend?). V3 bouwt daarop.
- **Cross-link met A1 Rapportage** — Open-rate, click-rate, lijst-groei worden marketing-KPI's. Voeg ze toe in `Directie/Rapportage.md`.
- **Review-ritme** — Na 3 maanden: review open-rate, click-rate, lijst-groei. Pas onderwerp-regel-format, cadans of inhoud-mix aan op basis van data. Plan kwartaal-review.
- **DMARC-progressie** — Plan na 2-3 maanden monitoring de stap van `p=none` naar `p=quarantine`, en na 6 maanden naar `p=reject`.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle 8 tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in vault of externe documenten staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **ICP, Brand, ToV en Privacyverklaring zijn verplichte cross-checks.** Geen optionele velden. Ontbreken ze, vraag het actief uit en raad aan eerst die skills te draaien (S4, S2, S3, J4).
- **Privacyverklaring is blokkerend.** Geen J4 = geen go-live nieuwsbrief, want footer-link is verplicht voor AVG.
- **Schrijf nooit zomaar over een bestaande `Nieuwsbrief-Setup.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Double-opt-in is verplicht.** Geen single-opt-in, geen "default aangevinkt" boxes. AVG art. 7.
- **Eigen sender-domein verplicht.** Geen `gmail.com`/`outlook.com`-adres als sender. DMARC blokkeert dat per 2024.
- **SPF + DKIM + DMARC verplicht** voor go-live. Zonder deze drie records: open-rate halveert, mails landen in spam.
- **DMARC start altijd op `p=none`** voor monitoring. Niet direct op `p=reject` zetten zonder 1-3 maanden monitoring.
- **Quality-eis is hard:** provider gekozen, sender-domein bevestigd, SPF/DKIM/DMARC gepland, double-opt-in aan, privacyverklaring-link werkt, cadans vastgelegd, eerste editie concept klaar. Halve setups voldoen niet.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (provider-naam, domein, cadans) als het te abstract blijft.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe bronnen.** Eerdere nieuwsbrief, domein-toegang en content-ideeën besparen 50% van het uitvraag-werk.
- **Geen marketing-trucjes in de output.** Geen "imagine if...", geen rhetorische vragen, geen "discover", "unlock", "transform". Recht voor zijn raap.
- **Mik op werkbaarheid, niet op het audit-minimum.** Het document moet de basis kunnen vormen voor L3, V3 en A1. Halve antwoorden voldoen niet.
- **AVG-compliance is geen kers-op-de-taart.** Het is fundament. Sla niet over.
- **Cadans-conservatisme.** Adviseer altijd de **laagste haalbare cadans** voor 6 maanden. Wekelijks beginnen en terugvallen voelt slechter dan 2-wekelijks beginnen en versnellen.
- **Importeer geen oude lijst zonder opt-in-check.** Stuur eerst opt-in-mail, alleen klikkers in nieuwe lijst.
- **KPI-eerlijkheid.** Open-rate is sinds Apple MPP geïnflateerd. Click-rate en CTOR zijn betrouwbaarder. Document dat ook zo.

## Voorbeeld-output

Zie [`references/template-nieuwsbrief-setup.md`](references/template-nieuwsbrief-setup.md) voor de exacte structuur die de skill oplevert: provider-keuze met onderbouwing, sender-domein-tabel inclusief SPF/DKIM/DMARC-status, template + signup-form-overzicht, welkomstmail-detail, segmentatie-tabel, inhoud-mix en cadans, KPI-drempels, AVG-checklist, eerste-editie-concept en cross-links naar Brand, ToV, ICP, Content-Roadmap, Privacyverklaring en aangrenzende SCALE-checks.
