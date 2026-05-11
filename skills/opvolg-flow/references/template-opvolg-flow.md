---
type: opvolg-flow
bedrijf: "{Bedrijfsnaam}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: V3
---

# Opvolg-flow — {Bedrijfsnaam}

> **Wat is dit document?** Vijf concrete opvolg- en nurture-flows voor de meest voorkomende lead-states na initieel contact bij {Bedrijfsnaam}. Per flow: trigger-event, tijdslijn van touchpoints, kanaal-mix, inhoud per touchpoint, exit-criterium en eigenaar. Dit document is directe input voor L3 (Mailflow Setup) en sluit aan op V1 (Salesproces), S9 (Klantreis), C2 (CRM-setup), C4 (Klantfeedback) en M3 (Content Roadmap).

---

## Overzicht in één plaatje

```
                           ┌──────────────────────────┐
                           │   LEAD HEEFT CONTACT      │
                           │       GEMAAKT             │
                           └─────────────┬─────────────┘
                                         ▼
       ┌─────────────────────────────────┴─────────────────────────────────┐
       ▼                                                                   ▼
┌─────────────┐                                                  ┌─────────────────┐
│ [1] Na demo │                                                  │ [5] Te vroeg    │
│ /discovery  │                                                  │ educatie-       │
│             │                                                  │ nurture         │
└──────┬──────┘                                                  └────────┬────────┘
       │                                                                  │
       ▼                                                                  │
┌─────────────┐                                                           │
│ [2] Na      │                                                           │
│ voorstel    │                                                           │
│             │                                                           │
└──────┬──────┘                                                           │
       │                                                                  │
       ▼                                                                  │
┌─────────────┐         ┌─────────────────┐                              │
│ [3] Denk er │ ──────► │ [4] Verloren    │                              │
│ nog over    │   nee   │ deal            │                              │
└──────┬──────┘         │ re-engagement   │                              │
       │ ja             └────────┬────────┘                              │
       ▼                         │                                       │
┌──────────────────┐              ▼                                       │
│  KLANT (won)     │      ┌──────────────┐                                │
│                  │      │ +3 mnd touch │ ◄──────────────────────────────┘
└──────────────────┘      │ +6 mnd touch │           wordt warm
                          └──────┬───────┘
                                 │
                                 ▼
                         exit of opnieuw warm
```

*Een lead landt in flow [1] of [5] afhankelijk van of hij beslis-rijp is. Vanuit flow [3] gaat de lead terug naar [2] (positief signaal) of door naar [4] (geen reactie). Vanuit flow [5] kan een lead na maanden alsnog warm worden en doorschuiven naar flow [1]. Elke flow heeft een exit naar klant-status, verloren of opt-out.*

---

## Per flow uitgewerkt

### Flow [1] — Na demo of discovery

> **Wat gebeurt hier?** Lead heeft een eerste discovery- of demo-gesprek gehad. Voorstel volgt nog niet. Doel: momentum vasthouden tot het voorstel klaar staat.

**Trigger-event:** {Bv. "CRM-stadium-overgang naar 'Discovery gehouden'", of "datumveld 'Demo' is +0 dagen"}

**Eigenaar overall:** {Sales-rep / Automation met mens-touchpoint op X / Combinatie}

| Dag | Kanaal | Inhoud | Eigenaar |
|---|---|---|---|
| **0** | E-mail | {Bv. "Thank-you-mail met samenvatting van het gesprek, drie kernpunten, beloofde levertijd van voorstel"} | {Sales / Automation} |
| **+1** | LinkedIn | {Bv. "Connect-verzoek met persoonlijk berichtje over een gespreksonderwerp"} | Sales |
| **+3** | E-mail | {Bv. "Voorstel verzenden, met een vraag over de stakeholders die nog meekijken"} | Sales |
| **+5** | E-mail | {Bv. "Vervolgmail met een case uit dezelfde branche, koppeling aan zijn vraag"} | Automation |
| **+7** | Telefoon of WhatsApp | {Bv. "Bellen om door het voorstel heen te lopen, vraagteken-toelichting"} | Sales |

**Exit-criterium:** {Bv. "Lead reageert positief → flow [2] start automatisch / lead reageert negatief → flow [4] na 14 dagen / opt-out → flow stopt"}

**Tool:** {Bv. "HubSpot Sequences voor mails, sales-rep doet telefoon en LinkedIn handmatig"}

**Voorbeeld-mail dag 0:**
> Onderwerp: {Bv. "Vervolg op ons gesprek vandaag"}
>
> Hoi {Voornaam},
>
> {3 zinnen samenvatting + 1 concrete vervolgstap + opt-out}

---

### Flow [2] — Na voorstel of offerte

> **Wat gebeurt hier?** Voorstel of offerte is verzonden. Klant heeft nog geen ja of nee gegeven. Doel: bezwaar wegnemen, deadline laten landen, beslis-momentum creëren.

**Trigger-event:** {Bv. "CRM-stadium-overgang naar 'Voorstel verzonden'"}

**Eigenaar overall:** {Sales-rep / Automation met mens-touchpoint op X}

| Dag | Kanaal | Inhoud | Eigenaar |
|---|---|---|---|
| **0** | E-mail | {Bv. "Voorstel + concrete deadline + 'laat weten als je vragen hebt'"} | Sales |
| **+3** | E-mail | {Bv. "Aanvullende case in zijn branche, geen 'even checken'"} | Automation |
| **+7** | Telefoon | {Bv. "Bellen om door voorstel heen te lopen, vragen over stakeholders en timing"} | Sales |
| **+10** | LinkedIn-DM | {Bv. "Persoonlijk bericht met een artikel dat een veelgehoord bezwaar adresseert"} | Sales |
| **+14** | E-mail | {Bv. "Deadline-herinnering, optie tot tweede gesprek, opt-out-link"} | Automation |
| **+21** | E-mail | {Bv. "Laatste check, 'als nu niet relevant, kan ik je over 3 maanden opnieuw benaderen?'"} | Sales of Automation |

**Exit-criterium:** {Bv. "Akkoord → klant (won) / nee → flow [4] / 'denk er nog over' → flow [3] / opt-out → flow stopt"}

**Tool:** {Bv. "ActiveCampaign Automation 'V3-Flow2-Voorstel', sales-rep voert telefoon en LinkedIn handmatig uit"}

**Voorbeeld-mail dag +3:**
> Onderwerp: {Bv. "Hoe {ander bedrijf} dit aanpakte"}
>
> Hoi {Voornaam},
>
> {2 zinnen case + 1 zin koppeling aan zijn situatie + concrete vervolgvraag + opt-out}

---

### Flow [3] — Na "denk er nog over" (langzaam-warm-houden)

> **Wat gebeurt hier?** Lead heeft expliciet gezegd "interessant, maar nu niet". Doel: warm houden zonder te spammen, zodat lead bij rijp moment terugkomt.

**Trigger-event:** {Bv. "CRM-tag 'Denk er nog over' toegekend", of "expliciete e-mail 'kom er later op terug'"}

**Tijdshorizon:** {Bv. "2-6 maanden, afhankelijk van situatie"}

**Eigenaar overall:** {Sales-rep met automation-ondersteuning}

| Dag | Kanaal | Inhoud | Eigenaar |
|---|---|---|---|
| **+14** | E-mail | {Bv. "Artikel dat het meest-genoemde bezwaar adresseert"} | Automation |
| **+30** | LinkedIn-DM | {Bv. "Persoonlijk berichtje bij een nieuwsmoment van zijn bedrijf"} | Sales |
| **+60** | E-mail | {Bv. "Case in zijn branche, vraag of dit nog steeds relevant is"} | Automation |
| **+90** | Telefoon of LinkedIn | {Bv. "Persoonlijke check-in, met concrete waarde-toevoeging"} | Sales |
| **+120** | E-mail | {Bv. "Uitnodiging voor evenement, webinar of nieuwsbrief"} | Automation |
| **+180** | LinkedIn-DM | {Bv. "Laatste persoonlijke check, of de lead nog interesse heeft"} | Sales |

**Exit-criterium:** {Bv. "Lead reageert positief → flow [2] of nieuwe demo / lead reageert niet 6 maanden → flow [4] re-engagement / opt-out → flow stopt"}

**Tool:** {Bv. "Brevo Automation 'V3-Flow3-LangzaamWarm', sales-rep voor LinkedIn en telefoon"}

**Inhoud-richtlijn:** elke touch toegevoegde waarde — geen "even pollen". Voorbeelden van waarde-toevoegende haakjes: branche-artikel, eigen casestudy, antwoord op zijn eerder genoemde vraag, gefeliciteerd-bij-mijlpaal, uitnodiging voor evenement.

---

### Flow [4] — Na verloren deal (re-engagement)

> **Wat gebeurt hier?** Deal is officieel verloren — klant koos concurrent, paste idee af of besliste nooit. Doel: na een rust-periode opnieuw aanhaken op het juiste moment.

**Trigger-event:** {Bv. "CRM-stadium-overgang naar 'Lost', met verlies-reden in een verplicht veld"}

**Verlies-reden bepaalt route:** dit is geen one-size-fits-all flow.

**Eigenaar overall:** {Sales-rep, want re-engagement is persoonlijk}

#### Subflow 4a — Verloren door prijs

| Dag | Kanaal | Inhoud | Eigenaar |
|---|---|---|---|
| **+90** | E-mail of LinkedIn | {Bv. "Aankondiging nieuwe pakketstructuur of intro-aanbod"} | Sales |
| **+180** | LinkedIn-DM | {Bv. "Persoonlijke check, casestudy van klant die ook eerst 'te duur' zei"} | Sales |

#### Subflow 4b — Verloren aan concurrent

| Dag | Kanaal | Inhoud | Eigenaar |
|---|---|---|---|
| **+180** | LinkedIn-DM | {Bv. "Hoe zijn ervaringen tot nu toe? Indirect, niet aanvallend"} | Sales |
| **+360** | E-mail | {Bv. "Case van bedrijf dat na 1 jaar bij concurrent alsnog overstapte, met concrete redenen"} | Sales |

#### Subflow 4c — Verloren door timing

| Dag | Kanaal | Inhoud | Eigenaar |
|---|---|---|---|
| **+90** | E-mail | {Bv. "Korte check of timing inmiddels beter is"} | Sales |
| **+180** | LinkedIn-DM | {Bv. "Casestudy van bedrijf in zelfde fase, optie tot nieuw gesprek"} | Sales |

#### Subflow 4d — Beslisser-wissel gedetecteerd

| Dag | Kanaal | Inhoud | Eigenaar |
|---|---|---|---|
| **+0** | LinkedIn-DM | {Bv. "Felicitatie nieuwe beslisser, korte voorstelling, optie tot kennismakings-call"} | Sales |
| **+14** | E-mail | {Bv. "Vervolg met case in zijn branche"} | Sales |

**Exit-criterium:** {Bv. "Lead reageert positief → flow [1] (nieuwe demo) / geen reactie na 2 re-engagement-touchpoints → markeer als 'niet meer benaderen' / opt-out → flow stopt"}

**Tool:** {Bv. "Notion-werklist met datum-reminders + handmatige uitvoering door sales-rep"}

---

### Flow [5] — Na "te vroeg" (educatie-nurture, langer traject)

> **Wat gebeurt hier?** Lead is nog niet beslis-rijp door eigen ontwikkelfase (te klein team, te weinig budget, te weinig kennis). Doel: educatie-relatie opbouwen tot lead rijp is, zonder sales-druk.

**Trigger-event:** {Bv. "CRM-tag 'Te vroeg' toegekend", of "lead heeft expliciet gezegd 'over 12 maanden interessanter'"}

**Tijdshorizon:** {Bv. "6 tot 18 maanden"}

**Eigenaar overall:** {Marketing of automation-only — geen actieve sales}

| Frequentie | Kanaal | Inhoud | Eigenaar |
|---|---|---|---|
| Maandelijks | E-mail (nieuwsbrief) | {Bv. "Algemene nieuwsbrief met content uit M3 Content Roadmap"} | Automation |
| Tweemaandelijks | LinkedIn-bedrijfspost | {Bv. "Algemene posts die lead via LinkedIn-volg-relatie ziet"} | Marketing |
| Kwartaal | E-mail (gericht) | {Bv. "Specifiek voor te-vroeg-segment: case van bedrijf dat net 1 stap verder is"} | Automation |
| Half-jaar | LinkedIn-DM (persoonlijk) | {Bv. "Korte check of situatie veranderd is, geen sales-druk"} | Sales |
| Bij signaal | E-mail of telefoon | {Bv. "Als lead reageert op nieuwsbrief, bezoekt prijspagina of vraagt iets: direct opvolging door sales"} | Sales |

**Warm-signalen die de lead terugbrengen naar actief sales-traject:**
- Klikt door op een specifieke pagina (prijspagina, dienstpagina)
- Antwoordt op een nieuwsbrief met een vraag
- Reageert op een LinkedIn-post
- Vraagt expliciet om een vervolggesprek
- Bedrijfsmoment (groei, financiering, beslisser-wissel) gedetecteerd

**Exit-criterium:** {Bv. "Lead wordt warm → flow [1] start opnieuw / geen interactie in 18 maanden → archiveer / opt-out → flow stopt / bedrijf gestopt → flow stopt"}

**Tool:** {Bv. "Beehiiv voor nieuwsbrief, ActiveCampaign voor segmentatie, CRM-tag-trigger bij warm-signaal"}

---

## AVG-check en opt-out-mechanisme

| Regel | Hoe dit document daarmee omgaat |
|---|---|
| **Opt-out per mail** | {Bv. "Elke geautomatiseerde mail uit Mailchimp bevat automatisch een uitschrijflink. Handmatige LinkedIn-DM bevat 'laat weten als je geen verdere berichten wilt'."} |
| **B2B 14-dagen-regel cold-outreach** | {Bv. "Flow [4] subflow 4b en 4d kan koud lijken voor de ontvanger. Eerste bericht bevat een duidelijke opt-out, 2e touchpoint volgt minimaal 14 dagen later."} |
| **Consumer-leads opt-in vereist** | {Bv. "Niet van toepassing — wij werken B2B" / "Wel van toepassing — alle leads via website-formulier met opt-in checkbox"} |
| **Bewaartermijn** | {Bv. "Verloren leads worden 24 maanden bewaard in CRM, daarna geanonimiseerd. Cross-link naar Privacyverklaring J4."} |

---

## Cross-links naar andere SCALE-checks

| SCALE-check | Document | Relatie tot deze opvolg-flow |
|---|---|---|
| S4 — ICP | `Directie/Playbook/ICP.md` | Bepaalt per ICP-segment welke kanaal-mix en inhoud-toon werkt |
| S8 — Producten en Pricing | `Directie/Playbook/Producten.md` | Prijspunten en pakketnamen genoemd in flow [2] en flow [4] subflow 4a |
| S9 — Klantreis | `Directie/Playbook/Klantreis.md` | Consideration- en Retention-fase zijn directe input voor flows [1], [2] en [4] |
| V1 — Salesproces | `Sales/Salesproces.md` | Fase-stadia leveren de trigger-events voor de flows |
| C2 — CRM-setup | `Collect/CRM-setup.md` | Pipeline-states zijn de feitelijke triggers; tool-keuze bouwt verder hierop |
| C4 — Klantfeedback | `Klantenservice/Klantfeedback.md` | Stem-van-de-klant en veelgehoorde bezwaren leveren inhoud voor opvolgmails |
| M3 — Content Roadmap | `Marketing/Content Roadmap.md` | Content voor flow [3] en flow [5] kan deels uit M3 komen; voorkom dubbele productie |
| J4 — Privacyverklaring | `Juridisch/Privacyverklaring.md` | AVG-grondslag voor opt-out, 14-dagen-regel, bewaartermijn |
| L3 — Mailflow Setup | `IT/Automatisering/Mailflow.md` | Dit document is directe input voor L3 om de feitelijke automation te bouwen |

---

## Acties die uit deze opvolg-flow voortvloeien

> Zet hier de top 3-5 verbeter-acties die het meeste opleveren, op basis van de gaten uit het interview.

1. **Flow [N] — {Gat}** → {Voorgestelde actie, bv. "bouw subflow 4a in HubSpot Sequences in week 22"}
2. **Flow [N] — {Gat}** → {Voorgestelde actie}
3. **Flow [N] — {Gat}** → {Voorgestelde actie}

---

## Bijhouden

Dit is een **levend document**. Update bij:

- Wisseling van CRM-tool (alle triggers herzien)
- Nieuwe verlies-reden in win-loss-analyse (mogelijke subflow toevoegen aan flow [4])
- Nieuwe ICP-segment (kanaal-mix per flow herzien)
- Belangrijke klantfeedback over opvolging (positief of negatief)
- Wisseling van eigenaar of nieuwe sales-rep aan boord
- Wisseling van e-mail- of automation-tool

**Versiebump-triggers:**
- Patch (1.0.0 → 1.0.1): kleine tekstuele aanpassingen, één touchpoint toegevoegd
- Minor (1.0.x → 1.1.0): nieuwe subflow, nieuwe tool, één flow substantieel herschreven
- Major (1.x.y → 2.0.0): fundamentele wijziging van flow-set (van 5 naar 7 flows), wisseling van CRM-platform, complete herziening na rebrand
