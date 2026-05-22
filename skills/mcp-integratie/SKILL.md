---
name: mcp-integratie
description: "Bouwt een complete AI-integratie voor een app in één doorlopende workflow: API-koppeling (REST + client-SDK), MCP-server bovenop (stdio + Streamable HTTP), authenticatie, lokaal + productie deploy, Inspector-validatie en Claude koppelen. Voor wanneer je een app van nul wilt openstellen voor AI-agenten of een bestaande integratie wilt afmaken. Adaptief: kan instappen op elk punt in de flow. Triggert op: MCP-integratie bouwen, app verbinden met Claude, API tot AI, complete MCP-flow, MCP van nul, AI-koppeling maken, MCP testen, MCP valideren, MCP debuggen."
category: bouwen
tags: [mcp, api, integratie, claude, inspector, deployment, end-to-end]
estimatedTime: "1-4 uur (afhankelijk van API-complexiteit)"
version: "1.0.0"
author: Upscailed
license: MIT
---

# MCP-integratie — Upscailed

## Doel

Maakt een app of dienst beschikbaar voor AI-agenten (Claude, ChatGPT, Cursor, etc.) via het Model Context Protocol — niet als losse stapjes, maar als één doorlopende productie-grade workflow:

1. **API-laag** ontwerpen of gebruiken (REST + typed client-SDK)
2. **MCP-server** schrijven die de API blootstelt als tools en resources
3. **Authenticatie** veilig regelen (Bearer PAT als standaard)
4. **Lokaal valideren** met de MCP Inspector
5. **Productie deployen** (Vercel, Cloudflare Workers, eigen VPS)
6. **Claude koppelen** (Code + Desktop)
7. **Rapport** schrijven voor de gebruiker

Werkt voor elke stack (Node, Python, Go, Deno) en elk transport. De skill is **adaptief**: als de gebruiker al delen heeft (bv. een werkende API), springt 'ie naar de juiste fase.

## Wanneer triggeren

Activeer deze skill wanneer de gebruiker:
- Een app of dienst wil verbinden met Claude (of een andere AI-agent)
- Een MCP wil bouwen, valideren, of debuggen
- Een API heeft die nog niet door AI bereikbaar is
- Zegt: "MCP voor [tool] bouwen", "Claude koppelen aan [app]", "API tot AI", "test mijn MCP", "valideer de MCP", "MCP van nul", "AI-integratie maken voor [bedrijf]"

## Visuele Flow

```
┌─────────────────────────────────────────────────────────┐
│  MCP-INTEGRATIE — UPSCAILED                              │
└─────────────┬───────────────────────────────────────────┘
              ▼
   ┌─────────────────────┐
   │ 0. Instap-check     │  Waar sta je? Nieuw / API
   │                     │  klaar / MCP klaar
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 1. Doel & scope     │  Welke app? Welke acties?
   │                     │  Wie gebruikt 'm?
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 2. API ontwerpen    │  Endpoints, schemas,
   │                     │  auth-methode
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 3. Client-SDK       │  Lichtgewicht typed
   │                     │  wrapper rond REST
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 4. MCP-server       │  Tools + Resources,
   │                     │  Zod schemas
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 5. Auth-laag        │  Bearer PAT per
   │                     │  request, 401 op fout
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 6. Inspector test   │  tools/list, calls,
   │                     │  auth-falen-test
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 7. Productie deploy │  Vercel / Workers,
   │                     │  env vars, smoke test
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 8. Claude koppelen  │  Code + Desktop, end-
   │                     │  to-end bewijzen
   └──────────┬──────────┘
              ▼
   ┌─────────────────────┐
   │ 9. Rapport + daily  │  Markdown + log in
   │                     │  Huddle/Daily
   └─────────────────────┘
```

## Workflow

### Stap 0: Instap-check

Vraag de gebruiker waar 'ie staat. Sla over wat al klaar is.

```
- [ ] Begin van nul (geen API, geen MCP)              → start bij Stap 1
- [ ] API bestaat al (REST endpoints werken)          → start bij Stap 3
- [ ] MCP-server bestaat lokaal (stdio werkt)         → start bij Stap 6
- [ ] MCP draait in productie (HTTP endpoint live)    → start bij Stap 6 (validatie)
```

Geen tijd verspillen aan wat al werkt.

### Stap 1: Doel en scope

Verzamel:

- **App/dienst:** naam + huidige hosting (eigen server, SaaS, lokaal, etc.)
- **Doelgroep AI-gebruiker:** alleen ikzelf, een team, of publiek?
- **Wat moet de AI kunnen?** Lezen (gevaarloos), schrijven (gevaarlijker), of beide? Welke 3-7 hoogwaardige acties zijn prioriteit?
- **Data-gevoeligheid:** persoonsdata? klantdata? financieel? Bepaalt auth-strictheid.
- **Transport-voorkeur:** stdio voor solo-gebruik (sneller, simpel) of HTTP voor remote/multi-user (productie-grade).

Sla dit op in een werk-doc dat je gaande de flow blijft updaten.

### Stap 2: API ontwerpen of inventariseren

**Heb je al een API?**
- Lees de OpenAPI/Postman/codebase
- Noteer per endpoint: pad, methode, auth, response-schema
- Identificeer welke endpoints AI nodig heeft (vaak een subset)

**Bouw je 'm nieuw?**
- Aanbevolen stack: **Hono** (Node, Cloudflare Workers, Bun, Deno — universele edge framework) of **FastAPI** (Python)
- Endpoints: REST, JSON in/out, Bearer auth
- Schema validatie: **Zod** (Node) of **Pydantic** (Python) — hergebruik dezelfde schemas later in de MCP

**Aanbevolen structuur** (Node monorepo voorbeeld):
```
apps/api/             ← REST API (Hono)
apps/mcp/             ← MCP server
packages/core/        ← gedeelde domein-logica + Zod schemas
packages/client-sdk/  ← typed REST client
```

Voordeel: de MCP-server gebruikt de client-SDK om de REST API te bevragen. Geen dubbele logica, geen drift.

### Stap 3: Client-SDK schrijven

Bouw een dunne, getypte wrapper rond de REST API. Eén bestand, hoogstens 100 regels.

**Patroon (TypeScript):**
```ts
export interface ClientOptions {
  baseUrl: string
  getToken: () => string | undefined
}

export class ApiError extends Error {
  constructor(public status: number, public code: string, message: string) {
    super(message)
  }
}

export function createClient(opts: ClientOptions) {
  async function request<T>(path: string, init?: RequestInit): Promise<T> {
    const token = opts.getToken()
    const resp = await fetch(opts.baseUrl + path, {
      ...init,
      headers: {
        'Content-Type': 'application/json',
        ...(token ? { 'Authorization': `Bearer ${token}` } : {}),
        ...init?.headers,
      },
    })
    if (!resp.ok) {
      const body = await resp.json().catch(() => ({}))
      throw new ApiError(resp.status, body.code ?? 'unknown', body.message ?? resp.statusText)
    }
    return resp.json() as Promise<T>
  }
  
  return {
    listThings: () => request<{ things: Thing[] }>('/v1/things'),
    getThing:   (id: string) => request<Thing>(`/v1/things/${id}`),
    createThing: (input: ThingInput) => request<Thing>('/v1/things', {
      method: 'POST', body: JSON.stringify(input),
    }),
  }
}
```

**Belangrijk:**
- Auth-token komt uit een callback (`getToken()`), niet hardcoded — zo kan de MCP-server een per-request token doorgeven
- Errors als typed exception (`ApiError`) zodat de MCP-server ze netjes kan formatteren
- Geen state in de client zelf

### Stap 4: MCP-server schrijven

Gebruik de officiële SDK: `@modelcontextprotocol/sdk` (Node) of `mcp` (Python).

**Patroon (Node, beide transports in één codebase):**

```ts
// server.ts — pure factory
import { McpServer } from '@modelcontextprotocol/sdk/server/mcp.js'
import { z } from 'zod'
import { createClient, type Client } from './client-sdk'

export function buildServer(client: Client): McpServer {
  const server = new McpServer({ name: 'mijn-app', version: '1.0.0' })
  
  server.registerTool(
    'mijnapp_list',
    {
      title: 'Lijst dingen',
      description: 'Geeft alle dingen terug met basis-metadata.',
      inputSchema: { archived: z.boolean().optional() },
    },
    async ({ archived }) => {
      try {
        const { things } = await client.listThings({ archived })
        return { content: [{ type: 'text', text: JSON.stringify(things, null, 2) }] }
      } catch (err) {
        return { content: [{ type: 'text', text: err.message }], isError: true }
      }
    },
  )
  
  server.registerResource(
    'today',
    'mijnapp://today',
    { title: "Vandaag's overzicht", mimeType: 'application/json' },
    async uri => {
      const data = await client.getToday()
      return { contents: [{ uri: uri.href, text: JSON.stringify(data) }] }
    },
  )
  
  return server
}
```

```ts
// stdio.ts — lokale dev-mode
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js'
import { buildServer } from './server'
import { createClient } from './client-sdk'

const token = process.env.APP_TOKEN
if (!token) { console.error('APP_TOKEN ontbreekt'); process.exit(1) }

const client = createClient({ baseUrl: 'http://localhost:8787', getToken: () => token })
await buildServer(client).connect(new StdioServerTransport())
```

```ts
// httpHandler.ts — Streamable HTTP voor remote/serverless
import { StreamableHTTPServerTransport } from '@modelcontextprotocol/sdk/server/streamableHttp.js'
import { buildServer } from './server'
import { createClient } from './client-sdk'

export async function handleMcp(req, res) {
  // CORS
  res.setHeader('Access-Control-Allow-Headers', 'Authorization, Content-Type, Mcp-Session-Id')
  res.setHeader('Access-Control-Allow-Methods', 'POST, GET, OPTIONS')
  if (req.method === 'OPTIONS') { res.writeHead(204); res.end(); return }
  
  // Auth (per request)
  const match = /^Bearer\s+(.+)$/i.exec(req.headers.authorization ?? '')
  if (!match) { res.writeHead(401); res.end(JSON.stringify({ error: 'Bearer token ontbreekt' })); return }
  
  // Stateless: fresh server+transport per request
  const client = createClient({ baseUrl: process.env.API_URL, getToken: () => match[1] })
  const server = buildServer(client)
  const transport = new StreamableHTTPServerTransport({
    sessionIdGenerator: undefined,
    enableJsonResponse: true,
  })
  
  res.on('close', () => { transport.close(); server.close() })
  await server.connect(transport)
  await transport.handleRequest(req, res, await readBody(req))
}
```

**Drie regels die je niet mag overslaan:**
1. **Zod schemas** voor elke tool — Claude leest die om input te genereren
2. **Descriptions die voor Claude geschreven zijn** — kort, dwingend, in de imperatief
3. **`isError: true`** bij fouten — anders weet Claude niet dat er iets fout ging

### Stap 5: Auth-laag

Bearer PAT (Personal Access Token) is de simpelste robuuste keuze voor solo + small-team gebruik. OAuth komt later als je multi-user wordt.

**Wat moet er staan:**
- API genereert PAT bij login (login flow valt buiten deze skill)
- PAT format met prefix: `app_live_<random>` zodat herkomst zichtbaar is
- PAT wordt gehashed opgeslagen (bcrypt of SHA-256), nooit plain in DB
- MCP server haalt PAT uit `Authorization: Bearer <pat>` header en stuurt door naar de API
- API valideert PAT tegen DB en weigert met 401 bij ongeldig

**Drie scenario's die 401 moeten geven (test in Stap 6):**
- Geen `Authorization` header
- Geldig formaat maar onbekend token (`Bearer dit-bestaat-niet`)
- Geldig formaat maar ingetrokken token

### Stap 6: Inspector-validatie

Verplichte gate voor productie. Node ≥ 22.7.5 vereist.

**Twee modes:**

```bash
# CLI — automatische verificatie + CI
npx @modelcontextprotocol/inspector --cli <URL> \
  --transport <stdio|sse|http> \
  --header "Authorization: Bearer <token>" \
  --method tools/list

# UI — interactief
npx @modelcontextprotocol/inspector
# Open de localhost-URL met session-token uit de startup-log
```

**Checklist:**
- [ ] `tools/list` → aantal en namen kloppen, descriptions oké
- [ ] `resources/list` → URIs herkenbaar
- [ ] Per tool een `tools/call` met realistische input → 200 + valide JSON
- [ ] Per tool ook een call met onzin-input → nette `isError: true` (geen HTTP 500)
- [ ] Per resource een `resources/read` → klopt
- [ ] Geen header → 401
- [ ] Random token → 401
- [ ] Ingetrokken token → 401

**Slaagt iets niet?** Niet doorgaan naar productie. Fix eerst.

### Stap 7: Productie deploy

**Vercel (Streamable HTTP MCP, serverless):**

`apps/mcp/api/index.ts`:
```ts
import { handleMcp } from '../src/httpHandler'
export const config = { runtime: 'nodejs' }
export default handleMcp
```

`apps/mcp/vercel.json`:
```json
{
  "version": 2,
  "rewrites": [{ "source": "/(.*)", "destination": "/api/index" }]
}
```

```bash
cd apps/mcp
vercel deploy --prod
# Vergeet niet env vars te zetten: API_URL, eventuele secrets
```

**Cloudflare Workers (alternatief, vaak nog goedkoper):**
- Hono + `@modelcontextprotocol/sdk` werken native
- Aanroep via `wrangler deploy`

**Smoke test direct na deploy:**
```bash
curl -s https://mcp.<domein>/health  # 200
npx @modelcontextprotocol/inspector --cli https://mcp.<domein>/mcp \
  --transport http \
  --header "Authorization: Bearer <prod-token>" \
  --method tools/list
```

### Stap 8: Claude koppelen

**Claude Code (CLI):**

`~/.claude.json` (user-scope) of `.mcp.json` (project-scope):
```json
{
  "mcpServers": {
    "mijn-app": {
      "type": "http",
      "url": "https://mcp.mijnapp.nl/mcp",
      "headers": {
        "Authorization": "Bearer <pat>"
      }
    }
  }
}
```

**Claude Desktop:**

Claude Desktop ondersteunt geen native HTTP MCP — gebruik de `mcp-remote` proxy als stdio-bridge.

`~/Library/Application Support/Claude/claude_desktop_config.json` (macOS):
```json
{
  "mcpServers": {
    "mijn-app": {
      "command": "/absolute/path/to/npx",
      "args": ["-y", "mcp-remote", "https://mcp.mijnapp.nl/mcp", "--header", "Authorization:${APP_AUTH}"],
      "env": {
        "APP_AUTH": "Bearer <pat>",
        "PATH": "/absolute/path/to/npm-bin:/usr/local/bin:/usr/bin:/bin"
      }
    }
  }
}
```

**Belangrijk voor Claude Desktop:**
- GUI-apps erven geen shell-PATH — gebruik absolute paden naar `npx`
- Stel `PATH` env-var expliciet in zodat `npx` z'n eigen binaries vindt
- Herstart Claude Desktop volledig na config-wijziging

**Eindbewijs:** vraag Claude in een nieuw gesprek iets dat alleen via de MCP kan ("haal de eerste 3 things op via mijn-app"). Als 'ie het tool aanroept en het antwoord klopt → integratie werkt.

### Stap 9: Rapport + daily log

**Rapport** (`docs/mcp-integration-<naam>-<YYYY-MM-DD>.md`):

```markdown
# MCP-integratie — <AppNaam> — <YYYY-MM-DD>

## Stack
- API: <Hono/FastAPI/...>, hosted op <Vercel/...>
- MCP: <Streamable HTTP/stdio>, hosted op <...>
- Auth: Bearer PAT (`<prefix>_live_...`)

## Endpoints
- API: `https://api.mijnapp.nl/v1`
- MCP: `https://mcp.mijnapp.nl/mcp`

## Tools (N)
| Tool | Doel | Schema |
|---|---|---|
| ... | ... | ... |

## Resources (M)
| URI | Doel |
|---|---|
| ... | ... |

## Inspector-validatie
- tools/list ✅, resources/list ✅
- N van N tool-calls geslaagd
- Auth-falen-test ✅ (alle drie 401)

## Claude-koppeling
- Code: `~/.claude.json` ✅
- Desktop: `claude_desktop_config.json` via `mcp-remote` ✅
- End-to-end bewezen: <prompt> → <correct antwoord>

## Open punten
- [ ] ...
```

**Geen secrets in dit rapport.** Tokens als `<REDACTED>` of alleen prefix.

**Daily log:**
```
### ✅ HH:MM — MCP-integratie <AppNaam> opgeleverd
- API + MCP + Inspector + Claude koppeling werkend
- N tools, M resources
- Rapport: <link>
```

## Tips & valkuilen

- **Node 22+:** MCP Inspector vereist v22.7.5+; check eerst `node --version`. Op systemen met meerdere nodes is `/usr/local/bin/node` vaak nieuwer.
- **Trailing slash:** `https://server/mcp` ≠ `https://server/mcp/` op sommige routers — probeer beide bij 404.
- **`tools/list` werkt los van de echte API:** een geslaagde lijst-call bewijst alleen connectie + auth-formaat, niet dat de onderliggende API leeft. Doe altijd minstens één echte `tools/call`.
- **Stateless per request:** voor serverless is dit cruciaal — anders lekken transports + servers tussen invocations. `sessionIdGenerator: undefined` is de stateless-mode-vlag.
- **CORS:** vergeet `Access-Control-Allow-Headers: Authorization` niet, anders blokkeert de browser-Inspector pre-flight.
- **mcp-remote PATH:** Claude Desktop start zonder shell — npx wordt nooit gevonden zonder absolute path of expliciete `PATH` env.
- **Tool-descriptions schrijf je voor Claude, niet de gebruiker:** kort, dwingend, in de imperatief ("Geeft X terug" niet "Met deze tool kun je X opvragen").
- **Read-only first:** maak alle read-tools werkend voordat je aan write-tools begint. Voorkomt dat een test productie-data corrupt.

## Belangrijke regels

- **NOOIT secrets in code, configs of rapporten.** Tokens, API-keys, service-accounts horen in env vars of secret stores. Voorbeelden gebruiken `<token>` of `<REDACTED>`.
- **Inspector-validatie is verplicht** vóór productie. Geen uitzonderingen — een MCP zonder werkende auth-check is een datalek.
- **Stateless transport** voor serverless. Geen state-leak tussen requests.
- **Read-only tools eerst.** Write-tools alleen tegen test-account of na expliciete toestemming van gebruiker.
- **ALTIJD loggen** in de daily, ook bij geslaagde flow zonder bijzonderheden.
