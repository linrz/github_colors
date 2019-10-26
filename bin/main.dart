import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:yaml/yaml.dart';

fetchLanguagesYml() async {
  var data = null;
  try {
    final response =
        await http.get('https://raw.githubusercontent.com/github/linguist/master/lib/linguist/languages.yml');
    data = json.decode(json.encode(loadYaml(response.toString())));
  } catch (e) {
    throw e;
  }
  return data;
}

void main() async {
  var colors = Map<String, String>();
  var data = await fetchLanguagesYml();

  data.forEach((key, value) {
    colors[key] = value['color'];
  });

  File file = File('./lib/src/colors.dart');

  if (!await file.exists()) {
    file = await file.create();
  }

  String colorsJson = json.encode(colors);
  String colorsDartFile = 'const GithubColorsMap = $colorsJson;';

  await file.writeAsString(colorsDartFile);
}
