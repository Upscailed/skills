# Audit-config Template

Per audit-scope (een bedrijf of een persoonlijke map) kan er een `audit-config.md` bestand zijn dat aangeeft welke checks "niet van toepassing" zijn. De skill leest dit bestand bij elke run en sluit de gemarkeerde checks uit van de score.

## Locatie

`{scope}/audit-config.md`

Bijvoorbeeld:
- `Persoonlijk/audit-config.md`
- `Bedrijven/Mijn Bedrijf BV/audit-config.md`
- `Mijn Bedrijf BV/audit-config.md` (bij solopreneur met één bedrijf op top-level)

## Format

YAML-frontmatter met de configuratie, plus markdown-body met de uitleg per uitsluiting.

```markdown
---
type: audit-config
scope: Persoonlijk
laatst-bijgewerkt: 2026-05-05
nvt:
  - check: J1
    reden: "Persoonlijke map, geen bedrijfsinschrijving relevant"
  - check: J2
    reden: "Geen BTW-plichtige activiteit vanuit deze map"
  - check: J3
    reden: "Geen algemene voorwaarden nodig voor persoonlijke map"
  - check: J5
    reden: "Geen klantcontracten vanuit Persoonlijk"
  - check: V1
    reden: "Geen sales vanuit deze map"
  - check: V2
    reden: "Idem"
  - check: V3
    reden: "Idem"
  - check: M3
    reden: "Geen content-roadmap voor persoonlijke map"
  - check: M4
    reden: "Geen mailinglijst vanuit Persoonlijk"
  - check: C2
    reden: "Geen sales-data, want geen sales"
  - check: C4
    reden: "Geen klanttevredenheid voor persoonlijke map"
---

# Audit-config — Persoonlijk

Dit bestand bepaalt welke checks van de SCALE-audit niet van toepassing zijn voor de scope `Persoonlijk/`. De audit-skill leest deze lijst en sluit ze uit van de score zodat ze niet steeds als "ontbrekend" terugkomen.

## Toegevoegde uitsluitingen

Datum: 2026-05-05 — Eerste setup. Persoonlijke map heeft geen juridische, sales- of marketing-vereisten als zelfstandige entiteit.

## Bij twijfel

Als je later een check toch wel relevant vindt: verwijder de regel uit `nvt`.
Als je een nieuwe check wil uitsluiten: voeg een nieuw item toe aan de `nvt`-lijst.
```

## Check-IDs

De check-IDs (zoals J1, S3, C2) komen exact overeen met de codes in `references/checklist.md`. Gebruik deze codes om uitsluitingen op te geven.

## Wanneer markeer je een item als n.v.t.

Goede redenen:
- De scope is geen bedrijfsentiteit (`Persoonlijk/`-map)
- Het bedrijf is in een fase waarin een check echt niet relevant is (bijv. geen team = geen HR-check tot de eerste medewerker komt)
- Het bedrijfsmodel sluit de check uit (bijv. een open-source-project zonder pricing)
- Een wettelijke of structurele reden waarom het niet hoeft

Géén goede redenen:
- "Ik heb er geen tijd voor" — dat is uitstel, niet n.v.t.
- "Het is moeilijk" — geef het toch een ⚠️-status zodat je voortgang ziet
- "Komt later" — laat het ⚠️ zijn zodat het terugkomt

## Voorbeeldconfigs per scenario

### Persoonlijke map (geen bedrijf)
N.v.t.-checks: J1, J2, J3, J5, J6, V1, V2, V3, M3, M4, C2, C4, C7, A1, L1, L2, L3, L4, E1, E2, E3, E4

### Bedrijf in idee-fase (nog geen producten)
N.v.t.-checks: S8 (geen pricing nog), V2, V3, C3, C7, A1, L1, L2, L3, L4, E1-E4

### Solopreneur zonder personeel
N.v.t.-checks: S11 (team & rollen — kan ook gewoon ✅ blijven met "ik vervul alle rollen"), C5 (personeelsdata), L4 (HR-automatisering)

### Bedrijf met fysieke vestiging maar geen webshop
N.v.t.-checks: M1 (als geen website), C5 (website-data), E4 (klantportaal)
