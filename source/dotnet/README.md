<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="98">
</td></tr></table>

<h1 align="center">DOTNET</h1>

<table>
  <tbody><tr><td align="center" width="99999"><div>
    <a href="https://dotnet.microsoft.com">WEBSITE</a>
  </div></td></tr></tbody>
  <tbody><tr><td align="center" width="99999">&nbsp;<div>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
  </div>&nbsp;</td></tr></tbody>
</table>

## LEARNING

### CREATE NEW LIBRARY

```shell
dotnet new classlib -n MyLib
dotnet new xunit -n MyLib.Tests
dotnet new sln -n MyLib
dotnet sln add MyLib/MyLib.csproj
dotnet sln add MyLib.Tests/MyLib.Tests.csproj
dotnet add MyLib.Tests/MyLib.Tests.csproj reference MyLib/MyLib.csproj
```

### CREATE NEW MAUI APPLICATION

```shell
deposit="template"
project="Template"
mkdir -p "$deposit" && cd "$deposit"
dotnet new install Microsoft.Maui.Templates.net10
dotnet new sln -n "$project"
dotnet new maui -n "$project"
dotnet sln "$project.slnx" add "$project/$project.csproj"
mkdir "$project/Views"
mkdir "$project/ViewModels"
dotnet add "$project/$project.csproj" package CommunityToolkit.Mvvm
```
