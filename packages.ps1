ECHO Installing Packages

$packages = @(
            "everything",
            "firefox",
            "git"
            "gitkraken",
            "packer",
            "python3",
            "vagrant",
            "virtualbox",
            "vscode",
            "wox"
            )

Write-Output("Installing Packages:" + $packages)

choco feature enable -n=allowGlobalConfirmation
choco install $packages
choco upgrade all
choco feature disable -n=allowGlobalConfirmation


Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser