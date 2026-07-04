---
type: automation-blueprint
bedrijf: "{Bedrijfsnaam}"
onderwerp: Finance Automatisering
versie: 1.0
status: blauwdruk
laatst-bijgewerkt: YYYY-MM-DD
scale-check: L4
boekhoudpakket: "{Moneybird | e-Boekhouden | Exact | Snelstart | Twinfield | anders}"
betalingsplatform: "{Stripe | Mollie | iDEAL via bank | PayPal | handmatig | anders}"
btw-regime: "{21% standaard | 9% verlaagd | vrijgesteld | KOR | OSS | onbekend}"
orkestratie-tool: "{Make | n8n | Zapier | custom | geen}"
risico-niveau: "{conservatief | standaard | aggressief}"
geautomatiseerde-workflows: [facturatie, boekingen, debiteuren, btw-voorbereiding, cashflow-forecast, boekhouder-handoff]
---

# Finance Automatisering, {Bedrijfsnaam}

> Sjabloon-instructie: dit document is de output van de skill `finance-automatisering` (SCALE-stap L4 Leverage). Vervang elke `{placeholder}` met de waarde uit het interview, vault-scan of externe input. Velden zonder bron krijgen de markering `[VERIFICEREN]` zodat de gebruiker later kan aanvullen. Geen API-keys, tokens, klantnamen-met-bedragen of bankrekeningnummers in dit bestand. Verwijs daarvoor naar een credentials-manager.

## Doel en scope

Deze blauwdruk legt vast hoe zes finance-werkstromen binnen {Bedrijfsnaam} worden geautomatiseerd: facturatie, boekingen, debiteurenbeheer, BTW-aangifte-voorbereiding, cashflow-forecast en boekhouder-handoff. Het document is een implementatie-spec, geen fiscaal advies. De boekhouder of het administratiekantoor (in dit geval: {boekhouder-naam}) blijft eindverantwoordelijk voor de fiscale juistheid.

| Aspect | Inhoud |
|---|---|
| **Bedrijf** | {Bedrijfsnaam} |
| **Output-pad** | `{scope}/Leverage/Finance-Automatisering.md` of `{scope}/Financiën/Automatisering.md` |
| **Risico-niveau** | {conservatief / standaard / aggressief} |
| **Aantal workflows in scope** | 6 (alle) of {Aantal in deze iteratie} |
| **Eerstvolgende workflow live** | Workflow {nr}: {naam} |
| **Verwachte tijdwinst** | {Aantal uur per maand} |
| **Eerste actie deze week** | {Eén regel — bv. "Make-scenario Stripe-deal-won → Moneybird-factuur opzetten"} |
| **Laatst bijgewerkt** | YYYY-MM-DD |

## Bronnen en cross-checks

De blauwdruk leunt op deze documenten. Wijziging in een bron raakt dit document direct.

| SCALE-stap | Bron-document | Wat eruit overgenomen |
|---|---|---|
| C3 Financiele Data Setup | `Collect/Financiele-Data.md` of `Financiën/Data-Setup.md` | Boekhoudpakket, betalingsplatform, bank, kerncijfers, frequenties |
| V1 Salesproces | `Sales/Salesproces.md` | Pipeline-fases, deal-won-trigger |
| C2 CRM Setup | `Sales/CRM-Setup.md` | CRM-tool en webhook-mogelijkheden |
| J2 BTW-administratie | `Juridisch/BTW-administratie.md` | BTW-regime, aangifte-frequentie, deadlines |
| J3 Algemene Voorwaarden | `Juridisch/Algemene-Voorwaarden.md` | Wanbetalingsclausule (voorwaarde voor auto-incasso) |
| S12 Toolstack | `IT/Toolstack.md` | Orkestratie-tool, API-status per pakket |
| S11 Team en Rollen | `HR/Team.md` | Eigenaren per workflow |
| A1 Rapportage Builder | `Analyze/Rapportage-Templates.md` | Welke KPI's deze blauwdruk voedt |

**Mismatch-check.** {Beschrijf hier of er strijdige info tussen bronnen zat. Bv: "C3 noemt Stripe, S12 noemt Mollie, in werkelijkheid loopt het via Mollie sinds YYYY-MM-DD. Toolstack moet bijgewerkt."}

## Huidige staat (vóór automatisering)

| Workflow | Huidige flow | Tijd per maand | Knelpunt |
|---|---|---|---|
| 1. Facturatie | {bv. "handmatig in Moneybird, 15 facturen per maand"} | {x uur} | {bv. "factuur gaat 2-3 dagen na deal-won"} |
| 2. Boekingen | {bv. "PSD2 actief, 30% nog handmatig categoriseren"} | {x uur} | {bv. "edge-cases blijven liggen"} |
| 3. Debiteurenbeheer | {bv. "ad hoc, alleen als iemand eraan denkt"} | {x uur} | {bv. "DSO 38 dagen"} |
| 4. BTW-voorbereiding | {bv. "Fit In Finance trekt het kwartaalrapport uit Moneybird"} | {x uur} | {bv. "altijd in laatste week voor deadline"} |
| 5. Cashflow-forecast | {bv. "spreadsheet, maandelijks"} | {x uur} | {bv. "geen rolling-zicht, geen pipeline-weging"} |
| 6. Boekhouder-handoff | {bv. "per kwartaal, samenvallend met BTW"} | {x uur} | {bv. "afwijkingen pas zichtbaar bij Q-afsluiting"} |
| **Totaal** | | **{x uur per maand}** | |

## Toolstack (overzicht)

| Tool | Rol | Status |
|---|---|---|
| {Boekhoudpakket — bv. Moneybird} | Facturen, boekingen, grootboek, BTW-rapport | {API beschikbaar / geactiveerd / nog niet} |
| {Betalingsplatform — bv. Stripe} | Recurring en eenmalige betalingen | {API beschikbaar / geactiveerd / nog niet} |
| {Bank — bv. Rabobank} | PSD2-bron voor bankafschriften | {PSD2-koppeling actief / niet} |
| {CRM — bv. HubSpot} | Pipeline-fases, deal-won-trigger | {Webhook ondersteund / alleen polling} |
| {Orkestratie — bv. Make of n8n} | Workflow-engine | {Account actief / nog op te zetten} |
| {Mail-template-bron — bv. Moneybird-mailer of Resend} | Verzending van factuur-mail en herinneringen | {Werkt / nog te configureren} |
| {Credentials-manager — bv. 1Password} | Tokens en API-keys | {In gebruik / nog op te zetten} |

Credentials worden niet in dit document opgeslagen. Verwijzing per tool: `{TOKEN_NAAM}` in {1Password / Bitwarden}.

---

## Workflow 1: Facturatie-automatisering

| Veld | Inhoud |
|---|---|
| **Trigger** | Deal-status wordt "Won" in {CRM-naam}, fase `{Won-fase-naam}` (uit V1) |
| **Triggerwijze** | {Webhook / polling elke 5 minuten} |
| **Eind-resultaat** | Factuur staat in {boekhoudpakket}, mail is verzonden naar klant binnen 1 uur na deal-won |
| **Eigenaar inhoud** | {Rol uit S11 of "ondernemer"} |
| **Eigenaar pipeline** | {Rol uit S11 of "ondernemer"} |
| **KPI** | Tijd tussen deal-won en factuur verstuurd. Doel: minder dan 1 uur |
| **Status** | {blauwdruk / in implementatie / live} |

### Stappen

```
Stap 1: {CRM} webhook of poll → event "deal.won"
        Payload: { deal_id, klant_id, bedrag, regelitems, fase, gewonnen_op }
        Auth: webhook-secret in {CREDS_CRM_WEBHOOK}

Stap 2: Mapping klant en BTW
        - Bestaat klant in {boekhoudpakket}? Zo nee, contact aanmaken via API
        - BTW-regel kiezen op basis van J2: {21% / 9% / 0% verlegd / OSS}
        - Betaalvoorwaarden: {14 dagen / 30 dagen}

Stap 3: {Boekhoudpakket} API POST /sales_invoices
        Auth: scoped token in {CREDS_BOEKHOUDPAKKET}
        Payload: klant_id, regels, btw, betaaltermijn, factuurnummer (auto)

Stap 4: Verzending
        - Optie A: directe verzending vanuit {boekhoudpakket}-mailer (standaard-pakket)
        - Optie B: handmatige laatste check (maatwerk-projecten) — concept klaarzetten
        Mail-template: zie sectie "Templates" onderaan
```

### Fallback

- Retry-policy: 3 retries met 5 minuten interval bij 5xx of rate-limit
- Niet retry bij 4xx (klant niet gevonden, BTW-regel onbekend) — direct alert
- Bij dubbele faal: mail naar {pipeline-eigenaar-mail} met fout-details
- Bij API-down langer dan 1 uur: SMS-alert naar {nummer in credentials-manager}
- Handmatige fallback: open {boekhoudpakket}, maak factuur op basis van CRM-deal-detail-pagina (5 min werk)

### Dry-run

Eerste {1 of 2} weken: flow draait, maakt **concept-factuur** aan in {boekhoudpakket} maar verstuurt nog niet. Ondernemer controleert dagelijks de concepten. Pas live na {x} cycli zonder afwijking.

---

## Workflow 2: Boekingen-automatisering

| Veld | Inhoud |
|---|---|
| **Trigger** | PSD2-import van {bank} naar {boekhoudpakket}, dagelijks om {07:00} |
| **Triggerwijze** | Cron of native PSD2-koppeling in boekhoudpakket |
| **Eind-resultaat** | 70% of meer van transacties auto-gecategoriseerd, edge-cases hebben AI-suggestie klaar |
| **Eigenaar inhoud** | {Rol of "ondernemer"} |
| **Eigenaar pipeline** | {Rol of "ondernemer"} |
| **KPI** | Percentage transacties auto-gecategoriseerd zonder review. Doel: 70% of hoger. Tijd tussen banktransactie en geboekt: minder dan 24 uur |
| **Status** | {blauwdruk / in implementatie / live} |

### Stappen

```
Stap 1: PSD2-pull van {bank}
        Frequentie: dagelijks 07:00 Europe/Amsterdam
        Bron: {boekhoudpakket} native PSD2 of Cohunt of Tink

Stap 2: Regel-engine (deterministisch)
        Categorie-regels op basis van counterparty en bedrag-range:
        - Vaste lasten: huur, verzekeringen, abonnementen → bekende tegenrekening
        - Software: Adobe, Google Workspace, etc. → IBAN-match
        - Salarissen: loonadministratie-counterparty
        - Klant-betalingen: match op factuurnummer in omschrijving

Stap 3: AI-fallback voor edge-cases
        Voor transacties zonder regel-match:
        - Prompt: "Voorstel een categorie op basis van counterparty, bedrag, omschrijving.
                   Geef confidence-score 0-100. Geen aanname doen waar er twijfel is."
        - Output: { categorie, confidence, motivering }
        - AI doet voorstel, mens beslist. Geen direct boeken.

Stap 4: Batch-review (wekelijks)
        Elke {vrijdag 16:00}: ondernemer keurt alle AI-suggesties van die week
        goed of corrigeert. Corrigerende keuze wordt in regel-engine opgenomen.
```

### Fallback

- PSD2-fail: alert naar ondernemer, handmatige CSV-import als noodgreep
- AI-fail: transacties blijven in "wacht op review", geen blokkering
- Audit-trail: AI-suggestie en menselijke beslissing beide gelogd

### Dry-run

Eerste 2 weken: AI doet alleen voorstellen, ondernemer kiest. Patroon-data wordt gebruikt om regel-engine uit te breiden. Live als regel-engine 50% of meer dekt.

---

## Workflow 3: Debiteurenbeheer

| Veld | Inhoud |
|---|---|
| **Trigger** | Dagelijkse pull van openstaande facturen om {09:00} |
| **Triggerwijze** | Cron in orkestratie-tool, query naar {boekhoudpakket} |
| **Eind-resultaat** | Herinneringen volgens schema D+7, D+14, D+30. Incasso-escalatie op D+{45/60}. DSO daalt naar 30 dagen of lager. |
| **Eigenaar inhoud** | {Rol of "ondernemer"} |
| **Eigenaar pipeline** | {Rol of "ondernemer"} |
| **KPI** | DSO. Doel: 30 dagen of lager. Percentage facturen betaald binnen termijn: 85% of hoger |
| **Status** | {blauwdruk / in implementatie / live} |

### Stappen

```
Stap 1: Query openstaande facturen
        Bron: {boekhoudpakket} API GET /sales_invoices?state=open
        Filter: vervaldatum < vandaag, geen stop-flag

Stap 2: Bepaal escalatie-niveau per factuur
        - D+7  → vriendelijke herinnering (template 1)
        - D+14 → directere herinnering (template 2)
        - D+30 → laatste sommatie met incasso-aankondiging (template 3)
        - D+{45/60} → overdracht naar {incassobureau}

Stap 3: Verstuur
        Kanaal: mail vanuit {boekhoudpakket}-mailer of {Resend}
        Met factuurnummer, bedrag, vervaldatum, iDEAL- of overboeking-link

Stap 4: Stop-flag-check
        Klanten met handmatige flag (relatie-gevoelig, bekende grote klant):
        skip auto-flow, alleen rapport naar ondernemer
```

### Templates herinneringen

Drie templates worden los bewaard in `references/herinnering-{niveau}.md` of in `{boekhoudpakket}`-template-bibliotheek:

- **Vriendelijk (D+7):** ondertoon klant verdient tweede kans, "wellicht over het hoofd gezien"
- **Direct (D+14):** zakelijk, concrete actie gevraagd, betaaltermijn opnieuw
- **Sommatie (D+30):** duidelijk over consequenties, aankondiging incasso met naam {incassobureau}

Inhoud overgenomen uit {bestaande herinneringsteksten van ondernemer / opgesteld in tone-of-voice S3}.

### Fallback

- Verzendfout: retry 3x, dan alert
- Klant reageert met betaalafspraak: handmatige stop-flag plaatsen via {boekhoudpakket}-tag of CRM-veld
- Geschil: factuur uit auto-flow, terug naar ondernemer

### Voorwaarden voor incasso-overdracht

- Algemene voorwaarden (J3) bevatten wanbetalings- en incassoclausule
- Klant heeft die voorwaarden geaccepteerd bij contract-aangaan
- Voordat overdracht plaatsvindt: laatste handmatige check door ondernemer (geen volledige auto-overdracht in startfase)

---

## Workflow 4: BTW-aangifte-voorbereiding

| Veld | Inhoud |
|---|---|
| **Trigger** | Cron op de 1e van het nieuwe kwartaal om 06:00 |
| **Triggerwijze** | Cron in orkestratie-tool of {boekhoudpakket}-scheduler |
| **Eind-resultaat** | BTW-pakket staat op de 1e van het kwartaal klaar bij {boekhouder-naam}, ruim voor deadline |
| **Eigenaar inhoud** | Ondernemer (bron-eigenaar) |
| **Eigenaar pipeline** | {Rol of "ondernemer"} |
| **Consument** | {Boekhouder-naam, indien Fit In Finance vermelden} |
| **KPI** | Tijd tussen kwartaal-einde en accountant-pakket verstuurd. Doel: 1 dag of minder |
| **Status** | {blauwdruk / in implementatie / live} |

### Stappen

```
Stap 1: Genereer BTW-rapport uit {boekhoudpakket}
        Periode: vorige kwartaal
        Format: PDF + CSV met regels per BTW-categorie

Stap 2: Grootboek-export
        Periode: vorige kwartaal
        Format: CSV met grootboekrekeningen, mutaties, saldi

Stap 3: Anomalie-checks
        - BTW-percentage afwijkend (9%-regel tussen 21%-stroom?)
        - Verlegde BTW zonder EU-klant?
        - Omzet-delta versus vorig kwartaal > 30%?
        - OSS-omzet zonder J2-OSS-registratie?
        - Output: korte mail "Afwijkingen deze maand: X, Y, Z"

Stap 4: Verzending naar {boekhouder}
        Kanaal: mail of gedeelde Drive-map
        Onderwerp: "BTW-pakket Q{N} {YYYY} — {Bedrijfsnaam}"
        Bijlagen: BTW-rapport, grootboek-export, anomalie-overzicht
```

### Fallback

- Generatie-fail: alert naar ondernemer, handmatige export uit {boekhoudpakket} (10 min werk)
- Anomalie zonder verklaring: pakket gaat niet automatisch, eerst review door ondernemer

### BTW-deadlines uit J2

| Kwartaal | Periode | Deadline aangifte | Auto-pakket klaar |
|---|---|---|---|
| Q1 | jan-mrt | 30 april | 1 april 06:00 |
| Q2 | apr-jun | 31 juli | 1 juli 06:00 |
| Q3 | jul-sep | 31 oktober | 1 oktober 06:00 |
| Q4 | okt-dec | 31 januari | 1 januari 06:00 |

Aangifte gebeurt door {boekhouder} in het {boekhoudpakket} of bij de Belastingdienst. Deze flow bereidt voor, dient niet in.

---

## Workflow 5: Cashflow-forecast (rolling)

| Veld | Inhoud |
|---|---|
| **Trigger** | Wekelijks op maandag 07:00 plus drempel-alert bij liquide-middelen onder {bedrag} |
| **Triggerwijze** | Cron in orkestratie-tool |
| **Eind-resultaat** | HTML-rapport per mail, rolling {13} weken vooruit, alert bij kritieke drempel |
| **Eigenaar inhoud** | Ondernemer |
| **Eigenaar pipeline** | {Rol of "ondernemer"} |
| **KPI** | Forecast-accuratesse. Doel: afwijking 10% of minder over 4-weken-horizon. Aantal kritieke alerts per maand: monitor-only |
| **Status** | {blauwdruk / in implementatie / live} |

### Stappen

```
Stap 1: Pipeline-inputs uit V1 (CRM)
        Query: deals in fase Voorstel of hoger, niet won, niet lost
        Weging: bedrag × fase-kans-% (uit V1 deal-fase-tabel)
        Output: gewogen pipeline-waarde per week op verwachte close-datum

Stap 2: Recurring-omzet
        Bron: {Stripe / Mollie} actieve abonnementen
        Aanname: {95}% maandelijkse retentie (historisch of standaard)
        Output: deterministische MRR-stroom

Stap 3: Vaste lasten
        Bron: regel-engine uit workflow 2 (vaste counterparties)
        Plus: bekende toekomstige uitgaven (BTW-betaling, investering)

Stap 4: Aggregeer + render
        Combineer alle stromen per week
        Eindsaldo per week = startsaldo + in - uit
        Render HTML-rapport met week-tabel + grafiek
        Mail naar {ondernemer}
```

### Alert-trigger

```
Conditie: liquide_middelen_eind_week < {bedrag, bv. 10.000} binnen 4 weken
Actie: direct mail + SMS-alert (niet wachten op maandag-rapport)
```

### Fallback

- Query-fail: vorige week-versie blijft beschikbaar in archief
- Render-fail: ruwe CSV als bijlage in plaats van HTML

---

## Workflow 6: Boekhouder-handoff (maandpakket)

| Veld | Inhoud |
|---|---|
| **Trigger** | Cron op de 5e van de volgende maand om 06:00 |
| **Triggerwijze** | Cron in orkestratie-tool |
| **Eind-resultaat** | Maandpakket bij {boekhouder} binnen 5 dagen na maand-einde |
| **Eigenaar inhoud** | Ondernemer (bron) |
| **Eigenaar pipeline** | {Rol of "ondernemer"} |
| **Consument** | {Boekhouder-naam} |
| **KPI** | Tijd tussen maand-einde en pakket verstuurd. Doel: 5 dagen of minder. Aantal terugkomende vragen van boekhouder: dalend |
| **Status** | {blauwdruk / in implementatie / live} |

### Inhoud van het maandpakket

```
1. Grootboek-export
   - Bron: {boekhoudpakket}
   - Format: CSV en PDF
   - Periode: vorige maand

2. Vragen-overzicht
   - Bron: workflow 2 — transacties die ondernemer doorgeschoven heeft
   - Format: kleine tabel met datum, bedrag, counterparty, vraag

3. Anomalie-lijst
   - Bron: workflow 4 anomalie-checks plus afwijkingen vs vorige maand
   - Format: bullet-lijst

4. Cashflow-snapshot
   - Bron: workflow 5
   - Format: PDF-export van rolling-forecast-rapport
```

### Stappen

```
Stap 1: Verzamel alle onderdelen (zie boven)
Stap 2: Pak in als zip of als bijlage-set
Stap 3: Verstuur naar {boekhouder-mail of Drive-map}
        Onderwerp: "Maandpakket {YYYY-MM} — {Bedrijfsnaam}"
```

### Fallback

- Bron-fail: handmatige export uit {boekhoudpakket} (15 min)
- Mailbox-fail: upload in gedeelde Drive-map als alternatief kanaal

---

## Overzicht KPI's

| Workflow | KPI | Doel | Huidige meting | Bron |
|---|---|---|---|---|
| 1. Facturatie | Tijd tussen deal-won en factuur verstuurd | < 1 uur | {x uur of dagen} | {Boekhoudpakket} + CRM |
| 2. Boekingen | % transacties auto-gecategoriseerd | 70% of hoger | {x%} | {Boekhoudpakket} |
| 2. Boekingen | Tijd transactie tot geboekt | < 24 uur | {x dagen} | {Boekhoudpakket} |
| 3. Debiteuren | DSO | 30 dagen of lager | {x dagen, uit C3} | {Boekhoudpakket} |
| 3. Debiteuren | % betaald binnen termijn | 85% of hoger | {x%} | {Boekhoudpakket} |
| 4. BTW | Tijd kwartaal-einde tot pakket | 1 dag of minder | {nu x dagen} | Logging orkestratie |
| 5. Forecast | Afwijking 4-weken-horizon | 10% of minder | {nog te meten} | Forecast vs realisatie |
| 6. Handoff | Tijd maand-einde tot pakket | 5 dagen of minder | {nu x dagen} | Logging orkestratie |

Deze KPI's voeden A1 (Rapportage) en A2 (Mission Control). Zie cross-links onderaan.

---

## Implementatie-volgorde

Niet alles tegelijk. Aanbevolen volgorde bij standaard-MKB-dienstverlener:

| Wave | Workflow | Reden | Verwachte start | Status |
|---|---|---|---|---|
| 1 | Facturatie (W1) | Directe DSO-winst, snel resultaat | YYYY-MM-DD | {blauwdruk} |
| 2 | Debiteurenbeheer (W3) | Cashflow direct beter, leunt op W1 | YYYY-MM-DD | {blauwdruk} |
| 3 | Boekhouder-handoff (W6) | Boekhouder-uren omlaag | YYYY-MM-DD | {blauwdruk} |
| 4 | BTW-voorbereiding (W4) | Eind-kwartaal-stress weg | YYYY-MM-DD | {blauwdruk} |
| 5 | Boekingen (W2) | Hoog-volume, vereist regel-engine | YYYY-MM-DD | {blauwdruk} |
| 6 | Cashflow-forecast (W5) | Leunt op W2 en V1-data | YYYY-MM-DD | {blauwdruk} |

**Regel:** elke workflow draait 2 weken in dry-run voordat hij live gaat. Pas volgende wave starten als de vorige stabiel is.

## Risico's en aandachtspunten

| Risico | Workflow | Mitigatie |
|---|---|---|
| Dubbele factuur door race-condition tussen webhook en handmatige actie | W1 | Idempotency-key op deal_id, retry-veilig |
| AI-categorisatie boekt verkeerd zonder review | W2 | AI doet alleen voorstel, mens beslist. Audit-trail volledig. |
| Incasso-overdracht zonder klant-akkoord in J3 | W3 | Voorwaarden-check vóór auto-flow live gaat |
| BTW-anomalie blijft onopgemerkt | W4 | Anomalie-checks in workflow 4, mail naar ondernemer voor verzending |
| Forecast-aanname klopt niet (retentie te hoog ingeschat) | W5 | Kwartaal-evaluatie van forecast-accuratesse versus realisatie |
| Boekhouder krijgt info dubbel of in andere vorm | W6 | Vooraf afstemmen met {boekhouder} welke inhoud en format gewenst is |
| API-token verloopt zonder alert | Alle | Credentials-manager + halfjaarlijkse rotatie-check |
| Tool-migratie (bv. Moneybird → Exact) | Alle | Bij wisseling boekhoudpakket: volledige herziening van deze blauwdruk |

## Privacy en credentials

- API-keys, tokens, OAuth-credentials staan **niet** in dit document. Verwijzing per workflow: `{TOKEN_NAAM}` in {1Password / Bitwarden}.
- Read-only scope waar het pakket dat ondersteunt (Stripe restricted keys, Moneybird scoped tokens).
- Klantnamen-met-bedragen, BSN, bankrekeningnummers: niet in dit document. Alleen in {boekhoudpakket} zelf.
- AVG-grondslag: facturatie en debiteurenbeheer onder contractueel + gerechtvaardigd belang. Zie J4 Privacyverklaring.

## Cross-links

- **Upstream:** [[Collect/Financiele-Data]] (C3) · [[Sales/Salesproces]] (V1) · [[Juridisch/BTW-administratie]] (J2) · [[Juridisch/Algemene-Voorwaarden]] (J3)
- **Tooling:** [[IT/Toolstack]] (S12)
- **Eigenaren:** [[HR/Team]] (S11)
- **AVG-context:** [[Juridisch/Privacyverklaring]] (J4)
- **Naaste Leverage-skills:** [[Leverage/SOP-Automatisering]] (L1) · [[Leverage/Auto-Rapportage]] (L2) · [[Leverage/Mailflow]] (L3)
- **Downstream-rapportage:** [[Analyze/Rapportage-Templates]] (A1) · [[Analyze/Mission-Control]] (A2)
- **Verdere doorgroei:** [[Engineer/Dashboard]] (E1) · [[Engineer/Workflow-Pipeline]] (E3)
- **Automations-register:** [[Operations/Automations]]

## Review-ritme

| Wat | Wanneer | Door wie | Output |
|---|---|---|---|
| Dry-run-controle per workflow | Wekelijks tijdens dry-run-fase | Ondernemer | Logs gecontroleerd, beslissing live-zetten |
| Run-status per workflow | Wekelijks na live (vrijdag 16:00) | {Pipeline-eigenaar} | Fail-aantal, retry-aantal, gemiddelde tijd |
| KPI-review | Maandelijks (1e maandag) | Ondernemer | Voortgang doelen, eventuele bijstelling |
| Volledige L4-audit | Per kwartaal | Ondernemer | Tool-stack actueel? Risico-niveau passend? Volume-aannames kloppen? |
| Bij grote tool-wissel | Onmiddellijk | Ondernemer + {boekhouder} | Volledige herziening blauwdruk |

## Brondocumenten en bron-citaten

Letterlijke citaten uit interview of externe bronnen die belangrijk waren voor deze blauwdruk:

- {bv. "Bestaande herinneringstekst D+7 van ondernemer: ..."}
- {bv. "Make-account loopt sinds YYYY-MM-DD met X scenarios, kosten EUR Y per maand"}
- {bv. "Boekhouder-mail van YYYY-MM-DD: 'vraag of cashflow-snapshot maandelijks meekan'"}

## Versie-historie

| Versie | Datum | Wijziging | Door |
|---|---|---|---|
| 1.0 | YYYY-MM-DD | Eerste versie via `finance-automatisering` (SCALE L4), 6 workflows opgesteld op basis van C3, V1, J2, S12 | {Naam} |
| {volgend} | {datum} | {wat veranderde} | {wie} |

---

> **Disclaimer.** Dit document is een blauwdruk en operationele documentatie van finance-automatisering, geen fiscaal of boekhoudkundig advies. De fiscale eindverantwoordelijkheid blijft bij de ondernemer en de boekhouder of administratiekantoor (bijvoorbeeld Fit In Finance). Automation versnelt, vervangt niet de controle.
