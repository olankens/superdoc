<table align="center"><tr></tr><tr><td>
  <img src="assets/icon.svg" align="center" width="96">
</td></tr></table>

<h1 align="center">SPRING</h1>

<table><tr><td align="center" width="99999"><p>
  <a href="https://spring.io">WEBSITE</a>
</p></td></tr></table>

<table><tr><td align="center" width="99999">&nbsp;<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
</p>&nbsp;</td></tr></table>

### Update Maven Wrapper

```shell
address="https://maven.apache.org/download.cgi"
pattern="Apache Maven [0-9]+\.[0-9]+\.[0-9]+"
version="$(curl -s "$address" | grep -A2 'id="CurrentMaven"' | grep -oE "$pattern" | head -1 | awk '{print $3}')"
./mvnw -N wrapper:wrapper -Dmaven="$version"
```

### Update Gradle Wrapper

```shell
version="$(curl -s https://services.gradle.org/versions/current | jq -r .version)"
./gradlew wrapper --gradle-version "$version"
```
