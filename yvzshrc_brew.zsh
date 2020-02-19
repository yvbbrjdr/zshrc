function yvzshrc_brew() {
    alias pacupdate='brew update && brew upgrade && paclean'
    alias search='brew search'

    function paclean() {
        brew cleanup
    }

    function get() {
        brew install $@ && paclean
    }

    function del() {
        brew remove $@
        paclean
    }
}

if command -v brew > /dev/null; then
    yvzshrc_brew
fi
