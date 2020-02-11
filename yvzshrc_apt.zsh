function yvzshrc_apt() {
    alias pacupdate='sudo apt update && sudo apt upgrade && paclean'
    alias search='apt search'

    function paclean() {
        sudo apt autoremove --purge
        sudo apt clean
    }

    function get() {
        sudo apt install $@ && paclean
    }

    function del() {
        sudo apt remove --purge $@
        paclean
    }
}

if command -v apt > /dev/null; then
    yvzshrc_apt
fi
