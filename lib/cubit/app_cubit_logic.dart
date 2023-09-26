import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trave_log/cubit/app_cubit.dart';
import 'package:trave_log/cubit/app_cubit_states.dart';
import 'package:trave_log/pages/Home_Page.dart';
import 'package:trave_log/pages/detailPage.dart';
import 'package:trave_log/pages/navPages/main_page.dart';
import 'package:trave_log/pages/welcome_Screen.dart';
class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({Key? key}) : super(key: key);

  @override
  State<AppCubitLogic> createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit,CubitStates>(
        builder: (context,state){
          if(state is WelcomeState)
            return WelcomeScreen();
          if(state is LoadingState)
            return Center(
              child: CircularProgressIndicator(),
            );
          if(state is LoadedState)
            return MainPage();
          if(state is DetailState)
            return DetailPage();
          else
            return Container();
        },
      ),
    );
  }
}
