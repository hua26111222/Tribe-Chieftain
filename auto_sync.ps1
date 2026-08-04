Set-Location $PSScriptRoot

$status = git status --porcelain
if ($status) {
    git add .
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
    git commit -m "Auto sync - $timestamp"
    git push origin main
}
