import 'package:clash_of_clans_ui/constants/colors.dart';
import 'package:clash_of_clans_ui/constants/images.dart';
import 'package:clash_of_clans_ui/constants/strings.dart';
import 'package:clash_of_clans_ui/screens/character/character_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 70),
            Image.asset(Images.banner),
            // SizedBox(height: 46),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Character(
                      backGroundColor: AppColors.barbarianBG,
                      image: Images.barbarian,
                      name: Strings.barbarian,
                      top: -35,
                      right: 10,
                      left: -19,
                      bottom: 64,
                      height: 183.h,
                      width: 159.w,
                      screen: const CharacterScreen(
                        characterName: Strings.barbarian,
                        characterImage: Images.barbarian,
                        backgroundColor: AppColors.barbarianBG,
                        attackType: Strings.melee,
                        top: -37,
                        right: 0,
                        left: -100,
                        bottom: -66,
                      ),
                    ),
                    SizedBox(height: 60),
                    Character(
                      backGroundColor: AppColors.babyDragonBG,
                      image: Images.babyDragon,
                      name: Strings.babyDragon,
                      top: -22,
                      right: 1,
                      left: 7,
                      bottom: 77,
                      height: 157.h,
                      width: 142.w,
                      screen: const CharacterScreen(
                        characterName: Strings.babyDragon,
                        characterImage: Images.babyDragon,
                        backgroundColor: AppColors.babyDragonBG,
                        attackType: Strings.aerial,
                        top: 14,
                        right: 99,
                        left: -56,
                        bottom: -38,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 115),
                    Character(
                      backGroundColor: AppColors.balloonBG,
                      image: Images.balloon,
                      name: Strings.balloon,
                      top: -72,
                      right: 7,
                      left: 39,
                      bottom: 68,
                      height: 189.h,
                      width: 118.w,
                      screen: const CharacterScreen(
                        characterName: Strings.balloon,
                        characterImage: Images.balloon,
                        backgroundColor: AppColors.balloonBG,
                        attackType: Strings.ground,
                        top: -27,
                        right: 89,
                        left: 6,
                        bottom: -98,
                      ),
                    ),
                    SizedBox(height: 45),
                    Character(
                      backGroundColor: AppColors.dragonBG,
                      image: Images.dragon,
                      name: Strings.dragon,
                      top: -22,
                      right: 3,
                      left: 12,
                      bottom: 63,
                      height: 171.h,
                      width: 135.w,
                      screen: const CharacterScreen(
                        characterName: Strings.dragon,
                        characterImage: Images.dragon,
                        backgroundColor: AppColors.dragonBG,
                        attackType: Strings.aerial,
                        top: -58,
                        right: 93,
                        left: -63,
                        bottom: -43,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class Character extends StatelessWidget {
  final Color backGroundColor;
  final String name;
  final String image;
  final double bottom;
  final double top;
  final double left;
  final double right;
  final double height;
  final double width;
  final Widget screen;

  const Character({
    Key? key,
    required this.backGroundColor,
    required this.name,
    required this.image,
    required this.bottom,
    required this.top,
    required this.left,
    required this.right,
    required this.height,
    required this.width,
    required this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 212.h,
            width: 150.w,
            decoration: BoxDecoration(
              color: backGroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 26, left: 16, right: 16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ),
          Positioned(
            top: top,
            right: right,
            left: left,
            bottom: bottom,
            child: SizedBox(
              // padding: EdgeInsets.symmetric(horizontal: 20),
              height: height,
              width: width,
              // color: Colors.black,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
