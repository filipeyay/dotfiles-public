# Theme
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/emodipt.omp.json" | Invoke-Expression

# Icons | run - Install-Module -Name Terminal-Icons -Repository PSGallery
Import-Module -Name Terminal-Icons

# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias whereis where.exe