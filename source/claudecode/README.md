<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="98">
</td></tr></table>

<h1 align="center">CLAUDE CODE</h1>

<table>
  <tbody><tr><td align="center" width="99999"><div>
    <a href="https://claude.com/product/claude-code">WEBSITE</a>
  </div></td></tr></tbody>
  <tbody><tr><td align="center" width="99999">&nbsp;<div>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
  </div>&nbsp;</td></tr></tbody>
</table>

## LEARNING

### SETUP FOR SPRING PROJECT

```shell
​claude plugin marketplace add anthropics/claude-plugins-official
claude plugin install java-lsp@claude-plugins-official --scope project
claude plugin install kotlin-lsp@claude-plugins-official --scope project
claude plugin install code-review@claude-plugins-official --scope project
claude plugin install security-guidance@claude-plugins-official --scope project
claude plugin install github@claude-plugins-official --scope project
```

### SETUP FOR ANGULAR PROJECT

```shell
claude plugin marketplace add anthropics/claude-plugins-official
claude plugin install typescript-lsp@claude-plugins-official --scope project
claude plugin install frontend-design@claude-plugins-official --scope project
claude plugin install github@claude-plugins-official --scope project
claude mcp add --scope project angular-cli -- npx -y @angular/cli mcp
```
