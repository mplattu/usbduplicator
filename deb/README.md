# Creating .deb package

USBduplicator .deb packages are created by equivs.

```
cd deb
equivs-build usbduplicator-equivs
```

# Updating control files for a new version number

* Don't forget to update `changelog.Debian`. Especially the version number needs your attention.
* Update the version number also to `usbduplicator-equivs`. The version number shoulw be equal with the one above.

