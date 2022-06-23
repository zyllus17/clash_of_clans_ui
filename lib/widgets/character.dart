import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Character extends StatelessWidget {
  final Color backGroundColor;
  final String characterName;
  final String characterImage;
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
    required this.characterName,
    required this.characterImage,
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
      onTap: () => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => screen,
          reverseTransitionDuration: const Duration(milliseconds: 1500),
          transitionDuration: const Duration(milliseconds: 1500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Hero(
            tag: 'box-$backGroundColor',
            child: Container(
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
                    characterName,
                    style: Theme.of(context).textTheme.headline5,
                  ),
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
              height: height,
              width: width,
              child: Hero(
                tag: 'character-$characterImage',
                child: Image.asset(
                  characterImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
