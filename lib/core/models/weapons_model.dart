class WeaponsModel {
  int? status;
  List<WeaponData>? data;

  WeaponsModel({this.status, this.data});

  WeaponsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = [];
    for (var weapon in json['data'] ?? []) {
      data?.add(WeaponData.fromJson(weapon));
    }
  }
}

class WeaponData {
  String? uuid;
  String? displayName;
  String? category;
  String? defaultSkinUuid;
  String? displayIcon;
  String? killStreamIcon;
  String? assetPath;
  WeaponStats? weaponStats;
  ShopData? shopData;
  List<Skins>? skins;

  WeaponData(
      {this.uuid,
      this.displayName,
      this.category,
      this.defaultSkinUuid,
      this.displayIcon,
      this.killStreamIcon,
      this.assetPath,
      this.weaponStats,
      this.shopData,
      this.skins});

  WeaponData.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    category = json['category'];
    defaultSkinUuid = json['defaultSkinUuid'];
    displayIcon = json['displayIcon'];
    killStreamIcon = json['killStreamIcon'];
    assetPath = json['assetPath'];
    weaponStats = (json['weaponStats'] != null
        ? WeaponStats.fromJson(json['weaponStats'])
        : null);
    shopData =
        (json['shopData'] != null ? ShopData.fromJson(json['shopData']) : null);
    skins = [];
    for (var skin in json['skins'] ?? []) {
      skins?.add(Skins.fromJson(skin));
    }
  }
}

class Skins {
  String? uuid;
  String? displayName;
  String? themeUuid;
  String? contentTierUuid;
  String? displayIcon;
  String? wallpaper;
  String? assetPath;
  List<Chromas>? chromas;
  List<Levels>? levels;

  Skins(
      {this.uuid,
      this.displayName,
      this.themeUuid,
      this.contentTierUuid,
      this.displayIcon,
      this.wallpaper,
      this.assetPath,
      this.chromas,
      this.levels});

  Skins.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    themeUuid = json['themeUuid'];
    contentTierUuid = json['contentTierUuid'];
    displayIcon = json['displayIcon'];
    wallpaper = json['wallpaper'];
    assetPath = json['assetPath'];
    chromas = [];
    for (var chroma in json['chromas'] ?? []) {
      chromas?.add(Chromas.fromJson(chroma));
    }
    levels = [];
    for (var level in json['levels'] ?? []) {
      levels?.add(Levels.fromJson(level));
    }
  }
}

class Levels {
  String? uuid;
  String? displayName;
  String? levelItem;
  String? displayIcon;
  String? streamedVideo;
  String? assetPath;

  Levels(
      {this.uuid,
      this.displayName,
      this.levelItem,
      this.displayIcon,
      this.streamedVideo,
      this.assetPath});

  Levels.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    levelItem = json['levelItem'];
    displayIcon = json['displayIcon'];
    streamedVideo = json['streamedVideo'];
    assetPath = json['assetPath'];
  }
}

class Chromas {
  String? uuid;
  String? displayName;
  String? displayIcon;
  String? fullRender;
  String? swatch;
  String? streamedVideo;
  String? assetPath;

  Chromas(
      {this.uuid,
      this.displayName,
      this.displayIcon,
      this.fullRender,
      this.swatch,
      this.streamedVideo,
      this.assetPath});

  Chromas.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    displayIcon = json['displayIcon'];
    fullRender = json['fullRender'];
    swatch = json['swatch'];
    streamedVideo = json['streamedVideo'];
    assetPath = json['assetPath'];
  }
}

class ShopData {
  num? cost;
  String? category;
  num? shopOrderPriority;
  String? categoryText;
  GridPosition? gridPosition;
  bool? canBeTrashed;
  Null image;
  String? newImage;
  Null newImage2;
  String? assetPath;

  ShopData(
      {this.cost,
      this.category,
      this.shopOrderPriority,
      this.categoryText,
      this.gridPosition,
      this.canBeTrashed,
      this.image,
      this.newImage,
      this.newImage2,
      this.assetPath});

  ShopData.fromJson(Map<String, dynamic> json) {
    cost = json['cost'];
    category = json['category'];
    shopOrderPriority = json['shopOrderPriority'];
    categoryText = json['categoryText'];
    gridPosition = (json['gridPosition'] != null
        ? GridPosition.fromJson(json['gridPosition'])
        : null);
    canBeTrashed = json['canBeTrashed'];
    image = json['image'];
    newImage = json['newImage'];
    newImage2 = json['newImage2'];
    assetPath = json['assetPath'];
  }
}

class GridPosition {
  num? row;
  num? column;

  GridPosition({this.row, this.column});

  GridPosition.fromJson(Map<String, dynamic> json) {
    row = json['row'];
    column = json['column'];
  }
}

class WeaponStats {
  num? fireRate,
      magazineSize,
      runSpeedMultiplier,
      equipTimeSeconds,
      reloadTimeSeconds,
      firstBulletAccuracy,
      shotgunPelletCount;
  String? wallPenetration;
  String? feature;
  String? fireMode;
  String? altFireType;
  AdsStats? adsStats;
  AltShotgunStats? altShotgunStats;
  AirBurstStats? airBurstStats;
  List<DamageRanges>? damageRanges;

  WeaponStats(
      {this.fireRate,
      this.magazineSize,
      this.runSpeedMultiplier,
      this.equipTimeSeconds,
      this.reloadTimeSeconds,
      this.firstBulletAccuracy,
      this.shotgunPelletCount,
      this.wallPenetration,
      this.feature,
      this.fireMode,
      this.altFireType,
      this.adsStats,
      this.altShotgunStats,
      this.airBurstStats,
      this.damageRanges});

  WeaponStats.fromJson(Map<String, dynamic> json) {
    fireRate = json['fireRate'];
    magazineSize = json['magazineSize'];
    runSpeedMultiplier = json['runSpeedMultiplier'];
    equipTimeSeconds = json['equipTimeSeconds'];
    reloadTimeSeconds = json['reloadTimeSeconds'];
    firstBulletAccuracy = json['firstBulletAccuracy'];
    shotgunPelletCount = json['shotgunPelletCount'];
    wallPenetration = json['wallPenetration'];
    feature = json['feature'];
    fireMode = json['fireMode'];
    altFireType = json['altFireType'];
    adsStats =
        json['adsStats'] != null ? AdsStats.fromJson(json['adsStats']) : null;
    altShotgunStats = json['altShotgunStats'] != null
        ? AltShotgunStats.fromJson(json['altShotgunStats'])
        : null;
    airBurstStats = json['airBurstStats'] != null
        ? AirBurstStats.fromJson(json['airBurstStats'])
        : null;
    damageRanges = [];
    for (var damageRange in json['damageRanges'] ?? []) {
      damageRanges?.add(DamageRanges.fromJson(damageRange));
    }
  }
}

class DamageRanges {
  num? rangeStartMeters, rangeEndMeters, headDamage, bodyDamage, legDamage;

  DamageRanges(
      {this.rangeStartMeters,
      this.rangeEndMeters,
      this.headDamage,
      this.bodyDamage,
      this.legDamage});

  DamageRanges.fromJson(Map<String, dynamic> json) {
    rangeStartMeters = json['rangeStartMeters'];
    rangeEndMeters = json['rangeEndMeters'];
    headDamage = json['headDamage'];
    bodyDamage = json['bodyDamage'];
    legDamage = json['legDamage'];
  }
}

class AirBurstStats {
  num? shotgunPelletCount, burstDistance;

  AirBurstStats({this.shotgunPelletCount, this.burstDistance});

  AirBurstStats.fromJson(Map<String, dynamic> json) {
    shotgunPelletCount = json['shotgunPelletCount'];
    burstDistance = json['burstDistance'];
  }
}

class AltShotgunStats {
  num? shotgunPelletCount, burstRate;

  AltShotgunStats({this.shotgunPelletCount, this.burstRate});

  AltShotgunStats.fromJson(Map<String, dynamic> json) {
    shotgunPelletCount = json['shotgunPelletCount'];
    burstRate = json['burstRate'];
  }
}

class AdsStats {
  num? zoomMultiplier,
      fireRate,
      runSpeedMultiplier,
      burstCount,
      firstBulletAccuracy;

  AdsStats(
      {this.zoomMultiplier,
      this.fireRate,
      this.runSpeedMultiplier,
      this.burstCount,
      this.firstBulletAccuracy});

  AdsStats.fromJson(Map<String, dynamic> json) {
    zoomMultiplier = json['zoomMultiplier'];
    fireRate = json['fireRate'];
    runSpeedMultiplier = json['runSpeedMultiplier'];
    burstCount = json['burstCount'];
    firstBulletAccuracy = json['firstBulletAccuracy'];
  }
}
