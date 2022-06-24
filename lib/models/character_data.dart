import 'package:clash_of_clans_ui/constants/constants.dart';

class CharacterData {
  final String characterImage;
  final String characterName;
  final int? id;
  final Color backgroundColor;
  final double top;
  final double bottom;
  final double left;
  final double right;
  final double height;
  final double width;
  final Widget screen;

  CharacterData({
    required this.characterImage,
    required this.characterName,
    this.id,
    required this.backgroundColor,
    required this.top,
    required this.bottom,
    required this.left,
    required this.right,
    required this.height,
    required this.width,
    required this.screen,
  });
}
