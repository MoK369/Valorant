class MapsModel {
  int? status;
  List<MapData>? data;

  MapsModel({this.status, this.data});

  MapsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = [];
    for (var map in json['data']) {
      data?.add(MapData.fromJson(map));
    }
  }
}

class MapData {
  String? uuid;
  String? displayName;
  Iterable<dynamic>? narrativeDescription;
  String? tacticalDescription;
  String? coordinates;
  String? displayIcon;
  String? listViewIcon;
  String? listViewIconTall;
  String? splash;
  String? stylizedBackgroundImage;
  String? premierBackgroundImage;
  String? assetPath;
  String? mapUrl;
  num? xMultiplier;
  num? yMultiplier;
  num? xScalarToAdd;
  num? yScalarToAdd;
  List<Callouts>? callouts;

  MapData(
      {this.uuid,
      this.displayName,
      this.narrativeDescription,
      this.tacticalDescription,
      this.coordinates,
      this.displayIcon,
      this.listViewIcon,
      this.listViewIconTall,
      this.splash,
      this.stylizedBackgroundImage,
      this.premierBackgroundImage,
      this.assetPath,
      this.mapUrl,
      this.xMultiplier,
      this.yMultiplier,
      this.xScalarToAdd,
      this.yScalarToAdd,
      this.callouts});

  MapData.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    narrativeDescription = json['narrativeDescription'];
    tacticalDescription = json['tacticalDescription'];
    coordinates = json['coordinates'];
    displayIcon = json['displayIcon'];
    listViewIcon = json['listViewIcon'];
    listViewIconTall = json['listViewIconTall'];
    splash = json['splash'];
    stylizedBackgroundImage = json['stylizedBackgroundImage'];
    premierBackgroundImage = json['premierBackgroundImage'];
    assetPath = json['assetPath'];
    mapUrl = json['mapUrl'];
    xMultiplier = json['xMultiplier'];
    yMultiplier = json['yMultiplier'];
    xScalarToAdd = json['xScalarToAdd'];
    yScalarToAdd = json['yScalarToAdd'];
    callouts = [];
    for (var callout in json['callouts'] ?? []) {
      callouts?.add(Callouts.fromJson(callout));
    }
  }
}

class Callouts {
  String? regionName;
  String? superRegionName;
  Location? location;

  Callouts({this.regionName, this.superRegionName, this.location});

  Callouts.fromJson(Map<String, dynamic> json) {
    regionName = json['regionName'];
    superRegionName = json['superRegionName'];
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
  }
}

class Location {
  num? x;
  num? y;

  Location({this.x, this.y});

  Location.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
  }
}
