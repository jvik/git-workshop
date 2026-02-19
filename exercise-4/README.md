# Øvelse 4 - Fork og bidra til eksterne Repositories

## :bulb: Mål

Lær å forke et eksternt repository, gjøre endringer og bidra tilbake gjennom en Pull Request. Dette er den vanlige arbeidsflyten for å bidra til open source-prosjekter eller andres repositories.

## 4.1 - Fork et Repository

:pencil2: Gå til https://github.com/jvik/python-to-docker-demo i nettleseren din.

:pencil2: Klikk på **Fork**-knappen i øvre høyre hjørne av siden.

:bulb: En fork er din egen kopi av repositoriet på GitHub. Du kan gjøre endringer i din fork uten å påvirke det originale repositoriet.

:pencil2: GitHub vil opprette en fork under din konto. Når den er ferdig, vil du se at repositoriet nå ligger under ditt brukernavn: `github.com/dittbrukernavn/python-to-docker-demo`

## 4.2 - Clone din Fork

:pencil2: Clone din fork til din lokale maskin. Klikk på den grønne **Code**-knappen og kopier SSH-URLen:

```shell
git clone git@github.com:dittbrukernavn/python-to-docker-demo.git
cd python-to-docker-demo
```

:exclamation: Sørg for at du cloner **din fork**, ikke det originale repositoriet. URLen skal inneholde ditt brukernavn, ikke `jvik`.

:pencil2: Verifiser remote connections:

```shell
git remote -v
```

Du skal se `origin` peke til din fork.

## 4.3 - Opprett en Branch og gjør endringer

:pencil2: Opprett en ny branch for dine endringer:

```shell
git checkout -b add-my-contribution
```

:bulb: Bruk et beskrivende branchnavn som forklarer hva du endrer.

:pencil2: Gjør en endring i prosjektet. Du kan for eksempel:
- Legge til ditt navn i README.md under en "Contributors"-seksjon
- Forbedre dokumentasjonen
- Legge til en kommentar i koden

For eksempel, åpne `README.md` og legg til:

```markdown
## Contributors

- Ditt Navn
```

:pencil2: Commit endringen:

```shell
git add README.md
git commit -m "Add my name to contributors"
```

## 4.4 - Push og opprett Pull Request

:pencil2: Push branchen din til din fork:

```shell
git push --set-upstream origin add-my-contribution
```

:pencil2: Gå til repositoriet ditt på GitHub (din fork). Du vil se en melding med en knapp **"Compare & pull request"**. Klikk på den.

:bulb: Legg merke til at Pull Request-en går fra din fork til det originale repositoriet (`jvik/python-to-docker-demo`).

:pencil2: Fyll ut Pull Request-skjemaet:
- **Tittel**: Beskriv kort hva du har gjort (f.eks. "Add contributor name")
- **Beskrivelse**: Forklar endringen mer detaljert

:pencil2: Klikk **Create pull request**.

## 4.5 - Forstå arbeidsflyten

:bulb: Du har nå bidratt til et eksternt prosjekt! I en virkelig situasjon ville eieren av det originale repositoriet:
1. Få en notifikasjon om din Pull Request
2. Gjennomgå endringene dine
3. Eventuelt be om endringer eller forbedringer
4. Merge Pull Request-en hvis de godtar bidraget ditt

## 4.6 - Holde din Fork oppdatert (bonus)

:bulb: Når du jobber med en fork over lengre tid, kan det originale repositoriet få nye oppdateringer. Her er hvordan du holder din fork synkronisert:

:pencil2: Legg til det originale repositoriet som en remote kalt `upstream`:

```shell
git remote add upstream git@github.com:jvik/python-to-docker-demo.git
```

:pencil2: Hent endringer fra upstream:

```shell
git fetch upstream
```

:pencil2: Merge endringer inn i din lokale main branch:

```shell
git checkout main
git merge upstream/main
```

:pencil2: Push oppdateringene til din fork:

```shell
git push origin main
```

---

**Gratulerer! 🎉 Du har fullført alle øvelsene!**

Du kan nå:
- Sette opp Git og konfigurere det
- Opprette repositories lokalt og på GitHub
- Lage commits og pushe endringer
- Jobbe med branches og løse merge-konflikter
- Opprette og merge Pull Requests
- **Forke eksterne repositories og bidra gjennom Pull Requests**

Du har nå ferdighetene som trengs for å bidra til open source-prosjekter og samarbeide effektivt med andre utviklere!
