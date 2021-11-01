# Settings for Firefox

## Config

```toml
beacon.enabled = false # Sends data to servers when leaving pages.
dom.battery.enabled = false # Gives web applications access to the battery status of mobile devices. May be used in fingerprinting techniques.
media.hardwaremediakeys.enabled = false # Deactivate media control
dom.event.clipboardevents.enabled = false # Determines whether websites are allowed to access clipboard contents
geo.enabled = false # Determines if location aware browsing is enabled.
# media.eme.enabled = false # Amazon and Netflix no longer work (DRM copy guard)
media.navigator.enabled = false # Disable tracking of microphone and webcam status
media.peerconnection.enabled = false # Disable WebRTC (WebRTC Leak)
network.dns.disablePrefetch = true # Disable DNS prefetch
network.prefetch-next = false # Defines whether Firefox will accept link prefetching directives by websites
privacy.firstparty.isolate = true # Restricts access to cookies, the cache, and similar data to domain level only
# privacy.resistFingerprinting = true # Turn on User Agent Spoofing (can be annoying as the window size is randomized)
privacy.trackingprotection.enabled = true # Blocks domains known to track users
# webgl.disabled =  true # Disable WebGL. Warning: WebGL based websites doesn't work anymore (e.g. Figma)
```

## Resources

- [Firefox Privacy – The Complete How-To Guide](https://restoreprivacy.com/firefox-privacy/)
- [Browser Fingerprinting – Explanation, Tests, and Solutions](https://restoreprivacy.com/browser-fingerprinting)
- [How to mitigate fingerprinting and IP leaks using Firefox advanced preferences](https://sunknudsen.com/privacy-guides/how-to-mitigate-fingerprinting-and-ip-leaks-using-firefox-advanced-preferences)
- [Overview of Firefox's about:config security and privacy preferences](https://www.ghacks.net/overview-firefox-aboutconfig-security-privacy-preferences/)
