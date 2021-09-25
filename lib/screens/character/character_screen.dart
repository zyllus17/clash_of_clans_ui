import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:clash_of_clans_ui/constants/colors.dart';
import 'package:clash_of_clans_ui/constants/images.dart';
import 'package:clash_of_clans_ui/constants/strings.dart';

class CharacterScreen extends StatelessWidget {
  final String characterImage;
  final Color backgroundColor;
  final double left;
  final double right;
  final double top;
  final double bottom;
  final String characterName;
  final String attackType;

  const CharacterScreen({
    Key? key,
    required this.characterImage,
    required this.backgroundColor,
    required this.left,
    required this.right,
    required this.top,
    required this.bottom,
    required this.characterName,
    required this.attackType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 380.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Positioned(
                top: top,
                right: right,
                left: left,
                bottom: bottom,
                child: Image.asset(
                  characterImage,
                  fit: BoxFit.contain,
                ),
              ),
              IconButton(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25, top: 35),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 50.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                characterName,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              left: 50,
              right: 50,
            ),
            child: SizedBox(
              height: 158.h,
              width: 312.w,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(Images.level)),
                          SizedBox(width: 18.w),
                          Text(
                            Strings.level,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ],
                      ),
                      SizedBox(width: 55.w),
                      Row(
                        children: <Widget>[
                          Image.asset(Images.attack),
                          SizedBox(width: 18.w),
                          Text(
                            attackType,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 35.h),
                  SizedBox(
                    height: 90,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(Images.dps)),
                            SizedBox(width: 18.w),
                            Text(
                              Strings.dps,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Spacer(),
                            LevelBar(),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(Images.elixir)),
                            SizedBox(width: 18.w),
                            Text(
                              Strings.elixir,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Spacer(),
                            LevelBar(),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(Images.health)),
                            SizedBox(width: 18.w),
                            Text(
                              Strings.health,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Spacer(),
                            LevelBar(),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LevelBar extends StatefulWidget {
  const LevelBar({Key? key}) : super(key: key);

  @override
  State<LevelBar> createState() => _LevelBarState();
}

class _LevelBarState extends State<LevelBar> {
  @override
  // void initState() {
  //   super.initState();
  //   double width = 20;
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 10,
          width: 156,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: 10.0,
          width: 56,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
