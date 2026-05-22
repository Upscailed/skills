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
cp -r ~/upscailed-skills/skills/tone-of-voice ~/.claude/skills/
```

Of alle skills tegelijk:

```bash
cp -r ~/upscailed-skills/skills/* ~/.claude/skills/
```

Daarna start je een nieuwe Claude Code sessie. De skill is direct beschikbaar wanneer je een passende vraag stelt.

## Beschikbare skills

| Skill | Categorie | Wat het doet |
|---|---|---|
| [tone-of-voice](skills/tone-of-voice/) | Communicatie | Bouwt in 10 stappen een compleet Tone of Voice document op |
| [prompt-optimaliseerder](skills/prompt-optimaliseerder/) | Productiviteit | Herschrijft rommelige prompts naar gestructureerde, hoogwaardige prompts |
| [feitencontrole](skills/feitencontrole/) | Research | Controleert systematisch elke feitelijke claim in een tekst en zoekt bronnen |
| [mcp-integratie](skills/mcp-integratie/) | Bouwen | Complete AI-integratie van API tot werkende MCP+Claude-koppeling in één workflow, incl. Inspector-validatie |

Bekijk alle skills met live preview en uitleg op [upscailed.nl/skills](https://upscailed.nl/skills).

## Folder-structuur per skill

```
skills/<naam>/
├── SKILL.md           ← hoofdbestand met instructies en frontmatter
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
