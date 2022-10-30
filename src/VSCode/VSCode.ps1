function Set-VSCode-Configuration {
  $VSCodeSettingsPath = Join-Path -Path $env:appdata -ChildPath "Code" | Join-Path -ChildPath "User";
  $DotfilesVSCodeSettingsFolder = Join-Path -Path $DotfilesWorkFolder -ChildPath "VSCode";

  if (-not (Test-Path -Path $VSCodeSettingsPath)) {
    Write-Host "Configuring Visual Studio Code:" -ForegroundColor "Green";
    New-Item $VSCodeSettingsPath -ItemType directory;
  }

  Get-ChildItem -Path "${DotfilesVSCodeSettingsFolder}\*" -Include "*.json" -Recurse | Copy-Item -Destination $VSCodeSettingsPath;
}

choco install -y "vscode" --params "/NoDesktopIcon /NoQuicklaunchIcon /NoContextMenuFiles /NoContextMenuFolders";
Set-VSCode-Configuration;
refreshenv;
code --install-extension "mark-wiemer.vscode-autohotkey-plus-plus";
code --install-extension "wwm.better-align";
code --install-extension "ms-vscode.cpptools";
code --install-extension "danielpinto8zz6.c-cpp-compile-run";
code --install-extension "ms-dotnettools.csharp";
code --install-extension "formulahendry.code-runner";
code --install-extension "vscjava.vscode-java-debug";
code --install-extension "vscjava.vscode-java-pack";
code --install-extension "sainnhe.gruvbox-material";
code --install-extension "visualstudioexptteam.vscod";
code --install-extension "redhat.java";
code --install-extension "onlylys.leaper";
code --install-extension "rubymaniac.vscode-paste-and-indent";
code --install-extension "ms-python.python";
code --install-extension "ms-python.vscode-pylance";
code --install-extension "tyriar.sort-lines";
code --install-extension "qcz.text-power-tools";
code --install-extension "ms-vscode.wordcount";
code --install-extension "konstantin.wrapselection";
code --install-extension "esbenp.prettier-vscode";