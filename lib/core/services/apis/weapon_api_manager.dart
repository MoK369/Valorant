import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:valorent/core/models/weapons_model.dart';

class WeaponApiManager {
  static Future<WeaponsModel> getMaps() async {
    Uri url = Uri.https("valorant-api.com", "/v1/weapons");
    http.Response response = await http.get(url);
    var json = jsonDecode(response.body);
    return WeaponsModel.fromJson(json);
  }
}
