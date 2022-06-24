import 'package:clash_of_clans_ui/constants/constants.dart';
import 'package:clash_of_clans_ui/widgets/widgets.dart';

class CharacterScreen extends StatefulWidget {
  final String characterImage;
  final Color backgroundColor;
  final double left;
  final double right;
  final double top;
  final double bottom;
  final String characterName;
  final String attackType;
  final double levelWidth1;
  final double levelWidth2;
  final double levelWidth3;

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
    required this.levelWidth1,
    required this.levelWidth2,
    required this.levelWidth3,
  }) : super(key: key);

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Hero(
                tag: 'box-${widget.backgroundColor}',
                child: Container(
                  height: 380.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: widget.backgroundColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: widget.top,
                right: widget.right,
                left: widget.left,
                bottom: widget.bottom,
                child: Hero(
                  tag: 'character-${widget.characterImage}',
                  child: Image.asset(
                    widget.characterImage,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              IconButton(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 25, top: 35),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 50.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                widget.characterName,
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
                              child: Image.asset(AppImages.level)),
                          SizedBox(width: 18.w),
                          Text(
                            AppText.level,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ],
                      ),
                      SizedBox(width: 55.w),
                      Row(
                        children: <Widget>[
                          Image.asset(AppImages.attack),
                          SizedBox(width: 18.w),
                          Text(
                            widget.attackType,
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
                                child: Image.asset(AppImages.dps)),
                            SizedBox(width: 18.w),
                            Text(
                              AppText.dps,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            const Spacer(),
                            LevelBar(
                              levelWidth: widget.levelWidth1,
                              color: AppColors.yellow,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(AppImages.elixir)),
                            SizedBox(width: 18.w),
                            Text(
                              AppText.elixir,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            const Spacer(),
                            LevelBar(
                              levelWidth: widget.levelWidth2,
                              color: AppColors.pink,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(AppImages.health)),
                            SizedBox(width: 18.w),
                            Text(
                              AppText.health,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            const Spacer(),
                            LevelBar(
                              levelWidth: widget.levelWidth3,
                              color: AppColors.red,
                            ),
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
