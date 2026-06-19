#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

base_url="$(bashio::addon.ingress_entry)"

if [ -z "$base_url" ]; then
    bashio::log.warning "Ingress entry is empty; leaving Ombi BASE_URL unchanged"
    exit 0
fi

base_url="${base_url%/}/"

bashio::log.info "Setting Ombi BASE_URL for Home Assistant ingress"

written=false
for env_dir in /var/run/s6/container_environment /run/s6/container_environment; do
    if [ -d "$env_dir" ]; then
        printf "%s" "$base_url" > "$env_dir/BASE_URL"
        written=true
    fi
done

if [ "$written" = false ]; then
    bashio::log.warning "s6 environment directory not found; Ombi BASE_URL may not be applied"
fi
