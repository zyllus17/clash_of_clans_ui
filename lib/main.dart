import 'package:clash_of_clans_ui/constants/theme.dart';
import 'package:clash_of_clans_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 731),
      builder: () => MaterialApp(
        title: 'Material App',
        theme: AppTheme.appTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
