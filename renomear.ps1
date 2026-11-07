Get-ChildItem -Recurse -File -Filter *.png | ForEach-Object {
    $name = $_.Name

    # Remove "Icon_" ou "Icon-" do início do nome
    $newName = $name -replace "(?i)^icon[_-]", ""

    # Normaliza o nome
    $newName = $newName -replace "_", "-"
    $newName = $newName.ToLower()

    # Verifica se precisa renomear
    if ($name -ceq $newName) {
        return
    }

    $oldFullPath = $_.FullName
    $tempName = "$([guid]::NewGuid().ToString('N')).tmp"
    $tempFullPath = Join-Path $_.DirectoryName $tempName

    # Renomeia em dois passos
    Rename-Item -LiteralPath $oldFullPath -NewName $tempName
    Rename-Item -LiteralPath $tempFullPath -NewName $newName

    Write-Host "Renomeado: $name -> $newName" -ForegroundColor Green
}