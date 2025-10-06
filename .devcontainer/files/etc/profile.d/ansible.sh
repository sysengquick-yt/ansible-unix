server() {
    local pattern="${1:-docker}"
    shift
    /ansible216/bin/ansible-playbook sysengquick.unix.server -e "targets=$pattern" "$@"
}

fedora() {
    local pattern="${1:-docker}"
    shift
    ansible-playbook sysengquick.unix.fedora -e "targets=$pattern" "$@"
}
