Get-ChildItem -Recurse -File | ForEach-Object {
    $name = $_.Name
    # Verifica se contém underscore ou letras maiúsculas
    if ($name -cmatch ".png") {
        $oldFullPath = $_.FullName
        $newName = $name -replace ".png", "-256x256.png"
        $newName = $newName.ToLower()

        # Renomeia em dois passos para contornar limitação do Windows
        $tempName = $newName + "_tmp"
        $tempFullPath = Join-Path -Path $_.DirectoryName -ChildPath $tempName

        Rename-Item -Path $oldFullPath -NewName $tempName -Force
        Rename-Item -Path $tempFullPath -NewName $newName -Force

        Write-Host "Renomeado: $name -> $newName"
    }
}
