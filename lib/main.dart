import 'package:RaziFertani/Core/Routes/routes.dart';
import 'package:RaziFertani/Core/Utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:RaziFertani/injection_container.dart' as sl;

void main() {
  sl.init();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: 'RaziFertani',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: AppColors.primaryColor,
      ),
      initialRoute: '/homeProvider',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
