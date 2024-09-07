import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:valorent/core/models/maps_model.dart';

class MapApiManager {
  static Future<MapsModel> getMaps() async {
    Uri url = Uri.https("valorant-api.com", "/v1/maps");
    http.Response response = await http.get(url);
    var json = jsonDecode(response.body);
    return MapsModel.fromJson(json);
  }
}
