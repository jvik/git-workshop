# Øvelse 2 - Branches og Merging

## :bulb: Mål

Lær å opprette branches og merge endringer.

## 2.1 - Opprett en Branch

:pencil2: Sjekk at du er på `main` (`git branch`) og opprett en ny branch:

```shell
git switch -c feature-branch-1
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
git switch main
git merge feature-branch-1
```

En editor vil åpnes for merge commit-meldingen. Lagre og lukk for å fullføre mergen.

## 2.3 - Om Merge Conflicts

:bulb: Når flere personer endrer de samme linjene i en fil, kan det oppstå **merge conflicts**. Git klarer ikke å avgjøre hvilken endring som skal beholdes, og ber deg om å løse konflikten manuelt.

:bulb: Git og moderne editorer som VS Code har innebygde verktøy for å håndtere merge conflicts visuelt. Du får presentert endringene fra begge sider og kan velge hvilken versjon du vil beholde, eller kombinere dem. Når du støter på en konflikt i praksis, vil Git gi deg tydelig beskjed om hva som må løses før du kan fullføre mergen.

---

[:arrow_right: Gå til neste øvelse](../exercise-3/README.md)
