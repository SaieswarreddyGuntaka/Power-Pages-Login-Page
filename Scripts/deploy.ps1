# deploy.ps1

# Set variables
$solutionName = "LoginSolution"
$solutionFolder = "./solutions/$solutionName"
$zipPath = "./solutions/$solutionName.zip"
$environmentUrl = "https://yourenv.crm.dynamics.com"  # Replace with your environment URL

# Authenticate if needed
Write-Host "Authenticating to Power Platform..."
pac auth list
if ($LASTEXITCODE -ne 0) {
    pac auth create --url $environmentUrl
}

# Pack the solution (optional)
if (Test-Path $solutionFolder) {
    Write-Host "Packing solution..."
    pac solution pack --folder $solutionFolder --zipfile $zipPath --packagetype Unmanaged
}

# Import the solution
if (Test-Path $zipPath) {
    Write-Host "Importing solution to environment..."
    pac solution import --path $zipPath --environment $environmentUrl
} else {
    Write-Host "⚠️ Solution ZIP not found. Skipping import."
}

Write-Host "`n✅ Deployment Complete!"
