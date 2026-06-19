![Ombi logo](https://ombi.io/img/logo-orange-small.png)

___

[![Version](https://img.shields.io/badge/dynamic/yaml?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-addon%2Fmaster%2Fombi%2Fconfig.yaml)](config.yaml)
[![Ingress](https://img.shields.io/badge/dynamic/yaml?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-addon%2Fmaster%2Fombi%2Fconfig.yaml)](config.yaml)
[![Arch](https://img.shields.io/badge/dynamic/yaml?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-addon%2Fmaster%2Fombi%2Fconfig.yaml)](config.yaml)

# Welcome

Ombi is a friendly media request tool for Plex, Emby, and Jellyfin.

This Home Assistant add-on runs Ombi with ingress support, so it can open from the Home Assistant sidebar while still keeping direct access on port `3579`.

# Features

* Lets your users request movies, TV shows, and music.
* Works with Plex, Emby, and Jellyfin.
* Connects to request automation tools such as Sonarr, Radarr, and Lidarr.
* Supports approvals, user management, notifications, and availability tracking through Ombi.
* Opens inside Home Assistant through ingress.
* Keeps direct local access available on port `3579`.
* Includes Ombi icon and logo assets for Home Assistant.
* Stores Ombi data in Home Assistant's backed-up add-on config storage.

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

Use Ombi's setup wizard to connect Plex, Emby, or Jellyfin first. Then add Sonarr, Radarr, Lidarr, or your other request automation tools from Ombi's settings.

When ingress is enabled, the add-on sets Ombi's base URL automatically from Home Assistant. Leave `ingress_disabled` set to `false` unless you want to manage Ombi's base URL yourself for direct access or a separate reverse proxy.

Ombi data is stored in the add-on's own backed-up config folder. If an older install has data in `addons_config/ombi`, the add-on copies it into the new storage location when `/config` is empty.

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

Auto-update follows `Ombi-app/Ombi` prereleases because this add-on builds from the LinuxServer.io development image.

# Links

* [Ombi](https://github.com/Ombi-app/Ombi)
* [Ombi website](https://ombi.io/)
* [Ombi docs](https://docs.ombi.app/)
* [LinuxServer Ombi image](https://github.com/linuxserver/docker-ombi)
* [Original archived add-on source](https://github.com/alexbelgium/hassio-addons/tree/master/ombi)
