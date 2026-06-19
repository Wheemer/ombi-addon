![Ombi logo](https://ombi.io/img/logo-orange-small.png)

___

[![Version](https://img.shields.io/badge/dynamic/yaml?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-addon%2Fmaster%2Fombi%2Fconfig.yaml)](ombi/config.yaml)
[![Ingress](https://img.shields.io/badge/dynamic/yaml?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-addon%2Fmaster%2Fombi%2Fconfig.yaml)](ombi/config.yaml)
[![Builder](https://github.com/Wheemer/ombi-addon/actions/workflows/onpush_builder.yaml/badge.svg)](https://github.com/Wheemer/ombi-addon/actions/workflows/onpush_builder.yaml)
[![Update Ombi](https://github.com/Wheemer/ombi-addon/actions/workflows/update_ombi.yaml/badge.svg)](https://github.com/Wheemer/ombi-addon/actions/workflows/update_ombi.yaml)
[![Add repository to Home Assistant](https://img.shields.io/badge/Add%20repository%20to-Home%20Assistant-41BDF5?logo=home-assistant)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FWheemer%2Fombi-addon)

# Welcome

Ombi is a friendly media request tool for Plex, Emby, and Jellyfin.

This repository packages Ombi as a Home Assistant add-on with ingress support. It can open from the Home Assistant sidebar, while still keeping direct access on port `3579` available for local network use.

| Service | Add-on |
|---------|:------:|
| Build | [![Builder](https://github.com/Wheemer/ombi-addon/actions/workflows/onpush_builder.yaml/badge.svg)](https://github.com/Wheemer/ombi-addon/actions/workflows/onpush_builder.yaml) |
| Update | [![Update Ombi](https://github.com/Wheemer/ombi-addon/actions/workflows/update_ombi.yaml/badge.svg)](https://github.com/Wheemer/ombi-addon/actions/workflows/update_ombi.yaml) |
| Image | `ghcr.io/wheemer/ombi-addon-{arch}` |

# Feature Requests

For Ombi application features, use the Ombi feature board:

[https://features.ombi.io](https://features.ombi.io)

For Home Assistant add-on issues, use this repository:

[https://github.com/Wheemer/ombi-addon/issues](https://github.com/Wheemer/ombi-addon/issues)

# Features

* Lets your users request movies, TV shows, and music from a clean web interface.
* Works with Plex, Emby, and Jellyfin.
* Connects to download and library tools such as Sonarr, Radarr, Lidarr, and other supported Ombi integrations.
* Supports request approval, user management, notifications, and availability tracking through Ombi.
* Opens inside Home Assistant through ingress.
* Keeps direct local access available on port `3579`.
* Builds for `amd64` and `aarch64`.
* Uses the LinuxServer.io Ombi development image.
* Auto-updates from `Ombi-app/Ombi` prereleases to match the development image stream.
* Includes Ombi icon and logo assets for the Home Assistant add-on store and sidebar.

# Preview

![Ombi preview](https://i.imgur.com/kBXIqer.png)

# Installation

[![Add repository to Home Assistant](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FWheemer%2Fombi-addon)

Manual repository URL:

```text
https://github.com/Wheemer/ombi-addon
```

After adding the repository:

* Install the `Ombi` add-on.
* Start the add-on.
* Open Ombi from the Home Assistant sidebar.
* For direct access, open `http://homeassistant.local:3579` or `http://<home-assistant-ip>:3579`.

# First Setup

Use Ombi's setup wizard to connect Plex, Emby, or Jellyfin first. After that, add your request automation tools such as Sonarr, Radarr, or Lidarr from Ombi's settings.

When ingress is enabled, the add-on sets Ombi's base URL automatically from Home Assistant. Leave `ingress_disabled` set to `false` unless you want to manage Ombi's base URL yourself for direct access or a separate reverse proxy.

Ombi's own installation and reverse proxy docs are here:

* [Ombi installation docs](https://docs.ombi.app/installation/)
* [Ombi reverse proxy docs](https://docs.ombi.app/info/reverse-proxy/)

# Configuration

| Option | Default | Description |
|--------|:-------:|-------------|
| `PUID` | `0` | User ID used for Ombi files |
| `PGID` | `0` | Group ID used for Ombi files |
| `ingress_disabled` | `false` | Stops the add-on from setting Ombi's ingress base URL |
| `env_vars` | `[]` | Extra environment variables passed to Ombi |

Example:

```yaml
PUID: 1000
PGID: 1000
ingress_disabled: false
env_vars: []
```

# Updates

The scheduled update workflow checks `Ombi-app/Ombi` prereleases and bumps the add-on version when Ombi changes. This follows the same stream used by the LinuxServer.io development image.

# Images

Published images:

* `ghcr.io/wheemer/ombi-addon-amd64`
* `ghcr.io/wheemer/ombi-addon-aarch64`

# Links

* [Ombi](https://github.com/Ombi-app/Ombi)
* [Ombi website](https://ombi.io/)
* [LinuxServer Ombi image](https://github.com/linuxserver/docker-ombi)
* [Original archived add-on source](https://github.com/alexbelgium/hassio-addons/tree/master/ombi)

# Donation

[![Paypal](https://img.shields.io/badge/paypal-donate-yellow.svg)](https://www.paypal.me/wheemer)
