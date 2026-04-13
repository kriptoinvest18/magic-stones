Set-Location -Path $PSScriptRoot
Write-Host "Repository path: $PWD"

git status

git add .
try {
    git commit -m "Update site"
} catch {
    Write-Warning "No changes to commit or commit failed."
}

git push origin main
Write-Host "Push complete."