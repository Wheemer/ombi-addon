# Ombi

Ombi is a self-hosted request system for Plex, Emby, and Jellyfin.

This fork keeps the Home Assistant add-on available and adds ingress support, so Ombi can open from the Home Assistant sidebar.

![Version](https://img.shields.io/badge/dynamic/yaml?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-addon%2Fmaster%2Fombi%2Fconfig.yaml)
![Ingress](https://img.shields.io/badge/dynamic/yaml?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-addon%2Fmaster%2Fombi%2Fconfig.yaml)
![Arch](https://img.shields.io/badge/dynamic/yaml?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-addon%2Fmaster%2Fombi%2Fconfig.yaml)

## Install

Add this repository to Home Assistant:

[![Add repository to Home Assistant](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FWheemer%2Fombi-addon)

Manual repository URL:

```text
https://github.com/Wheemer/ombi-addon
```

Then install the `Ombi` add-on.

## Access

Use the sidebar entry when ingress is enabled.

Direct access is still available on port `3579` if you need it on your local network.

## Configuration

| Option | Default | Description |
|--------|---------|-------------|
| `PUID` | `0` | User ID for file permissions |
| `PGID` | `0` | Group ID for file permissions |
| `ingress_disabled` | `false` | Direct-access mode: do not set Ombi's ingress base URL |
| `env_vars` | `[]` | Extra environment variables passed to the container |

Example:

```yaml
PUID: 1000
PGID: 1000
ingress_disabled: false
env_vars: []
```

## Images

The add-on builds from the LinuxServer.io Ombi image and publishes forked Home Assistant add-on images here:

- `ghcr.io/wheemer/ombi-amd64`
- `ghcr.io/wheemer/ombi-aarch64`

## Updates

Auto-update follows `Ombi-app/Ombi` prereleases because this add-on builds from the LinuxServer development image.

## Funding

[https://www.paypal.me/wheemer](https://www.paypal.me/wheemer)

## Upstream

- Ombi: [Ombi-app/Ombi](https://github.com/Ombi-app/Ombi)
- LinuxServer image: [linuxserver/docker-ombi](https://github.com/linuxserver/docker-ombi)
- Original add-on repository: [alexbelgium/hassio-addons](https://github.com/alexbelgium/hassio-addons)
