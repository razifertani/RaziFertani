import 'package:RaziFertani/Features/Home/Presentation/Widgets/splashScreenWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:RaziFertani/Core/Utils/loadingWidget.dart';
import 'package:RaziFertani/Features/Home/Presentation/Widgets/homeDisplay.dart';
import 'package:RaziFertani/Features/Home/Presentation/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is EmptyHomeState) {
          return SplashScreenDisplay();
        }

        if (state is GoToHomeState) {
          return HomeDisplay();
        }

        if (state is LoadingHomeState) {
          return LoadingWidget();
        }

        return LoadingWidget();
      },
    );
  }
}
