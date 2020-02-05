alias sudo='sudo '

function real() {
    cd "$(realpath .)"
    if [[ -n "$1" ]]; then
        cd "$1"
        cd "$(realpath .)"
    fi
}

if [[ -e "~/go/bin" ]]; then
    export PATH="~/go/bin:$PATH"
fi
