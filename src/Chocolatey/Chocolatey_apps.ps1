# If it only requires a couple lines to install and no post setup, it goes here.

choco install -y "ChocolateyGUI";
choco install -y "7zip";
choco install -y "autohotkey.portable"
choco install -y "bitwarden";
choco install -y "firefox";
choco install -y "discord";
choco install -y "docker-desktop" --execution-timeout 3600;
choco install -y "Listary";
choco install -y "nerdfont-hack";
choco install -y "nerd-fonts-JetBrainsMono";
choco install -y "powertoys";
choco install -y "rufus";
choco install -y "sharex";
# choco install -y "tailscale";
choco install -y "telegram";
choco install -y "vlc";
choco install -y "winscp.install";
choco install -y "dotnet-sdk";
refreshenv;
dotnet tool install --global dotnet-ef;