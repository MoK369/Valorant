class AgentsModel {
  int? status;
  List<AgentData>? data;

  AgentsModel({this.status, this.data});

  AgentsModel.fromJson(Map<String, dynamic> dataJson) {
    status = dataJson['status'];
    data = [];
    for (Map<String, dynamic> agentData in dataJson["data"]) {
      data?.add(AgentData.fromJson(agentData));
    }
  }
}

class AgentData {
  String? uuid;
  String? displayName;
  String? description;
  String? developerName;
  List<dynamic>? characterTags;
  String? displayIcon;
  String? displayIconSmall;
  String? bustPortrait;
  String? fullPortrait;
  String? fullPortraitV2;
  String? killfeedPortrait;
  String? background;
  List<dynamic>? backgroundGradientColors;
  String? assetPath;
  late bool isFullPortraitRightFacing;
  late bool isPlayableCharacter;
  late bool isAvailableForTest;
  late bool isBaseContent;
  Role? role;
  RecruitmentData? recruitmentData;
  late List<Ability> abilities;
  String? voiceLine;

  AgentData(
      this.uuid,
      this.displayName,
      this.description,
      this.developerName,
      this.characterTags,
      this.displayIcon,
      this.displayIconSmall,
      this.bustPortrait,
      this.fullPortrait,
      this.fullPortraitV2,
      this.killfeedPortrait,
      this.background,
      this.backgroundGradientColors,
      this.assetPath,
      this.isFullPortraitRightFacing,
      this.isPlayableCharacter,
      this.isAvailableForTest,
      this.isBaseContent,
      this.role,
      this.recruitmentData,
      this.abilities,
      this.voiceLine);

  AgentData.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    description = json['description'];
    developerName = json['developerName'];
    characterTags = json['characterTags'];
    displayIcon = json['displayIcon'];
    displayIconSmall = json['displayIconSmall'];
    bustPortrait = json['bustPortrait'];
    fullPortrait = json['fullPortrait'];
    fullPortraitV2 = json['fullPortraitV2'];
    killfeedPortrait = json['killfeedPortrait'];
    background = json['background'];
    backgroundGradientColors = json['backgroundGradientColors'];
    assetPath = json['assetPath'];
    isFullPortraitRightFacing = json['isFullPortraitRightFacing'];
    isPlayableCharacter = json['isPlayableCharacter'];
    isAvailableForTest = json['isAvailableForTest'];
    isBaseContent = json['isBaseContent'];
    role = json['role'] != null ? Role.fromJson(json['role']) : null;
    recruitmentData = json['recruitmentData'] != null
        ? RecruitmentData.fromJson(json['recruitmentData'])
        : null;
    abilities = [];
    voiceLine = json['voiceLine'];

    for (Map<String, dynamic> ability in json['abilities']) {
      abilities.add(Ability.fromJson(ability));
    }
  }
}

class Ability {
  late String slot;
  late String displayName;
  late String description;
  String? displayIcon;

  Ability({
    required this.slot,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  Ability.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
  }
}

class RecruitmentData {
  String? counterId;
  String? milestoneId;
  int? milestoneThreshold;
  bool? useLevelVpCostOverride;
  int? levelVpCostOverride;
  String? startDate;
  String? endDate;

  RecruitmentData({
    required this.counterId,
    required this.milestoneId,
    required this.milestoneThreshold,
    required this.useLevelVpCostOverride,
    required this.levelVpCostOverride,
    required this.startDate,
    required this.endDate,
  });

  RecruitmentData.fromJson(Map<String, dynamic> json) {
    counterId = json['counterId'];
    milestoneId = json['milestoneId'];
    milestoneThreshold = json['milestoneThreshold'];
    useLevelVpCostOverride = json['useLevelVpCostOverride'];
    levelVpCostOverride = json['levelVpCostOverride'];
    startDate = json['startDate'];
    endDate = json['endDate'];
  }
}

class Role {
  String? uuid;
  String? displayName;
  String? description;
  String? displayIcon;
  String? assetPath;

  Role(
      {this.uuid,
      this.displayName,
      this.description,
      this.displayIcon,
      this.assetPath});

  Role.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
    assetPath = json['assetPath'];
  }
}
