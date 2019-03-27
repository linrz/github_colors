import 'package:github_colors/src/colors.dart';

class GithubColors {

  static String covert(String language) => language.isNotEmpty ? GithubColorsMap[language] : null;
  
}
