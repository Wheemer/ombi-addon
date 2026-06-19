# Ombi Add-on Documentation

Ombi is a media request and user management app for Plex, Emby, and Jellyfin.

This add-on runs Ombi inside Home Assistant with ingress enabled. Direct local access is available on port `3579`.

## First Start

1. Start the add-on.
2. Open Ombi from the add-on page using `Open Web UI`, or from the Home Assistant sidebar.
3. Complete Ombi's setup wizard.
4. Connect Plex, Emby, or Jellyfin.
5. Add Sonarr, Radarr, Lidarr, or other automation services from Ombi settings.

Direct local access is available on port `3579` in addition to Home Assistant ingress.

## Ingress

Ingress is enabled by default. The add-on sets Ombi's base URL to the current Home Assistant ingress path during startup.

Set `ingress_disabled` to `true` only if you want to manage Ombi's base URL yourself, such as for a separate reverse proxy.

## Storage

Ombi stores its database, settings, and logs in the add-on config folder, which is included in Home Assistant backups.

If an older add-on install has files in `addons_config/ombi`, the add-on copies those files into the current config folder when the current config folder is empty.

## Configuration

```yaml
PUID: 0
PGID: 0
ingress_disabled: false
env_vars: []
```

`PUID` and `PGID` control ownership for Ombi config files. The default `0:0` is suitable for a standard Home Assistant OS or supervised add-on install.

`env_vars` can pass extra environment variables into the Ombi container:

```yaml
env_vars:
  - name: TZ
    value: America/St_Johns
```

## Updates

This add-on follows the official `Ombi-app/Ombi` prerelease version because the add-on builds from the LinuxServer.io Ombi development image.
