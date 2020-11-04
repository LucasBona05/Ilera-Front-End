import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:simple_code/simple_code.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SimpleCode.changeNavigatorKey(Modular.navigatorKey);
    return MaterialApp(
      navigatorKey: SimpleCode.navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
        fontFamily: 'Futura',
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      onGenerateRoute: Modular.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
