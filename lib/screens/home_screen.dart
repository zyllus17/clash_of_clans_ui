import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomeScreen',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: Center(
        child: Text(
          'HomeScreen',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
