<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="98">
</td></tr></table>

<h1 align="center">GITHUB</h1>

<table>
  <tbody><tr><td align="center" width="99999"><div>
    <a href="https://github.com">WEBSITE</a>
  </div></td></tr></tbody>
  <tbody><tr><td align="center" width="99999">&nbsp;<div>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
  </div>&nbsp;</td></tr></tbody>
</table>

## LEARNING

### CREATE DEVELOP BRANCH

```shell
git switch -c develop
```

### MERGE DEVELOP INTO MAIN

```shell
git fetch origin
git switch main
git pull --ff-only origin main
git merge develop
git push origin main
git switch develop
```

### MAKE REPOSITORY PRIVATE

```shell
gh repo edit "username/project" --visibility private --accept-visibility-change-consequences
```

### INVOKE WORKFLOW MANUALLY

```shell
gh workflow run "workflow-name-here.yml"
```