import 'package:clash_of_clans_ui/constants/colors.dart';
import 'package:clash_of_clans_ui/constants/images.dart';
import 'package:clash_of_clans_ui/constants/strings.dart';
import 'package:flutter/material.dart';

class CharacterData {
  final String characterImage;
  final String characterName;
  final int id;
  final Color backgroundColor;

  CharacterData({
    required this.characterImage,
    required this.characterName,
    required this.id,
    required this.backgroundColor,
  });
  List<CharacterData> character = [
    CharacterData(
      id: 1,
      characterName: Strings.barbarian,
      characterImage: Images.barbarian,
      backgroundColor: AppColors.barbarianBG,
    ),
    CharacterData(
      id: 2,
      characterName: Strings.balloon,
      characterImage: Images.balloon,
      backgroundColor: AppColors.balloonBG,
    ),
    CharacterData(
      id: 3,
      characterName: Strings.babyDragon,
      characterImage: Images.babyDragon,
      backgroundColor: AppColors.babyDragonBG,
    ),
    CharacterData(
      id: 4,
      characterName: Strings.dragon,
      characterImage: Images.dragon,
      backgroundColor: AppColors.dragonBG,
    ),
  ];
}
