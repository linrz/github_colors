library github_colors;

import 'dart:io';
import 'dart:convert';

class GithubColors {

  static Map<String, dynamic> colors;

  static String covert(String language) {
    if (colors == null) {
      var file = File('./assets/colors.json').readAsStringSync();
      colors = json.decode(file);
    }
  
    return language.isNotEmpty ? colors[language] : null;
  }
}