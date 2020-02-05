function yvzshrc_yay() {
    alias pacupdate='yay -Syu && paclean'
    alias search='yay -Ss'

    function paclean() {
        if yay -Qtdq > /dev/null then
            yay -Rnsu $(yay -Qtdq)
        fi
        sudo paccache -rk 2
        sh -c "rm -rf ~/.cache/yay/*"
    }

    function get() {
        yay -S --needed $@ && paclean
    }

    function del() {
        yay -Rnsu $@
        paclean
    }
}

if command -v yay > /dev/null; then
    yvzshrc_yay
fi
