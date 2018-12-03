$in = Get-Content "$PSScriptRoot\input.txt"
[array]$frequencies = @()

[Int64]$currentFrequency = 0
$total = 0
$pointer = 0
while(-not $frequencies.Contains($currentFrequency)) {
    write-host "Checking location $pointer of $($in.count) ($total)"
    $frequencies += $currentFrequency
    $currentFrequency += $in[$pointer]
    $pointer = ($pointer + 1) % $in.Count
    $total++
}

Write-Output $currentFrequency