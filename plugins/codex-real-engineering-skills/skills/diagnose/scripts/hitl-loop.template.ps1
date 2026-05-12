# Human-in-the-loop feedback loop template for Codex on PowerShell.
# The operator performs each prompt and enters the observed result.
# At the end, KEY=VALUE lines are printed so Codex can parse the signal.

$ErrorActionPreference = "Stop"
$results = @{}

function Ask-Step($key, $prompt) {
  Write-Host ""
  Write-Host "STEP: $prompt" -ForegroundColor Cyan
  $answer = Read-Host "Observed result for $key"
  $script:results[$key] = $answer
}

Ask-Step "reproduced" "Try to reproduce the issue exactly as described. Did it reproduce?"
Ask-Step "symptom" "Record the exact visible symptom, error text, or timing."
Ask-Step "notes" "Record any extra context that changed the outcome."

Write-Host ""
foreach ($key in $results.Keys) {
  $value = ($results[$key] -replace "`r?`n", " ")
  Write-Host "$key=$value"
}