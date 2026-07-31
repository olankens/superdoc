<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="98">
</td></tr></table>

<h1 align="center">PYTHON</h1>

<table>
  <tbody><tr><td align="center" width="99999"><div>
    <a href="https://www.python.org">WEBSITE</a>
  </div></td></tr></tbody>
  <tbody><tr><td align="center" width="99999">&nbsp;<div>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
  </div>&nbsp;</td></tr></tbody>
</table>

## LEARNING

### CREATE LOCAL CONDA ENVIRONMENT

```shell
conda create --prefix ./.venv python=3.11
conda activate ./.venv
which python
```

### CREATE NAMED CONDA ENVIRONMENT

```shell
conda create -n work python=3.11 -y
conda activate work
conda install <package_name> -y
```

### VANISH NAMED CONDA ENVIRONMENT

```shell
conda remove -n work --all -y
```