---
name: producten-en-pricing
title: "Producten en Pricing"
description: "Helpt een ondernemer in 30 tot 45 minuten een rijk producten- en pricing-document op te bouwen in één canoniek bestand: `Directie/Playbook/Producten.md`. Dit is SCALE-stap 8 (Structure) én dekt V2 (Pricing helder) in de Sales-kolom: zonder dit document kan een AI niet helpen bij sales-gesprekken, offertes, marketing-keuzes, kortingen of upsell-paden, want dan blijft het bedrag in de lucht hangen. De skill werkt via een gestructureerd interview in 8 blokken (Overzicht-aanbod, Pakketten-detail, Pricing-tabel, Doelgroep per pakket, Marge en cost, Positionering, Upsells en extra's, Out of scope), één blok per beurt zodat de gebruiker niet wordt overweldigd. Vóór het interview begint, scant de skill diep wat al beschikbaar is: in de vault (Directie/Playbook, Directie/Research, Financiën/Rapportage, Sales-map, eerdere offertes) én in externe documenten die de ondernemer kan aanleveren (website-prijspagina via web-fetch, oude offerte-templates, sales-deck, jaarrekening, marketing-pakketten, concurrent-prijslijsten). Het werkt vault-onafhankelijk: er worden geen aannames gedaan over een specifieke mapnaam, persoonlijke profielen of vault-eigenaar, alleen over de SCALE-Structure-conventie (`Directie/Playbook/`, etc.). De skill stelt voorzichtige coach-vragen wanneer pricing zwak onderbouwd lijkt, zonder advies te geven. Activeer altijd wanneer iemand zegt: 'maak een producten-document', 'leg mijn pricing vast', 'wat zijn mijn pakketten', 'pricing-tabel opstellen', 'offerte-prijzen vastleggen', 'tarievenlijst maken', 'wat reken ik voor X', 'mijn aanbod uitwerken', 'S8 dichten in SCALE-audit', 'gap S8', 'gap V2', 'V2 pricing helder', 'productlijn op papier', 'dienstenoverzicht met prijzen', 'pakketten en marges'. Triggert ook bij iedere expliciete verwijzing naar S8, V2 of `Producten.md`."
category: structure
tags: [producten, pricing, aanbod, pakketten, structure, scale-framework, s8, v2, fundament]
estimatedTime: "30 tot 45 minuten"
version: "1.1.0"
author: Upscailed
license: MIT
scaleFramework: true
---

# Producten en Pricing

## Doel

Helpt een ondernemer om in 30 tot 45 minuten een **rijk producten- en pricing-document** vast te leggen in één canoniek bestand: `{scope}/Directie/Playbook/Producten.md`. Dit is SCALE-stap 8 (Structure) en dekt tegelijk V2 (Pricing helder) in de Sales-kolom, omdat de scale-audit voor beide checks naar hetzelfde document kijkt.

*Waarom dit fundamenteel is.* Een AI-assistent kan niets zinvols zeggen over sales-gesprekken, offertes, kortingen, marketing-campagnes of upsell-paden zolang de prijzen en pakketten niet ergens vastliggen. "Wat reken jij voor traject X?" is de meest gestelde vraag in elk MKB-bedrijf, en zonder document moet de AI bij iedere klant opnieuw raden of vragen. Mét document weet de AI welk pakket hij moet voorstellen, welke prijs hij mag noemen, en welk upsell-pad er ligt voor een groeiende klant.

*Waarom de audit-drempel niet genoeg is.* SCALE-audit S8 stelt dat één product met expliciete prijs of pricing-model genoeg is. Die drempel haal je in 5 minuten met "uurtarief 75 euro" en je staat op groen. Maar dat is geen werkbaar pricing-fundament: geen pakketten, geen doelgroep-match, geen marge-zicht, geen upsells, geen out-of-scope. Deze skill mikt op een **werkbaar** document: minimaal 3 pakketten of scenario's, met heldere pricing, doelgroep-match, marge-inschatting, positionering, upsell-paden en out-of-scope.

*Waarom V2 hier ook in zit.* In de Sales-kolom vraagt V2 "Is je pricing helder en publiceerbaar?". Datzelfde document beantwoordt die vraag. Door beide checks samen te dichten voorkom je dat je tweemaal hetzelfde werk doet.

Resultaat: SCALE-audit S8 en V2 springen van  of  naar , én het document is direct herbruikbaar in alle latere stappen (V1 Salesproces, M3 Content Roadmap, A1 Rapportage, en cross-checks met C6 Concurrentie-research).

## Run-time introductie (toon aan gebruiker bij start)

Vóór het interview begint, geef de gebruiker een korte introductie zodat hij weet wat hem te wachten staat. Voorbeeld-tekst:

```


   PRODUCTEN EN PRICING  SCALE-stap 8 (Structure) + V2 (Sales)  
   ~30-45 minuten  8 interview-blokken                          


  In 30 tot 45 minuten leggen we je aanbod en pricing vast in
  één canoniek document. Vanaf dan weet elke AI (en elke nieuwe
  collega) welk pakket bij welke klant past, voor welke prijs.

  
     WAT JE TE WACHTEN STAAT                                
                                                            
     8 blokken interview (één per beurt, niet alles        
       tegelijk)  gemiddeld 3-6 minuten per blok           
     Per blok 1-4 korte vragen                             
     Vooraf scan ik wat er al in je vault staat plus       
       externe documenten die je aanlevert, zodat we niets 
       vragen wat je al ergens hebt opgeschreven            
     Daarna lever ik een gevuld Producten.md op met        
       pakketten, prijzen, doelgroep-match, marges,         
       positionering, upsells en out-of-scope              
  

  De 8 blokken:
  [1] Overzicht aanbod  [2] Pakketten detail
  [3] Pricing tabel     [4] Doelgroep per pakket
  [5] Marge en cost     [6] Positionering
  [7] Upsells extras    [8] Out of scope

  Heb je externe documenten klaar?
   Website-prijspagina (URL)  ik haal hem op via web-fetch
   Oude offerte-templates, sales-deck of pitch deck
   Financiële rapportage met huidige tarieven
   Eerder pricing-onderzoek of concurrent-prijslijsten
   Een bestaand pakket-overzicht in mail of Notion

  Dan kun je die nu noemen of uploaden  ik haal er alles
  bruikbaar uit voordat we aan het interview beginnen.
```

Vraag aan het einde of de gebruiker direct wil starten of eerst externe documenten wil aanleveren.

## Visuele flow

```


  PRODUCTEN EN PRICING  S8 + V2  30-45 min  8 blokken        


              
                
    1. Scope kiezen        Welk bedrijf?
                           Welk pad?
                           Update of nieuw?
              
                
    2. Vault scannen       Wat staat er al
       (auto-discover)     in Playbook,
                           Financien,
                           Sales-map?
              
                
    3. Externe docs        Website-prijspagina
       ophalen             (web-fetch),
                           offerte-templates,
                           sales-deck,
                           jaarrekening
              
                
    4. Pre-fill tonen      Wat al bekend is,
                           per blok, ter
                           validatie + gaten
              
                
    5. Interview, blok     8 blokken,
       voor blok           1-4 vragen elk
                           [1] Overzicht
                           [2] Pakketten
                           [3] Pricing
                           [4] Doelgroep
                           [5] Marge/cost
                           [6] Positionering
                           [7] Upsells
                           [8] Out of scope
              
                
    6. Pricing-check       Marge gezond?
       (coach-laag)        Onderbouwd?
                           Concurrentie-zicht?
              
                
    7. Schrijven +         Directie/Playbook/
       opslaan             Producten.md
              
                
    8. Logging +           Changelog +
       vervolg-            hint naar V1,
       suggesties          M3, A1, C6

```

## Wanneer triggeren

Activeer deze skill wanneer een gebruiker zegt:
- "Maak een producten-document" / "leg mijn aanbod vast"
- "Leg mijn pricing vast" / "pricing-tabel opstellen"
- "Wat zijn mijn pakketten" / "mijn aanbod uitwerken"
- "Offerte-prijzen vastleggen" / "tarievenlijst maken"
- "Wat reken ik voor X" / "pricing helder krijgen"
- "Dienstenoverzicht met prijzen"
- "S8 dichten in SCALE-audit" / "gap S8"
- "V2 dichten in SCALE-audit" / "gap V2" / "V2 pricing helder"
- "Productlijn op papier" / "pakketten en marges"

Triggert NIET wanneer:
- De gebruiker een **bedrijfsoverzicht** wil opbouwen (gebruik `bedrijfsoverzicht`  S1)
- De gebruiker een **ICP** wil uitwerken (gebruik de S4-skill als die bestaat, of het doelgroep-blok in bedrijfsoverzicht)
- De gebruiker een **salesproces** wil bouwen (gebruik `salesproces-builder`  V1)
- De gebruiker een **opvolg-flow** of mail-sequenties wil (gebruik de V3-skill)
- De gebruiker **alleen concurrentie-prijzen** wil onderzoeken (gebruik `concurrentie-research`  C6)
- De gebruiker een **bedrijfsverhaal** of origin story wil schrijven (gebruik `bedrijfsverhaal`  S7)
- De gebruiker een **jaarbudget of cashflow-plan** wil maken (geen aparte skill, anders dan deze)

## Workflow

### Stap 1: Scope kiezen

Vraag voor welk bedrijf en in welk pad het producten-document gemaakt moet worden. Maak hier **geen aannames** over de mapstructuur of vault-naam.

Verwacht varianten:
- Een **single-business vault** waar de root meteen het bedrijf is (`Directie/`, `Marketing/`, etc. direct onder de vault-root)
- Een **multi-business vault** waar elk bedrijf een eigen map heeft (`Bedrijven/Naam/Directie/`, etc.)
- Een **versgemaakte SCALE-skelet** waar `Directie/Playbook/` nog leeg is

Vraag de gebruiker:
1. Wat is de naam van het bedrijf waar dit producten-document voor is?
2. Wat is het **pad naar de bedrijfs-root**? (Bv. de huidige werkmap, een specifiek pad, of "ik weet het niet, help me zoeken")

Als de gebruiker niet weet wat het pad is: zoek in de huidige werkmap naar een map met de bedrijfsnaam, of naar een `Directie/Playbook/`-map. Bevestig de gevonden scope voordat je doorgaat.

Controleer daarna of `{scope}/Directie/Playbook/Producten.md` al bestaat:
- Bestaat niet  eerste versie, doorgaan
- Bestaat wel  vraag of dit een **update** (aanvullen) of **nieuwe iteratie** (oude archiveren als `Producten - archief YYYY-MM-DD.md` voordat de nieuwe wordt geschreven) wordt

### Stap 2: Vault scannen (auto-discover)

Lees systematisch wat er al binnen de bedrijfsscope beschikbaar is. **Werk vault-onafhankelijk**: zoek alleen op relatieve paden binnen de bedrijfs-root.

Standaard SCALE-Structure-paden om te controleren:

| Pad binnen `{scope}` | Wat je eruit haalt |
|---|---|
| `Directie/Playbook/Producten.md` (huidige versie als die bestaat) | Bestaande pakketten, prijzen, marges |
| `Directie/00 - Overzicht.md` | Aanbod-sectie en proposities op hoofdlijn (input voor blok 1) |
| `Directie/Playbook/Brand Guidelines.md` | Positioneringsuitspraken (low-cost vs premium) |
| `Directie/Playbook/Bedrijfsverhaal.md` | Origin-story-claims die pricing kunnen onderbouwen |
| `Directie/Playbook/ICP.md` (of vergelijkbaar) | Klantsegmenten + pijnpunten (input voor blok 4) |
| `Directie/01 - Goals.md` | Omzet-/marge-doelen die op pricing leunen |
| `Directie/Research/*.md` | Pricing-onderzoek, mentorgesprekken, AI-scan-rapport |
| `Sales/Offertes/*.md` (of vergelijkbaar) | Eerder verstuurde offertes met concrete prijzen |
| `Sales/Tarieven*.md` (alle varianten) | Losse tarievenlijsten |
| `Financiën/Rapportage/*.md` (of `Financien/`) | Marge per project, urenstaten, omzet-per-pakket |
| `Marketing/Website/Prijzen*.md` (of `pricing-pagina*`) | Tekst van een publieke prijspagina |

Maak per gevonden bron een korte interne aantekening: welke van de 8 blokken het raakt, en welke concrete bedragen of pakketnamen erin staan.

**Belangrijk:** als een bron niet bestaat, skip stilletjes  niet alarmeren, niet doorvragen aan de gebruiker. Werk met wat er is.

### Stap 3: Externe documenten ophalen

Vraag actief of de gebruiker externe materialen heeft. Maak duidelijk dat dit kan via meerdere paden:

- **Website-prijspagina (URL)**  gebruik web-fetch om de inhoud op te halen. Dit is veruit de rijkste bron voor pre-fill: pakketnamen, prijzen, scope-omschrijvingen staan vaak één-op-één op de site
- **Sales-deck of pitch deck (PDF-upload)**  pakketten staan vaak in slides 6-9
- **Oude offerte-templates of recent verstuurde offertes (PDF/Word/tekst)**  laat zien wat de feitelijke prijs is geweest, vs wat op de website staat
- **Financiële rapportage / jaarrekening (PDF of tekst)**  omzet per dienstcategorie, marges
- **Eerder pricing-onderzoek of concurrent-prijslijsten (tekst plakken of PDF)**  voor blok 6 (positionering)
- **Notion-/Airtable-export of e-mail met pakkettenlijst (tekst plakken)**  losse fragmenten die nog nergens gestructureerd staan

Concrete vraag aan gebruiker:
> "Heb je externe documenten of bronnen waaruit ik kan putten? Het meest waardevol is een **URL naar je website-prijspagina**, want dan haal ik letterlijk de tekst op die nu publiek staat. Daarnaast: oude offerte-templates, een sales-deck, je financiële rapportage met huidige tarieven, of eerder pricing-onderzoek. Je mag een URL noemen, een bestand uploaden of tekst plakken. Hoe meer bronnen, hoe rijker het pre-fill en hoe minder ik je hoef te vragen."

Per aangeleverde bron:
- **URL**: gebruik web-fetch om de inhoud op te halen, scan op pakketnamen, prijsbedragen, eenheden (per maand, eenmalig, per uur), wat-erbij-zit, wat-exclusief-is
- **PDF/document**: lees de inhoud, vat samen wat relevant is per blok
- **Geplakte tekst**: behandel als research-input, let extra op concrete bedragen

Als de gebruiker geen externe bronnen heeft, ga direct door naar stap 4. Maar wijs er één keer op dat een website-prijspagina via web-fetch het krachtigste pre-fill-resultaat geeft, voor het geval die alsnog beschikbaar is.

### Stap 4: Pre-fill tonen ter validatie

Toon de gebruiker een korte samenvatting van wat je hebt gevonden, **gegroepeerd per van de 8 blokken**. Doel: voorkomen dat het interview vraagt naar wat al ergens staat.

Voorbeeld-format:

```
Op basis van wat ik heb gevonden, zie ik dit beeld:

  [1] OVERZICHT AANBOD
      X pakketten / scenario's op de website, naam Y/Z/A
      Bron: website-prijspagina, sales-deck slide 7

  [2] PAKKETTEN DETAIL
      Pakket Y: scope X, doorlooptijd Z
      Pakket Z: ...
      Bron: offerte-template, website

  [3] PRICING-TABEL
      Pakket Y: 4500 eenmalig
      Pakket Z: 295/maand
      Pakket A: prijs nog niet gevonden  vraag in interview
      Bron: website-prijspagina

  [4] DOELGROEP PER PAKKET
      Pakket Y past bij ICP-segment alpha (uit ICP.md)
      Pakket Z past bij ICP-segment beta
      Bron: ICP.md kruis-referentie

  [5] MARGE EN COST
      Geen interne marge-data gevonden  vraag in interview

  [6] POSITIONERING
      Sales-deck claimt 'premium service'
      Geen concurrentie-research gevonden  vraag in interview
      Bron: sales-deck slide 3

  [7] UPSELLS EN EXTRA'S
      Eerder verstuurde offerte noemt 'extra adviesuur 125/u'
      Bron: offerte-template

  [8] OUT OF SCOPE
      Geen expliciete out-of-scope gevonden  vraag in interview

  GATEN waar ik nog vragen voor heb:
   Blok 3: prijs pakket A ontbreekt
   Blok 5: cost en marge nog volledig in te vullen
   Blok 6: concurrentie-zicht ontbreekt
   Blok 8: out-of-scope ontbreekt

Klopt dit beeld? Wil je nog iets toevoegen of corrigeren
voordat we de gaten gaan invullen?
```

Wacht op bevestiging voordat je naar stap 5 gaat.

### Stap 5: Interview, blok voor blok

**Kernregel:** stel **één blok per beurt**. Wacht op het antwoord, dán pas het volgende blok. Niet alle blokken tegelijk neerzetten, dat overweldigt.

Per blok: 1 tot 4 vragen, afhankelijk van hoe gevuld de pre-fill al was. Als een blok in pre-fill al rijk is, stel je alleen check-vragen ("klopt deze prijs nog?"). Als het blok leeg is, stel je 2-4 open vragen om het te vullen.

#### Blok 1  Overzicht aanbod

**Wat we vastleggen:** een algemene structuur van het aanbod in 1-2 alinea's, en de hoofd-categorieën (pakketten / scenario's / diensttypen). Mik op minimaal 3 pakketten of scenario's, anders is het document te dun voor sales-werk.

Kernvragen (kies wat relevant is):
1. Hoe is het aanbod gestructureerd? Werk je met vaste pakketten, met maatwerk-trajecten, met een mix, of met een product (zoals een SaaS-abonnement)?
2. Wat zijn de hoofd-categorieën of -pakketten op naam? Mik op 3 tot 6.
3. Hebben de pakketten een logische volgorde of hiërarchie (instap  middel  premium, of horizontaal naast elkaar)?

#### Blok 2  Pakketten detail

**Wat we vastleggen:** per pakket een paragraaf met heldere scope-beschrijving.

Per pakket vraag je (één pakket per beurt als er meer dan 3 zijn, anders alle in één beurt):
1. Wat zit er **wel** in dit pakket? Som de concrete deliverables of activiteiten op.
2. Wat is de **doorlooptijd** of de cadans (eenmalig in X weken, maandelijks doorlopend, op afroep)?
3. Hoeveel uur of capaciteit kost dit gemiddeld intern? (Optioneel  alleen als intern relevant.)

Lever per pakket een paragraaf op in het format van het template (zie `references/template-producten.md`).

#### Blok 3  Pricing-tabel

**Wat we vastleggen:** de feitelijke prijs per pakket plus de eenheid.

Kernvragen:
1. Wat is de prijs van elk pakket?
2. In welke eenheid is dat? (Eenmalig vast bedrag, maandelijks abonnement, per stuk, op uurbasis, op no-cure-no-pay-basis, hybride)
3. Is de prijs **inclusief of exclusief BTW**? Welke percentages of vrijstellingen zijn van toepassing?
4. Zijn er aparte prijzen voor verschillende segmenten (B2B vs B2C, MKB vs corporate, particulier vs zakelijk)?

Lever op als pricing-tabel in het format van het template.

#### Blok 4  Doelgroep per pakket

**Wat we vastleggen:** welk pakket bij welk klant-segment past. Dit is wat de AI later nodig heeft om bij een sales-gesprek het juiste pakket voor te stellen.

Kernvragen:
1. Per pakket: voor wie is dit eigenlijk bedoeld? Welk type ondernemer, organisatie of persoon? Kruis-link waar mogelijk naar de ICP-segmenten als die in een ICP-bestand staan.
2. Per pakket: bij welke pijn of vraag van een klant pas je dit pakket toe als eerste voorstel?
3. Zijn er pakketten die je vroeger had en bewust hebt geschrapt omdat ze niet bij je doelgroep pasten? (Helpt om out-of-scope helder te krijgen voor blok 8.)

#### Blok 5  Marge en cost (intern, optioneel)

**Wat we vastleggen:** wat een pakket de ondernemer kost om te leveren, en hoeveel marge er overblijft. Dit blok is intern  het komt **niet** automatisch op de publieke website, maar is essentieel voor sales-coaching en kortings-beslissingen.

Kernvragen:
1. Per pakket: wat zijn de directe kosten? (Eigen tijd  reken intern uurtarief, software-licenties, inhuur, materialen.)
2. Per pakket: wat is de globale marge in procenten?
3. Per pakket: bij welk kortingspercentage kom je in de gevarenzone (marge < X procent)?

Als de ondernemer hier weinig zicht op heeft, **niet doorvragen** maar stel een coach-vraag: "Heb je dit ooit doorgerekend? Want zonder dit zicht zit er een blinde vlek in je sales-marges." Sla "onbekend" op  dat is ook een geldig antwoord en zichtbaar als gap.

#### Blok 6  Positionering

**Wat we vastleggen:** hoe het aanbod zich verhoudt tot de markt. Niet hoe je het uitlegt aan klanten (dat hoort bij brand), maar waar je staat in het prijs-/waarde-spectrum.

Kernvragen:
1. Op het spectrum **low-cost / mid-range / premium / specialist**: waar plaats je het aanbod?
2. Wie zijn 2 tot 4 belangrijke alternatieven of concurrenten waar klanten ook naar kijken? (Kruis-link naar `Directie/Research/Concurrentie-research.md` als die bestaat.)
3. Hoe verhoudt jouw prijs zich tot die alternatieven? (Goedkoper, vergelijkbaar, duurder.)
4. Wat rechtvaardigt het verschil? (Snelheid, ervaring, specialisatie, bundeling.)

Coach-laag: als de ondernemer hier vaag blijft  "we zijn premium omdat we beter zijn"  stel een voorzichtige vraag: "Heb je deze positionering ooit getoetst, bijvoorbeeld door te vragen waarom een klant koos en niet voor [alternatief]?" Geen advies geven, wel kritisch zijn.

#### Blok 7  Upsells en extra's

**Wat we vastleggen:** standaard upsell-paden tussen pakketten en standaard-extra's met prijs.

Kernvragen:
1. Vanaf welk pakket loopt een natuurlijk upgrade-pad naar het volgende? In welke situatie stel je dat voor?
2. Welke standaard-extra's zijn er die klanten kunnen bijboeken? (Bv. extra adviesuur, spoedlevering, extra users, extra content, vervolgworkshop.)
3. Wat is de prijs per standaard-extra?
4. Zijn er **kortingen** die standaard worden gegeven? (Jaarbetaling-korting, multi-pakket-korting, intro-aanbieding.) Wat is het percentage of bedrag?

Lever op als extra tabel onder de hoofdpricing-tabel.

#### Blok 8  Out of scope

**Wat we vastleggen:** wat het bedrijf expliciet **niet** doet, ook al ligt het in dezelfde branche. Dit is wat de AI gebruikt om out-of-scope-aanvragen vriendelijk af te wijzen of door te verwijzen.

Kernvragen:
1. Welke type opdrachten of klanten neem je expliciet niet aan? (Bv. eenmalige kleine klusjes onder X euro, branches waar je niet werkt, geografisch buiten gebied X.)
2. Welke vragen krijgt je vaak waar je "nee" op zegt of doorverwijst?
3. Naar welke partijen verwijs je dan door, als die bekend zijn?

Als out-of-scope onduidelijk blijft, stel een coach-vraag: "Heb je ooit een opdracht aangenomen waar je achteraf spijt van had? Wat was de rode draad?" Dat helpt om het bewust te maken.

### Stap 6: Pricing-check (coach-laag)

Voordat je naar stap 7 gaat, doe een korte pricing-check op de blok-output. Geen advies, wel kritische vragen die de ondernemer zelf laten denken. Maximaal 3 vragen, alleen waar het aansluit.

Mogelijke check-vragen:
- "Heb je deze prijs getoetst aan wat klanten bereid zijn te betalen, of is het een op-gevoel-prijs?"
- "Voor pakket X is je marge volgens jouw antwoord lager dan voor pakket Y. Is dat bewust (instapper / loss-leader) of een blinde vlek?"
- "De prijs voor pakket Z is identiek aan een concurrent. Wat maakt jouw versie het overstappen waard?"
- "Je geeft standaard een jaarbetaling-korting van 15 procent. Heb je doorgerekend wat dat scheelt in cashflow versus marge?"
- "Pakket A staat als low-cost gepositioneerd maar de doelgroep is premium-MKB. Voelt dat congruent?"

Pas op:
- **Geen oordeel uitspreken.** "Mij lijkt deze prijs te laag" mag NIET. Wel: "heb je doorgerekend wat dit doet met de marge?"
- **Geen advies geven.** De ondernemer denkt zelf.
- **Maximaal 3 vragen.** Niet alle gaten doorzeven  alleen de scherpste.
- **Sla op** als de gebruiker zegt "ja, daar wil ik nog naar kijken"  zet dat als open punt onder in het document onder "Open punten / herzien".

### Stap 7: Schrijven en opslaan

Gebruik het template uit `references/template-producten.md` als skelet. Vul het met de uitkomsten uit pre-fill + interview + pricing-check.

Sla op als:
```
{scope}/Directie/Playbook/Producten.md
```

Maak de `Directie/Playbook/`-map aan als die nog niet bestaat (al zal die normaal al door `os-builder` zijn aangemaakt).

Frontmatter (verplicht):
```yaml
---
type: producten-en-pricing
bedrijf: <Naam>
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: S8
secundaire-scale-check: V2
publiceerbaar: <ja | gedeeltelijk | nee>
---
```

Toelichting bij `publiceerbaar`:
- `ja`  alle prijzen mogen 1-op-1 op de website
- `gedeeltelijk`  alleen pakket-namen en vanaf-prijzen mogen publiek (rest interne offerte)
- `nee`  het document is volledig intern, prijzen alleen in offertes

**Schrijfregels:**
- Werk in het **Nederlands**, tenzij Brand Guidelines anders voorschrijven.
- **Geen marketing-superlatieven.** Geen "revolutionair", "disruptief", "next-level", "game-changing", "uniek in Nederland". Feitelijk en concreet.
- **Concrete bedragen > prijsranges waar het kan.** Een precieze prijs ("750 per maand") is sterker dan een vage range ("tussen 500 en 1000") in een intern document.
- **Geen em-dashes** (). Gebruik komma's, haakjes of losse zinnen.
- **Korte koppen** (3 tot 6 woorden).
- **Per pakket dezelfde structuur** zodat de lezer makkelijk kan vergelijken.
- **Pricing-tabel is verplicht.** Een tabel is voor sales-werk veel beter scanbaar dan losse paragrafen met prijzen.
- **Marge-sectie is intern.** Markeer expliciet aan de top van die sectie dat die niet op de publieke site komt.

### Stap 8: Logging en vervolgsuggesties

Logging (allemaal in dezelfde tool-call-ronde):
1. **Changelog bedrijf**  `{scope}/Directie/Changelog.md`, nieuwste datum bovenaan, regel als *"Nieuw/Bijgewerkt: `Directie/Playbook/Producten.md`  v1.0, X pakketten met pricing-tabel, marge-zicht en out-of-scope"*.
2. **Daily**  als er een `Huddle/Daily/YYYY-MM-DD.md` bestaat in de vault (deze conventie geldt in Iwan's OS, niet alle vaults hebben hem), log dan onder *Gedaan vandaag  [Bedrijf]*. Sla over als die map niet bestaat.
3. **Scale-audit-suggestie**  als er een audit-rapport in `Directie/Research/` staat waar S8 of V2 op  of  staat: stel voor de audit opnieuw te draaien zodat de score springt (beide checks tegelijk).

Vervolgsuggesties die je altijd noemt:
- **V1 Salesproces**  het Producten-document is de directe input voor het salesproces. Stel voor `salesproces-builder` als die bestaat.
- **C6 Concurrentie-research**  als de positionering-sectie nog gaten heeft, stel voor `concurrentie-research` te draaien.
- **M3 Content Roadmap**  pakketten geven natuurlijke contentonderwerpen (één post per pakket).
- **A1 Rapportage**  marge per pakket is een KPI die in de rapportage hoort.
- **Cross-link in 00 - Overzicht.md**  de aanbod-sectie van het bedrijfsoverzicht mag nu verwijzen naar dit document in plaats van zelf alle pakketten op te sommen.
- **Update bij prijswijziging.** Dit is een levend document. Update bij elke prijswijziging, nieuw pakket of geschrapt pakket. Versienummer in frontmatter bijwerken.

## Cold-start en fictieve-klant modus

De skill is ontworpen als beurtsgewijs gesprek met vault-pre-fill. Bij twee situaties werkt dat anders:

**Autonome / 1-shot run** (bijvoorbeeld voor evaluaties, bulk-bouw of als de gebruiker expliciet "doe alles in 1 keer" zegt):
- Sla het interview over en gebruik wat in het prompt staat als enige bron.
- Vul ontbrekende velden in met realistische defaults plus expliciete `[VERIFICEREN]`-marker.
- Lever de complete deliverable, niet alleen aanbevelingen.
- Voeg onderaan een sectie "Open punten" toe met alle [VERIFICEREN]-velden, zodat de gebruiker weet wat hij later moet bevestigen.

**Fictieve klant of cold-start (geen bestaande vault):**
- Vraag NIET naar bedrijfsgegevens die in een eerste gesprek logisch te achterhalen zijn; gebruik wat in het prompt staat plus defaults.
- Schrijf de deliverable in de gevraagde output-map, niet in `{scope}/...`-paden.
- Vermeld cross-links naar andere SCALE-stappen als `[VERIFICEREN]` zonder ze in te vullen.
- Skip changelog-updates en daily-log-updates die normaal aan het eind gebeuren.

## Belangrijke regels

- **Eén blok per beurt** in het interview. Niet alle vragen tegelijk neerzetten. Wachten op antwoord, dan pas door.
- **Bestaande bronnen eerst.** Vraag nooit naar een prijs die al op de website of in een offerte-template staat. Pre-fill-validatie in stap 4 voorkomt dat.
- **Schrijf nooit zomaar over een bestaand `Producten.md` heen** zonder dat de gebruiker bevestigt dat de oude versie weg mag of gearchiveerd moet worden.
- **Concrete bedragen > abstracte beweringen.** "Pakket X is duur" zegt niets. "Pakket X is 4500 eenmalig, en concurrent Y vraagt 3200 voor vergelijkbare scope" wel.
- **Minimaal 3 pakketten of scenario's** mikken. Een document met 1 pakket is te dun voor sales-werk, ook al haalt het de audit-drempel.
- **Marge-sectie is intern.** Markeer expliciet aan de top dat die niet op de publieke site komt, zodat de ondernemer of een AI later niet per ongeluk publiekelijk de cost-structuur deelt.
- **Geen aannames over vault-structuur.** De skill werkt voor solopreneurs met een single-business vault, voor mensen met een multi-business vault, en voor klanten die door Upscailed begeleid net hun SCALE-skelet hebben opgezet. Geen hard-coded persoonlijke paden  alleen relatief binnen `{scope}`.
- **Vraag actief naar de website-prijspagina.** Dat is de rijkste bron voor pre-fill en bespaart de meeste interviewtijd. Web-fetch maakt het lezen ervan triviaal.
- **Coach voorzichtig.** Stel kritische vragen waar pricing zwak onderbouwd lijkt, maar geef geen advies en spreek geen oordeel uit. Maximaal 3 check-vragen in stap 6.
- **Sla "onbekend" op als geldig antwoord.** Als marge of cost niet bekend zijn, dwing geen schatting af. Markeer het als open punt zodat de gap zichtbaar is.
- **Respecteer de stem van de ondernemer.** Het document moet voelen alsof hij het zelf had kunnen schrijven, niet alsof er een sales-trainer bovenop is gezet.

## Voorbeeld-output

Zie [`references/template-producten.md`](references/template-producten.md) voor de exacte structuur die de skill oplevert.

Cross-links die in elk goed gevuld Producten-document terugkomen:
- Aanbod-sectie in `Directie/00 - Overzicht.md` (S1)  hoge-over-versie van dit document
- `Directie/Playbook/ICP.md` (S4)  doelgroep per pakket koppelt hieraan
- `Directie/Research/Concurrentie-research.md` (C6)  positionering steunt hierop
- Salesproces-document (V1)  gebruikt dit document direct in scripts en offertes

## Changelog

### 1.1.0 — 2026-05-11

- Nieuwe sectie "Cold-start en fictieve-klant modus".

### 1.0.0 — initiele release

- Eerste productie-versie.
