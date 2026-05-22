---
name: mcp-tester
description: "Test en valideert een MCP-server (Model Context Protocol) end-to-end via de MCP Inspector. Bewijst dat tools, resources en authenticatie werken voordat je je MCP aan Claude koppelt. Triggert op: MCP testen, MCP valideren, MCP debuggen, MCP checken, MCP server controleren, MCP Inspector."
category: bouwen
tags: [mcp, testing, validatie, inspector, debugging, developer-tools]
estimatedTime: "10-20 minuten"
version: "1.0.0"
author: Upscailed
license: MIT
---

# MCP-tester — Upscailed

## Doel

Bewijst dat een MCP-server (lokaal of in productie) volledig werkt: alle tools reageren correct, alle resources zijn leesbaar, en de authenticatie laat geldige tokens door en weigert ongeldige. Genereert een testrapport dat je naast de code legt voordat je de server aan Claude koppelt. Voorkomt dat je een halfwerkende MCP rondzet die in Claude stilletjes faalt.

Werkt voor elke MCP-server, ongeacht stack (Node, Python, Go), transport (stdio, SSE, Streamable HTTP) of hosting (lokaal, Vercel, Cloudflare Workers, eigen VPS).

## Wanneer triggeren

Activeer deze skill wanneer de gebruiker:
- Een nieuwe MCP-server heeft gebouwd en wil verifiëren dat alles werkt
- Een bestaande MCP-server heeft aangepast en regressie wil uitsluiten
- Claude een MCP-tool aanroept en een onverwachte fout krijgt ("ik kan dit niet", "de tool faalt")
- Wil weten welke tools/resources er beschikbaar zijn op een MCP-endpoint
- Zegt: "test mijn MCP", "valideer de MCP", "is de MCP server stuk?", "debug deze MCP", "controleer wat de MCP doet"

## Visuele Flow

```
┌─────────────────────────────────────────────────────────┐
│  MCP-TESTER                                              │
└─────────────┬───────────────────────────────────────────┘
              ▼
   ┌─────────────────────┐
   │ 1. Doel & scope     │  Welke MCP? Wat moet
   │                     │  bewezen worden?
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 2. Inspector        │  npx Inspector starten
   │    starten          │  (CLI of UI)
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 3. Verbinding +     │  Transport + URL/cmd +
   │    auth check       │  Bearer/header zetten
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 4. Discovery        │  tools/list +
   │                     │  resources/list
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 5. Tool-by-tool     │  Elke tool aanroepen
   │    valideren        │  met realistische input
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 6. Auth-falen-test  │  Verifieer 401 bij
   │                     │  ongeldig/geen token
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 7. Rapport          │  Markdown-tabel met
   │                     │  call ↔ resultaat
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 8. Daily loggen     │  Resultaat in
   │                     │  Huddle/Daily
   └─────────────────────┘
```

## Workflow

### Stap 1: Doel en scope vaststellen

Vraag de gebruiker (of leid af uit context):

- **Welke MCP-server?** Naam + locatie van de code
- **Welke omgeving?** Lokaal (dev), staging, of productie
- **Transport?**
  - `stdio` — lokale commandline (`node mcp.js` of `python mcp.py`)
  - `sse` — Server-Sent Events HTTP endpoint
  - `http` — Streamable HTTP (de moderne standaard voor remote MCPs)
- **Authenticatie?** Bearer token, custom header, of geen
- **Welke tools verwacht je?** Lijst zodat je het kunt vergelijken met `tools/list`

Sla deze info kort op in een werkbestand zodat het herhaalbaar is.

### Stap 2: MCP Inspector starten

MCP Inspector heeft node ≥ 22.7.5 nodig. Check eerst de versie:

```bash
node --version  # Moet v22.7.5+ zijn
```

Heb je een oudere node, gebruik dan `nvm use 22` of een alternatieve node-installatie (`/usr/local/bin/node` is vaak nieuwer dan een persoonlijke `~/local/bin/node`).

**Twee modes:**

**A) CLI-mode** — voor snelle automatische verificatie of CI:
```bash
npx @modelcontextprotocol/inspector --cli <URL_of_stdio_command> \
  --transport <stdio|sse|http> \
  [--header "Authorization: Bearer <token>"] \
  --method tools/list
```

**B) UI-mode** — interactief klikken door tools, formulieren invullen:
```bash
npx @modelcontextprotocol/inspector
# Output toont: http://localhost:6274/?MCP_PROXY_AUTH_TOKEN=...
```

Open de URL met het session-token in de browser.

### Stap 3: Verbinding en auth-check

**In UI:**
1. Kies transport (Streamable HTTP voor moderne remote MCPs)
2. Vul URL of commando in
3. Voeg headers toe (klik "Add Header", bv. `Authorization: Bearer <PAT>`)
4. Klik **Connect**

Resultaat: groene "Connected" indicator + serverinfo (naam, versie).

**In CLI:**
Een geslaagde `tools/list` call bewijst dat verbinding én auth werken.

**Bij falen:**
- `401`: token klopt niet of is ingetrokken → controleer in de bron-app (bv. PAT-lijst)
- `404`: URL klopt niet → kijk naar trailing slashes en het pad (`/mcp` vs `/`)
- `CORS error`: server stuurt geen `Access-Control-Allow-Origin` → check serverconfig
- `timeout`: server slaapt of is down → wakker maken via een health-endpoint

### Stap 4: Discovery — wat zit erin?

Roep `tools/list` en `resources/list` aan. Vergelijk met wat de gebruiker verwachtte.

```bash
# CLI
npx @modelcontextprotocol/inspector --cli <url> \
  --transport http --header "Authorization: Bearer <token>" \
  --method tools/list

npx @modelcontextprotocol/inspector --cli <url> \
  --transport http --header "Authorization: Bearer <token>" \
  --method resources/list
```

**Wat te checken:**
- Aantal tools klopt
- Tool-namen volgen een herkenbaar prefix (bv. `<app>_<actie>`)
- Elke tool heeft een goede `description` (Claude leest dit om te kiezen)
- `inputSchema` heeft de juiste velden, required-flags en validatie
- Resources (als er zijn) hebben een logische URI-prefix (`<app>://...`)

### Stap 5: Tool-by-tool valideren

Per tool een realistische call doen. Begin met read-only tools, daarna write-tools.

```bash
# Voorbeeld: read-only tool zonder argumenten
npx @modelcontextprotocol/inspector --cli <url> \
  --transport http --header "Authorization: Bearer <token>" \
  --method tools/call --tool-name <tool_name>

# Voorbeeld: tool met argumenten
npx @modelcontextprotocol/inspector --cli <url> \
  --transport http --header "Authorization: Bearer <token>" \
  --method tools/call --tool-name <tool_name> \
  --tool-arg key1=value1 --tool-arg key2=value2
```

**Per tool noteren:**
- ✅/❌ Slaagt
- Latency (snelle eyeball: <1s, 1-3s, >3s)
- Antwoordformaat klopt (JSON parseable, geen lege response)
- Foutpaden: roep elke tool ook eens aan met ongeldige input (bv. niet-bestaande ID) en check dat de fout netjes terugkomt, niet als HTTP 500

**Resources:**
Per resource ook `resources/read --uri <uri>` aanroepen en checken dat de inhoud klopt.

### Stap 6: Auth-falen-test (security check)

Bewijs dat de server ongeldige tokens weigert. Drie scenario's:

1. **Geen token:** roep zonder `Authorization` header → verwacht `401`
2. **Random token:** `Authorization: Bearer dit-is-onzin-12345` → verwacht `401`
3. **Geldig formaat maar ingetrokken token:** als je een oude PAT hebt → verwacht `401`

Als een van deze toch een `200` teruggeeft, is de auth-laag stuk en mag de server NIET naar productie.

### Stap 7: Rapport schrijven

Markdown-tabel met de uitslag. Aanbevolen format:

```markdown
# MCP Validatie — <ServerNaam> — <YYYY-MM-DD>

**Endpoint:** <url of stdio-commando>
**Transport:** <stdio | sse | http>
**Auth:** <Bearer PAT | OAuth | geen>

## Discovery

- Tools gevonden: <aantal>
- Resources gevonden: <aantal>
- Verwacht: <aantal> (✅ klopt / ⚠️ verschilt)

## Tool-validatie

| Tool | Resultaat | Latency | Opmerking |
|---|---|---|---|
| tool_a | ✅ | <1s | Volledig antwoord |
| tool_b | ❌ | n.v.t. | Faalt op X want Y |

## Resources

| URI | Resultaat |
|---|---|
| app://thing | ✅ |

## Auth-falen-test

| Scenario | Verwacht | Actueel | Status |
|---|---|---|---|
| Geen token | 401 | 401 | ✅ |
| Random token | 401 | 401 | ✅ |
| Ingetrokken token | 401 | 401 | ✅ |

## Conclusie

<Productieklaar / Blokkers / Backlog-items>
```

Sla op in de repo (`docs/mcp-validation-YYYY-MM-DD.md`) en/of in de vault onder de AI-tool-card.

### Stap 8: Daily loggen

Log één regel in `Huddle/Daily/YYYY-MM-DD.md` onder een passende sectie:

```
### ✅ HH:MM — MCP validatie <ServerNaam>
- N tools / M resources getest, K geslaagd, X gefaald
- Auth-test ✅ (401 op alle ongeldige scenario's)
- Rapport: <link naar markdown>
```

## Tips & valkuilen

- **Node-versie:** MCP Inspector 0.21+ vereist node ≥ 22.7.5. Een oudere node (v20) crasht met module-not-found errors. Check altijd eerst.
- **Trailing slash:** `https://server.com/mcp` en `https://server.com/mcp/` zijn niet altijd hetzelfde. Bij 404 probeer beide.
- **Session-token UI:** de Inspector UI vereist een query-string token om misbruik vanaf andere websites te voorkomen. Kopieer altijd de hele URL uit de startup-log, niet alleen `http://localhost:6274`.
- **`tools/list` werkt zonder dat de tools werken:** lijst-aanroep is metadata, kost geen API-call. Een geslaagde `tools/list` bewijst connectie + auth-format, niet dat de onderliggende API leeft. Doe daarom altijd minimaal één echte `tools/call`.
- **Stdio-mode debug:** als stdio-transport vastloopt, draait je server vaak naar `stderr` of crasht op startup. Run het commando los in de terminal en kijk naar de output.
- **Schoon-testen:** maak een aparte test-PAT/account aan zodat je productie-data niet bevuilt. Trek de PAT achteraf in.

## Belangrijke regels

- **Geen secrets in het rapport.** Tokens, PATs, API-keys worden NOOIT in het markdown-rapport gezet. Vervang door `<REDACTED>` of `stk_live_...` (alleen prefix).
- **Auth-falen-test verplicht.** Een MCP zonder werkende auth-check is een lek. Sla deze stap nooit over.
- **ALTIJD loggen** in de daily, ook bij een geslaagde run zonder bevindingen.
- **Bij productie-testen:** test met read-only tools eerst. Write-tools alleen tegen een test-account of na expliciete toestemming.
