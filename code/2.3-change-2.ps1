# People data
$people = @(
    @{ FirstName = 'Magnus'; LastName = 'Magnusson' }
    @{ FirstName = 'Stefan'; LastName = 'Stefanson' }
)

function Invoke-Greeting {
    param(
        [string]$FirstName,
        [string]$LastName
    )
    Write-Host "Hei hei $FirstName $LastName"
}

function Invoke-GreetTheGang {
    foreach ($person in $people) {
        Invoke-Greeting -FirstName $person.FirstName -LastName $person.LastName
    }
}

# Execute the function
Invoke-GreetTheGang
