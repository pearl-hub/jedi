function post_install(){
    local pluginname=jedi
    local giturl=https://github.com/davidhalter/jedi-vim.git

    info "Installing or updating the $pluginname git repository..."
    mkdir -p "${PEARL_PKGVARDIR}/plugins/pack/pearl/start"
    install_or_update_git_repo $giturl "${PEARL_PKGVARDIR}/plugins/pack/pearl/start/$pluginname" master
}

function post_update(){
    post_install
}

function pre_remove(){
    rm -rf "${PEARL_PKGVARDIR}/plugins"
}
