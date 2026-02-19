# Øvelse 3 - Pull Requests på GitHub

## :bulb: Mål

Lær å opprette Pull Requests (PRs), gjennomgå kode og merge endringer på GitHub.

## 3.1 - Opprett en Pull Request

:pencil2: Opprett en ny branch med et navn du velger selv:

```shell
git checkout -b my-new-feature
```

:pencil2: Opprett eller endre en fil, og commit den:

```shell
git add .
git commit -m "Add new feature"
```

:pencil2: Push branchen din til GitHub:

```shell
git push --set-upstream origin my-new-feature
```

:bulb: Etter push vil du få en link i terminalen for å opprette en PR. Alternativt, gå til repositoriet ditt på GitHub og klikk på den grønne "Compare & pull request"-knappen.

:pencil2: Fyll ut PR-skjemaet med en tittel og beskrivelse som forklarer endringene dine. Klikk "Create pull request".

## 3.2 - Gjennomgang og Merge

:pencil2: Utforsk PR-grensesnittet:
- Gå til **Files changed**-fanen for å se endringene dine
- Klikk på `+`-ikonet ved siden av et linjenummer for å legge til en kommentar
- Skriv en kommentar og send inn gjennomgangen din

:bulb: I et ekte prosjekt ville noen andre gjennomgått din PR. For øvelsens skyld kan du gjennomgå din egen.

:pencil2: Gå til **Conversation**-fanen og scroll ned til bunnen. Klikk på den grønne **"Merge pull request"**-knappen, og så **"Confirm merge"**.

:bulb: Etter merging vil GitHub tilby å slette branchen. Det er god praksis å slette mergede branches for å holde repositoriet ryddig.

:pencil2: Slett branchen på GitHub ved å klikke på "Delete branch"-knappen.

:pencil2: Pull endringene til din lokale `main` branch og slett den lokale feature branchen:

```shell
git checkout main
git pull
git branch -d my-new-feature
```

---

**Gratulerer! 🎉 Du har fullført Git-workshopen!**

Du kan nå:
- Sette opp Git og konfigurere det
- Opprette repositories lokalt og på GitHub
- Lage commits og pushe endringer
- Jobbe med branches og løse merge-konflikter
- Opprette og merge Pull Requests

Fortsett å øve på disse ferdighetene i prosjektene dine!
