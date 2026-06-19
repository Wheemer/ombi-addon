# Changelog

## 4.60.6-1 (2026-06-19)

- Updated Ombi upstream version to `4.60.6`.
- Added a scheduled Ombi-only updater workflow.
- Switched Home Assistant to the generic multi-arch image `ghcr.io/wheemer/ombi-addon`.
- Removed the broken upstream preview screenshot from the README files.

## 4.55.2-6 (2026-06-19)

- Restructured the fork as a normal single-add-on repository with Ombi at `ombi/`.
- Added Home Assistant ingress support by setting Ombi's `BASE_URL` from the Supervisor ingress path.
- Published images under `ghcr.io/wheemer/ombi-addon`.
- Restored Ombi `icon.png` and `logo.png` so Home Assistant shows the right branding.
- Removed broad device passthrough and the old custom AppArmor profile.
- Removed obsolete/deprecated warnings from the active fork metadata.
- Trimmed the build workflow and template scripts to the pieces this add-on actually uses.
- Rewrote README and funding links for the fork.

## 4.55.2-archived (2026-02-18)

- Upstream add-on was archived in `alexbelgium/hassio-addons`.
- Users were directed to migrate to Seerr.
- Automated upstream updates were paused.

## Earlier Upstream History

Older versions followed `linuxserver/docker-ombi` updates in the original upstream add-on repository.
