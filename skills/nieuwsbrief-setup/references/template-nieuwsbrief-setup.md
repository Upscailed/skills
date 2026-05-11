---
type: nieuwsbrief-setup
bedrijf: "<Naam>"
laatst-bijgewerkt: YYYY-MM-DD
versie: 1.0
scale-check: M4
provider: "<Provider-naam>"
sender-domein: "<domein.nl>"
cadans: "<wekelijks/2-wekelijks/maandelijks>"
status-spf: "<ja/wachtrij/nog te doen>"
status-dkim: "<ja/wachtrij/nog te doen>"
status-dmarc: "<ja/wachtrij/nog te doen>"
double-opt-in: "<ja/nee>"
aantal-segmenten: <getal>
---

# Nieuwsbrief Setup — <Naam>

> SCALE-check M4 (Marketing). Dit document beschrijft de complete opzet van de e-mail-nieuwsbrief: provider-keuze, sender-domein en DNS, template en signup-form, welkomstmail, segmentatie, inhoud-mix en cadans, AVG-compliance en de eerste editie. Het is de fundering voor L3 (Mailflow-Setup), V3 (Opvolg-Flow), M3 (Content-Roadmap distributie) en A1 (Rapportage).

## 1. Provider-keuze

| Onderdeel | Waarde |
|---|---|
| Gekozen provider | `<Provider-naam>` |
| Plan | `<Plan-naam>` |
| Maandkosten | EUR `<bedrag>` |
| Jaarkosten | EUR `<bedrag>` |
| Lijst-limiet plan | `<getal subs>` |
| Server-locatie | `<EU / VS / mix>` |
| Reden van keuze | `<1 zin>` |
| Alternatieven overwogen | `<lijst>` |
| Cross-link Toolstack | `IT/Toolstack.md` regel `<provider>` |

## 2. Sender-domein + DNS

| Onderdeel | Waarde | Status |
|---|---|---|
| Sender-domein | `<domein.nl>` | `<ja/wachtrij>` |
| Verzend-adres | `<naam>@<domein.nl>` | `<ja/wachtrij>` |
| From-naam | `<Naam>` of `<Bedrijf>` of `<Naam van Bedrijf>` | `<ja/wachtrij>` |
| Reply-to-adres | `<adres>` | `<ja/wachtrij>` |
| DNS-registrar | `<TransIP / Cloudflare / etc.>` | n.v.t. |
| SPF-record | `v=spf1 include:<provider-spf> ~all` | `<ja/wachtrij/nog te doen>` |
| DKIM-record | `<selector>._domainkey.<domein.nl>` | `<ja/wachtrij/nog te doen>` |
| DMARC-record | `v=DMARC1; p=none; rua=mailto:<adres>` (start) | `<ja/wachtrij/nog te doen>` |
| DMARC-progressie-plan | `p=none` (mnd 1-3) → `p=quarantine` (mnd 3-6) → `p=reject` (mnd 6+) | gepland |

**Verzend-deadline om alle 3 records live te krijgen:** YYYY-MM-DD.

## 3. Template + signup-form

### Template
| Element | Waarde | Bron |
|---|---|---|
| Logo | `<bestand of URL>` | `Directie/Playbook/Brand Guidelines.md` |
| Header-kleur | `<hex>` | Brand Guidelines |
| Primaire kleur (CTA) | `<hex>` | Brand Guidelines |
| Typografie body | `<font-naam>` | Brand Guidelines |
| Typografie heading | `<font-naam>` | Brand Guidelines |
| CTA-stijl | `<knop-kleur, hoek-radius>` | Brand + ToV |
| Sectie-structuur | Intro → kern → side-blok → CTA → PS → footer | Eigen ontwerp |
| Template-bron | `<provider-built-in / eigen HTML / betaalde template>` | Provider |

### Signup-form
| Element | Waarde |
|---|---|
| Velden | `<E-mail / E-mail + naam / E-mail + naam + segment>` |
| Locatie(s) | `<Website-footer / /nieuwsbrief / pop-up / inline>` |
| Double-opt-in | ja (verplicht voor AVG) |
| Bedankt-pagina | `<URL of provider-default>` |
| Conversie-tracking | `<Plausible event / GA4 event / geen>` |
| Verwachte conversie-rate | `<1-5%>` |

## 4. Welkomstmail

| Onderdeel | Waarde |
|---|---|
| Onderwerp | `<concrete suggestie>` |
| Sender-toon | `<persoonlijk 'ik' / bedrijfsstem 'wij'>` |
| Kern-belofte | `<1 zin>` |
| Quick-win | `<concrete tip / download / linkverzameling>` |
| Sender-introductie | `<3-5 zinnen>` |
| Micro-vraag terug | `<1 zin>` |
| Trigger | direct na bevestiging double-opt-in |
| Aantal mails in welkomst-flow | `<1 / 3 / 5>` |
| Verwijzing L3 | volledig uitgebreide nurture-sequence hoort in `Operations/Mailflow-Setup.md` (L3) |

## 5. Doelgroep-segmentatie

| Dimensie | Tag-naam | Bron | Gebruik | Verplicht? |
|---|---|---|---|---|
| ICP-segment | `<segmenten uit ICP>` | `Directie/Playbook/ICP.md` | Aparte campagnes per segment | ja |
| Inschrijfbron | `<Website / Event / LinkedIn / Lead-magnet>` | Eigen marketing | Bron-kwaliteit-analyse | optioneel |
| Lifecycle | Lead / Klant / Oud-klant | `Sales/CRM-Setup.md` (cross) | Wel/niet apart mailen | optioneel |
| Interesse-thema | `<thema's uit Content-Roadmap>` | `Marketing/Content-Roadmap.md` | Content-segmentatie | optioneel |
| Engagement | Actief / Inactief / Power-user | Provider-automatisch | Win-back triggers | optioneel |

**Totaal:** `<getal>` dimensies, daarvan `<getal>` actief in gebruik vanaf go-live.

## 6. Inhoud-mix + cadans

| Onderdeel | Waarde |
|---|---|
| Inhoud-mix-model | `<80/20 educatie-aanbod / curatie / persoonlijk-eerst / diepgang-essay / mix>` |
| Cadans | `<wekelijks / 2-wekelijks / maandelijks>` |
| Verzend-dag | `<dag>` |
| Verzend-tijd | `<HH:MM>` |
| Onderwerp-regel-formats | `<lijst van 3-5 formats>` |

### KPI-drempels

| KPI | Drempel (acceptabel) | Doel (goed) | Stretch (wereldklasse) |
|---|---|---|---|
| Open-rate | > 20% | > 25% | > 40% |
| Click-rate | > 1.5% | > 2% | > 5% |
| Click-to-open-rate (CTOR) | > 8% | > 12% | > 20% |
| Unsubscribe-rate per editie | < 0.5% | < 0.2% | < 0.1% |
| Bounce-rate | < 2% | < 1% | < 0.5% |
| Spam-complaint-rate | < 0.1% | < 0.05% | 0% |
| Lijst-groei per maand | > 1% | > 5% | > 10% |

**Opmerking:** open-rate is sinds Apple MPP (2021) geïnflateerd. Click-rate en CTOR zijn betrouwbaardere indicatoren.

## 7. AVG + compliance

| Eis | Status | Toelichting / Bron |
|---|---|---|
| Rechtsgrond (double-opt-in) | `<ja/in te richten>` | Provider-instelling |
| Privacyverklaring-link in mail-footer | `<ja/te plaatsen>` | `Juridisch/Privacyverklaring.md` (J4) |
| Privacyverklaring-link bij signup-form | `<ja/te plaatsen>` | idem |
| Opt-out-link in elke mail | `<ja>` | Provider-default |
| Volledig postadres in footer | `<adres>` | Eigen vastlegging |
| Bewaartermijn na opt-out | `<direct verwijderen / max X maanden geanonimiseerd>` | Privacyverklaring |
| Verwerkersovereenkomst (VOK) | `<getekend/in te richten>` | Provider-portaal |
| Server-locatie EU of SCC | `<EU / SCC>` | Provider-keuze |
| Datalekken-flow | binnen 72 uur melden bij AP | Privacyverklaring |

**Import-strategie oude lijst (als van toepassing):** `<geen import / opt-in-mail eerst sturen, alleen klikkers in lijst>`.

## 8. Eerste editie (concept)

| Onderdeel | Waarde |
|---|---|
| Geplande verzend-datum | YYYY-MM-DD |
| Onderwerp-regel | `<concrete tekst, max 50 tekens>` |
| Preheader | `<concrete tekst, 70-90 tekens>` |
| Aanhef | `<conform ToV>` |
| Format | `<kort tip / langere case / persoonlijk verhaal / curatie>` |
| Kern-content | `<placeholder of concept-tekst>` |
| Side-blok (optioneel) | `<placeholder>` |
| Hoofd-CTA | `<concrete actie>` |
| PS (optioneel) | `<concrete tekst>` |
| Verzend-naar | `<volledige lijst / specifiek segment>` |
| Concept-bestand | `Marketing/Nieuwsbrief/YYYY-MM-DD - <Onderwerp>/post.md` |

## 9. Eigenaarschap en review-ritme

| Rol | Persoon | Cross-link |
|---|---|---|
| Hoofd-eigenaar (admin provider) | `<Naam>` | `HR/Team.md` rol `<rol>` |
| Content-schrijver | `<Naam>` | `HR/Team.md` |
| Editie-redacteur | `<Naam>` | `HR/Team.md` |
| Data-kwaliteit-owner | `<Naam>` | `HR/Team.md` |

**Review-ritme:**
- **Per editie:** open-rate + click-rate noteren in `Directie/Rapportage.md` (of equivalent A1-document).
- **Maandelijks:** lijst-groei, unsubscribe-rate, top-3 best presterende edities.
- **Kwartaal:** onderwerp-regel-format, cadans, inhoud-mix evalueren op basis van data.
- **DMARC-progressie:** maand 3 evalueren of `p=quarantine` veilig is, maand 6 evalueren of `p=reject` veilig is.

**Solopreneur-variant:** als alle rollen bij één persoon liggen, geef dat aan met opmerking *"Solopreneur, alle rollen bij `<Naam>`."*

## 10. Cross-links naar SCALE-stappen

| SCALE-check | Document | Relatie |
|---|---|---|
| S2 (Brand Guidelines) | `Directie/Playbook/Brand Guidelines.md` | Logo, kleuren, typografie in template |
| S3 (Tone of Voice) | `Directie/Playbook/Tone of Voice.md` | Schrijfregels voor onderwerp-regels, welkomstmail, editie-tekst |
| S4 (ICP) | `Directie/Playbook/ICP.md` | Segmenten in mail-tags komen exact overeen met ICP-segmenten |
| S12 (Toolstack) | `IT/Toolstack.md` | Gekozen provider staat geregistreerd in Toolstack |
| S11 (Team) | `HR/Team.md` | Eigenaars en content-schrijver zijn geregistreerde rollen |
| M3 (Content-Roadmap) | `Marketing/Content-Roadmap.md` | Content-thema's voeden de nieuwsbrief-edities |
| J4 (Privacyverklaring) | `Juridisch/Privacyverklaring.md` | Footer-link verplicht voor AVG |
| C2 (CRM-Setup) | `Sales/CRM-Setup.md` | Mail-segmenten en CRM-tags consistent |
| L3 (Mailflow-Setup) | `Operations/Mailflow-Setup.md` | Uitgebreide automations (lead-nurture, win-back) |
| V3 (Opvolg-Flow) | `Sales/Opvolg-Flow.md` | Sales-opvolging kan triggeren op nieuwsbrief-engagement |
| A1 (Rapportage) | `Directie/Rapportage.md` | Open-rate, click-rate, lijst-groei in sales/marketing-rapportage |

## 11. Open punten

Acties die nog moeten gebeuren om de nieuwsbrief-setup volledig werkend te krijgen.

- [ ] `<Bv. Provider-account aanmaken en plan kiezen>`
- [ ] `<Bv. SPF/DKIM/DMARC-records in DNS plaatsen via registrar>`
- [ ] `<Bv. DMARC-monitoring-rapporten activeren naar dmarc@<domein.nl>>`
- [ ] `<Bv. Template configureren in provider met logo + brand-kleuren>`
- [ ] `<Bv. Signup-form op website plaatsen, double-opt-in aanzetten>`
- [ ] `<Bv. Welkomstmail-flow activeren als automation>`
- [ ] `<Bv. Verwerkersovereenkomst met provider tekenen>`
- [ ] `<Bv. Volledig postadres in footer plaatsen>`
- [ ] `<Bv. Eerste editie schrijven en testverzending naar eigen adres>`
- [ ] `<Bv. Verzend eerste editie YYYY-MM-DD om HH:MM>`
- [ ] `<Bv. Plan kwartaal-review YYYY-MM-DD>`

## 12. Versie-historie

| Datum | Versie | Wijziging | Door |
|---|---|---|---|
| YYYY-MM-DD | 1.0 | Eerste versie, gegenereerd via skill `nieuwsbrief-setup` | `<Naam>` |
