<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="96">
</td></tr></table>

<h1 align="center">PYTHON</h1>

<table><tr><td align="center" width="99999"><p>
  <a href="https://www.python.org">WEBSITE</a>
</p></td></tr></table>

<table><tr><td align="center" width="99999">&nbsp;<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
</p>&nbsp;</td></tr></table>

### LEARNING

#### Create Local Conda Environment

```shell
conda create --prefix ./.venv python=3.11
conda activate ./.venv
which python
```

#### Create Named Conda Environment

```shell
conda create -n work python=3.11 -y
conda activate work
conda install <package_name> -y
```

#### Vanish Named Conda Environment

```shell
conda remove -n work --all -y
```