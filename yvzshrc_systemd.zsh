function yvzshrc_systemd() {
    alias sc='sudo systemctl'
    alias start='sc start'
    alias stop='sc stop'
    alias restart='sc restart'
    alias reload='sc reload'
    alias status='sc status'
}

if command -v systemctl > /dev/null; then
    yvzshrc_systemd
fi
