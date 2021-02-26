import 'dart:async';

import 'package:RaziFertani/Features/Home/Presentation/bloc/home_bloc.dart';
import 'package:RaziFertani/Core/Utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreenDisplay extends StatefulWidget {
  const SplashScreenDisplay({
    Key key,
  }) : super(key: key);

  @override
  _SplashScreenDisplayState createState() => _SplashScreenDisplayState();
}

class _SplashScreenDisplayState extends State<SplashScreenDisplay> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 3000), () {
      BlocProvider.of<HomeBloc>(context).dispatch(GoToHomeEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: screenWidth * 0.05,
            ),
            Image.asset(
              "Assets/Images/car-vector.jpg",
              height: screenHeight * 0.7,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: screenWidth * 0.02,
            ),
            Text(
              "V 0.0.1",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
