
# Terminal

```shell
sudo apt update
sudo apt upgrade

sudo apt install curl gpg
```

## Install Microsoft package signing key

```shell
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/
rm microsoft.gpg
```

## Configure links to Microsoft Package Sources

```shell
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/ubuntu/$(lsb_release -rs)/prod $(lsb_release -cs) main" >> /etc/apt/sources.list.d/microsoft-ubuntu-$(lsb_release -cs)-prod.list'
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt update
```

## Install Apps

```shell
sudo apt install intune-portal

sudo apt install microsoft-edge-stable
sudo apt install powershell
sudo apt install git-all
sudo apt install code
```

## References

- https://learn.microsoft.com/en-au/mem/intune/user-help/microsoft-intune-app-linux
