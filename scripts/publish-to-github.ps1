param(
    [Parameter(Mandatory = $true)]
    [string]$RepoUrl
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Git is not installed or not available in PATH."
}

if (-not (Test-Path ".git")) {
    throw "Current directory is not a Git repository. Run this script in the zh-humanizer root folder."
}

$currentBranch = git branch --show-current
if (-not $currentBranch) {
    throw "Cannot detect current branch."
}

$remoteNames = git remote
if ($remoteNames -contains "origin") {
    git remote set-url origin $RepoUrl
} else {
    git remote add origin $RepoUrl
}

git push -u origin $currentBranch
git push origin --tags

Write-Host "Publish succeeded."
Write-Host "Remote: $RepoUrl"
Write-Host "Branch: $currentBranch"
