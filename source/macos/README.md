<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="98">
</td></tr></table>

<h1 align="center">MACOS</h1>

<table>
  <tbody><tr><td align="center" width="99999"><div>
    <a href="https://apple.com/os/macos">WEBSITE</a>
  </div></td></tr></tbody>
  <tbody><tr><td align="center" width="99999">&nbsp;<div>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
  </div>&nbsp;</td></tr></tbody>
</table>

## LEARNING

### FETCH LATEST FULL INSTALLER

```shell
softwareupdate --fetch-full-installer
```

### FETCH VERSIONED FULL INSTALLER

```shell
softwareupdate --list-full-installers
softwareupdate --fetch-full-installer --full-installer-version 27.0
```

### VERIFY PACKAGE PROVENANCE

```shell
pkgutil --check-signature ~/Downloads/InstallAssistant.pkg
```

### VERIFY PACKAGE INTEGRITY

```shell
codesign -dv --verbose=4 "/Applications/Install macOS Golden Gate.app"
```
