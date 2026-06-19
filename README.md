<h1><img src="ombi/icon.png" alt="" width="32"> Ombi Add-on</h1>

Ombi for Home Assistant, with ingress.

This is an Ombi-only add-on repo. It does not carry the old add-on collection.

## Add This Repo

[![Add repository to Home Assistant](https://img.shields.io/badge/Add%20repository%20to-Home%20Assistant-41BDF5?logo=home-assistant&style=for-the-badge)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FWheemer%2Fombi-addon)

Manual repository URL:

```text
https://github.com/Wheemer/ombi-addon
```

[Ombi](ombi/) is a self-hosted Plex, Emby, and Jellyfin request system.

![Version](https://img.shields.io/badge/dynamic/yaml?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-addon%2Fmaster%2Fombi%2Fconfig.yaml)
![Ingress](https://img.shields.io/badge/dynamic/yaml?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2FWheemer%2Fombi-addon%2Fmaster%2Fombi%2Fconfig.yaml)
![Builder](https://github.com/Wheemer/ombi-addon/actions/workflows/onpush_builder.yaml/badge.svg)

Images publish to:

- `ghcr.io/wheemer/ombi-amd64`
- `ghcr.io/wheemer/ombi-aarch64`

## Updates

Ombi auto-updates from `Ombi-app/Ombi` releases. This add-on follows Ombi prereleases because the LinuxServer base image uses the development stream.

## Funding

If this saves you time, my PayPal is:

[https://www.paypal.me/wheemer](https://www.paypal.me/wheemer)

## Credit

This started from the archived Ombi add-on in [alexbelgium/hassio-addons](https://github.com/alexbelgium/hassio-addons). This repo is intentionally Ombi-only.
