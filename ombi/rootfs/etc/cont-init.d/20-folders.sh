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
config_files=("$config_dir"/*)
legacy_files=("$legacy_dir"/*)

if [ "${#config_files[@]}" -eq 0 ] && [ "${#legacy_files[@]}" -gt 0 ]; then
    bashio::log.info "Copying legacy Ombi config into add-on config storage"
    cp -a "$legacy_dir/." "$config_dir/"
fi

chown -R "$uid:$gid" "$config_dir"
