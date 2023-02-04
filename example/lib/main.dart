import 'package:flutter/material.dart';
import 'package:at_home/at_home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AThome(
        wantAppBar: true,
        body: Container(),
      ),
    );
  }
}
