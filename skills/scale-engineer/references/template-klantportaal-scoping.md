---
type: scoping-blueprint
bedrijf: "{Bedrijfsnaam}"
onderwerp: Klantportaal Scoping
versie: 1.0
status: "{scope | in implementatie | live}"
laatst-bijgewerkt: YYYY-MM-DD
scale-check: E4
branche-type: "{dienstverlening | e-commerce | b2b-saas | training-coaching | hybride}"
b2b-of-b2c: "{B2B | B2C | hybride}"
auth-methode: "{magic-link | email-wachtwoord | sso | combinatie}"
twee-factor: "{verplicht | optioneel | niet-beschikbaar}"
account-structuur: "{single-user | multi-user}"
white-label: "{geen | licht | volledig}"
bouw-vorm: "{no-code | low-code | custom}"
stack: "{Softr | Bubble | Retool | Next.js+Supabase | anders}"
mvp-schermen: ["{Overzicht}", "{Project}", "{Facturen}"]
release-1-datum: YYYY-MM-DD
budget-orde-grootte: "{0-5k | 5k-15k | 15k-50k | 50k+}"
avg-categorieen: ["{NAW}", "{contact}", "{financieel}"]
dpia-nodig: "{ja | nee}"
---

# Klantportaal Scoping, {Bedrijfsnaam}

> **Wat is dit document?** De canonieke scoping- en architectuur-blauwdruk van het klantportaal van {Bedrijfsnaam}: welke functies, welke klant-auth, welke rollen, welke AVG-impact, welke branding, welke tech-stack en welke release-fasering. Dit document is de brug tussen S4 (ICP, wie de klant is), S9 (Klantreis, wanneer een portaal helpt), J4 (Privacyverklaring, wat AVG vraagt) en C2 (CRM, waar de data zit). Directe input voor een ontwikkelaar of no-code-bouwer die het portaal feitelijk bouwt.

---

## Status: 🟠 Scope

| Veld | Waarde |
|---|---|
| Bedrijf | {Bedrijfsnaam} |
| Branche-type | {dienstverlening / e-commerce / B2B-SaaS / training en coaching / hybride} |
| B2B of B2C | {B2B / B2C / hybride} |
| Doelgroep | {Hoofd-ICP uit S4, bv. "MKB-ondernemers 5-50 FTE in zakelijke dienstverlening"} |
| Aantal verwachte gebruikers | {orde-grootte, bv. "50 klant-accounts, 80-120 individuele users"} |
| Prioriteit | {Hoog / Middel / Laag} |
| MVP-deadline | {datum, bv. "2026-08-01"} |

---

## 1. Doelgroep en use-cases

### Wie is de portaal-gebruiker

> {Persona-omschrijving op basis van S4. Wie logt feitelijk in. Bv: "De operationele contactpersoon bij de klant: vaak de office-manager of de boekhouder, niet de directeur die de deal getekend heeft. Leeftijd 30-55, comfortabel met basis-online-tools maar geen tech-affiniteit."}

### Top klant-vragen die het portaal beantwoordt

1. {Vraag 1, bv. "Wat is de status van mijn project"}
2. {Vraag 2, bv. "Waar zijn de documenten ook alweer"}
3. {Vraag 3, bv. "Kan ik die factuur opnieuw krijgen"}
4. {Vraag 4, bv. "Wanneer is ons volgende gesprek"}
5. {Vraag 5, bv. "Ik heb een vraag, wat is de status van mijn ticket"}

### Gedragsdoelen (6 maanden na live)

| Metric | Doel | Hoe meten |
|---|---|---|
| % klanten actief per maand | {bv. 80%+} | Login-events / aantal accounts |
| Reductie mail-vragen | {bv. 50-70%} | Vergelijking inbox-volume voor en na |
| Klantbeleving | {bv. NPS +20 stijgen} | NPS-meting uit C4 |
| Tijdsbesparing ondernemer | {bv. 4 uur per week} | Eigen log |

### Out-of-scope (bewust niet in portaal)

- {bv. interne kostprijs en marge}
- {bv. ruwe boekhoud-mutaties, alleen factuur-PDF}
- {bv. live-chat, gebruik aparte tool}
- {bv. klant-onderlinge community}

---

## 2. Functie-set

### Schermen-lijst

| # | Scherm | Status | Release | Toelichting |
|---|---|---|---|---|
| 1 | Overzicht (dashboard) | Must | MVP | Laatste activiteit, openstaande actie, snelle nav |
| 2 | {Project / Order / Cursus} | Must | MVP | {Status, fase, voortgang} |
| 3 | Facturen | Must | MVP | Overzicht + PDF-download |
| 4 | Documenten | Nice | R2 | Archief, upload-mogelijkheid |
| 5 | Planning | Nice | R2 | Volgende afspraak, gedeelde agenda |
| 6 | Support | Nice | R2 | Ticket aanmaken + status |
| 7 | Profiel | Must | MVP | Contactgegevens beheren |

### Functie-specificatie per scherm

#### Scherm 1: Overzicht (dashboard)

| Dimensie | Inhoud |
|---|---|
| **Doel** | Eén-blik samenvatting van wat de klant moet weten |
| **Gebruikers-flow** | Klant logt in, landt direct hier. Ziet 4 widgets: laatste project-update, openstaande factuur, eerstvolgende afspraak, ongelezen support-bericht. Klik op een widget gaat naar het bijbehorende scherm. |
| **Data-bron** | CRM (uit C2) voor project-status, boekhoudpakket (uit S12) voor facturen, agenda-integratie (Calendly / Google Cal) voor afspraken, support-tabel voor tickets |
| **Acties** | Alleen-lezen. Klik door naar onderliggende schermen. |
| **Fallback** | Bij ontbrekende data: widget toont "Geen actieve {item}" in plaats van error |
| **Security-impact** | Server-side filtering: `klant_id = current_user.klant_id`. Geen client-side data van andere klanten. |
| **KPI** | Dagelijkse logins, dwell-time per sessie |

#### Scherm 2: {Project / Order / Cursus}

| Dimensie | Inhoud |
|---|---|
| **Doel** | Klant ziet status en voortgang van zijn lopende project (of order, of cursus) |
| **Gebruikers-flow** | Vanaf Overzicht of nav-link. Toont fase-balk (bv. 5 fases met huidige fase gemarkeerd), deliverable-checklist, eventueel comment-thread per fase. |
| **Data-bron** | {project-management-tool, bv. Asana / Notion / eigen DB} |
| **Acties** | {Alleen-lezen / reageren in comment-thread / status-update bevestigen} |
| **Fallback** | Bij geen actief project: scherm toont "Geen actieve {item} op dit moment" + contact-CTA |
| **Security-impact** | Row-level-security op project-tabel. Klant ziet uitsluitend projecten waar zijn `klant_id` op staat. |
| **KPI** | Aantal status-checks per klant per week |

#### Scherm 3: Facturen

| Dimensie | Inhoud |
|---|---|
| **Doel** | Klant kan zijn eigen facturen zien en downloaden |
| **Gebruikers-flow** | Lijst van alle facturen (datum, nummer, bedrag, status: open/betaald/vervallen). Klik op factuur opent PDF-download. |
| **Data-bron** | Boekhoudpakket (uit S12, bv. Moneybird-API of e-Boekhouden-API) |
| **Acties** | Download PDF, eventueel kopie via mail laten sturen |
| **Fallback** | Bij API-fout boekhoudpakket: laatst-geslaagde versie tonen met "Laatst bijgewerkt: {timestamp}" + retry-knop |
| **Security-impact** | Filtering op klant-relatie-ID in boekhoudpakket. Audit-log voor elke download. |
| **AVG-impact** | Financiële persoonsgegevens. Rechtsgrond: overeenkomst-uitvoering + wettelijke bewaarplicht 7 jaar. |
| **KPI** | Aantal downloads per maand, vergelijken met aantal mail-aanvragen voor factuur-kopieën |

#### Scherm 4: Documenten

| Dimensie | Inhoud |
|---|---|
| **Doel** | Archief van uitgewisselde bestanden tussen klant en {Bedrijfsnaam} |
| **Gebruikers-flow** | Lijst van bestanden gegroepeerd per project of categorie. Klant kan downloaden, optioneel uploaden. |
| **Data-bron** | Supabase Storage of vergelijkbare object-store met bucket per klant |
| **Acties** | Download, upload (drag-and-drop), eventueel verwijderen (alleen eigen uploads) |
| **Fallback** | Bij storage-fout: error-melding met "Probeer opnieuw" + alternatief mail-adres |
| **Security-impact** | Bucket-naam = `klant-{id}`, met IAM-policy op klant_id. Geen toegang tot andere buckets. Virus-scan op uploads. |
| **AVG-impact** | Inhoudelijke documenten kunnen persoonsgegevens bevatten. Retentie volgt project-retentie (7 jaar voor administratie). |
| **KPI** | Aantal uploads en downloads per klant per maand |

#### Scherm 5: Planning

| Dimensie | Inhoud |
|---|---|
| **Doel** | Klant ziet volgende afspraak en kan zelf een vervolg inplannen |
| **Gebruikers-flow** | Embedded Calendly of vergelijkbare scheduling-tool, gefilterd op de adviseur van deze klant |
| **Data-bron** | Calendly-link of Cal.com per adviseur |
| **Acties** | Afspraak boeken, herplannen, annuleren |
| **Fallback** | Bij Calendly-down: fallback naar mailto-link |
| **Security-impact** | Geen klant-data naar Calendly behalve naam en e-mail |
| **KPI** | % afspraken via portaal vs via mail |

#### Scherm 6: Support

| Dimensie | Inhoud |
|---|---|
| **Doel** | Klant kan ticket aanmaken en status volgen |
| **Gebruikers-flow** | Lijst eigen tickets met status (open / in behandeling / opgelost). Nieuw ticket-formulier (onderwerp, beschrijving, bijlage). Reactie-thread per ticket. |
| **Data-bron** | Eigen support-tabel of integratie met tool als Intercom / Trengo |
| **Acties** | Aanmaken, reageren, sluiten |
| **Fallback** | Bij tool-down: fallback-mailadres prominent zichtbaar |
| **Security-impact** | Tickets gefilterd op klant_id. Bijlages in beveiligde storage. |
| **KPI** | Aantal tickets per maand, gemiddelde response-tijd |

#### Scherm 7: Profiel

| Dimensie | Inhoud |
|---|---|
| **Doel** | Klant beheert eigen contactgegevens en privacy-instellingen |
| **Gebruikers-flow** | Formulier met naam, e-mail, telefoon, adres (NAW). Plus: data-export-knop (AVG-portabiliteit), accountverwijdering-knop (AVG-recht op vergetelheid), notificatie-voorkeuren. |
| **Data-bron** | Eigen user-tabel + CRM-sync |
| **Acties** | Velden wijzigen, exporteren, account verwijderen |
| **Fallback** | Bij CRM-sync-fout: lokaal wijzigen, wachtrij voor retry |
| **Security-impact** | Wijzigingen via authenticated POST met CSRF-check. Audit-log voor wijzigingen. |
| **AVG-impact** | Alle vier AVG-rechten in dit scherm: inzage, rectificatie, portabiliteit, verwijdering. Rechtsgrond: overeenkomst + AVG. |
| **KPI** | Aantal data-exports en verwijderverzoeken per kwartaal |

### Notificatie-strategie

| Event | Kanaal | Default |
|---|---|---|
| Factuur staat klaar | Mail + portaal-badge | Aan |
| Project gaat naar volgende fase | Mail + portaal-badge | Aan |
| Support-reactie binnen | Mail + portaal-badge | Aan |
| Nieuwe documenten | Portaal-badge | Aan |
| Wekelijkse digest | Mail | Optioneel (default uit) |
| Marketing-mail | Mail | Opt-in, default uit |

### Mobile vs desktop

Mobile-first responsive design. Bottom-bar nav op mobiel, top-bar op desktop. Native apps **niet** in MVP, eventueel later via PWA.

### Navigatie-structuur

- **Desktop**: top-bar met logo links, 5 hoofd-schermen midden, profiel-icoon rechts
- **Mobiel**: bottom-bar met 5 icons + meer-menu
- **Diepe niveaus**: breadcrumb boven elk subscherm

---

## 3. Klant-authenticatie

| Veld | Keuze |
|---|---|
| **Login-methode** | {Magic-link / e-mail + wachtwoord / SSO / combinatie} |
| **Toelichting** | {bv. "Magic-link als primair, e-mail + wachtwoord als optioneel voor terugkerende gebruikers"} |
| **2FA** | {Verplicht / optioneel / niet-beschikbaar} |
| **2FA-implementatie** | {TOTP via Google Authenticator / Authy / SMS-fallback} |
| **Sessie-duur** | {30 dagen / 7 dagen / 24 uur} |
| **Password-reset** | {Link via e-mail, expiry 1 uur} |
| **Fallback bij e-mail-verlies** | {Handmatige verificatie via telefoon, documenteer SOP} |

### Onboarding-flow nieuwe klant

1. Trigger: deal-won in V1 (Salesproces), CRM-status wordt "Won"
2. Webhook stuurt klant-record naar portaal-DB
3. Portaal genereert magic-link en stuurt welkomstmail
4. Klant klikt link, ziet privacy-acceptatie (J4) en AV-acceptatie (J3)
5. Klant accepteert, komt op Overzicht-scherm met "Welkom, hier is wat je kan doen"-tour (3 stappen)
6. Tour klaar, klant is operationeel

**Fallback bij geen deal-won-trigger**: handmatige aanmaak via admin-interface door {Bedrijfsnaam}-medewerker.

---

## 4. Klant-rollen en data-isolatie

### Account-structuur

{Single-user-per-account / Multi-user-per-account}

### Rollen-set (bij multi-user)

| Rol | Wat kan deze rol |
|---|---|
| **Klant-admin** | Alles zien, alles wijzigen, users uitnodigen of verwijderen, billing zien |
| **Klant-viewer** | Alles zien, niets wijzigen |
| **Klant-editor** | Alles zien, documenten uploaden, profiel updaten, geen billing |

### Data-isolatie-strategie

- **Database-row-level-security** in {Postgres / Supabase} met `klant_id`-kolom op elke tabel
- **Policy** op elke tabel: `klant_id = auth.jwt.claims.klant_id`
- **Geen client-side filtering**: alle filtering server-side
- **Storage-bucket per klant**: `klant-{id}/` met IAM-policy
- **API-routes** valideren `klant_id` voor elke read en write

### Audit-log

| Niveau | Wat wordt gelogd | Retentie |
|---|---|---|
| Light | Login-events, document-downloads, profiel-wijzigingen | 90 dagen |
| Full | Alle acties inclusief views en API-calls | 1 jaar |

Gekozen niveau: **{light / full}**

### Test-protocol vóór live

1. Test 1: log in als klant A, probeer URL `/api/projects/{klant-B-id}`. Verwacht: 403.
2. Test 2: probeer `/api/invoices?klant_id={klant-B-id}`. Verwacht: 403 of leeg.
3. Test 3: probeer document van klant B te downloaden via signed URL. Verwacht: 403.
4. Test 4: SQL-injection-poging in zoek-velden. Verwacht: parameterized queries blokkeren.
5. Resultaat per test logged en gearchiveerd. Geen go-live zonder 4× pass.

---

## 5. AVG en data-portabiliteit

### Persoonsgegevens-categorieën

| Categorie | Voorbeelden | Rechtsgrond | Bewaartermijn |
|---|---|---|---|
| NAW | Naam, adres, postcode, woonplaats | Overeenkomst-uitvoering | Looptijd + 90 dagen |
| Contact | E-mail, telefoonnummer | Overeenkomst-uitvoering | Looptijd + 90 dagen |
| Zakelijke identifier | KvK, BTW | Wettelijke verplichting | 7 jaar |
| Financieel | Factuurbedragen, betaalstatus, eventueel IBAN | Wettelijke verplichting | 7 jaar |
| Inhoudelijk | Project-content, documenten, support-berichten | Overeenkomst-uitvoering | 7 jaar bij administratie, anders 2 jaar |
| Bijzonder | BSN, gezondheid | Wettelijke verplichting bij administratie | 7 jaar, alleen met DPIA |

### DPIA-status

{Ja, vereist / Nee, niet vereist}

{Bij ja: korte motivatie en planning voor DPIA met privacy-jurist. Bij bijzondere persoonsgegevens is DPIA verplicht.}

### AVG-rechten implementatie

| Recht | Implementatie in portaal |
|---|---|
| Inzage | Profiel-scherm toont alle eigen data, "Mijn data"-tab |
| Rectificatie | Profiel-scherm laat wijzigen, support-ticket voor inhoudelijke data |
| Portabiliteit | "Exporteer mijn data"-knop, levert ZIP met JSON + PDFs binnen 5 minuten |
| Verwijdering | "Verwijder mijn account"-knop, anonimiseert data onder bewaarplicht, verwijdert rest |
| Bezwaar | Support-ticket-flow, handmatige beoordeling door {Bedrijfsnaam}-medewerker |
| Beperking | Account in "alleen-lezen-modus" via admin-interface |

### Toestemmings-flow

- **Eerste login**: privacy-statement (J4) + AV (J3) acceptatie verplicht, log: timestamp + IP + documentversie + checkbox-state
- **Wijziging J4 of J3**: klant ziet bij volgende login een banner "We hebben onze {document} aangepast", moet opnieuw accepteren
- **Optionele functies** (marketing-mail, digest): aparte opt-in-checkbox per functie, default uit

### Verwerkersovereenkomsten

| Verwerker | Wat verwerken zij | DPA-status |
|---|---|---|
| {Hosting-provider, bv. Vercel / Supabase} | Persoonsgegevens in DB | Standaard-DPA actief |
| {Mail-provider, bv. Postmark / Resend} | E-mailadressen voor magic-link en notificaties | DPA bij aanmelding |
| {Storage-provider} | Document-uploads met persoonsgegevens | DPA bij contract |
| {Calendar-tool, bv. Calendly} | Naam + e-mail voor afspraken | DPA via account-instellingen |

---

## 6. Branding en white-label

### Branding-standaard (uit S2)

| Element | Waarde |
|---|---|
| Primair-kleur | {hex-code} |
| Accent-kleur | {hex-code} |
| Lettertype | {bv. Inter / Söhne} |
| Logo | {bestandslocatie} |
| Visuele tone | {formeel / speels / technisch} |
| Donker- of licht-thema | {keuze of beide met toggle} |

### White-label-positie

{Geen / licht / volledig}

| Type | Wat | Implementatie |
|---|---|---|
| Geen | {Bedrijfsnaam}-merk overal | Logo + kleuren standaard, voet "powered by {Bedrijfsnaam}" |
| Licht | Klant kan eigen logo en accent-kleur | Theme-instelling per klant-account, eigen logo upload, eigen primair-kleur kies-veld |
| Volledig | Eigen sub-domein + eigen merk volledig | DNS-CNAME naar onze app, eigen mail-template voor magic-links, custom-CSS-injectie |

### Eigen-domein-strategie

| Veld | Waarde |
|---|---|
| Sub-domein | {bv. portaal.bedrijf.nl} |
| DNS-eigenaarschap | {Bedrijfsnaam / hosting-partij} |
| SSL-certificaat | Auto via Let's Encrypt / Vercel |
| Redirect-strategie | bedrijf.nl/portaal redirect naar portaal.bedrijf.nl |

---

## 7. Tech-stack en releaseplanning

### Bouw-vorm

{No-code / low-code / custom}

### Stack-keuze

| Component | Tool / framework | Motivatie |
|---|---|---|
| Frontend | {Next.js / Softr / Bubble / Retool} | {snelheid + flexibiliteit + budget} |
| Backend / DB | {Supabase / Postgres / no-code-backend} | {row-level-security + AVG-compliance} |
| Auth | {Supabase Auth / Auth0 / Clerk / no-code-auth} | {magic-link-ondersteuning} |
| Storage | {Supabase Storage / S3 / no-code-storage} | {kosten + AVG-locatie} |
| Mail | {Postmark / Resend / SendGrid} | {deliverability + EU-locatie} |
| Hosting | {Vercel / Netlify / no-code-cloud} | {snelheid + automatische deploy} |
| Monitoring | {Sentry / LogRocket / Posthog} | {error-tracking + product-analytics} |

### MVP-omvang

Schermen in MVP:
- Auth + onboarding
- Overzicht
- Project (of Order / Cursus)
- Facturen
- Profiel

In release 2 (4-8 weken na MVP):
- Documenten
- Planning
- Support

In release 3 (later):
- White-label-opties (als gekozen)
- Wekelijkse digest
- Geavanceerde rapportages

### Release-planning

| Release | Datum | Inhoud |
|---|---|---|
| MVP | {YYYY-MM-DD} | Auth, Overzicht, Project, Facturen, Profiel |
| R2 | {YYYY-MM-DD} | Documenten, Planning, Support |
| R3 | {YYYY-MM-DD} | White-label, digest, geavanceerd |

### Budget-orde-grootte

| Soort kost | Bedrag |
|---|---|
| Eenmalig bouw | {EUR x} |
| Maandelijks hosting + tools | {EUR y/maand} |
| Maandelijks onderhoud (later) | {EUR z/maand} |

### Bouw-partij

{Jezelf / ontwikkelaar uit netwerk / no-code-bouwer / agency / Upscailed}

Contact-persoon: {naam, e-mail}

---

## 8. KPIs en succes-meting

| KPI | Doel | Frequentie | Bron |
|---|---|---|---|
| % actieve klanten per maand | {bv. 80%+} | Maandelijks | Login-events |
| Gemiddelde sessie-tijd | {bv. 4-7 min} | Maandelijks | Analytics-tool |
| Aantal factuur-downloads | {bv. 90% van uitgaande facturen} | Maandelijks | Audit-log |
| Reductie mail-vragen | {bv. -60%} | Kwartaal | Vergelijking inbox |
| NPS-stijging | {bv. +20} | Kwartaal | C4 metingen |
| Aantal support-tickets | Stabiel of dalend | Maandelijks | Support-tool |
| Aantal AVG-exports per kwartaal | Monitoren | Kwartaal | Audit-log |

---

## 9. Risico's en mitigaties

| Risico | Kans | Impact | Mitigatie |
|---|---|---|---|
| Klant ziet data van andere klant | Laag | Hoog | Row-level-security + 4× test vóór live |
| AVG-incident bij datalek | Laag | Hoog | Encryption-at-rest + audit-log + DPA bij verwerkers |
| Lage adoptie door klanten | Middel | Middel | Validatie met 3 klanten vóór bouw, in-app-onboarding-tour |
| Vendor-lock-in bij no-code | Hoog (bij no-code) | Middel | Export-mogelijkheid checken, data-laag los houden |
| Stack-keuze inconsistent met E2 | Middel | Middel | E2-stack als default voor consistentie |
| Bouw-team levert niet | Middel | Hoog | Vaste prijzen + milestones, contract met SLA |
| Budget-overschrijding | Middel | Middel | MVP-scope strak houden, geen feature-creep |

---

## 10. Cross-links en afhankelijkheden

| SCALE-stap | Hoe deze scoping ermee verbindt |
|---|---|
| S4 ICP | Definieert wie de portaal-gebruiker is |
| S8 Producten en Pricing | Bepaalt wat de klant koopt en dus wat hij wil zien |
| S9 Klantreis | Toont in welke fase een portaal het meest helpt |
| J4 Privacyverklaring | Verplichte cross-check op persoonsgegevens en retentie |
| J3 Algemene Voorwaarden | Acceptatie bij eerste login |
| C2 CRM Setup | Data-bron voor klant-records |
| E2 App Scoping (intern) | Zuster-skill, vaak dezelfde stack |
| V1 Salesproces | Deal-won-trigger voor klant-aanmaak |
| C4 Klantfeedback | In-app NPS-of CSAT-feedback inbouwen |
| S12 Toolstack | Boekhoudpakket en betalingsplatform leveren factuur-data |
| S2 Brand Guidelines | Visuele standaard |
| S11 Team en Rollen | Wie aan de admin-kant toegang heeft |
| L1 SOP Automatiseren | Klant-onboarding via portaal verschuift uit handmatige SOP |
| L3 Mailflow Setup | Notificatie-mails via generieke mailflow |
| A1 Rapportage Builder | Portaal-statistieken voeden A1 |
| A2 Mission Control | Portaal-KPI's op intern dashboard |
| E1 Dashboard Bouwer | Interne dashboards volgen E1, klant-facing volgt E4 |
| E3 Workflow Pipeline | Achtergrond-workflows die portaal voeden |

---

## 11. Open punten en `[VERIFICEREN]`-lijst

- [ ] {Open punt 1, bv. "DNS-toegang voor sub-domein bevestigen"}
- [ ] {Open punt 2, bv. "Privacy-jurist consulteren voor DPIA-noodzaak"}
- [ ] {Open punt 3, bv. "Stack-keuze afstemmen met E2"}
- [ ] `[VERIFICEREN]` {Veld waar geen bron voor was}

---

## 12. Brondocumenten

- S4 ICP, {pad}
- S8 Producten en Pricing, {pad}
- S9 Klantreis, {pad}
- J4 Privacyverklaring, {pad}
- C2 CRM Setup, {pad}
- E2 App Scoping, {pad indien bestaat}
- Klant-feedback citaten, {referentie}
- Demo-screenshots referentie-portalen, {map met PDFs of links}

---

## Disclaimer

Dit document is een functioneel en technisch scoping-document, geen juridisch privacy-advies en geen security-audit. Bij persoonsgegevens blijft de ondernemer verwerkingsverantwoordelijke onder de AVG. Bij betalingen of gevoelige data is aanvullend advies van een security-specialist of jurist nodig. Scope versnelt, vervangt geen audit.

---

*Versie 1.0, {YYYY-MM-DD}, opgesteld via skill `klantportaal-scoping` (SCALE E4)*
