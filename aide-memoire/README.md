## Manual installations

### Jetbrains toolbox
1. [Download toolbox](https://www.jetbrains.com/es-es/toolbox-app/)
2. run `sudo apt install libfuse2`
3. run `tar -xvzf ~/Downloads/jetbrains-toolbox-x.x.x.xxxx.tar.gz`
4. move the directory to your Apps' directory 

### Configure SSH and GPG keys
1. create `~/.ssh/` directory and import your keys
2. create or import your gpg keys to sign commits
   - `sudo apt-get install gnupg`
   - `gpg --full-generate-key`
   - select key type (eg. RSA and RSA)
   - select length (recommended 4096)

### Docker
1. [Download docker](https://docs.docker.com/desktop/install/linux/ubuntu/)
2. follow installation instructions