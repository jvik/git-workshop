# Øvelse 1 - Oppsett og første Commit

## :bulb: Mål

Lær å konfigurere Git, opprette et repository, lage commits og pushe til GitHub.

## 1.1 - Konfigurere Git

:bulb: Hopp over dette hvis du allerede har konfigurert Git. Sjekk med: `git config --global user.name` og `git config --global user.email`

:pencil2: Sett ditt navn og e-post:

```shell
git config --global user.name "Ditt Navn"
git config --global user.email ditt.navn@epost.com
```

### 1.1.1 - Konfigurer standard editor (valgfritt)

:pencil2: For å bruke VS Code som din Git editor:

```shell
git config --global core.editor "code --wait"
```

## 1.2 - Opprett et git repository

:pencil2: Opprett en ny mappe kalt `git-workshop-files` og naviger til den i terminalen din:

```shell
mkdir git-workshop-files
cd git-workshop-files
```

:bulb: **Tips**: Åpne VS Code fra terminalen med `code .`

:pencil2: Initialiser et git repository:

```shell
git init
```

Du vil se: `Initialized empty Git repository in /[path]/git-workshop-files/.git/`

## 1.3 - Første commit

:pencil2: Opprett en fil kalt `README.md` med litt tekst (f.eks. `"Git Workshop"`).

:pencil2: Sjekk statusen:

```shell
git status
```

Du vil se `README.md` under `Untracked files`.

:pencil2: Legg filen til staging area:

```shell
git add README.md
```

:pencil2: Opprett en commit:

```shell
git commit -m "Initial commit"
```

:pencil2: Se commit-historikken din:

```shell
git log
```

Trykk `q` for å avslutte.

## 1.4 - Push til GitHub

### 1.4.1 - Autentiserings-oppsett

:bulb: Du må autentisere deg med GitHub. Hvis du ikke har satt opp SSH keys, følg denne dokumentasjonen:
- [Sjekk for eksisterende SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys)
- [Generer SSH key og legg til agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

### 1.4.2 - Opprett GitHub Repository

:pencil2: Gå til github.com, klikk på profilen din, deretter "Repositories"-fanen, og så den grønne "New"-knappen.

:pencil2: Gi repositoriet et navn (f.eks. `git-workshop`) og klikk **Create repository**. Ikke velg andre alternativer.

:pencil2: Du vil se instruksjoner for **"push an existing repository from the command line"**. Kopier og kjør disse kommandoene i terminalen din. De vil se ut som:

```shell
git remote add origin git@github.com:dinbruker/git-workshop.git
git branch -M main
git push -u origin main
```

:pencil2: Koden din er nå på GitHub! Gjør en liten endring i README.md på github.com (klikk på blyant-ikonet), og pull endringene lokalt:

```shell
git pull
```

---

[:arrow_right: Gå til neste øvelse](../exercise-2/README.md)
