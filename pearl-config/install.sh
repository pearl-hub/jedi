function post_install(){
    local pluginname=jedi
    local giturl=https://github.com/davidhalter/jedi-vim.git

    info "Installing or updating the $pluginname git repository..."
    local plugin_root="${PEARL_PKGVARDIR}/plugins/pack/pearl/start"
    mkdir -p "$plugin_root"
    install_or_update_git_repo $giturl "$plugin_root/$pluginname" master
    [[ -e "$plugin_root/$pluginname/doc" ]] && \
        vim -c "helptags $plugin_root/$pluginname/doc" -c q
}

function post_update(){
    post_install
}

function pre_remove(){
    rm -rf "${PEARL_PKGVARDIR}/plugins"
}
