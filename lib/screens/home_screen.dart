import 'package:clash_of_clans_ui/constants/constants.dart';
import 'package:clash_of_clans_ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Text(
              AppText.clashofclans,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 20),
            Image.asset(AppImages.banner),
            const HomescreenCharacters(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
