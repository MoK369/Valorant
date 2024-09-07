import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:valorent/core/models/agents_model.dart';

class AgentApiManager {
  static Future<AgentsModel> getAgents() async {
    Uri url = Uri.https("valorant-api.com", "v1/agents");
    http.Response response = await http.get(url);
    var json = jsonDecode(response.body);
    return AgentsModel.fromJson(json);
  }
}
