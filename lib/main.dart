import 'package:RaziFertani/Core/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:RaziFertani/injection_container.dart' as sl;
import 'package:google_fonts/google_fonts.dart';

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
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: '/homeProvider',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
