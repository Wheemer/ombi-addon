# Ombi App Documentation

Ombi is a media request and user management app for Plex, Emby, and Jellyfin.

This app runs Ombi inside Home Assistant with ingress enabled. Direct local access is available on port `3579`.

## First Start

1. Start the app.
2. Open Ombi from the app page using `Open Web UI`, or from the Home Assistant sidebar.
3. Complete Ombi's setup wizard.
4. Connect Plex, Emby, or Jellyfin.
5. Add Sonarr, Radarr, Lidarr, or other automation services from Ombi settings.

Direct local access is available on port `3579` in addition to Home Assistant ingress.

## Ingress

Ingress is enabled by default. The app sets Ombi's Base URL to the current Home Assistant ingress path during startup.

In Ombi settings this appears as `/api/hassio_ingress/...`. That value belongs there for Home Assistant sidebar access; do not replace it with your Home Assistant URL or a direct `3579` URL.

## Storage

Ombi stores its database, settings, and logs in the app config folder, which is included in Home Assistant backups.

If an older install has files in `addons_config/ombi`, the app copies those files into the current config folder when the current config folder is empty.

## Configuration

```yaml
PUID: 0
PGID: 0
env_vars: []
```

`PUID` and `PGID` control ownership for Ombi config files. The default `0:0` is suitable for a standard Home Assistant OS or supervised app install.

`env_vars` can pass extra environment variables into the Ombi container:

```yaml
env_vars:
  - name: TZ
    value: America/St_Johns
```

## Updates

This app follows the official `Ombi-app/Ombi` prerelease version because it builds from the LinuxServer.io Ombi development image.
