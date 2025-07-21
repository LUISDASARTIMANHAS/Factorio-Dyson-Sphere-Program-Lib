@echo off
echo Renomeando arquivos recursivamente...

powershell -NoProfile -Command ^
    "Get-ChildItem -Recurse -File -Filter *.png | ForEach-Object { ^
        $oldName = $_.FullName; ^
        $newName = ($_.Name -replace '_', '-').ToLower(); ^
        if ($_.Name -ne $newName) { ^
            Rename-Item -Path $oldName -NewName $newName -Force; ^
            Write-Host Renomeado: $_.Name '->' $newName ^
        } ^
    }"

echo.
echo Finalizado!
pause
