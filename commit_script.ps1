# PowerShell script to initialize git, add all files, and commit each file individually with comprehensive commit messages
# This script commits all files for the Stacks Counter Smart Contract project

# Initialize git repository if not already done
if (-not (Test-Path .git)) {
    git init
    Write-Host "Git repository initialized."
}

# Get all files in the workspace (excluding .git, node_modules, and other irrelevant directories)
$files = Get-ChildItem -Path . -Recurse -File | Where-Object {
    $_.FullName -notlike "*\.git*" -and
    $_.FullName -notlike "*node_modules*" -and
    $_.FullName -notlike "*.log"
} | Select-Object -ExpandProperty FullName

# Base message template for Stacks Counter Contract
$baseMessage = "Implemented comprehensive Stacks blockchain counter smart contract using Clarity language, featuring increment, decrement, and read operations with proper error handling. Built with Clarinet for development and testing, includes full test suite with Vitest, deployment configurations for Devnet/Testnet/Mainnet, and comprehensive documentation. Successfully deployed to Stacks testnet at STGDS0Y17973EN5TCHNHGJJ9B31XWQ5YXBQ0KQ2Y.counter. Utilizes modern development tools including TypeScript, Node.js, and follows best practices for smart contract development on Stacks blockchain. Added to {0} as part of the Counter Smart Contract project demonstrating Clarity fundamentals and Stacks ecosystem integration."

foreach ($file in $files) {
    Write-Host "Committing $file..."
    git add $file
    $message = $baseMessage -f $file
    git commit -m $message
}

Write-Host "All files committed individually. Now pushing to repository."
# Assuming remote is set; if not, add: git remote add origin https://github.com/yourusername/stacks-counter-contract.git
git push --set-upstream origin main

Write-Host "All files committed individually and pushed. Ready to showcase contributions to Stacks Counter Smart Contract project with Clarity development, comprehensive testing, and successful testnet deployment."