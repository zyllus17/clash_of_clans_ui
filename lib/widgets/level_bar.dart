import 'package:clash_of_clans_ui/constants/constants.dart';

class LevelBar extends StatelessWidget {
  final double levelWidth;
  final Color color;

  const LevelBar({
    Key? key,
    required this.levelWidth,
    required this.color,
  }) : super(key: key);
  Future<double?> get _width => Future<double?>.value(levelWidth);

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
        FutureBuilder<double?>(
          future: _width,
          initialData: 0.0,
          builder: (context, snapshot) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              height: 10,
              width: snapshot.data,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        ),
      ],
    );
  }
}
