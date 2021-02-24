import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:RaziFertani/Features/Home/Presentation/Pages/homePage.dart';
import 'package:RaziFertani/Features/Home/Presentation/bloc/home_bloc.dart';
import 'package:RaziFertani/injection_container.dart';

class HomeProvider extends StatelessWidget {
  const HomeProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => null,
      child: Scaffold(
        body: BlocProvider(
          builder: (_) => sl<HomeBloc>(),
          child: HomePage(),
        ),
      ),
    );
  }
}
