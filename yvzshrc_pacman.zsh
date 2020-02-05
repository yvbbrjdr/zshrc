function yvzshrc_pacman() {
    alias pacupdate='sudo pacman -Syu && paclean'
    alias search='pacman -Ss'

    function paclean() {
        if pacman -Qtdq > /dev/null; then
            sudo pacman -Rnsu $(pacman -Qtdq)
        fi
        sudo paccache -rk 2
    }

    function get() {
        sudo pacman -S --needed $@ && paclean
    }

    function del() {
        sudo pacman -Rnsu $@
        paclean
    }
}

if command -v pacman > /dev/null && ! command -v yay > /dev/null; then
    yvzshrc_pacman
fi
