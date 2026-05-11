---
name: klantportaal-scoping
title: "Klantportaal Scoping"
description: "Helpt een ondernemer in 60 tot 120 minuten een klantportaal scopen en architecteren in één canoniek document: `{scope}/Engineer/Klantportaal-Scoping.md`. Dit is SCALE-stap E4 (Engineer) en de klant-facing tegenhanger van E2 (App Scoping voor interne apps): waar E2 een interne tool voor de ondernemer of het team beschrijft, scopt E4 een **externe self-service-omgeving** waar klanten zelf inloggen om hun eigen project, factuur, voortgang of bestelling te zien. De skill levert een blauwdruk met functies, klant-auth-strategie, klant-rollen, AVG-impact, branding-eisen, white-label-optionaliteit, exporteerbaarheid, technische stack-keuze en releaseplanning. Branche-specifiek: voor dienstverlening (consultancy, administratie, bouw) draait het portaal om project-status, documenten, facturen, support-tickets, planning en communicatie-log. Voor e-commerce om orders, retours, abonnementen en profiel-beheer. Voor B2B-SaaS om gebruik-stats, instellingen, team-leden en billing. Voor training en coaching om cursusvoortgang, downloads, agenda en lesmateriaal. Vóór het interview begint scant de skill diep wat al beschikbaar is: `Structure/ICP.md` (S4) voor wie de klanten zijn, `Structure/Klantreis.md` (S9) voor in welke fase een portaal helpt, `Structure/Producten-en-Pricing.md` (S8) voor wat de klant koopt en dus wat hij wil zien, `Juridisch/Privacyverklaring.md` (J4) voor AVG-implicaties van persoonsgegevens in een portaal, `Collect/CRM-Setup.md` (C2) voor de data-bron van klant-records, `Engineer/App-Scoping.md` (E2) als zuster-skill, `IT/Toolstack.md` (S12) voor bestaande tech-stack die hergebruikt kan worden, en `Sales/Salesproces.md` (V1) voor het deal-won-moment dat een klant-account triggert. Werkt vault-onafhankelijk: geen aannames over een specifieke mapnaam of vault-eigenaar, alleen over de SCALE-conventie (`Engineer/`, `Structure/`, `Collect/`, `Juridisch/`, `IT/`). Activeer altijd wanneer iemand zegt: 'klantportaal scopen', 'portaal voor klanten', 'self-service portal', 'klant-login bouwen', 'mijn-omgeving voor klanten', 'customer portal', 'klant kan eigen voortgang zien', 'factuur-portaal', 'order-portaal', 'cursusplatform met login', 'AVG-compliant klant-omgeving', 'white-label portaal', 'E4 dichten in SCALE-audit', 'gap E4', 'Klantportaal-Scoping.md aanmaken'. Belangrijk: dit is een **scoping**-document, geen bouw-instructie. De skill levert een implementatie-klare blauwdruk; het bouwen zelf gebeurt door een ontwikkelaar of een no-code-tool (Softr, Bubble, FlutterFlow, of custom Next.js/Supabase). Bij persoonsgegevens en betalingen verwijst de skill expliciet door naar J4 (Privacy) en een ontwikkelaar of beveiligings-specialist."
category: bouwen
tags: [scale-framework, e4, engineer, klantportaal, self-service, klant-auth, avg, white-label]
estimatedTime: "60 tot 120 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Klantportaal Scoping

## Doel

Helpt een ondernemer om in 60 tot 120 minuten een **klantportaal** te scopen en architecteren in één canoniek document: `{scope}/Engineer/Klantportaal-Scoping.md`. Dit is SCALE-stap E4 (Engineer) en de klant-facing pendant van E2 (App Scoping voor interne tools). Waar E2 een **interne** app beschrijft die de ondernemer of het team gebruikt, scopt E4 een **externe self-service-omgeving** waar de klant zelf inlogt om zijn eigen project, factuur, voortgang of bestelling te bekijken zonder de ondernemer per mail of telefoon te hoeven storen.

*Waarom dit fundamenteel is.* Een MKB-bedrijf dat geen klantportaal heeft, beantwoordt dagelijks dezelfde vier soorten klant-vragen via mail of telefoon: "wat is de status van mijn project", "kan ik die factuur opnieuw krijgen", "welke documenten heb ik aangeleverd" en "wanneer staat ons volgende gesprek". Elk van die vier vragen kost de ondernemer 5 tot 15 minuten per beurt en de klant een wachttijd van een halve dag tot drie dagen. Bij 50 actieve klanten en gemiddeld 2 vragen per week tikt dat aan tot 8 tot 25 uur per week ondernemer-tijd en een klantervaring die gemiddeld 1 dag te laat is.

*Wat een E4-klantportaal oplost.* Door een self-service-omgeving te bouwen waar de klant 24/7 zijn eigen data ziet, valt 60 tot 85 procent van die vragen weg. De klant ziet zijn project-fase live, downloadt zijn facturen wanneer hij wil, ziet zijn ingediende documenten terug en plant zelf een vervolggesprek. De ondernemer ziet alleen nog **uitzonderingen** en escalaties, en kan zijn tijd besteden aan werkelijk advies in plaats van administratieve afhandeling.

*Waarom dit het zusje is van E2.* E2 (App Scoping) ontwerpt **interne tools** zoals een operationeel dashboard, een SOP-runner of een interne factuur-tracker. E2 is gemaakt voor de ondernemer of zijn team. E4 ontwerpt **klant-facing tools** met een fundamenteel andere set eisen: klanten zijn extern, hebben geen vertrouwen vooraf, hebben geen onboarding-training gehad, zien alleen hun eigen data en zijn beschermd door AVG. E4 vraagt dus om klant-auth (met magic-link, e-mail of SSO), klant-rollen (alleen-lezen versus admin per klant-account), branding (de klant ziet jouw bedrijfsmerk, soms zijn eigen merk via white-label), data-isolatie (klant ziet **uitsluitend** zijn eigen records, niet die van andere klanten) en exporteerbaarheid (AVG-recht op dataportabiliteit). Bij interne tools speelt dat niet of veel minder.

*Wat de scope van dit document is.* De skill levert een **scoping- en architectuur-document**, geen werkende code en geen klikbare prototype. Het document is genoeg om aan een ontwikkelaar, een no-code-builder (Softr, Bubble, FlutterFlow), of een Next.js-Supabase-team te overhandigen en daadwerkelijk te laten bouwen. Het beschrijft per functie: doel, gebruikers-flow, data-bron, fallback, security-implicatie en KPI. Het bouwen zelf, het testen en het uitrollen liggen buiten deze skill.

Resultaat: SCALE-audit E4 springt van rood of oranje naar groen, én er ligt een document waarmee een ontwikkel-traject in week één kan starten zonder achteraf-iteraties op functionele vragen. Ook bruikbaar als RFP voor het selecteren van een externe ontwikkelaar of no-code-bouwer.

**Disclaimer:** dit document is een functioneel en technisch scoping-document, geen juridisch privacy-advies en geen security-audit. Bij persoonsgegevens in een klantportaal blijft de ondernemer verwerkingsverantwoordelijke onder de AVG. Bij betalingen of gevoelige financiële data is aanvullend advies van een security-specialist of jurist nodig. De skill markeert AVG-en security-implicaties, maar levert geen DPIA of pentest. Scope versnelt, vervangt geen audit.

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```
┌──────────────────────────────────────────────────────────┐
│  KLANTPORTAAL SCOPING - SCALE-stap E4 (Engineer)          │
│  ~60-120 minuten · 8 interview-blokken                    │
└──────────────────────────────────────────────────────────┘

  In 60 tot 120 minuten leggen we vast hoe een klant-
  facing self-service-omgeving voor jouw klanten eruit
  gaat zien. Wat zien klanten, hoe loggen ze in, welke
  data is per klant geïsoleerd, hoe wordt jouw branding
  doorgevoerd, en hoe waarborg je AVG bij persoons-
  gegevens. Daarna ligt er een blauwdruk die je aan een
  ontwikkelaar of no-code-bouwer kunt overhandigen.

  ┌────────────────────────────────────────────────────────┐
  │  WAT JE TE WACHTEN STAAT                                │
  │                                                         │
  │  • 8 blokken interview (één per beurt, niet alles       │
  │    tegelijk), gemiddeld 7-15 minuten per blok           │
  │  • Per blok 3-6 korte vragen, altijd met een            │
  │    aanbevolen standaard erbij                           │
  │  • Vooraf scan ik je vault (Structure/ICP, Klantreis,   │
  │    Producten-en-Pricing, Juridisch/Privacyverklaring,   │
  │    Collect/CRM-Setup, IT/Toolstack) zodat we voort-     │
  │    bouwen op wat S4, S8, S9, J4 en C2 al hebben         │
  │    vastgelegd                                           │
  │  • Daarna lever ik Klantportaal-Scoping.md op met       │
  │    per functie: doel, gebruikers-flow, data-bron,       │
  │    fallback, security-implicatie en KPI                 │
  └────────────────────────────────────────────────────────┘

  De 8 blokken:
  [1] Scope + branche-keuze (dienstverlening,
      e-commerce, B2B-SaaS, training/coaching)
  [2] Doelgroep + use-cases (wat lost het portaal op
      voor welke klant)
  [3] Functie-set (welke schermen en acties zijn
      verplicht, welke optioneel)
  [4] Klant-auth (e-mail+wachtwoord, magic-link, SSO,
      eventueel 2FA)
  [5] Klant-rollen en data-isolatie (alleen-lezen vs
      admin per klant-account, multi-user per account)
  [6] AVG en data-portabiliteit (welke persoons-
      gegevens, retentie, exporteerbaarheid)
  [7] Branding + white-label-optie (jouw merk standaard,
      klant-merk via eigen domein optioneel)
  [8] Tech-stack + releaseplanning (no-code, low-code,
      custom; fasering en MVP)

  Heb je externe input klaar? Bijvoorbeeld:
  • Screenshots of demo-toegang van portalen die je
    mooi vindt (bv. portaal van je boekhouder of van
    een SaaS-tool waar je klant van bent)
  • Lijst van de 5-10 vragen die klanten je nu het
    meest stellen (die wil het portaal beantwoorden)
  • Je huidige CRM-export of een sample-klant-record
    (zonder persoonsgegevens) om de data-structuur
    te zien
  • Brand guidelines, logo en kleur-palet als die er
    nog niet in S2 staan
  • Domeinnaam-overzicht als je een sub-domein voor
    het portaal wilt gebruiken (bv. mijn.bedrijf.nl)

  Hoe meer voorwerk, hoe sneller we tot een ontwikkel-
  klare blauwdruk komen.

  Let op: dit is een scoping- en architectuur-document,
  geen juridisch privacy-advies en geen security-audit.
  Bij persoonsgegevens blijf jij verwerkingsverant-
  woordelijke onder de AVG. Bij betalingen of gevoelige
  data is aanvullend advies van een security-specialist
  nodig. Scope versnelt, vervangt geen audit.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe bronnen wil aanleveren.

## Visuele Flow

```
┌──────────────────────────────────────────────────────────┐
│  KLANTPORTAAL SCOPING - E4 · 60-120 min · 8 blokken       │
└─────────────┬────────────────────────────────────────────┘
              ▼
   ┌──────────────────────┐
   │ 1. Scope kiezen      │  Welk bedrijf?
   │                      │  Welk pad?
   │                      │  Engineer/ of
   │                      │  Projects/?
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 2. Vault scannen     │  S4 ICP, S8 Producten,
   │    (auto-discover)   │  S9 Klantreis,
   │                      │  J4 Privacy, C2 CRM,
   │                      │  E2 App Scoping,
   │                      │  S12 Toolstack
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 3. Externe input?    │  Demo-screenshots,
   │                      │  top-10 klant-vragen,
   │                      │  CRM-sample,
   │                      │  brand guidelines,
   │                      │  domein-overzicht
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 4. Pre-fill tonen    │  Wat al bekend is
   │                      │  per blok, ter
   │                      │  validatie
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 5. Interview, blok   │  8 blokken,
   │    voor blok         │  3-6 vragen elk
   │                      │  [1] Scope + branche
   │                      │  [2] Doelgroep + use-cases
   │                      │  [3] Functie-set
   │                      │  [4] Klant-auth
   │                      │  [5] Rollen + isolatie
   │                      │  [6] AVG + portabiliteit
   │                      │  [7] Branding + white-label
   │                      │  [8] Stack + releaseplan
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 6. Cross-link met    │  S4 ICP, S8 Producten,
   │    aangrenzende      │  S9 Klantreis,
   │    SCALE-stappen     │  J4 Privacy, C2 CRM,
   │                      │  E2 App Scoping,
   │                      │  V1 Salesproces,
   │                      │  S12 Toolstack
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 7. Schrijven +       │  Engineer/
   │    opslaan           │  Klantportaal-Scoping.md
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │ 8. Logging +         │  Changelog +
   │    aanbevelingen     │  3 vervolgstappen
   └──────────────────────┘
```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Klantportaal scopen" / "klantportaal ontwerpen" / "portaal voor klanten"
- "Self-service portal" / "self-service-omgeving voor klanten"
- "Klant-login bouwen" / "klant kan inloggen" / "mijn-omgeving voor klanten"
- "Customer portal" / "client portal"
- "Klant kan eigen voortgang zien" / "klant ziet zijn eigen project"
- "Factuur-portaal" / "facturen-omgeving voor klanten"
- "Order-portaal" / "orders-overzicht voor klanten"
- "Cursusplatform met login" / "leden-omgeving"
- "AVG-compliant klant-omgeving" / "privacy-veilig klantportaal"
- "White-label portaal" / "portaal met eigen klant-domein"
- "E4 dichten in SCALE-audit" / "gap E4"
- "Klantportaal-Scoping.md aanmaken"
- "Hoe scope ik een klantportaal" / "klant-vragen automatiseren via portaal"

Triggert NIET wanneer:
- De gebruiker een **interne tool** voor zichzelf of zijn team wil scopen. Dat is E2 `app-scoping`. Deze skill is uitsluitend voor externe klant-facing applicaties.
- De gebruiker een **website** of marketing-site wil scopen. Dat is M1 `website-launch-check` of een aparte website-flow. Een klantportaal is een ingelogde omgeving, geen openbare site.
- De gebruiker een **CRM** wil opzetten of kiezen. Dat is C2 `crm-setup`. Deze skill leunt op de CRM als data-bron, maar bouwt geen CRM.
- De gebruiker een **dashboard voor intern gebruik** wil bouwen. Dat is A2 `mission-control-builder` of E1 `dashboard-bouwer`. Deze skill levert klant-facing schermen, geen interne KPI-dashboards.
- De gebruiker een **workflow-automatisering** wil ontwerpen. Dat is E3 `workflow-pipeline`, L1 `sop-automatiseren` of L4 `finance-automatisering`.
- Het bedrijf heeft **geen actieve klanten** of een onduidelijk product. Dan eerst S4 (ICP), S8 (Producten en Pricing) en S9 (Klantreis) op orde, daarna terug naar E4.
- De gebruiker wil **direct gaan bouwen** zonder eerst de scope vast te leggen. Verwijs dan naar een ontwikkelaar of no-code-builder. Deze skill levert het document waar de bouw op aansluit.
- De gebruiker wil een **DPIA** of formele AVG-impact-assessment. Dat is werk voor een privacy-jurist. Deze skill markeert AVG-implicaties, maar levert geen DPIA.

## Workflow

### Stap 1: Scope kiezen en bestand-locatie bepalen

Vraag voor welk bedrijf en in welk pad de klantportaal-scoping wordt vastgelegd. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Engineer/`, `Structure/`, `IT/` direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Engineer/`, etc.)
- Een **versgemaakte SCALE-skelet** (output van `os-builder`) waar Engineer nog leeg is

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar deze klantportaal-scoping voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bijvoorbeeld de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker het pad niet weet: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `IT/`-, `Structure/`- of `Engineer/`-map. Bevestig de gevonden scope voordat je doorgaat.

**Pad-keuze voor het output-bestand.** Standaard-pad volgt SCALE-conventie:

- `{scope}/Engineer/Klantportaal-Scoping.md` past binnen de SCALE-Engineer-conventie (bewust ondergebracht bij alle Engineer-blauwdrukken zodat E1, E2, E3 en E4 visueel bij elkaar staan)
- Alternatief is `{scope}/Projects/Klantportaal/Scoping.md` als de organisatie projecten in een aparte map beheert

Vraag de gebruiker welke voorkeur:
> "Wil je dit document onder `Engineer/` plaatsen (SCALE-conventie, naast E1, E2, E3) of onder `Projects/Klantportaal/` (samen met andere project-artefacten)? Beide kanten werken. Mijn standaard-suggestie is **`Engineer/Klantportaal-Scoping.md`** omdat dat alle Engineer-blauwdrukken bij elkaar zet."

Controleer daarna of het gekozen output-pad al bestaat:
- Bestaat niet, eerste versie, doorgaan
- Bestaat wel, vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Klantportaal-Scoping - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

Maak de bovenliggende map (`Engineer/` of `Projects/Klantportaal/`) aan als die nog niet bestaat.

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root, geen hard-coded absolute paden.

Standaard SCALE-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Engineer/Klantportaal-Scoping.md` (huidige versie als die bestaat) | Bestaande scoping, eerdere keuzes, openstaande gaten |
| `Engineer/App-Scoping.md` (E2, als die bestaat) | **Verplichte check**, interne app-keuzes, tech-stack-voorkeur, dezelfde stijl van scoping aanhouden voor consistentie |
| `Structure/ICP.md` (S4) | **Verplichte check**, wie de klanten zijn, B2B of B2C, segmenten, demografie of firmografie |
| `Structure/Klantreis.md` (S9) | **Verplichte check**, in welke fase een portaal helpt (Onboarding, Service, Retention), waar de pain-points zitten |
| `Structure/Producten-en-Pricing.md` (S8) | **Verplichte check**, wat de klant koopt, welke leveringsvorm, welke recurring of eenmalige componenten |
| `Juridisch/Privacyverklaring.md` (J4) | **Verplichte check**, welke persoonsgegevens al worden verwerkt, retentie-termijnen, rechten van betrokkenen |
| `Collect/CRM-Setup.md` (C2) | **Verplichte check**, CRM-tool als data-bron voor klant-records (HubSpot, Pipedrive, Notion, custom) |
| `IT/Toolstack.md` (S12) | **Verplichte check**, bestaande tech-stack die hergebruikt kan worden (boekhoudpakket, betalingsplatform, mail-platform, hosting) |
| `Sales/Salesproces.md` (V1, als bestaat) | Deal-won-trigger die een klant-account in het portaal aanmaakt |
| `Marketing/Brand-Guidelines.md` (S2, als bestaat) | Branding-input voor visuele consistentie van het portaal |
| `Operations/Processen/` | Bestaande SOPs rond klant-onboarding, support of facturatie die het portaal raakt |
| `Directie/00 - Overzicht.md` | Bedrijfsnaam, type dienstverlening, omzetorde-grootte (relevant voor schaal) |
| `Directie/01 - Goals.md` | Efficiency-doel of klantbeleving-doel waar het portaal aan bijdraagt |

Maak per gevonden bron een korte interne aantekening: welk van de 8 blokken het raakt en welke kerngegevens al bekend zijn.

**Belangrijk:** als een bron niet bestaat, skip stilletjes. Niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is. Wel: als **S4, S8, S9, J4 of C2 ontbreekt**, vermeld dat expliciet aan de gebruiker en stel voor die eerst (of parallel) te doen. E4 leunt op die fundering en een scope zonder die input wordt vaag.

Vul daarna onderstaand intern overzicht in:

- Bedrijfsnaam: [uit vault of leeg]
- Branche-type: [dienstverlening / e-commerce / B2B-SaaS / training en coaching / hybride, afleiden uit S8 + S4]
- B2B of B2C: [uit S4]
- Aantal actieve klanten: [getal uit C2 of S4, of "onbekend"]
- Typische klant-vragen (top 5): [uit S9 of zelf vragen]
- Bestaande CRM-tool: [uit C2]
- Bestaande boekhoudpakket: [uit S12, voor factuur-data]
- Bestaande betalingsplatform: [uit S12, voor order-data]
- Branding-stand: [uit S2 of leeg]
- AVG-categorieën in J4: [uit J4]
- Domein-naam beschikbaar: [vraag of er een sub-domein bestaat zoals mijn.bedrijf.nl]
- Tech-stack-voorkeur uit E2: [no-code / low-code / custom, als E2 bestaat]
- Budget-orde-grootte: [vraag, ruwe schatting voor stack-keuze]

### Stap 3: Externe input ophalen

Vraag actief of de gebruiker externe materialen heeft die meegenomen kunnen worden. Bij klantportaal-scoping zijn er vaak structurele bronnen buiten de vault die de blauwdruk preciezer maken.

Concrete vraag aan gebruiker:
> "Heb je externe bronnen die we kunnen meenemen? Bijvoorbeeld:
> - **Screenshots of demo-toegang** van portalen die jij of je klanten mooi of nuttig vinden. Bijvoorbeeld het portaal van jouw boekhouder, een Stripe-customer-portal, een Mollie-dashboard, of een SaaS-tool waar je klant van bent. Concrete voorbeelden helpen enorm bij stijl- en functie-keuzes.
> - Een **lijst van de 5 tot 10 vragen** die klanten je nu het meest stellen via mail of telefoon. Dat is de gouden input: het portaal bestaat om die vragen weg te nemen.
> - Een **CRM-export of sample-klant-record** (geanonimiseerd, zonder persoonsgegevens) zodat we de data-structuur kunnen zien die het portaal moet tonen.
> - **Brand guidelines, logo en kleur-palet** als die er nog niet in S2 (Brand Guidelines) staan. Het portaal moet dezelfde stijl uitstralen als je website.
> - **Domeinnaam-overzicht** als je een sub-domein voor het portaal wilt gebruiken (bijvoorbeeld `mijn.bedrijf.nl`, `portal.bedrijf.nl` of `account.bedrijf.nl`). Voorkeur-naam alvast vastleggen.
> - **Klant-feedback** of NPS-resultaten (uit C4) waar klanten expliciet om self-service hebben gevraagd of waar frustratie over wachttijd is gemeld.
> - **Audit-eisen** als je klanten in een gereguleerde sector zitten (zorg, financieel, overheid) waar specifieke security-eisen gelden (bv. ISO 27001-aspecten, NEN 7510 in de zorg).
> - **Bestaande tech-stack-keuzes** als je in E2 al een interne app hebt gescopt, zodat we dezelfde stack overwegen voor consistentie.
> 
> Hoe meer input, hoe minder ik hoef uit te vragen en hoe preciezer de blauwdruk. Een lijst klant-vragen of een screenshot is veel waardevoller dan een schatting uit het hoofd."

Per aangeleverde bron:
- **Demo-screenshots**: identificeer welke functies de gebruiker mooi vindt (navigatie, kleur, structuur, micro-interacties). Noteer expliciet wat **wel** en wat **niet** overgenomen wordt.
- **Top klant-vragen**: groepeer in 5 categorieën (status, documenten, financieel, planning, support). Elke categorie wordt een functie in het portaal.
- **CRM-sample**: noteer welke velden bestaan per klant-record. Die velden vormen de basis-data voor het portaal.
- **Brand guidelines**: pak primair- en accent-kleur, lettertype, logo-bestand-locatie en visuele tone (formeel, speels, technisch).
- **Domein-naam**: noteer de gewenste sub-domein-naam. Check beschikbaarheid met DNS-tools is buiten scope, alleen vastleggen.
- **Klant-feedback**: pak letterlijke citaten waar self-service wordt gewenst. Die zinnen gebruiken we later als bewijs voor prioritering.
- **Audit-eisen**: noteer welke standaard en welke specifieke eisen (bv. data binnen EU, encryption-at-rest, log-retentie). Flag voor security-specialist later.
- **E2-stack**: noteer welke stack daar gekozen is. Vraag in blok 8 expliciet of dezelfde stack overwogen moet worden.

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4. Markeer in dat geval velden waar geen bron voor is met `[VERIFICEREN]` zodat de gebruiker later kan aanvullen.

**Privacy-let op**: laat de gebruiker geen echte klant-namen, e-mailadressen, telefoonnummers of bedragen plakken. Vraag om geanonimiseerde versies of laat de gebruiker zelf de structuur beschrijven zonder identificeerbare gegevens. Een sample-record met `Klant A`, `klant-a@voorbeeld.nl`, `EUR 1.200` is genoeg.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 8 blokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat én de gebruiker bevestigen of de informatie correct is begrepen.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] SCOPE + BRANCHE
      Bedrijf: {Naam}
      Pad: {scope}
      Output-bestand: {scope}/Engineer/Klantportaal-Scoping.md
      Bestaat al: nee (eerste versie)
      Branche-type: dienstverlening (consultancy)
       , afgeleid uit S8 (Producten en Pricing) +
        S4 (ICP, B2B-MKB-segment)

  [2] DOELGROEP + USE-CASES
      ICP uit S4: MKB-ondernemers 5-50 FTE in de
        zakelijke dienstverlening, leeftijd 40-55
      Aantal actieve klanten uit C2: ~50
      Klantreis-fase waar portaal helpt (uit S9):
        Onboarding, Service, Retention
      Top 5 pain-points uit S9: wachttijd op
        antwoord, geen inzicht in voortgang, herhaalde
        document-uitwisseling

  [3] FUNCTIE-SET
      Top 5 klant-vragen (uit gebruiker): project-
        status, factuur-download, document-archief,
        volgend gesprek, support-ticket
      Daaruit volgt: dashboard met 5 schermen
        (Overzicht, Project, Facturen, Documenten,
        Support)

  [4] KLANT-AUTH
      Voorkeur uit E2 (als die bestaat): magic-link
      Aanbeveling: e-mail + magic-link (geen
        wachtwoorden, lage wrijving voor MKB-klanten)

  [5] ROLLEN + ISOLATIE
      Aanbeveling: één account per klant-bedrijf,
        meerdere users mogelijk per account
      Rollen: klant-admin (alles zien en wijzigen),
        klant-viewer (alleen-lezen)

  [6] AVG + PORTABILITEIT
      Persoonsgegevens uit J4: NAW, e-mail, telefoon,
        eventueel KvK + BSN bij administratie-klanten
      Retentie uit J4: 7 jaar (administratieve
        bewaarplicht), daarna anonimiseren
      Exporteerbaarheid: AVG-recht op data-
        portabiliteit, ZIP-download met JSON + PDFs

  [7] BRANDING + WHITE-LABEL
      Brand uit S2: warm-coral accent, donker thema,
        sans-serif typografie
      White-label: optioneel, klant kan eigen
        sub-domein gebruiken (uit E2-voorkeur of
        nieuw)

  [8] STACK + RELEASEPLAN
      E2-stack (als E2 bestaat): Next.js + Supabase
       , voorstel om dezelfde stack te gebruiken
      MVP-omvang: schermen 1+2+3 (Overzicht, Project,
        Facturen) in eerste release, dan 4 en 5
        in tweede release

  GATEN waar ik nog vragen voor heb:
  - Blok 2: bevestiging van de top-5 klant-vragen
  - Blok 3: welke schermen zijn must-have, welke nice-
    to-have
  - Blok 4: 2FA verplicht of optioneel
  - Blok 5: kan één klant-account meerdere
    contactpersonen hebben, of altijd 1-op-1
  - Blok 6: hoe wil je toestemmingen vastleggen
    (cookie-banner, in-app, mailbevestiging)
  - Blok 7: wil je white-label aanbieden of jouw merk
    altijd zichtbaar houden
  - Blok 8: bouw je zelf, no-code (Softr), of laat je
    een ontwikkelaar het maken

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat. Flag inconsistenties expliciet (bijvoorbeeld: S4 zegt B2C, maar de gebruiker spreekt over zakelijke klanten; of J4 noemt geen BSN, maar de gebruiker wil administratie-data tonen in het portaal, dat raakt direct de privacyverklaring).

### Stap 5: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**. Wacht op het antwoord, dan pas het volgende blok. Niet alle blokken tegelijk neerzetten.

Per blok: 3 tot 6 vragen, afhankelijk van hoe gevuld de pre-fill al was. Als een blok in pre-fill al rijk gevuld is, stel je alleen check-vragen. Als het blok leeg is, stel je open vragen om het te vullen. **Altijd een aanbevolen standaard meegeven** bij elke vraag, zodat de gebruiker snel kan bevestigen of corrigeren.

#### Blok 1: Scope en branche-keuze

Behandeld in stap 1 en pre-fill, hier alleen een korte bevestiging plus twee scope-vragen:

> "We bouwen de klantportaal-scoping voor {Bedrijfsnaam} op `{gekozen pad}`. Klopt dit?"

> "Welke **branche-categorie** past het best? Vier hoofd-varianten met elk een eigen functie-set:
> - **Dienstverlening** (consultancy, administratie, bouw, makelaar): kern-functies project-status, documenten, facturen, support-tickets, planning, communicatie-log.
> - **E-commerce** (webshop, abonnementen): kern-functies orders, retouren, abonnementen, profiel-beheer, adressen, bestelhistorie.
> - **B2B-SaaS** (software-as-a-service voor zakelijke klanten): kern-functies gebruik-statistieken, instellingen, team-leden, billing-overzicht, API-keys.
> - **Training en coaching** (online cursussen, ledenplatform): kern-functies cursusvoortgang, downloads, agenda, lesmateriaal, certificaten.
> 
> Uit S4 en S8 leid ik af dat dit waarschijnlijk **{voorgestelde categorie}** is. Klopt dat, of past een andere categorie of hybride beter?"

> "Welke **prioriteit** heeft dit portaal in jouw roadmap? Drie opties:
> - **Hoog**: binnen 3 maanden live, vervangt de ad-hoc-mailstroom direct.
> - **Middel**: binnen 6 maanden, na een paar andere prioriteiten.
> - **Laag**: verkennend, binnen 12 maanden of later. Standaard-suggestie als E2 net is opgeleverd en E4 een natuurlijk vervolg is."

#### Blok 2: Doelgroep en use-cases

**Wat we vastleggen:** wie de portaal-gebruiker is, welke vragen het portaal beantwoordt, welke gedragsdoelen we meten.

Vier vragen:

1. **Wie is de gebruiker?** Vraag de gebruiker-persona:
   > "Uit S4 heb ik {ICP-naam} als hoofd-segment. Is de portaal-gebruiker dezelfde persoon als die in S4 koopt, of een **andere rol** binnen het klant-bedrijf? In B2B-dienstverlening is de koper vaak de directeur, maar de portaal-gebruiker is meestal de **operationele contactpersoon** (boekhouder, office manager, projectleider). Klopt dat patroon, of zit het bij jullie anders?"

2. **Top klant-vragen.** Vraag welke vragen het portaal moet beantwoorden:
   > "Welke vijf vragen krijg je nu het meest van klanten via mail of telefoon? Standaard-set in dienstverlening: (1) wat is de status van mijn project, (2) waar zijn die documenten ook alweer, (3) kan ik de factuur opnieuw krijgen, (4) wanneer is ons volgende gesprek, (5) ik heb een vraag, kun je helpen. Komt deze top-5 in de buurt, of mis ik er twee die voor jullie veel voorkomen?"
   
   Standaard-suggestie: ga in op concrete recente voorbeelden uit de mailbox. Specifieke vragen zijn waardevoller dan abstracte categorieën.

3. **Gedragsdoelen.** Vraag wat het portaal moet veranderen:
   > "Wat is **succes** over 6 maanden? Standaard-doelen voor een MKB-klantportaal:
   > - **Volume**: 80%+ van klanten logt minstens 1× per maand in.
   > - **Vragen**: 50-70% reductie van klant-vragen via mail en telefoon op de functies die in het portaal staan.
   > - **Klantbeleving**: NPS-stijging van +X tot +Y, of expliciete tevredenheid in de eerste 6-maands-meting.
   > - **Tijd**: ondernemer bespaart minimaal 4 uur per week op administratieve klant-afhandeling.
   > Welke twee zijn voor jou de belangrijkste meet-doelen?"

4. **Out-of-scope.** Vraag wat juist **niet** in het portaal hoeft:
   > "Wat moet bewust **niet** in het portaal? Standaard-uitsluitingen: (a) intern-only data zoals interne kosten, marge, leverancier-info, (b) ruwe boekhoud-mutaties (alleen factuur en overzicht, geen grootboek), (c) live-chat-functionaliteit (gebruik daarvoor een aparte tool zoals Intercom of Drift, niet bouwen in het portaal), (d) social-features zoals klant-onderlinge community (apart product, andere security-scope). Klopt deze uitsluiting?"

Per blok noteren: gebruiker-persona (link naar S4 als ICP), top-5 vragen die het portaal beantwoordt, 2 hoofd-gedragsdoelen met meetbare metrics, expliciete out-of-scope-lijst.

#### Blok 3: Functie-set (schermen en acties)

**Wat we vastleggen:** lijst van schermen, must-have versus nice-to-have, acties per scherm, navigatie-structuur.

Vijf vragen:

1. **Schermen-lijst.** Vraag welke schermen er moeten zijn:
   > "Op basis van blok 2 stel ik deze schermen voor. Per branche standaard:
   > 
   > **Dienstverlening:**
   > 1. Overzicht (dashboard met laatste activiteit, openstaande actie, snelle navigatie)
   > 2. Project (status, fase, planning, deliverables)
   > 3. Facturen (overzicht + download)
   > 4. Documenten (archief van uitgewisselde bestanden)
   > 5. Planning (agenda gedeeld, volgende afspraak)
   > 6. Support (ticket aanmaken, status)
   > 7. Profiel (eigen contactgegevens beheren)
   > 
   > **E-commerce:**
   > 1. Overzicht
   > 2. Orders (overzicht + status + track-and-trace)
   > 3. Retouren (retour aanmelden + status)
   > 4. Abonnementen (lopende abonnementen + pauzeren)
   > 5. Adressen (bezorg- en factuuradres)
   > 6. Profiel
   > 
   > **B2B-SaaS:**
   > 1. Overzicht (gebruik + KPI)
   > 2. Instellingen (configuratie van het product)
   > 3. Team (leden + rollen + uitnodigingen)
   > 4. Billing (plan + verbruik + facturen)
   > 5. API-keys (genereren + intrekken)
   > 6. Profiel
   > 
   > **Training en coaching:**
   > 1. Overzicht (laatste les + voortgang)
   > 2. Cursus (modules + voortgang per module)
   > 3. Materiaal (downloads, video's, werkboeken)
   > 4. Agenda (volgende live-sessie of coaching-call)
   > 5. Certificaten (behaalde certificaten + download)
   > 6. Profiel
   > 
   > Welke van deze schermen is **must-have** voor MVP, welke kan in een latere release?"

2. **Acties per scherm.** Vraag welke acties de klant zelf mag doen:
   > "Per scherm: alleen-lezen of mag de klant zelf wijzigen of acties triggeren? Standaard-suggesties:
   > - **Overzicht**: alleen-lezen
   > - **Project / Order / Cursus**: alleen-lezen voor status, eventueel comment kunnen plaatsen
   > - **Facturen / Billing**: alleen-lezen + download
   > - **Documenten / Materiaal**: alleen-lezen + download, eventueel upload (bij dienstverlening: klant levert documenten aan)
   > - **Support / Tickets**: aanmaken, reageren, sluiten
   > - **Profiel / Adressen / Team**: zelf wijzigen
   > 
   > Klopt deze rolverdeling, of wil je per scherm anders kiezen?"

3. **Notificaties.** Vraag hoe de klant op de hoogte blijft:
   > "Hoe blijft de klant op de hoogte van wijzigingen? Standaard-suggestie: **per-event-mail** (factuur staat klaar, project gaat naar volgende fase, support-reactie binnen) + **in-portaal-notificatie-badge**. Wil je daarnaast nog wekelijkse digest-mail of push-notificaties (browser/mobile)?"

4. **Mobile vs desktop.** Vraag waar de klant het portaal gebruikt:
   > "Verwacht je dat klanten het portaal op **desktop** of **mobiel** openen? Standaard-suggestie: **mobile-first responsive design**. 60-80% van MKB-portaal-traffic loopt over mobiel, ook bij zakelijke klanten. Native iOS- of Android-apps zijn overkill voor MVP."

5. **Navigatie-structuur.** Vraag het navigatie-patroon:
   > "Standaard-suggestie voor navigatie: **horizontale top-bar op desktop** (logo links, schermen midden, profiel-icoon rechts), **bottom-bar op mobiel** (5 hoofd-icons), en een **break-crumb** boven elk scherm voor diepere niveaus. Klopt dit patroon, of heb je een andere voorkeur uit referentie-portalen?"

Per blok noteren: schermen-lijst met must-have/nice-to-have-tag, acties per scherm met rol-toegang, notificatie-strategie, mobile-first ja/nee, navigatie-patroon.

#### Blok 4: Klant-authenticatie

**Wat we vastleggen:** login-methode, wachtwoord-beleid, 2FA, sessie-duur, password-reset-flow.

Vier vragen:

1. **Login-methode.** Vraag welke auth-vorm:
   > "Drie standaard-opties voor klant-auth:
   > - **E-mail + wachtwoord** (klassiek, klant moet wachtwoord onthouden). Mijn aanbeveling: alleen als klanten hier echt om vragen of als 2FA verplicht moet zijn.
   > - **Magic-link** (klant typt e-mailadres, krijgt one-time-link per mail, klikt erop, is binnen). Mijn aanbeveling: standaard voor MKB-klantportalen, lage wrijving, veilig genoeg voor de meeste use-cases.
   > - **Single Sign-On (SSO)** met Google of Microsoft. Aanbeveling: alleen bij B2B-klanten die expliciet om SSO vragen, of bij integratie met klant-Workspace.
   > 
   > Welke voorkeur? Standaard-suggestie: magic-link, of e-mail + wachtwoord + optionele 2FA als de klant gevoelige data ziet (administratie, financieel)."

2. **2FA verplicht of optioneel.** Vraag het beveiligings-niveau:
   > "Two-factor authentication: **verplicht voor alle gebruikers**, **optioneel** (klant kiest zelf), of **niet beschikbaar**? Standaard-suggestie per branche:
   > - Dienstverlening met administratie- of financiële data: 2FA verplicht (TOTP via Google Authenticator of Authy)
   > - Generieke dienstverlening: 2FA optioneel
   > - E-commerce: 2FA niet nodig, magic-link of wachtwoord is genoeg
   > - B2B-SaaS: 2FA verplicht, eventueel SSO als alternatief
   > 
   > Welke past?"

3. **Sessie-duur.** Vraag hoe lang een klant ingelogd blijft:
   > "Hoe lang blijft een klant ingelogd voordat hij opnieuw moet inloggen? Standaard-suggesties:
   > - **30 dagen** (cookie-based, klant blijft praktisch altijd ingelogd). Goed voor laag-gevoelige portalen.
   > - **7 dagen** (wekelijks opnieuw inloggen). Balans tussen wrijving en veiligheid.
   > - **24 uur** (dagelijks opnieuw). Alleen bij gevoelige data of audit-eisen.
   > 
   > Welke past bij jouw data-gevoeligheid?"

4. **Password-reset en account-recovery.** Vraag de fallback-flow:
   > "Als klant zijn wachtwoord vergeet of toegang verliest:
   > - Bij **magic-link**: klant vraagt nieuwe link via e-mail, mail komt binnen 5 min binnen.
   > - Bij **wachtwoord**: standaard reset-link via e-mail, met expiry van 1 uur.
   > - Bij **SSO**: account-recovery via de identity-provider (Google, Microsoft).
   > 
   > Vraag ook: wat is jouw fallback als de klant **geen toegang meer heeft tot zijn e-mail**? Standaard-suggestie: handmatige verificatie via een ander kanaal (telefoon, video-call met identiteits-check), niet via een onveilige reset-link. Document deze procedure expliciet."

Per blok noteren: gekozen auth-methode, 2FA-beleid, sessie-duur in dagen, password-reset-flow inclusief fallback bij e-mail-verlies.

#### Blok 5: Klant-rollen en data-isolatie

**Wat we vastleggen:** structuur van klant-accounts (1-op-1 of multi-user), rollen binnen één klant-account, isolatie-regels tussen klanten.

Vijf vragen:

1. **Account-structuur.** Vraag of één klant = één account of meerdere users:
   > "Heeft elk klant-bedrijf **één login** (één persoon ziet alles), of kan een klant-bedrijf **meerdere gebruikers** hebben (bv. directeur + boekhouder + projectleider, alle drie hun eigen login)? Standaard-suggesties:
   > - **Single-user-per-account**: simpel, geschikt voor solo-klanten of consumenten. Standaard bij B2C en e-commerce.
   > - **Multi-user-per-account**: één klant-bedrijf met meerdere users. Standaard bij B2B-dienstverlening en B2B-SaaS. Toegevoegd: één 'klant-admin' die anderen kan uitnodigen.
   > 
   > Welke past?"

2. **Rollen binnen één account.** Vraag de rol-set:
   > "Als multi-user: welke **rollen** zijn er binnen één klant-account? Standaard-set:
   > - **Klant-admin**: alles zien, alles wijzigen, users uitnodigen of verwijderen, billing zien.
   > - **Klant-viewer**: alles zien, niets wijzigen (alleen-lezen).
   > - **Klant-editor**: alles zien, sommige dingen wijzigen (bv. documenten uploaden, profiel updaten), geen billing.
   > 
   > Welke combinatie past? Standaard-suggestie voor B2B-dienstverlening: admin + viewer is genoeg, editor is overkill voor de meeste cases."

3. **Data-isolatie.** Vraag hoe je klant-data van elkaar scheidt:
   > "**Kritiek:** elke klant moet **uitsluitend zijn eigen data** zien, nooit die van andere klanten. Dit is een AVG-eis én een vertrouwens-eis. Standaard-aanbeveling:
   > - **Database-row-level-security** in Postgres of Supabase met een `klant_id`-kolom op elke tabel, en een policy die `klant_id = current_user.klant_id` afdwingt.
   > - **Geen client-side filtering** (klant kan dat ontwijken). Filtering moet **altijd server-side** gebeuren.
   > - **Test bij elke release**: log in als klant A en probeer URL-manipulatie naar klant B's data. Moet altijd 403 of redirect-naar-eigen-data geven.
   > 
   > Wie gaat dit bouwen? Vraag de ontwikkelaar of no-code-bouwer **expliciet** om row-level-security te bewijzen voor live-gaan. Documenteer in de blauwdruk dat dit een hard-gate is."

4. **Audit-log.** Vraag of klant-acties moeten worden gelogd:
   > "Wil je een **audit-log** van klant-acties (wie heeft wat gedaan en wanneer)? Standaard-suggestie:
   > - **Voor MKB-dienstverlening**: ja, light-audit (alleen login-events en grote acties zoals 'document gedownload', 'profiel gewijzigd'). Helpt bij vragen en geschillen.
   > - **Voor B2B-SaaS met gevoelige data**: ja, full-audit (alle acties, 90 dagen retentie). Vaak een klant-eis.
   > - **Voor e-commerce**: orders worden in het order-systeem gelogd, apart audit-log niet nodig.
   > 
   > Welk niveau past?"

5. **Onboarding-flow nieuwe klant.** Vraag hoe een nieuwe klant erin komt:
   > "Hoe wordt een nieuwe klant in het portaal aangemaakt? Standaard-flow:
   > - **Trigger**: deal-won in V1 (Salesproces), CRM-status verandert.
   > - **Automatisch**: webhook stuurt klant-record naar portaal, portaal stuurt magic-link of welkomstmail.
   > - **Handmatig**: klant-admin (jij of teamlid) maakt klant aan via een admin-interface, stuurt uitnodigingsmail.
   > 
   > Welke flow past? Standaard-suggestie: automatisch via CRM-webhook bij deal-won, met fallback handmatige aanmaak voor randgevallen."

Per blok noteren: account-structuur (single of multi-user), rollen-set, data-isolatie-strategie (database-niveau), audit-log-niveau, onboarding-flow voor nieuwe klanten.

#### Blok 6: AVG en data-portabiliteit

**Wat we vastleggen:** persoonsgegevens-categorieën, rechtsgrond, retentie, toestemmings-flow, data-portabiliteit, recht op verwijdering.

Vijf vragen:

1. **Welke persoonsgegevens.** Vraag de categorieën:
   > "Welke **categorieën persoonsgegevens** komen in het portaal terecht? Standaard-set in MKB-dienstverlening:
   > - **NAW** (naam, adres, woonplaats)
   > - **Contact** (e-mail, telefoonnummer)
   > - **Zakelijke identifier** (KvK-nummer, BTW-nummer)
   > - **Financieel** (factuurbedragen, betaalstatus, eventueel IBAN)
   > - **Inhoudelijk** (project-content, documenten, support-berichten)
   > - **Bijzonder** (BSN bij administratie-klanten, medische data bij zorg), markeer als hoog-risico
   > 
   > Welke categorieën uit J4 (Privacyverklaring) zijn al gedekt, en welke moeten we toevoegen aan J4 voor het portaal?"
   
   Als bijzondere persoonsgegevens (BSN, gezondheid, strafrechtelijk verleden) in het portaal komen: **flag voor DPIA** (Data Protection Impact Assessment) en verwijs naar een privacy-jurist. Bouwen zonder DPIA bij bijzondere data is een AVG-risico.

2. **Rechtsgrond per categorie.** Vraag onder welke AVG-grondslag:
   > "Per categorie data: onder welke **rechtsgrond** verwerk je deze? AVG-zes-gronden:
   > - **Overeenkomst-uitvoering**: standaard voor factuur, project, contract-data. Geen aparte toestemming nodig.
   > - **Wettelijke verplichting**: voor administratieve bewaarplicht (boekhouding 7 jaar).
   > - **Gerechtvaardigd belang**: bv. voor audit-log of fraude-detectie. Verifieer dat het belang opweegt tegen privacy-impact.
   > - **Toestemming**: alleen voor optionele zaken (marketing-mail vanuit portaal, opt-in voor digest-mails).
   > 
   > Standaard-mapping: kern-data onder 'overeenkomst', audit-log onder 'gerechtvaardigd belang', marketing onder 'toestemming'. Klopt deze mapping?"

3. **Retentie.** Vraag hoe lang data bewaard blijft:
   > "Hoe lang blijft data in het portaal bewaard? Standaard-retentie:
   > - **Actieve klanten**: zolang de relatie loopt + 90 dagen na beëindiging voor afronding.
   > - **Administratieve data** (facturen, contracten): 7 jaar (wettelijke bewaarplicht).
   > - **Communicatie en support-tickets**: 2-3 jaar, daarna archiveren of anonimiseren.
   > - **Audit-log**: 90 dagen tot 1 jaar afhankelijk van compliance-eis.
   > 
   > Wat moet er na de retentie-termijn gebeuren? Standaard-suggestie: **automatisch anonimiseren** (naam wordt 'verwijderde klant', e-mail wordt hash, inhoud blijft voor statistische doeleinden). Echt **verwijderen** alleen bij expliciet AVG-verzoek of regel-eis."

4. **Recht op data-portabiliteit en verwijdering.** Vraag de export-flow:
   > "Onder de AVG heeft elke klant recht op:
   > - **Inzage**: zien wat over hem is opgeslagen. Standaard-implementatie: in het portaal zelf zichtbaar onder 'Mijn Profiel > Mijn Data'.
   > - **Portabiliteit**: data in machine-leesbaar formaat ontvangen. Standaard-implementatie: ZIP-download met JSON-bestand (profiel, transacties, communicatie) + PDFs (facturen, contracten).
   > - **Verwijdering**: recht om vergeten te worden, met inachtneming van wettelijke bewaarplicht. Standaard-implementatie: een 'Verwijder mijn account'-knop, die anonimiseert wat onder bewaarplicht valt en hard verwijdert wat optioneel is.
   > - **Rectificatie**: foutieve data laten corrigeren. Standaard-implementatie: in 'Mijn Profiel' zelf wijzigen, ondersteund door support-ticket voor inhoudelijke data.
   > 
   > Standaard-suggestie: bouw alle vier deze rechten in als zelfservice-functies. Dat voldoet aan AVG én bespaart jou support-werk."

5. **Toestemmings-flow.** Vraag hoe je toestemming logt:
   > "Hoe leg je toestemming vast? Standaard-suggesties:
   > - **Bij eerste login**: klant ziet privacy-statement (J4) en algemene voorwaarden (J3), moet expliciet akkoord vinken voordat hij door kan. Log: timestamp + IP + versie van de documenten + checkbox-state.
   > - **Bij wijziging van J4 of J3**: klant moet opnieuw akkoord geven bij volgende login. Bouw een versie-check in.
   > - **Voor optionele functies** (marketing-mail, nieuwsbrief): expliciete opt-in-checkbox, default uit.
   > 
   > Werkt dit patroon?"

Per blok noteren: persoonsgegevens-categorieën, rechtsgrond-mapping, retentie-tabel, AVG-rechten-implementatie (inzage/portabiliteit/verwijdering/rectificatie), toestemmings-log-strategie. **Plus**: vermeld expliciet als een DPIA nodig is, en verwijs door naar privacy-jurist.

#### Blok 7: Branding en white-label-optie

**Wat we vastleggen:** visuele identiteit van het portaal, white-label-strategie, eigen-domein-optie.

Drie vragen:

1. **Branding-standaard.** Vraag of brand uit S2 wordt overgenomen:
   > "Uit S2 (Brand Guidelines): {primair-kleur, accent, lettertype, logo}. Standaard-suggestie: portaal gebruikt dezelfde stijl als je website, zodat klanten visuele continuïteit ervaren. Klopt dat, of wil je het portaal bewust **anders** stijlen (bv. zakelijker dan de marketing-site)?"

2. **White-label-optie.** Vraag of klanten eigen merk kunnen tonen:
   > "**White-label** betekent dat een klant het portaal kan tonen onder zijn eigen merk in plaats van jouw merk. Drie posities:
   > - **Geen white-label**: jouw merk altijd zichtbaar, klant ziet 'powered by {jouw bedrijf}' bovenaan. Standaard voor MKB-dienstverlening.
   > - **Lichte white-label**: klant kan eigen logo en accent-kleur instellen, maar de URL blijft jouw domein. Goed voor B2B-SaaS met hogere klant-prestige-eisen.
   > - **Volledige white-label**: klant kan eigen sub-domein gebruiken (bv. `portaal.klant-bedrijf.nl`), eigen logo, eigen kleuren, zelfs eigen e-mail-templates voor magic-links. Standaard voor enterprise-SaaS. Complex en duur om te bouwen.
   > 
   > Welke positie past? Standaard-suggestie voor MKB: 'geen white-label' bij MVP, eventueel 'lichte white-label' als optioneel later."

3. **Eigen-domein-strategie.** Vraag de URL-structuur:
   > "Welke URL gebruik je voor het portaal? Standaard-opties:
   > - **Sub-domein van je eigen domein**: `portaal.bedrijf.nl`, `mijn.bedrijf.nl`, `account.bedrijf.nl`. Standaard-suggestie, geeft consistentie.
   > - **Apart domein**: bv. `mijnbedrijf-portaal.nl`. Geen reden, niet aan te raden.
   > - **Onder een tool-domein**: bv. `bedrijf.softr.app`, `bedrijf.bubble.io`. Alleen als no-code-MVP, niet voor langetermijn.
   > 
   > Welke voorkeur? En heb je de DNS-toegang om dit zelf te kunnen instellen, of moet een ontwikkelaar dat doen?"

Per blok noteren: visuele standaard (kleur, lettertype, logo-locatie), white-label-positie, gekozen sub-domein-naam, DNS-eigenaarschap.

#### Blok 8: Tech-stack en releaseplanning

**Wat we vastleggen:** bouw-vorm (no-code, low-code, custom), specifieke tool of stack, MVP-omvang, fasering, geschat budget en doorlooptijd.

Zes vragen:

1. **Bouw-vorm.** Vraag de hoofdkeuze:
   > "Drie hoofd-vormen om een klantportaal te bouwen:
   > - **No-code** (Softr, Bubble, Stacker, Glide). Voordelen: snel (2-6 weken), geen ontwikkelaar nodig, lage maandkosten (EUR 50-300/maand). Nadelen: vendor-lock-in, beperkte custom-logica, schalings-grens.
   > - **Low-code** (Retool, Appsmith, Budibase voor B2B-SaaS-styled portalen). Voordelen: meer flexibiliteit, eigen logica mogelijk. Nadelen: een halve ontwikkelaar nodig.
   > - **Custom** (Next.js + Supabase, Remix + Postgres, Laravel + MySQL, of een huidige stack). Voordelen: volledige controle, geen lock-in, beste schaalbaarheid. Nadelen: doorlooptijd 8-20 weken voor MVP, ontwikkel-team nodig, hoogste eenmalige kost.
   > 
   > Welke vorm past bij jouw budget, tijdslijn en technische capaciteit?"

2. **Specifieke stack-keuze.** Vraag de tool of stack:
   > "Gegeven de bouw-vorm: welke **specifieke tool of stack** kies je?
   > - **No-code**: Softr (Airtable-backed, snelste voor dienstverlening), Bubble (meer flexibel maar steiler), Stacker (overgenomen door noloco, alternatief), Glide (mobile-first).
   > - **Low-code**: Retool (B2B-feel, dashboards), Appsmith (open-source alternatief), Budibase (open-source).
   > - **Custom**: Next.js + Supabase (modern, snel, goed voor MKB), Remix + Postgres (alternatief), of een bestaande stack uit E2 (App Scoping) hergebruiken.
   > 
   > Standaard-suggestie als E2 al een stack heeft gekozen: **dezelfde stack gebruiken** voor consistentie en hergebruik van componenten."

3. **MVP-omvang.** Vraag wat in eerste release moet:
   > "Wat zit er in de **MVP** (eerste release)? Standaard-suggestie voor dienstverlening:
   > - **Auth + onboarding** (magic-link login, eerste-keer-flow)
   > - **3 kern-schermen**: Overzicht, Project, Facturen
   > - **Branding-standaard** (eigen logo, kleur, lettertype)
   > - **AVG-basis**: privacy-acceptatie, exporteerbare data, recht op verwijdering
   > 
   > Schermen 4 en hoger (Documenten, Planning, Support, Profiel) komen in release 2 als de MVP draait. Klopt deze fasering?"

4. **Fasering en doorlooptijd.** Vraag de tijdslijn:
   > "Standaard-doorlooptijd:
   > - **No-code MVP**: 2-6 weken vanaf scope-akkoord.
   > - **Low-code MVP**: 4-10 weken.
   > - **Custom MVP**: 8-16 weken bij ontwikkelaar of klein team.
   > 
   > Wanneer wil je live gaan met MVP? Welke deadline drijft dit (klant-belofte, audit-eis, intern doel)?"

5. **Budget-orde-grootte.** Vraag de kosten-marge:
   > "Wat is je **budget-orde-grootte** voor de bouw?
   > - **EUR 0-5.000 eenmalig + EUR 50-300/maand**: no-code, jij doet de configuratie.
   > - **EUR 5.000-15.000 eenmalig + EUR 100-500/maand**: low-code of beperkt-custom met externe hulp.
   > - **EUR 15.000-50.000 eenmalig + EUR 200-1.000/maand**: custom MVP via ontwikkelaar of klein team.
   > - **EUR 50.000+**: enterprise-niveau, meerdere klanten, white-label, complexe rollen.
   > 
   > Welke range past? Dit bepaalt direct welke bouw-vorm haalbaar is."

6. **Wie bouwt het.** Vraag de partij:
   > "Wie gaat dit feitelijk bouwen?
   > - **Jezelf**: alleen haalbaar bij no-code en met genoeg tijd om te leren.
   > - **Een ontwikkelaar uit je netwerk**: bekend, betrouwbaar, vraag of hij Supabase-Next.js-ervaring heeft.
   > - **Een no-code-bouwer** (er zijn freelancers in Softr en Bubble): snel, vaak EUR 1.500-5.000 voor MVP.
   > - **Een agency**: hoger budget, sneller live, hogere maandkost na live.
   > - **Onze ontwikkelaars** (Upscailed): bij voorkeur voor klanten van Upscailed-traject.
   > 
   > Welke partij past?"

Per blok noteren: bouw-vorm, specifieke stack of tool, MVP-omvang (lijst schermen + functies), release-fasering met datums, budget-range, gekozen bouw-partij. **Plus**: noteer specifieke risico's per stack (vendor-lock-in bij no-code, scaling-grens, etc.).

### Stap 6: Cross-link met aangrenzende SCALE-stappen

In het output-document neem een aparte sectie "Cross-links en afhankelijkheden" op met:

| SCALE-stap | Hoe deze scoping ermee verbindt |
|---|---|
| S4 ICP | Definieert wie de portaal-gebruiker is. Wijziging in S4 (ander segment) kan portaal-functies omgooien. |
| S8 Producten en Pricing | Bepaalt wat de klant koopt, en dus wat hij wil zien (orders, facturen, abonnement-status). |
| S9 Klantreis | Toont in welke fase een portaal het meest helpt (Onboarding, Service, Retention). Pain-points uit S9 worden de eerste portaal-functies. |
| J4 Privacyverklaring | **Verplichte cross-check.** Persoonsgegevens-categorieën, retentie en rechten van betrokkenen moeten matchen met wat in het portaal zichtbaar of beheerbaar is. Bij wijziging van portaal-data: J4 bijwerken. |
| J3 Algemene Voorwaarden | Acceptatie van AV bij eerste login. Bij wijziging van AV: bij volgende login akkoord opnieuw vragen. |
| C2 CRM Setup | Data-bron voor klant-records. Webhook of API-koppeling vanuit CRM naar portaal voedt het account-aanmaak-proces. |
| E2 App Scoping (intern) | Zuster-skill voor interne apps. Vaak **dezelfde tech-stack** voor consistentie en hergebruik van componenten. |
| V1 Salesproces | Deal-won-trigger uit pipeline activeert klant-aanmaak in het portaal. Bij wijziging in V1: webhook-trigger updaten. |
| C4 Klantfeedback Collector | NPS- of CSAT-resultaten kunnen worden ingebouwd in het portaal als in-app-feedback-button. |
| S12 Toolstack | Boekhoudpakket en betalingsplatform leveren factuur-data. Bij wijziging van stack: portaal-koppelingen updaten. |
| S2 Brand Guidelines | Visuele standaard voor logo, kleur, lettertype. Bij wijziging: portaal-styling updaten. |
| S11 Team en Rollen | Wie binnen jouw team toegang heeft tot het admin-deel van het portaal (klant-records aanmaken, support-tickets afhandelen). |
| L1 SOP Automatiseren | Klant-onboarding-SOP (welkomstmail, eerste-stappen) verschuift naar geautomatiseerde flow in het portaal. |
| L3 Mailflow Setup | Notificatie-mails vanuit het portaal (factuur, status-update, support-reactie) lopen door de generieke mailflow. |
| A1 Rapportage Builder | Portaal-gebruiks-statistieken (logins, schermen, exports) voeden A1 maandrapportage. |
| A2 Mission Control | Portaal-KPI's (% klanten actief, gemiddelde sessie-tijd) zichtbaar op intern dashboard. |
| E1 Dashboard Bouwer | Interne dashboards (voor jou) volgen E1. Klant-facing dashboards in het portaal volgen E4. |
| E3 Workflow Pipeline | Achtergrond-workflows die het portaal voeden (order-fulfillment, document-generatie) lopen via E3. |

### Stap 7: Document samenstellen

Gebruik het template uit `references/template-klantportaal-scoping.md` als skelet. Vul het volledig in met de uitkomsten uit pre-fill plus interview.

Sla op als:
```
{scope}/Engineer/Klantportaal-Scoping.md
```
of:
```
{scope}/Projects/Klantportaal/Scoping.md
```
(afhankelijk van de keuze in blok 1)

Maak de bovenliggende map aan als die nog niet bestaat.

Frontmatter (verplicht):
```yaml
---
type: scoping-blueprint
bedrijf: <Naam>
onderwerp: Klantportaal Scoping
versie: 1.0
status: <scope | in implementatie | live>
laatst-bijgewerkt: YYYY-MM-DD
scale-check: E4
branche-type: <dienstverlening | e-commerce | b2b-saas | training-coaching | hybride>
b2b-of-b2c: <B2B | B2C | hybride>
auth-methode: <magic-link | email-wachtwoord | sso | combinatie>
twee-factor: <verplicht | optioneel | niet-beschikbaar>
account-structuur: <single-user | multi-user>
white-label: <geen | licht | volledig>
bouw-vorm: <no-code | low-code | custom>
stack: <Softr | Bubble | Retool | Next.js+Supabase | anders>
mvp-schermen: [Overzicht, Project, Facturen]
release-1-datum: YYYY-MM-DD
budget-orde-grootte: <0-5k | 5k-15k | 15k-50k | 50k+>
avg-categorieen: [NAW, contact, financieel, bijzonder]
dpia-nodig: <ja | nee>
---
```

**Schrijfregels:**

- Werk in het **Nederlands**.
- **Geen marketing-superlatieven.** Geen "perfecte klant-ervaring", "ultieme self-service", "next-level portaal". Feitelijk en menselijk.
- **Concrete details > abstracte beweringen.** "Magic-link via Supabase Auth, redirect naar `/dashboard`, session-cookie 30 dagen, fallback: handmatige verificatie via telefoon bij e-mail-verlies" is sterker dan "veilige login".
- **Geen em-dashes.** Gebruik komma's, haakjes of losse zinnen.
- **Definities expliciet.** Bij elke functie: doel, gebruikers-flow, data-bron, fallback, security-implicatie en KPI. Niet "documenten-scherm" maar "scherm `/documents` toont alle bestanden uit Supabase storage-bucket `klant-{id}` met row-level-security `klant_id = auth.uid()`, klant kan downloaden en uploaden, fallback bij storage-fout: error-melding + retry-knop, KPI: aantal downloads per maand".
- **Markeer `[VERIFICEREN]`** op plekken waar geen bron of antwoord voor was. Beter een zichtbare gap dan een verzonnen detail.
- **Status-emoji's mogen.** Scope 🟠, in implementatie 🟡, live 🟢, gepauzeerd ⚪, geblokkeerd 🔴.
- **Privacy-let op:** zet **geen echte klantnamen, e-mailadressen, telefoonnummers, bedragen of credentials** in dit document. Werk met placeholders (`{KLANT_NAAM}`, `klant-a@voorbeeld.nl`) of geanonimiseerde categorieën (`klantsegment A`, `top-5-klant`). Het document is een blauwdruk, geen klantdata-store.
- **Bewaar bron-citaten letterlijk** waar de gebruiker een specifieke wens of voorbeeld-zin (bv. een klant-quote uit feedback) heeft genoemd. In een aparte sectie "Brondocumenten" onderaan.
- **AVG-secties expliciet markeren.** Elke functie die persoonsgegevens raakt, heeft een sub-paragraafje "AVG-impact" met categorie, rechtsgrond en bewaartermijn.
- **Disclaimer onderaan:** voeg een korte slotparagraaf toe: *"Dit document is een functioneel en technisch scoping-document, geen juridisch privacy-advies en geen security-audit. Bij persoonsgegevens blijft de ondernemer verwerkingsverantwoordelijke onder de AVG. Bij betalingen of gevoelige data is aanvullend advies van een security-specialist of jurist nodig. Scope versnelt, vervangt geen audit."*

### Stap 8: Logging en aanbevelingen

Logging (allemaal in dezelfde tool-call-ronde, niet later):

1. **Changelog bedrijf**, `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw: `Engineer/Klantportaal-Scoping.md`, v1.0, scoping-blauwdruk voor klantportaal opgesteld op basis van S4, S8, S9, J4 en C2"*.
2. **Daily**, als de vault een `Huddle/Daily/YYYY-MM-DD.md` heeft (geldt in Iwan's OS, niet alle vaults hebben dit), log onder *Gedaan vandaag, [Bedrijf]*. Sla over als die conventie niet bestaat.
3. **Vault Changelog**, als de map `Engineer/` of `Projects/Klantportaal/` nieuw is aangemaakt en deze vault een `Systeem/Structuur/Vault Changelog.md` heeft, log dat daar ook.
4. **Goals-bestand**, als `{scope}/Directie/01 - Goals.md` een E4-doel of klantbeleving-doel heeft: status bijwerken (🟢), regel toevoegen aan het voortgangslog.
5. **Scale-audit-suggestie**, als er een audit-rapport in `Directie/Research/` staat waar E4 op ❌ of ⚠️ staat, stel voor de audit opnieuw te draaien.

Vervolgsuggesties die je altijd noemt:

1. **Valideer de scope met 3 echte klanten vóór de bouw.** Pak drie typische klanten en loop met hen door de schermen-lijst en functies. Vraag of dit hun pain-points dekt, of er iets ontbreekt en wat ze als eerste gebruikt zouden hebben. Bouw geen MVP zonder deze validatie, anders is de risk dat je iets bouwt dat klanten links laten liggen.
2. **AVG-check vóór live.** Voordat het portaal live gaat: laat een privacy-jurist of een ervaren collega de J4-mapping en de toestemmings-flow controleren. Bij bijzondere persoonsgegevens (BSN, gezondheid) is een formele DPIA verplicht. Onder geen omstandigheid live gaan met onverwerkte privacy-issues.
3. **Security-test row-level-isolation.** Voor go-live: bewust testen of klant A bij klant B's data kan komen via URL-manipulatie of API-aanroep. Dit is de hardste regel in een klantportaal. Documenteer de test, sla logs op, herhaal bij elke release.
4. **MVP klein houden, snel feedback.** Bouw schermen 1 tot 3 en stuur een eerste live-versie naar 5 tot 10 klanten. Verzamel feedback 4 weken, pas aan, dan pas schermen 4 en hoger. Een groot MVP met 8 schermen tegelijk is altijd traag en altijd verkeerd.
5. **Plan E2 en E4 samen.** Als E2 (interne app) ook gescopt is, deel componenten en stack tussen E2 en E4. Een gedeelde auth-laag, gedeelde branding-tokens en gedeelde data-modellen versnellen beide builds. Niet twee aparte stacks gaan bouwen tenzij absoluut nodig.
6. **Maand-1-review na live.** Eén maand na go-live: kijk naar login-frequentie, meest-gebruikte schermen, support-vragen die nog steeds binnenkomen ondanks het portaal. Pas de scope aan op wat klanten daadwerkelijk doen, niet op wat we vermoedden dat ze zouden doen.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle 8 tegelijk neerzetten. Wacht op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar iets dat al in S4, S8, S9, J4 of C2 staat. Pre-fill-validatie in stap 4 voorkomt dat. Als S4, S8, S9, J4 of C2 ontbreekt, vermeld het en stel voor die eerst (of parallel) te doen.
- **S4 + S8 + S9 + J4 + C2 zijn verplichte cross-checks.** Doelgroep (S4), product (S8), klantreis-fase (S9), AVG-categorieën (J4) en data-bron (C2) moeten matchen met wat in het portaal zit. Zo niet, log de mismatch en stel voor de bron-skill aan te roepen.
- **Per functie: doel, gebruikers-flow, data-bron, fallback, security-implicatie en KPI.** Een functie zonder één van die zes is geen blauwdruk maar een wens. Wees streng op dit punt.
- **Klant-data-isolatie is een hard-gate.** Geen go-live zonder bewijs van row-level-security en zonder geslaagde isolatie-test. Bouwer moet dit expliciet aantonen.
- **AVG-impact per functie expliciet vermelden.** Elke functie die persoonsgegevens raakt: categorie, rechtsgrond, bewaartermijn. Bij bijzondere data (BSN, gezondheid): flag voor DPIA.
- **Schrijf nooit zomaar over een bestaande scoping heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Privacy boven volledigheid.** Geen echte klantnamen, e-mailadressen, telefoonnummers, bedragen of credentials. Placeholders en categorieën. Het document is een blauwdruk, geen klantdata-store.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs, micro-teams en MKB-bedrijven. Geen hard-coded persoonlijke paden, alleen relatief binnen `{scope}`.
- **Vraag actief naar externe input.** Demo-screenshots, top-klant-vragen, CRM-sample en brand-guidelines besparen 50-70% van het uitvraag-werk en maken de blauwdruk precies.
- **Concreet > abstract.** Bij elk antwoord: één keer doorvragen op een concreet detail (een tool-naam, een veldtype, een sessie-duur) als het te abstract blijft.
- **Geen juridisch privacy-advies en geen security-audit.** Verwijs door naar een privacy-jurist bij bijzondere data of DPIA-eis, en naar een security-specialist bij betalingen of audit-eisen. Scope versnelt, vervangt geen audit.
- **Geen marketing-trucjes.** Geen "imagine if...", geen rhetorische vragen aan het begin van een sectie. Recht voor zijn raap.
- **Onderscheid E2 (intern) en E4 (extern) strak.** E2 is een tool voor jou en je team. E4 is een tool voor je klanten. Andere auth, andere data-isolatie, andere AVG-impact, andere branding-eisen. Als de gebruiker beide door elkaar haalt: scheid expliciet.
- **Mik op werkbare diepte, niet op het audit-minimum.** Een minimaal klantportaal haalt de drempel met één login-scherm + één data-scherm. Een scopin met klant-auth, rollen, isolatie, AVG, branding en releaseplan levert echt werkbare blauwdruk.

## Voorbeeld-output

Zie [`references/template-klantportaal-scoping.md`](references/template-klantportaal-scoping.md) voor de exacte structuur die de skill oplevert: per functie een gestructureerde tabel met doel, gebruikers-flow, data-bron, fallback, security-implicatie en KPI, plus klant-auth-sectie, AVG-mapping, branding-keuzes en cross-link-sectie naar S4, S8, S9, J4, C2, E2, V1, S12 en de andere Engineer-stappen.
