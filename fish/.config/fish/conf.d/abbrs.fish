# -----------------------------
# Sistema
# -----------------------------
abbr -a h "history"
abbr -a update "sudo apt update"
abbr -a upgrade "sudo apt upgrade -y"
abbr -a untar "tar -xvf"
abbr -a wgetc "wget -c"
abbr -a ports "ss -tulnp"

# -----------------------------
# Git
# -----------------------------
abbr -a gst "git status"
abbr -a gco "git checkout"
abbr -a gcb "git checkout -b"
abbr -a ga "git add ."
abbr -a gc "git commit -m"
abbr -a gca "git commit --amend"
abbr -a gp "git push"
abbr -a gpl "git pull"
abbr -a gl "git log --oneline --graph --decorate --all"
abbr -a gdiff "git diff"

# -----------------------------
# Docker
# -----------------------------
abbr -a dps "docker ps"
abbr -a dpsa "docker ps -a"
abbr -a dcup "docker compose up -d"
abbr -a dcdown "docker compose down"

# -----------------------------
# Redes
# -----------------------------
abbr -a myip "curl ifconfig.me"
abbr -a pingg "ping 8.8.8.8"
abbr -a tailup "sudo systemctl start tailscaled && sudo tailscale up"
abbr -a taildown "sudo tailscale down && sudo systemctl stop tailscaled"
abbr -a rigeldump "ssh root@192.168.1.1 'tcpdump -i br-lan -U -s0 -w - not port 22' | wireshark -k -i -"

# -----------------------------
# Configuração do Fish (Substituindo os de Zsh)
# -----------------------------
abbr -a sf "source ~/.config/fish/config.fish"
abbr -a editf "$EDITOR ~/.config/fish/config.fish"

# -----------------------------
# Kitty
# -----------------------------
abbr -a kat "kitten icat"
abbr -a kssh "kitty +kitten ssh"
