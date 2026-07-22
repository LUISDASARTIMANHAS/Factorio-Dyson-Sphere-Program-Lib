Get-ChildItem -Recurse -File -Filter *.png | ForEach-Object {

    if ($_.BaseName -notmatch '-256x256$') {

        $newName = $_.Name `
            -replace '_', '-' `
            -replace '\.png$', '-256x256.png'

        $newName = $newName.ToLower()

        $tempName = "$newName.tmp"

        Rename-Item $_.FullName $tempName
        Rename-Item (Join-Path $_.DirectoryName $tempName) $newName

        Write-Host "$($_.Name) -> $newName"
    }
}