# Øvelse 2 - Branches og Merging

## :bulb: Mål

Lær å opprette branches, merge endringer og løse konflikter.

## 2.1 - Opprett en Branch

:pencil2: Sjekk at du er på `main` (`git branch`) og opprett en ny branch:

```shell
git checkout -b feature-branch-1
```

:pencil2: Opprett en fil `index.ps1` med dette innholdet:

```powershell
function Invoke-Greeting {
    param([string]$Name)
    Write-Host "Hello $Name"
}

# Test the function
Invoke-Greeting -Name "World"
```

:pencil2: Commit filen:

```shell
git add index.ps1
git commit -m "Add greeting function"
```

## 2.2 - Merge til Main

:pencil2: Bytt til `main` og merge feature branchen din:

```shell
git checkout main
git merge feature-branch-1
```

En editor vil åpnes for merge commit-meldingen. Lagre og lukk for å fullføre mergen.

## 2.3 - Håndter en Merge Conflict

:bulb: Når flere personer jobber på de samme filene, kan konflikter oppstå. La oss øve på å løse dem.

:pencil2: Opprett branch `feature-branch-2` fra `main`. Erstatt innholdet i `index.ps1` med koden fra `code/2.3-change-1.ps1` i dette repositoriet. Commit den.

:pencil2: Sjekk ut `main`, og opprett deretter `feature-branch-3`. Erstatt `index.ps1` med kode fra `code/2.3-change-2.ps1`. Commit den.

:pencil2: Merge `feature-branch-2` inn i `main`, og prøv deretter å merge `feature-branch-3` inn i `main`.

:bulb: Du vil se en konflikt! I VS Code, gå til Source Control-fanen, finn filen under "Merge Changes", og klikk **"Resolve in Merge Editor"**.

:bulb: Du vil se tre vinduer:
- **Incoming**: Endringer fra branchen som merges
- **Current**: Nåværende innhold i `main`
- **Result**: Hvordan den endelige mergen vil se ut

:pencil2: Velg hvilke endringer du vil beholde ved å klikke "Accept Incoming", "Accept Current" eller "Accept Both". Klikk "Complete Merge".

:pencil2: Fullfør mergen i terminalen:

```shell
git add index.ps1
git commit -m "Resolve merge conflict"
```

:pencil2: Push til GitHub:

```shell
git push
```

---

[:arrow_right: Gå til neste øvelse](../exercise-3/README.md)
