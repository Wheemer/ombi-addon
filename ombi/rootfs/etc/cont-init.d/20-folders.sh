#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

config_dir="/config"
legacy_dir="/homeassistant/addons_config/ombi"
uid="$(bashio::config "PUID")"
gid="$(bashio::config "PGID")"

mkdir -p "$config_dir"
chmod 755 "$config_dir"

shopt -s dotglob nullglob
legacy_files=("$legacy_dir"/*)

has_current_database=false
for database in Ombi.db OmbiExternal.db OmbiSettings.db; do
    if [ -f "$config_dir/$database" ]; then
        has_current_database=true
        break
    fi
done

if [ "$has_current_database" = false ] && [ "${#legacy_files[@]}" -gt 0 ]; then
    bashio::log.info "Migrating legacy Ombi config into app config storage"
    cp -a "$legacy_dir/." "$config_dir/"

    if rm -rf "$legacy_dir" 2>/dev/null; then
        bashio::log.info "Removed legacy Ombi config folder after migration"
    else
        bashio::log.info "Legacy Ombi config was migrated; old folder is read-only from this app and was left in place"
    fi
fi

chown -R "$uid:$gid" "$config_dir"
