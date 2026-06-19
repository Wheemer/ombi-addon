#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

slug=ombi
config_dir="/config/addons_config/$slug"
legacy_dir="/config/$slug"

if [ ! -d "$config_dir" ]; then

    if [ -d "$legacy_dir" ]; then
        echo "Moving to new location $config_dir"
        mkdir -p "$config_dir"
        chmod 755 "$config_dir"
        shopt -s dotglob nullglob
        files=("$legacy_dir"/*)
        if [ "${#files[@]}" -gt 0 ]; then
            mv "${files[@]}" "$config_dir/"
        fi
        rmdir "$legacy_dir" 2>/dev/null || true
    fi

    echo "Creating $config_dir"
    mkdir -p "$config_dir"
    chmod 755 "$config_dir"
fi

chown -R "$PUID:$PGID" "$config_dir"
