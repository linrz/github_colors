# github_colors
[![Pub](https://img.shields.io/pub/v/github_colors.svg?style=flat-square)](https://pub.dartlang.org/packages/github_colors)
[![support](https://img.shields.io/badge/platform-flutter%7Cdart%20vm-ff69b4.svg?style=flat-square)](https://github.com/flutterchina/dio)


A Dart package for developers to covert languages colors in Github.

## Usage

Open your pubspec.yaml and add the following dependency.

```yaml
dependencies:
  github_colors: 0.0.1  #latest version
```

```dart
import 'package:github_colors/github_colors.dart';

main() async {
  String hex = GithubColors.covert('JavaScript');
  print(hex); // #f1e05a
}
```

If Github update languages, run the following command in the terminal to fetch the latest infomation.
```sh
pub global run github_colors:main
```

## Example
<img src="./assets/demo.png" width="50%" height="50%" />

## Author
**github_colors** © [linrz](https://github.com/linrz), Released under the [MIT](./LICENSE) License.<br>
Authored and maintained by linrz.

> [github.com/linrz](https://github.com/linrz) · GitHub [@linrz](https://github.com/linrz) · Twitter [@linrzPro](https://twitter.com/linrzPro)

<br>

2019 © [linrz](https://github.com/linrz)