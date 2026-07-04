# Upscailed Skills

Open source skills-bibliotheek voor [Claude Code](https://docs.claude.com/en/docs/claude-code) en compatibele AI-systemen. Door [Upscailed](https://upscailed.nl).

> Plug-and-play modules die jouw AI-assistent specifieke taken laten uitvoeren: van merk-tone-of-voice opstellen tot feitencontrole en prompt-optimalisatie. Geschreven in helder Nederlands, gericht op MKB-ondernemers.

## Wat zijn skills?

Skills zijn herbruikbare instructie-sets die een AI-assistent een specifiek vakgebied of proces leren. Eén skill = één doel = één Markdown-bestand met optionele ondersteunende scripts. De AI laadt de skill alleen wanneer hij relevant is.

Officiele documentatie: [Anthropic Skills](https://docs.claude.com/en/docs/claude-code/skills).

## Snelle installatie

Per skill:

```bash
# Clone deze repo (eenmalig)
git clone https://github.com/Upscailed/skills.git ~/upscailed-skills

# Kopieer een specifieke skill naar je Claude Code skills-map
mkdir -p ~/.claude/skills
cp -r ~/upscailed-skills/skills/scale-structure ~/.claude/skills/
```

Of alle skills tegelijk:

```bash
cp -r ~/upscailed-skills/skills/* ~/.claude/skills/
```

Daarna start je een nieuwe Claude Code sessie. De skill is direct beschikbaar wanneer je een passende vraag stelt.

## Beschikbare skills

De SCALE-framework skills zijn gebundeld per thema: één skill per SCALE-laag plus één per cross-cutting domein. Elke thema-skill bevat een menu (router) en losse modules; de AI laadt alleen de module die je nodig hebt.

### SCALE-framework (5 lagen)

| Skill | Modules | Wat het doet |
|---|---|---|
| [scale-structure](skills/scale-structure/) | 12 | Het fundament: bedrijfsoverzicht, doelen, tone of voice, ICP, brand guidelines, SWOT, bedrijfsverhaal, producten en pricing, klantreis, SOP's, team en rollen, toolstack |
| [scale-collect](skills/scale-collect/) | 7 | Datastromen op orde: marketing-data, CRM, financiële data, klantfeedback, website-analytics, concurrentie-research, operationele KPI's |
| [scale-analyze](skills/scale-analyze/) | 5 | Van data naar inzicht: rapportages, Mission Control, daily briefing, beslissings-analyse, benchmarking |
| [scale-leverage](skills/scale-leverage/) | 4 | Automatiseren: SOP's, auto-rapportages, mailflows, finance-automatisering |
| [scale-engineer](skills/scale-engineer/) | 6 | Maatwerk bouwen: dashboards, app-scoping, workflow-pipelines, klantportalen, kennisbanken, eigen skills |

### Cross-cutting domeinen (3)

| Skill | Modules | Wat het doet |
|---|---|---|
| [scale-marketing](skills/scale-marketing/) | 4 | Zichtbaar en vindbaar: website-launch-check, social presence, content-roadmap, nieuwsbrief |
| [scale-verkoop](skills/scale-verkoop/) | 2 | Voorspelbaar verkopen: salesproces en opvolg-flow (pricing leeft in scale-structure) |
| [scale-juridisch](skills/scale-juridisch/) | 6 | Zakelijke basis: KvK, BTW, algemene voorwaarden, privacyverklaring, klantcontract, verzekeringen |

### Losse skills

| Skill | Categorie | Wat het doet |
|---|---|---|
| [scale-audit](skills/scale-audit/) | Operations | Compleetheids-audit over alle 5 SCALE-lagen en 3 domeinen, met scores en prioriteiten |
| [os-builder](skills/os-builder/) | Setup | Zet een Second Brain / Personal OS vault op |
| [prompt-optimaliseerder](skills/prompt-optimaliseerder/) | Productiviteit | Herschrijft rommelige prompts naar gestructureerde, hoogwaardige prompts |
| [feitencontrole](skills/feitencontrole/) | Research | Controleert systematisch elke feitelijke claim in een tekst en zoekt bronnen |
| [mcp-integratie](skills/mcp-integratie/) | Bouwen | Complete AI-integratie van API tot werkende MCP+Claude-koppeling in één workflow, incl. Inspector-validatie |

Bekijk alle skills met live preview en uitleg op [upscailed.nl/skills](https://upscailed.nl/skills).

## Folder-structuur per skill

```
skills/<naam>/
├── SKILL.md           ← hoofdbestand met instructies en frontmatter
├── modules/           ← bij thema-skills: één workflow per module, on demand geladen
├── references/        ← optionele templates en naslagbestanden
├── scripts/           ← optionele helper-scripts (Python, Bash)
└── assets/            ← optionele bestanden (templates, voorbeelden)
```

De `SKILL.md`-frontmatter bevat zowel de Claude Code-velden (`name`, `description`) als extra metadata (`title`, `category`, `tags`, `version`) die Upscailed gebruikt voor de website.

## Bijdragen

Heb je een suggestie of verbetering? Open een [Issue](https://github.com/Upscailed/skills/issues) of een Pull Request. Voor security-issues, zie [SECURITY.md](SECURITY.md).

## Licentie

[MIT](LICENSE). Gebruiken, aanpassen, redistribueren mag, met behoud van de copyright-notice.

## Over Upscailed

Upscailed helpt MKB-ondernemers schalen met AI. Het [SCALE-framework](https://upscailed.nl) brengt bedrijven in vijf stappen van inzicht naar impact. Deze skills-bibliotheek is een onderdeel van die methodiek: kleine, herbruikbare bouwstenen die je AI-systeem direct slimmer maken.

Meer weten? [upscailed.nl](https://upscailed.nl) of mail [hallo@upscailed.nl](mailto:hallo@upscailed.nl).
