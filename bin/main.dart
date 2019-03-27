import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yaml/yaml.dart';

fetchLanguagesYml() async {
  var data = null;
  try {
    Response response = await Dio().get('https://raw.githubusercontent.com/github/linguist/master/lib/linguist/languages.yml');
    data = json.decode(json.encode(loadYaml(response.toString())));
  } catch (e) {
    throw e;
  }
  return data;
}

void main() async {
  var colors = new Map<String, String>();
  var data = await fetchLanguagesYml();

  data.forEach((key, value) {
    colors[key] = value['color'];
  });

  File file = new File('./lib/src/colors.dart');

  if (!await file.exists()) {
    file = await file.create();
  }

  String colorsJson = json.encode(colors);
  String colorsDartFile = 'const GithubColorsMap = $colorsJson;';

  await file.writeAsString(colorsDartFile);
}