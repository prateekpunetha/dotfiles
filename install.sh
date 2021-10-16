#!/usr/bin/env bash

# install required fonts
function install_fonts() {
    target="$HOME/.local/share/fonts"
    mkdir -p $target

    # install apple SanFranciscoDisplay font
    curl https://codeload.github.com/AppleDesignResources/SanFranciscoFont/zip/master \
       --output SF.zip
    unzip -j SF.zip SanFranciscoFont-master/SanFranciscoDisplay-\* -d $target/SanFranciscoDisplay

    # cleanup
    rm SF.zip
}

# symlink configs
function stow_con() {
    # ignored files list
    declare -a ignore_list=(".git"
                            ".gitignore"
                            ".gitmodules"
                            "README.md"
                            "screenshots"
                        )

    # go throw all files except ignore list
    for file in ~/.dotfiles/*; do
      if [ -d ${file} ] && [[ ! ${file} =~ ${ignore_list[@]} ]]; then
        stow $(basename $file)
        if $SCRIPT_DEBUG; then echo "$(basename $file) stowed."; fi
      fi
    done
}

stow_con
install_fonts
