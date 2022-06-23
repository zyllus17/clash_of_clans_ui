import 'package:clash_of_clans_ui/constants/constants.dart';
import 'package:clash_of_clans_ui/screens/screens.dart';
import 'package:clash_of_clans_ui/widgets/widgets.dart';

class HomescreenCharacters extends StatelessWidget {
  const HomescreenCharacters({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Character(
              backGroundColor: AppColors.barbarianBG,
              characterImage: AppImages.barbarian,
              characterName: AppText.barbarian,
              top: -35,
              right: 10,
              left: -19,
              bottom: 64,
              height: 183.h,
              width: 159.w,
              screen: const CharacterScreen(
                characterName: AppText.barbarian,
                characterImage: AppImages.barbarian,
                backgroundColor: AppColors.barbarianBG,
                attackType: AppText.melee,
                top: -37,
                right: 0,
                left: -100,
                bottom: -66,
                levelWidth1: 55,
                levelWidth2: 77,
                levelWidth3: 108,
              ),
            ),
            const SizedBox(height: 60),
            Character(
              backGroundColor: AppColors.babyDragonBG,
              characterImage: AppImages.babyDragon,
              characterName: AppText.babyDragon,
              top: -22,
              right: 1,
              left: 7,
              bottom: 77,
              height: 157.h,
              width: 142.w,
              screen: const CharacterScreen(
                characterName: AppText.babyDragon,
                characterImage: AppImages.babyDragon,
                backgroundColor: AppColors.babyDragonBG,
                attackType: AppText.aerial,
                top: 14,
                right: 99,
                left: -56,
                bottom: -38,
                levelWidth1: 71,
                levelWidth2: 121,
                levelWidth3: 89,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 115),
            Character(
              backGroundColor: AppColors.balloonBG,
              characterImage: AppImages.balloon,
              characterName: AppText.balloon,
              top: -72,
              right: 7,
              left: 39,
              bottom: 68,
              height: 189.h,
              width: 118.w,
              screen: const CharacterScreen(
                characterName: AppText.balloon,
                characterImage: AppImages.balloon,
                backgroundColor: AppColors.balloonBG,
                attackType: AppText.ground,
                top: -27,
                right: 89,
                left: 6,
                bottom: -98,
                levelWidth1: 79,
                levelWidth2: 107,
                levelWidth3: 76,
              ),
            ),
            const SizedBox(height: 45),
            Character(
              backGroundColor: AppColors.dragonBG,
              characterImage: AppImages.dragon,
              characterName: AppText.dragon,
              top: -22,
              right: 3,
              left: 12,
              bottom: 63,
              height: 171.h,
              width: 135.w,
              screen: const CharacterScreen(
                characterName: AppText.dragon,
                characterImage: AppImages.dragon,
                backgroundColor: AppColors.dragonBG,
                attackType: AppText.aerial,
                top: -58,
                right: 93,
                left: -63,
                bottom: -43,
                levelWidth1: 140,
                levelWidth2: 128,
                levelWidth3: 135,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
