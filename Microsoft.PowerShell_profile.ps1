# 安装命令
# winget install JanDeDobbeleer.OhMyPosh -s winget
# Install-Module posh-git -Scope CurrentUser -Force
# Install-Module PSReadLine -Scope CurrentUser -Force

# 安装字体 (选meslo或其他)
# oh-my-posh font install

# 创建文件
# notepad $PROFILE

# 文件设置
Import-Module posh-git

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/agnoster.omp.json" | Invoke-Expression


Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
