<p align="center">
  <img src="https://raw.githubusercontent.com/Wheemer/ombi-app/master/ombi/logo.png" alt="Ombi logo" width="128">
</p>

___

[![Version](https://img.shields.io/badge/dynamic/yaml?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-app%2Fmaster%2Fombi%2Fconfig.yaml)](config.yaml)
[![Ingress](https://img.shields.io/badge/dynamic/yaml?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-app%2Fmaster%2Fombi%2Fconfig.yaml)](config.yaml)
[![Arch](https://img.shields.io/badge/dynamic/yaml?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-app%2Fmaster%2Fombi%2Fconfig.yaml)](config.yaml)

# Welcome

Ombi is a friendly media request tool for Plex, Emby, and Jellyfin.

This Home Assistant App runs Ombi with ingress support, so it opens from the Home Assistant sidebar and also exposes Ombi on port `3579` for direct local access.

# Features

* Lets your users request movies, TV shows, and music.
* Works with Plex, Emby, and Jellyfin.
* Connects to request automation tools such as Sonarr, Radarr, and Lidarr.
* Supports approvals, user management, notifications, and availability tracking through Ombi.
* Opens inside Home Assistant through ingress.
* Exposes direct local access on port `3579`.
* Includes Ombi icon and logo assets for Home Assistant.
* Stores Ombi data in Home Assistant's backed-up app config storage.

# Installation

[![Add repository to Home Assistant](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FWheemer%2Fombi-app)

Manual repository URL:

```text
https://github.com/Wheemer/ombi-app
```

After adding the repository:

* Install the `Ombi` app.
* Start the app.
* Open Ombi from the Home Assistant sidebar or the app page's `Open Web UI` button.
* Direct local access is available on port `3579`.

# First Setup

Use Ombi's setup wizard to connect Plex, Emby, or Jellyfin first. Then add Sonarr, Radarr, Lidarr, or your other request automation tools from Ombi's settings.

When ingress is enabled, the app sets Ombi's Base URL to Home Assistant's ingress path. In Ombi settings this looks like `/api/hassio_ingress/...`; leave it that way for sidebar access. The generic Ombi reverse-proxy instructions do not apply to Home Assistant ingress.

Ombi data is stored in the app's own backed-up config folder. If an older install has data in `addons_config/ombi`, the app copies it into the new storage location when `/config` is empty.

# Configuration

| Option | Default | Description |
|--------|:-------:|-------------|
| `PUID` | `0` | User ID used for Ombi files |
| `PGID` | `0` | Group ID used for Ombi files |
| `env_vars` | `[]` | Extra environment variables passed to Ombi |

Example:

```yaml
PUID: 1000
PGID: 1000
env_vars: []
```

# Updates

Auto-update follows `Ombi-app/Ombi` prereleases because this app builds from the LinuxServer.io development image.

# Links

* [Ombi](https://github.com/Ombi-app/Ombi)
* [Ombi website](https://ombi.io/)
* [Ombi docs](https://docs.ombi.app/)
* [LinuxServer Ombi image](https://github.com/linuxserver/docker-ombi)
* [Original archived app source](https://github.com/alexbelgium/hassio-addons/tree/master/zzz_archived_ombi)
