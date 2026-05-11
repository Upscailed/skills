---
type: mailflow-setup
bedrijf: "{Bedrijfsnaam}"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: L3
provider: "{Naam van mail-tool}"
sender-domein: "{noreply@bedrijfsnaam.nl}"
---

# Mailflow Setup — {Bedrijfsnaam}

> **Wat is dit document?** Zes geautomatiseerde e-mail-workflows die bij {Bedrijfsnaam} de terugkerende klant- en lead-momenten automatisch laten lopen. Per workflow: trigger-event, tijdslijn, inhoud per touchpoint, personalisatie-velden, gekozen tool, AVG-check en deliverability. Dit document is de uitvoerende laag van V3 (Opvolg-flow) en sluit aan op S4 (ICP), S9 (Klantreis), C2 (CRM-setup), M4 (Nieuwsbrief), J4 (Privacyverklaring).

---

## Tool en sender (setup-basis)

| Item | Waarde |
|---|---|
| **Mail-tool (marketing-automation)** | {Bv. "ActiveCampaign Plus-plan, €70/mnd, 5000 contacten"} |
| **Mail-tool (transactional)** | {Bv. "Postmark, $15/mnd, 10k mails inclusief"} of "Idem als marketing-automation" |
| **Sender-domein** | {Bv. "noreply@bedrijfsnaam.nl"} |
| **Reply-to-adres** | {Bv. "hallo@bedrijfsnaam.nl"} |
| **SPF** | {Status: "groen / nog instellen / onbekend"} |
| **DKIM** | {Status: "groen / nog instellen / onbekend"} |
| **DMARC** | {Status: "none / quarantine / reject"} |
| **Warm-up status** | {"Niet nodig — domein draait al maanden" / "Actief week 1 van 4" / "Nog niet gestart"} |
| **Verwacht volume per maand** | {Bv. "1500 mails totaal over alle workflows"} |
| **Beheerder mail-tool** | {Bv. "Iwan Vos, plus back-up door teamlid X"} |

---

## Overzicht in één plaatje

```
                         ┌─────────────────────────────┐
                         │   LEAD KOMT BINNEN           │
                         │  (CRM / formulier / event)   │
                         └──────────────┬──────────────┘
                                        ▼
       ┌────────────────────────────────┴────────────────────────────────┐
       ▼                                                                 ▼
┌────────────────┐  conversie naar  ┌───────────────────┐
│ V3 Opvolg-flow │ ───────────────► │ [1] WELKOM        │
│ (na demo,      │  klant           │ (5 mails / 4 wk)  │
│  voorstel,     │                  └─────────┬─────────┘
│  etc.)         │                            ▼
└────────────────┘                  ┌───────────────────┐
                                    │ [2] ONBOARDING    │
                                    │ (4 mails / 3 wk)  │
                                    └─────────┬─────────┘
                                              ▼
                                    ┌───────────────────┐
                                    │  KLANT IS ACTIEF  │
                                    └─────────┬─────────┘
              ┌───────────────────────────────┼───────────────────────────────┐
              ▼                               ▼                               ▼
   ┌───────────────────┐         ┌───────────────────┐         ┌───────────────────┐
   │ [3] NURTURE       │         │ [4] KLACHT        │         │ [7] FACTURATIE    │
   │ (maandelijks)     │         │ (24u SLA)         │         │ (D-7 → D+14)      │
   └───────────────────┘         └───────────────────┘         └───────────────────┘
                                              ▼
                                    ┌───────────────────┐
                                    │  KLANT ZEGT OP    │
                                    └─────────┬─────────┘
                                              ▼
                                    ┌───────────────────┐
                                    │ [5] OPZEGGING     │
                                    │  + RE-ENGAGEMENT  │
                                    │ (D0, D+30, +6m)   │
                                    └───────────────────┘
```

*Welkom en onboarding zijn sequentieel na conversie. Nurture, klachtafhandeling en facturatie lopen parallel zolang de klant actief is. Opzegging en re-engagement starten bij beëindiging.*

---

## Per workflow uitgewerkt

### [1] Welkom-flow voor nieuwe klanten

> **Wat gebeurt hier?** Nieuwe klant landt binnen 4 weken volledig in via 5 strategisch verspreide welkomstmails. Doel: helder houden waar hij is, wat hij krijgt, hoe hij begint.

**Trigger-event:** {Bv. "Webhook `klant.created` van checkout-pagina + CRM-pipeline-stadium-overgang naar 'Klant'. Beide moeten waar zijn, anders triggert het niet."}

**Eigenaar overall:** Automation (alle 5 mails) plus eigenaar voor antwoord op reply

| Dag | Inhoud | Personalisatie | Eigenaar | Tool-actie |
|---|---|---|---|---|
| **D0** | {Bv. "Welkomstmail: bevestiging + wat krijg je + eerste vervolgstap"} | {Voornaam, Productnaam, Pakket-niveau, Login-URL} | Automation | {Bv. "ActiveCampaign automation `L3-Welkom`, mail 1"} |
| **D2** | {Bv. "Wat krijg je als klant + waar vind je wat (dashboard, resources, account)"} | {Voornaam, Login-URL, Resource-link} | Automation | {Idem mail 2} |
| **D7** | {Bv. "Quick-win-mail: 1 concrete actie die meteen waarde levert"} | {Voornaam, Segment, Quick-win-tip per segment} | Automation | {Idem mail 3} |
| **D14** | {Bv. "Casestudy in zijn ICP-segment, link naar volledig artikel"} | {Voornaam, Casestudy-link per segment} | Automation | {Idem mail 4} |
| **D28** | {Bv. "Check-in + feedbackvraag + uitnodiging voor nieuwsbrief"} | {Voornaam, Feedback-link, Nieuwsbrief-opt-in} | Automation | {Idem mail 5} |

**Exit-criterium:** {Bv. "Klant heeft opgezegd → flow stopt en [5] opzeg-flow start / klant heeft expliciet opt-out gevraagd → flow stopt / 28 dagen voltooid → flow eindigt normaal"}

**Test-run vereist voor go-live:** ja, met eigen test-account dat door alle 5 mails loopt in 28 dagen (versneld in test-modus naar uren in plaats van dagen).

---

### [2] Onboarding-flow

> **Wat gebeurt hier?** Nieuwe klant operationeel laten landen. Instructief, niet verkoopgericht. Parallel aan welkom-flow.

**Trigger-event:** {Bv. "Idem als welkom: webhook `klant.created`. Onboarding-flow start +1 dag na welkomstmail."}

**Eigenaar overall:** Automation plus eigenaar voor reply op D21

| Dag | Inhoud | Personalisatie | Eigenaar | Tool-actie |
|---|---|---|---|---|
| **D1** | {Bv. "Hoe begin je: 3 eerste stappen, eerste login, dashboard-rondleiding"} | {Voornaam, Productnaam, Login-URL, Dashboard-URL} | Automation | {Bv. "Postmark transactional template `onboarding-1`"} |
| **D5** | {Bv. "FAQ: 3 meest-gestelde vragen in de eerste 2 weken + support-kanaal"} | {Voornaam, Support-URL} | Automation | {Idem template `onboarding-2`} |
| **D10** | {Bv. "Best-practice-tip per segment, hoe haal je het meeste eruit"} | {Voornaam, Segment, Tip per segment} | Automation | {Idem template `onboarding-3`} |
| **D21** | {Bv. "Onboarding-evaluatie: loop je ergens tegenaan? Boek een 15-min call"} | {Voornaam, Call-booking-URL} | Automation, met reply naar eigenaar | {Idem template `onboarding-4`} |

**Exit-criterium:** {Bv. "Klant heeft onboarding voltooid (event uit product) → flow stopt eerder / klant heeft opgezegd → flow stopt / 21 dagen voltooid → flow eindigt normaal"}

---

### [3] Nurture-flow (slow-warm)

> **Wat gebeurt hier?** Warm contact met klanten en leads die niet in actieve sales- of onboarding-fase zitten. Lage frequentie, hoge waarde per mail.

**Trigger-event:** {Bv. "Tijd-getriggerde campaign: laatste donderdag van de maand 09:00 voor alle subscribers met segment-tag 'Actief'."}

**Eigenaar overall:** Automation plus content-team voor schrijven per editie

**Cadans:**

| Frequentie | Inhoud | Personalisatie | Eigenaar | Tool-actie |
|---|---|---|---|---|
| Maandelijks | {Bv. "Segment-gerichte mail met case, inzicht of bedrijfs-update"} | {Voornaam, Segment, Case-link per segment} | Automation + content | {Bv. "ActiveCampaign campaign `L3-Nurture-YYYY-MM`"} |

**Segmentatie-as:** {Bv. "ICP-segment (B2B-MKB / B2B-Enterprise / ZZP) + aankoop-historie + laatste-interactie-datum"}

**Verschil met M4 Nieuwsbrief:** {Bv. "Nieuwsbrief = breed naar alle subscribers met algemene content. Nurture = gericht per segment met specifieke case-content. Verschil zit in de doelgroep-filter, niet in het kanaal."}

**Exit-criterium:** {Bv. "Lead opt-out → flow stopt / lead converteert naar klant → flow stopt en welkom-flow start / 6 maanden geen interactie → archiveer in CRM en stop flow"}

---

### [4] Klachtafhandeling-bevestiging (24u SLA)

> **Wat gebeurt hier?** Klant die klacht indient krijgt binnen 5 minuten automatische ontvangstbevestiging. Inhoudelijke reactie volgt handmatig binnen 24 uur (B2C) of 4-8 werkuren (B2B).

**Trigger-event:** {Bv. "Formulier-submit op `/klacht` of e-mail naar `klachten@bedrijfsnaam.nl`. Beide triggeren een Zendesk-ticket plus de automatische bevestigingsmail."}

**Eigenaar overall:** Automation voor bevestiging plus support-team voor inhoudelijke reactie

| Tijdstip | Inhoud | Personalisatie | Eigenaar | Tool-actie |
|---|---|---|---|---|
| **Binnen 5 min** | {Bv. "Ontvangst-bevestiging: 'We hebben je bericht ontvangen, je hoort uiterlijk binnen 24 uur'"} | {Voornaam, Ticket-nummer, SLA-tijd, Contactnummer voor noodgevallen} | Automation | {Bv. "Zendesk autoresponder template `klacht-bevestiging`"} |
| **D+3** | {Bv. "Automatische follow-up als klacht nog niet is opgelost: 'We zijn er mee bezig'"} | {Voornaam, Ticket-nummer, Status-update} | Automation | {Idem template `klacht-followup`} |
| **D+7** | {Bv. "Interne escalatie-mail naar eigenaar als er nog geen oplossing is"} | {Klantnaam, Ticket-nummer, Tijd-zonder-oplossing} | Automation | {Idem template `klacht-escalatie`} |

**Exit-criterium:** {Bv. "Klacht opgelost en klant bevestigt tevredenheid / klacht ingetrokken door klant / 14 dagen geen vooruitgang → escaleer naar eigenaar plus juridisch"}

**Bewaartermijn mail-log:** {Bv. "7 jaar — administratieve plicht plus garantie-claims"}

---

### [5] Opzegging plus re-engagement

> **Wat gebeurt hier?** Klant zegt op, krijgt vriendelijke uitleiding plus na 30 dagen en na 6 maanden voorzichtige re-engagement.

**Trigger-event:** {Bv. "Status-overgang naar 'Opgezegd' in CRM, of formulier-submit op `/opzeggen`, of e-mail naar `opzeggen@bedrijfsnaam.nl`"}

**Eigenaar overall:** Automation plus eigenaar voor reply op exit-survey

| Dag | Inhoud | Personalisatie | Eigenaar | Tool-actie |
|---|---|---|---|---|
| **D0** | {Bv. "Bevestiging opzegging + concrete einddatum + wat blijft bewaard + exit-survey met 1 vraag"} | {Voornaam, Einddatum, Restitutie-info, Survey-link} | Automation | {Bv. "ActiveCampaign automation `L3-Opzegging`, mail 1"} |
| **D+30** | {Bv. "Vriendelijke terugmail: hoe gaat het? Geen sales-druk, gewoon contact"} | {Voornaam, Reactie-mogelijkheid} | Automation | {Idem mail 2} |
| **+6 maanden** | {Bv. "Re-engagement: er is veel veranderd, ben je nieuwsgierig?"} | {Voornaam, Wat-is-nieuw-link, Nieuwe-pakketten-link} | Automation | {Idem mail 3} |

**Exit-survey-vraag (D0):** {Bv. "Mogen we vragen wat de doorslag gaf?" met 5 multiple-choice + open veld}

**Verlies-redenen mogelijk:** {Lijst van standaard-redenen — past per bedrijf — zoals "Te duur", "Past niet bij gebruik", "Overgestapt naar andere oplossing", "Stopt met bedrijf", "Anders".}

**Exit-criterium:** {Bv. "Lead reageert positief op +6m → welkom-flow opnieuw / geen reactie op +6m → markeer 'niet meer benaderen' / expliciete opt-out → flow stopt"}

**Bewaartermijn mail-log:** {Bv. "7 jaar boekhoudplicht plus eventuele administratieve claims"}

---

### [6] Facturatie-reminders

> **Wat gebeurt hier?** Vaste cadans rondom betaaldatum plus 2 herinneringen na vervaldatum. Verhoogt tijdige betaal-ratio aantoonbaar.

**Trigger-event:** {Bv. "Webhook van Moneybird `factuur.verzonden` plus factuur-vervaldatum. Cadans is gekoppeld aan vervaldatum."}

**Standaard-cadans (14-daagse betalingstermijn):**

| Dag t.o.v. vervaldatum | Inhoud | Personalisatie | Eigenaar | Tool-actie |
|---|---|---|---|---|
| **D-7** | {Bv. "Pre-reminder: 'Je factuur staat over 7 dagen open'"} | {Voornaam, Factuurnr, Bedrag, Vervaldatum, Betaal-URL} | Automation | {Bv. "n8n workflow `L3-Facturatie-D-min-7`"} |
| **D-2** | {Bv. "Reminder: 'Over 2 dagen vervalt je factuur'"} | {Idem velden} | Automation | {Idem D-min-2} |
| **D+0** | {Bv. "Vervaldag-reminder: 'Je factuur is vandaag vervallen'"} | {Idem velden} | Automation of facturatie-tool | {Bv. "Moneybird standaard-reminder D+0"} |
| **D+7** | {Bv. "1e aanmaning: iets formeler, herinnering aan betalingsvoorwaarden"} | {Idem velden + aanmaningskosten} | Automation | {Idem D-plus-7} |
| **D+14** | {Bv. "2e aanmaning: vóór einde van de week graag, anders volgt incasso"} | {Idem velden + incasso-stappen} | Automation, plus alert naar eigenaar | {Idem D-plus-14} |

**Pas aan op werkelijke betalingstermijn:**
- {Bv. "30-daagse termijn: D-7 → D-10, D-2 → D-3, D+7 → D+10, D+14 → D+21"}
- {Bv. "21-daagse termijn: D-7 → D-7, D-2 → D-2, D+7 → D+7, D+14 → D+14"}

**Exit-criterium:** {Bv. "Factuur betaald (webhook van Moneybird) → cadans stopt / factuur gecrediteerd → cadans stopt / klant heeft betalingsregeling → cadans pauzeert tot afgesproken datum"}

**Bewaartermijn mail-log:** {Bv. "7 jaar boekhoudplicht"}

---

## AVG-check per workflow

| Workflow | Opt-out vereist? | Dubbele-opt-in vereist? | Bewaartermijn mail-log |
|---|---|---|---|
| Welkom | Ja, footer-link | Nee, transactioneel | Zolang klantrelatie + 7 jaar |
| Onboarding | Ja, footer-link | Nee, transactioneel | Zolang klantrelatie + 7 jaar |
| Nurture | Ja, footer-link | {Ja indien B2C, aanbevolen B2B} | Zolang opt-in geldig |
| Klachtafhandeling | Niet vereist (legitimate interest) | Nee | 5-7 jaar administratief |
| Opzegging | Niet vereist (transactioneel) | Nee | 7 jaar |
| Facturatie-reminders | Niet vereist (transactioneel) | Nee | 7 jaar boekhoudplicht |

**Opt-out-mechanisme:** {Bv. "Elke geautomatiseerde mail uit ActiveCampaign bevat automatisch een uitschrijflink. Transactionele mails uit Postmark hebben standaard geen uitschrijf maar wel een link naar de Privacyverklaring."}

**Dubbele-opt-in voor nurture:** {Bv. "Toegepast bij signup-formulier via M4 Nieuwsbrief-Setup — bevestigingsmail met klik-link voordat de subscriber actief wordt in de nurture-flow."}

**Verwijzing in mail-footer:** elke mail bevat een link naar `{scope}/Juridisch/Privacyverklaring.md` of de live-versie op de website. Bedrijfsadres en KvK-nummer staan in elke footer.

---

## Deliverability-check

| Item | Status | Actie als rood |
|---|---|---|
| **SPF** | {groen / rood} | DNS-record aanpassen via registrar / Cloudflare |
| **DKIM** | {groen / rood} | DKIM-key genereren in mail-tool, public-key in DNS plaatsen |
| **DMARC** | {none / quarantine / reject} | Begin op `none`, na 4 weken naar `quarantine`, na 8 weken naar `reject` |
| **Sender-domein eigen domein?** | {ja / nee} | Verplicht eigen domein gebruiken, geen gmail.com |
| **Warm-up status** | {Niet nodig / Actief / Te doen} | Start met 50 mails/dag, bouw op naar gewenste volume over 2-4 weken |
| **Bounce-management actief?** | {ja / nee} | Aanzetten in mail-tool: hard bounces direct uit lijst, soft bounces na 3 keer |
| **Engagement-monitoring** | {Open-rate / klacht-rate} | Open-rate <15% of klacht-rate >0.1% = waarschuwingssignaal, herzie lijst en content |

---

## Cross-links naar andere SCALE-checks

| SCALE-check | Document | Relatie tot deze mailflows |
|---|---|---|
| S2 — Brand Guidelines | `Directie/Playbook/Brand Guidelines.md` | Visuele identiteit voor template-header, kleuren, logo, footer |
| S3 — Tone of Voice | `Directie/Playbook/Tone of Voice.md` | Schrijfregels en stem voor alle templates |
| S4 — ICP | `Directie/Playbook/ICP.md` | ICP-segmenten als personalisatie-as in welkom, onboarding en nurture |
| S8 — Producten en Pricing | `Directie/Playbook/Producten.md` | Productnamen, pakketten en prijzen voor merge-tags |
| S9 — Klantreis | `Directie/Playbook/Klantreis.md` | Klantreis-fases leveren de logische trigger-momenten per workflow |
| S12 — Toolstack | `IT/Toolstack.md` | Mail-tool plus integratie-tools cross-checken op bestaande stack |
| V1 — Salesproces | `Sales/Salesproces.md` | Pipeline-stadia leveren de trigger-events voor welkom-flow |
| V3 — Opvolg-flow | `Sales/Opvolg-flow.md` | Sales-cadences uit V3 worden in mail-templates omgezet door deze L3 |
| C2 — CRM-setup | `Collect/CRM-setup.md` | Pipeline-states zijn de feitelijke triggers; tool-keuze bouwt erop voort |
| M3 — Content Roadmap | `Marketing/Content Roadmap.md` | Content voor nurture-flow komt deels uit M3, voorkom dubbele productie |
| M4 — Nieuwsbrief Setup | `Marketing/Nieuwsbrief-Setup.md` | Provider-keuze hergebruiken, SPF/DKIM/DMARC-config delen |
| J4 — Privacyverklaring | `Juridisch/Privacyverklaring.md` | AVG-grondslag voor opt-out, dubbele-opt-in, bewaartermijnen |

---

## Acties die uit deze mailflow-setup voortvloeien

> Zet hier de top 3-5 verbeter-acties die het meeste opleveren, op basis van de gaten uit het interview.

1. **Workflow [N] — {Gat}** → {Voorgestelde actie, bv. "Bouw welkom-mail 2 t/m 5 in ActiveCampaign-automation `L3-Welkom` in week 22"}
2. **Workflow [N] — {Gat}** → {Voorgestelde actie}
3. **Workflow [N] — {Gat}** → {Voorgestelde actie}

---

## Test-run plan

Vóór go-live: per workflow een testrun met eigen e-mailadres.

| Workflow | Test-account | Check-punten |
|---|---|---|
| Welkom | {test-mail@bedrijfsnaam.nl} | Mails komen in inbox (geen spam), merge-tags correct, opt-out werkt |
| Onboarding | {test-mail@bedrijfsnaam.nl} | Sequentie loopt parallel aan welkom zonder duplicate-trigger |
| Nurture | {test-mail@bedrijfsnaam.nl} | Segmentatie filtert correct, content rendert per segment |
| Klachtafhandeling | {test-mail@bedrijfsnaam.nl} via test-formulier | Bevestiging binnen 5 min, ticket-nummer rendert |
| Opzegging | {test-mail@bedrijfsnaam.nl} via test-formulier | Bevestiging direct, +30d en +6m versneld testen |
| Facturatie | {test-factuur via facturatie-tool} | D-7, D-2, D+0, D+7, D+14 op juiste momenten verzonden |

---

## Bijhouden

Dit is een **levend document**. Update bij:

- Wisseling van mail-tool (alle workflows opnieuw bouwen)
- Wisseling van facturatie-tool (facturatie-flow webhook-instellingen)
- Wisseling van CRM-tool (alle trigger-events herzien)
- Wisseling van betalingstermijn (facturatie-cadans aanpassen)
- Nieuwe ICP-segment (segmentatie in nurture-flow en welkom-flow aanpassen)
- Belangrijke klantfeedback over mails (positief of negatief)
- Wijziging in Privacyverklaring (bewaartermijnen of opt-out-mechanisme)
- Wijziging in klachtafhandeling-SLA (klachtafhandeling-flow aanpassen)

**Versiebump-triggers:**
- Patch (1.0.0 → 1.0.1): kleine tekstuele aanpassingen, één template-mail bijgesteld
- Minor (1.0.x → 1.1.0): nieuwe template, nieuwe trigger-bron, één workflow substantieel herschreven
- Major (1.x.y → 2.0.0): wisseling van mail-tool, fundamentele wijziging van workflow-set (van 6 naar 8), complete herziening na rebrand
