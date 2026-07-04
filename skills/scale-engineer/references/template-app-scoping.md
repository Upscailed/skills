---
type: app-scoping
bedrijf: "{Bedrijfsnaam}"
app: "{AppNaam}"
status: scope-afgerond
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: E2
must-haves: 0
nice-to-haves: 0
out-of-scope: 0
journeys: 0
entities: 0
integraties: 0
rollen: 0
tech-stack: "Variant A / B / C"
roadmap-mvp: YYYY-MM-DD
roadmap-v05: YYYY-MM-DD
roadmap-v1: YYYY-MM-DD
---

# App Scoping - {AppNaam}

> **Wat is dit document?** Het canonieke Product Requirements Document (PRD) voor {AppNaam}. Bedoeld als bouwklare brief richting een developer, een no-code-bouwer of Claude Code. Wie dit document leest, kan zonder verdere vragen starten. Onderdeel van SCALE-stap E2 (Engineer).

---

## Samenvatting

| Aspect | Waarde |
|---|---|
| **Bedrijf** | {Bedrijfsnaam} |
| **App** | {AppNaam} |
| **Probleem in 1 zin** | {Zin uit sectie 1} |
| **Hoofd-gebruiker(s)** | {Bv. "Ondernemer + 1 medewerker"} |
| **Must-haves v1** | {Aantal} (max 5) |
| **Tech-stack** | {Bv. "Next.js + Supabase + Vercel"} |
| **MVP-deadline** | YYYY-MM-DD (in 1 week) |
| **v0.5-deadline** | YYYY-MM-DD (in 1 maand) |
| **v1-deadline** | YYYY-MM-DD (in 3 maanden) |
| **Bouwer** | {Mens of Claude Code of combinatie} |
| **Verwachte ROI v1** | {Bv. "8 uur per maand bespaard"} |

---

## 1. Probleem-statement

**Huidige situatie zonder de app:**
{Beschrijving in 2 tot 4 zinnen. Wat doet de ondernemer nu, hoe versnipperd, met welke tools, hoeveel tijd kost het.}

**De pijn:**
- {Pijnpunt 1, concreet}
- {Pijnpunt 2}
- {Pijnpunt 3}

**Wat gebeurt er als deze app er niet komt:**
{1 tot 2 zinnen. Test of het probleem groot genoeg is om te bouwen.}

**Meetbaar resultaat na 3 maanden gebruik:**
- {Bv. "8 uur per maand minder handwerk"}
- {Bv. "Foutmarge in facturatie van 5% naar < 1%"}
- {Bv. "Doorlooptijd offerte van 3 dagen naar 1 dag"}

---

## 2. Doelgroep + persona's

> **Cross-link:** zie `Directie/Playbook/ICP.md` (S4) voor externe-klant-segmentatie. Onderstaande persona's beschrijven wie deze app direct gebruikt.

### Persona 1 - {Rol, bv. "Ondernemer (jij)"}

| Aspect | Waarde |
|---|---|
| Wie | {Naam of rol-omschrijving} |
| Doet nu zonder app | {Bv. "Klantgegevens in spreadsheet, facturen handmatig in Moneybird"} |
| Moet straks kunnen | {Bv. "1 klik klant aanmaken + factuur genereren + verzenden"} |
| Frequentie gebruik | {Dagelijks / wekelijks / maandelijks} |
| Aantal in v1 | {1 / 2 / ...} |

### Persona 2 - {Rol, bv. "Medewerker"}

{Idem.}

### Persona 3 - {Rol, bv. "Klant"}

{Idem. Alleen invullen als de app klant-facing onderdelen heeft. Anders schrappen of in sectie 5 melden als out-of-scope.}

**Verwacht aantal gebruikers**
- v1: {Aantal}
- v1 + 6 maanden: {Aantal}

---

## 3. Kern-functionaliteit (must-haves, max 5)

| # | Feature | Beschrijving | Gebruiker | Frequentie |
|---|---|---|---|---|
| 1 | {Feature} | {1-2 zinnen} | {Persona} | {Dagelijks / ...} |
| 2 | {Feature} | {1-2 zinnen} | {Persona} | {Dagelijks / ...} |
| 3 | {...} | {...} | {...} | {...} |
| 4 | {...} | {...} | {...} | {...} |
| 5 | {...} | {...} | {...} | {...} |

**Vuistregel toegepast:** een feature is pas must-have als hij in week 1 na launch al dagelijks of wekelijks gebruikt wordt.

---

## 4. Nice-to-have (voor later)

| Feature | Beschrijving | Voor versie |
|---|---|---|
| {Feature} | {1 zin} | v0.5 / v1 / post-v1 |
| {...} | {...} | {...} |

---

## 5. Out-of-scope (expliciet NIET in v1)

> **Waarom dit lijstje belangrijk is:** voorkomt scope-creep en stelt verwachtingen bij bouwer en gebruikers.

- {Bv. "Geen factureren - gebruikt bestaande Moneybird-koppeling"}
- {Bv. "Geen klant-login - alleen intern in v1"}
- {Bv. "Geen mobiele app - alleen web in v1"}
- {Bv. "Geen meertaligheid"}
- {Bv. "Geen multi-tenant"}
- {Bv. "Geen white-labeling"}

---

## 6. User journeys (3 tot 5 key flows)

### Flow 1 - {Naam, bv. "Een klant toevoegen"}

1. {Stap 1, bv. "Gebruiker logt in op homepage"}
2. {Stap 2}
3. {...}
4. {...}
5. {...}
6. {...}
7. {Einde, waar de gebruiker is na de flow}

### Flow 2 - {Naam}

{Idem, 5 tot 12 stappen.}

### Flow 3 - {Naam}

{Idem.}

### Flow 4 - {Naam} (optioneel)

{Idem.}

### Flow 5 - {Naam} (optioneel)

{Idem.}

---

## 7. Data-model

### Entities + key velden + relaties

| Entity | Key velden | Relaties |
|---|---|---|
| {Bv. Klant} | id, naam, e-mail, telefoon, segment, status, aangemaakt_op | Heeft veel Facturen, hoort bij één Eigenaar |
| {Bv. Factuur} | id, klant_id, factuurnummer, datum, vervaldatum, bedrag_excl_btw, btw, bedrag_incl_btw, status | Hoort bij één Klant, heeft veel Regels |
| {Bv. Factuur-regel} | id, factuur_id, omschrijving, aantal, prijs, totaal | Hoort bij één Factuur |
| {Bv. Gebruiker} | id, naam, e-mail, rol, laatste_login | Heeft veel Klanten als Eigenaar |

### Schets (optioneel, bij complexere relaties)

```
[Gebruiker] ──eigenaar van──> [Klant] ──heeft──> [Factuur] ──heeft──> [Factuurregel]
```

---

## 8. Externe integraties

| Integratie | Doel | Auth-methode | Eigenaar account | Versie |
|---|---|---|---|---|
| {Bv. Moneybird API} | Facturen synchroniseren | OAuth2 | {Persoon / bedrijf} | v1 |
| {Bv. Mollie} | Betalingen verwerken | API-key | {Persoon} | v0.5 |
| {Bv. Google Calendar} | Afspraken synchroniseren | OAuth2 | {Persoon} | post-v1 |
| {Bv. Resend} | Transactionele e-mails | API-key | {Persoon} | v1 |

---

## 9. Auth + rollen

### Authenticatie-methode
- v1: {Bv. "Magic-link via Resend"}
- v0.5: {Bv. "OAuth Google + magic-link fallback"}
- v1: {Bv. "Plus passkeys"}

### Rolmatrix

| Rol | Mag zien | Mag doen | Mag NIET |
|---|---|---|---|
| {Admin} | Alles | Alle CRUD, gebruikers beheren | n.v.t. |
| {Medewerker} | Klanten + facturen | Nieuwe klant + factuur aanmaken, eigen klanten bewerken | Gebruikers beheren, betalinstellingen wijzigen |
| {Klant (post-v1)} | Eigen facturen | Factuur betalen, eigen gegevens bijwerken | Andermans facturen zien |

### Sessie + reset
- **Sessie-duur:** {Bv. "30 dagen, met sliding renewal"}
- **Wachtwoord-reset:** {Bv. "Magic-link via e-mail"}
- **2FA:** {Bv. "v1 niet nodig, v1+6mnd via authenticator-app"}

---

## 10. Tech-stack-voorstel

### Gekozen variant: {A / B / C}

| Component | Keuze | Motivatie (1-2 zinnen) |
|---|---|---|
| Frontend | {Bv. Next.js (React) 15 met App Router} | {Bv. "Past bij andere tools in deze bedrijfsmap, snelle DX"} |
| Backend | {Bv. Next.js API routes + Supabase Edge Functions} | {...} |
| Database | {Bv. Supabase (Postgres) met Row-Level Security} | {...} |
| Hosting | {Bv. Vercel} | {...} |
| Auth | {Bv. Supabase Auth (magic-link + Google OAuth)} | {...} |
| E-mail | {Bv. Resend} | {...} |
| Storage | {Bv. Supabase Storage} | {...} |
| Monitoring | {Bv. Sentry + Vercel Analytics} | {...} |

**Verwachte maandkosten v1:** {Bv. "0 tot 30 euro - Vercel hobby + Supabase free, alleen Resend betaald"}
**Verwachte maandkosten v1+12mnd bij geprojecteerde schaal:** {Bv. "30 tot 80 euro"}

### Overwogen alternatieven
- **Variant {X}:** {Korte reden waarom niet gekozen}
- **Variant {Y}:** {Korte reden waarom niet gekozen}

---

## 11. Niet-functionele eisen

| Eis | Doel v1 | Doel v1 + 6 mnd | Hoe meten |
|---|---|---|---|
| **Laadtijd** | < 1,5 s op 4G | < 1 s op 4G | Lighthouse / Vercel Analytics |
| **Aantal gebruikers tegelijk** | 1 tot 2 | 5 tot 10 | Server-logs |
| **Records totaal** | < 500 | < 5.000 | Database-counters |
| **Beschikbaarheid** | 99% (onderhoud op zondag-nacht) | 99,5% | Uptime-monitor |
| **Backup-frequentie** | Dagelijks, 14 dagen bewaard | Dagelijks, 30 dagen bewaard | Supabase backup-log |
| **Recovery-tijd bij crash** | < 4 uur | < 1 uur | Tested via restore-oefening |

### Security + AVG
- **Persoonsgegevens opgeslagen:** {Bv. "Naam, e-mail, telefoon van klanten + medewerkers"}
- **Bewaartermijn:** {Bv. "Klantgegevens tot 7 jaar na laatste factuur (fiscaal), daarna anonimiseren"}
- **Encryptie at-rest:** {Bv. "Supabase standaard (AES-256)"}
- **Encryptie in-transit:** {Bv. "TLS 1.3 verplicht"}
- **Audit-log:** {Bv. "Bij v0.5 - alle login/data-mutaties"}
- **Betrokkenenrechten:** Inzage, verwijdering, dataportabiliteit - geïmplementeerd via {Bv. "knop in instellingen"}.
- **Verwerkersovereenkomst:** {Bv. "Met Supabase (auto), Vercel (auto), Resend (handmatig regelen)"}

---

## 12. Roadmap

### MVP - {YYYY-MM-DD, in 1 week}

**Doel:** bewijzen dat het werkt voor één gebruiker (de bouwer zelf).

**In MVP:**
- {Must-have #1 uit sectie 3}
- {Must-have #2 uit sectie 3}
- {Eventueel must-have #3}
- Basis-auth (magic-link voor 1 gebruiker)
- Database-schema voor de 2-3 belangrijkste entities

**Niet in MVP:**
- Alle andere must-haves (komen in v0.5)
- Externe integraties
- Andere rollen dan admin
- Mobile-optimalisatie

### v0.5 - {YYYY-MM-DD, in 1 maand}

**Doel:** dagelijks bruikbaar in productie voor alle interne gebruikers.

**Toevoegen aan MVP:**
- Resterende must-haves uit sectie 3
- 1 tot 2 nice-to-haves uit sectie 4 als er ruimte is
- Tweede rol uit sectie 9 (medewerker)
- Belangrijkste integratie uit sectie 8

**Niet in v0.5:**
- Klant-facing features
- Schaalbaarheid > 100 records (verwacht binnen v0.5)
- Geavanceerde rapportage

### v1 - {YYYY-MM-DD, in 3 maanden}

**Doel:** volwassen genoeg om naar externe stakeholders te brengen.

**Toevoegen aan v0.5:**
- Resterende integraties uit sectie 8
- Klant-rol uit sectie 9 (als die er is)
- Performance-optimalisatie (laadtijd < 1 s)
- Backup-recovery getest
- AVG-implementatie compleet

**Niet in v1:**
- Alles uit sectie 5 (out-of-scope)
- Post-v1 nice-to-haves uit sectie 4

### Harde deadline
{Bv. "Klant-demo op 2026-08-15 - v0.5 moet daarvoor stabiel zijn"}

---

## 13. Open vragen + aannames

### Open vragen
1. {Bv. "Moet de app offline werken? → Geparkeerd voor post-v1"}
2. {Bv. "Worden de facturen ook in PDF gegenereerd in v1? → Beantwoord: ja, via een lichte template-engine"}
3. {Bv. "Hoe gaan we om met meerdere btw-tarieven in één factuur? → Open, te beslissen vóór MVP-bouw"}

### Aannames
1. {Bv. "Gebruiker heeft een moderne browser (Chrome, Safari, Firefox laatste 2 versies)"}
2. {Bv. "Er is geen meertaligheid nodig in v1"}
3. {Bv. "De ondernemer accepteert magic-link als enige auth-methode in v1"}
4. {Bv. "Hosting binnen EU is voldoende voor AVG (geen extra DPA's nodig)"}
5. {Bv. "Bestaande Moneybird-koppeling blijft van kracht - geen migratie nodig"}

---

## Cross-links

- **S4 ICP** - `Directie/Playbook/ICP.md` voor klant-segmentatie (relevant bij persona's in sectie 2 als app klant-facing onderdelen heeft).
- **S10 SOPs** - `Operations/Processen/{Procesnaam}.md` voor het proces dat deze app vervangt of ondersteunt.
- **S12 Toolstack** - `Directie/Playbook/Toolstack.md` voor bestaande tools en API's die hergebruikt kunnen worden.
- **E1 Dashboard** - als de app ook data-visualisatie nodig heeft, link naar het E1-dashboard.
- **E3 Workflow** - als de app deels orchestratie is tussen externe tools, link naar de E3-pipeline.
- **E4 Klantportaal** - vergelijkbare scoping voor klant-facing apps, met dezelfde structuur maar andere doelgroep.

---

## Scope-wijzigingen (lopend, na oplevering bijwerken)

| Datum | Wijziging | Reden | Impact (MVP / v0.5 / v1) |
|---|---|---|---|
| YYYY-MM-DD | {Bv. "Feature X uit must-haves naar nice-to-haves"} | {Bv. "Bouwer schat het op 3 dagen - te groot voor MVP"} | MVP |
