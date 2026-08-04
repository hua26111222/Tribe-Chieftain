$projectPath = "C:\Users\wb659999\OneDrive - WBG\Desktop\部落首领"
Set-Location $projectPath

$status = git status --porcelain
if ($status) {
    git add .
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
    git commit -m "Auto sync - $timestamp"
    git push origin main
}
