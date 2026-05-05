# Security Policy

## Hoe een security-issue rapporteren

Vond je een kwetsbaarheid in een skill, een gevaarlijke instructie, een potentieel command-injection-risico in een script, of een credential die per ongeluk in deze repo terecht is gekomen? Stuur dan een mail naar **hallo@upscailed.nl** met:

- Een korte beschrijving van het issue
- Welke skill of welk bestand het betreft
- Hoe je het kunt reproduceren
- Welke impact je verwacht

We reageren binnen 5 werkdagen en houden je op de hoogte van de fix. Tot het issue is opgelost vragen we je het niet publiek te delen (responsible disclosure).

## Wat we doen om de skills veilig te houden

- Geen credentials, API-keys of tokens in deze repo. Pre-commit checks scannen op secrets.
- Geen skill voert automatisch code uit zonder bevestiging van de gebruiker.
- Skills die externe bronnen aanspreken (web search, API-calls) zijn duidelijk gemarkeerd in hun SKILL.md.
- Helper-scripts zijn klein en leesbaar. Lees ze door voordat je ze draait.

## Wat van jou wordt verwacht

- Voer een skill of bijbehorend script alleen uit als je de inhoud begrijpt of vertrouwt.
- Houd je Claude Code installatie up-to-date.
- Bewaar geen credentials in je vault of skills-folders. Gebruik daarvoor een wachtwoordmanager of `.env`-bestanden buiten Git.

Bedankt voor het meedenken over de veiligheid van deze bibliotheek.
