# PowerShell script to add all changes and commit with a custom message
# Usage: .\commit_script.ps1 "Your commit message here"

param(
    [Parameter(Mandatory=$true)]
    [string]$CommitMessage
)

# Check if there are any changes to commit
$status = git status --porcelain
if ($status -eq $null -or $status -eq "") {
    Write-Host "No changes to commit."
    exit 0
}

# Add all changes
git add .

# Commit with the provided message
git commit -m $CommitMessage

Write-Host "Changes committed successfully with message: $CommitMessage"

# Optional: Push to remote (uncomment if desired)
# git push origin main
# Write-Host "Changes pushed to remote repository."