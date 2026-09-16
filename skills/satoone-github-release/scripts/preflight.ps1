param(
    [string]$ProjectPath = 'C:\Users\sato\Desktop\satoOne',
    [int]$LargeFileThresholdMB = 50
)

$ErrorActionPreference = 'Stop'
$git = 'C:\Program Files\Git\cmd\git.exe'
$gh = Join-Path $env:LOCALAPPDATA 'Programs\GitHubCLI\bin\gh.exe'
$key = Join-Path $env:USERPROFILE '.ssh\id_ed25519_github_sattouseiji'
$repoSafe = $ProjectPath.Replace('\', '/')

function Heading([string]$Text) {
    Write-Host ''
    Write-Host ('=== ' + $Text + ' ===') -ForegroundColor Cyan
}

if (-not (Test-Path -LiteralPath $ProjectPath -PathType Container)) { throw "Project directory not found: $ProjectPath" }
if (-not (Test-Path -LiteralPath $git -PathType Leaf)) { throw "Git not found: $git" }

Set-Location -LiteralPath $ProjectPath

Heading 'Repository'
& $git -c "safe.directory=$repoSafe" status --branch --short
& $git -c "safe.directory=$repoSafe" remote -v
& $git -c "safe.directory=$repoSafe" log -1 --oneline --decorate

Heading 'Uncommitted changes'
& $git -c "safe.directory=$repoSafe" diff --stat
& $git -c "safe.directory=$repoSafe" diff --cached --stat

Heading 'Credential scan'
$files = Get-ChildItem -LiteralPath $ProjectPath -Recurse -File -Force | Where-Object { $_.FullName -notlike '*\.git\*' }
$privateKeyHits = $files | Select-String -Pattern 'BEGIN (OPENSSH|RSA|EC|DSA) PRIVATE KEY' -ErrorAction SilentlyContinue
$sensitiveNames = $files | Where-Object { $_.Name -match '(^\.env($|\.)|\.pem$|\.key$|\.p12$|\.pfx$|credentials|secrets?|tokens?)' }
if ($privateKeyHits) {
    Write-Warning 'Private-key material detected. Do not commit.'
    $privateKeyHits | Select-Object Path, LineNumber
} else { Write-Host 'No private-key headers detected.' -ForegroundColor Green }
if ($sensitiveNames) {
    Write-Warning 'Review sensitive-looking filenames:'
    $sensitiveNames | Select-Object FullName
} else { Write-Host 'No sensitive-looking filenames detected.' -ForegroundColor Green }

Heading "Files >= $LargeFileThresholdMB MB"
$largeFiles = $files | Where-Object { $_.Length -ge ($LargeFileThresholdMB * 1MB) } | Sort-Object Length -Descending
if ($largeFiles) {
    $largeFiles | Select-Object @{Name='MB';Expression={[math]::Round($_.Length / 1MB, 1)}}, FullName
} else { Write-Host 'None.' -ForegroundColor Green }

Heading 'Authentication'
if (Test-Path -LiteralPath $key -PathType Leaf) { Write-Host "Dedicated SSH key present: $key" -ForegroundColor Green }
else { Write-Warning "Dedicated SSH key missing: $key" }
if (Test-Path -LiteralPath $gh -PathType Leaf) { & $gh auth status --hostname github.com }
else { Write-Warning "GitHub CLI not found: $gh" }

Heading 'Result'
if ($privateKeyHits) {
    Write-Host 'BLOCKED: remove credential material before staging or pushing.' -ForegroundColor Red
    exit 2
}
Write-Host 'Preflight completed. Review status and diffs before staging.' -ForegroundColor Green

