$server = "localhost"
$database = "AdventureWorksLT2022"
$username = "sa"
$password = "YourStrongPassword123"

# Loop through all SQL files in the procs folder
Get-ChildItem -Path "./procs" -Filter *.sql | ForEach-Object {
    Write-Host "Deploying $($_.Name)..."
    sqlcmd -S $server -U $username -P $password -d $database -i $_.FullName -C -N
}
