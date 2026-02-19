# People data
$people = @(
    @{ FirstName = 'Arne'; LastName = 'Arnesen' }
    @{ FirstName = 'Magnus'; LastName = 'Magnusson' }
    @{ FirstName = 'Siri'; LastName = 'Sirisen' }
    @{ FirstName = 'Stefan'; LastName = 'Stefanson' }
)

function Invoke-Greeting {
    param(
        [string]$FirstName,
        [string]$LastName
    )
    Write-Host "Hello $FirstName $LastName"
}

function Invoke-GreetTheGang {
    foreach ($person in $people) {
        Invoke-Greeting -FirstName $person.FirstName -LastName $person.LastName
    }
}

# Execute the function
Invoke-GreetTheGang
