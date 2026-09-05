<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="98">
</td></tr></table>

<h1 align="center">SHELL</h1>

<table>
  <tbody><tr><td align="center" width="99999"><div>
    <a href="#">WEBSITE</a>
  </div></td></tr></tbody>
  <tbody><tr><td align="center" width="99999">&nbsp;<div>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
  </div>&nbsp;</td></tr></tbody>
</table>

## LEARNING

### OPTIMIZE WITH PNGQUANT

```shell
pngquant --force --output icon.png icon.png
```

<hr>

### VERIFY MD5 HASH

#### DEFAULT VERIFICATION

```shell
md5sum -c usb_MICALIDVB6886_U4.md5
```

#### WINDOWS (CRLF) VERIFICATION

```shell
tr -d '\r' < usb_MICALIDVB6886_U4.md5 | md5sum -c -
```

<hr>

### CONVERT GIF TO APNG

```shell
ffmpeg -i input.gif -plays 0 -f apng output.apng
```