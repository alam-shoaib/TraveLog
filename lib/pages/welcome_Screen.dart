import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trave_log/cubit/app_cubit.dart';
import 'package:trave_log/widgets/appLargeText.dart';
import 'package:trave_log/widgets/appText.dart';
import 'package:trave_log/msic/AppColors.dart';
import 'package:trave_log/widgets/responsiveButton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images = [
    'mountain.jpeg',
    'welcome-one.png',
    'welcome-three.png',
    'welcome-two.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: images.length,
      itemBuilder: (_, index) {
        return Container(
          // height: double.maxFinite,
          // width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/' + images[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              top: 150,
              left: 30,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(
                          text: "Mountains",
                          size: 25,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                "Mountain hikes gives you an incredible sense of freedom along wiht endurance test.",
                            color: AppColors.textColor2,
                          ),
                        ),
                        const SizedBox(height: 40,),
                        GestureDetector(
                          onTap: (){
                            BlocProvider.of<AppCubit>(context).getData();
                          },
                          child: Container(
                            width:200 ,
                            child: Row(
                              children:[ ResponsiveButton(
                                width: 120,
                              )],
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
                Column(
                  children: List.generate(3, (Dotindex) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      height:index==Dotindex?25:8,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index==Dotindex? AppColors.mainColor:AppColors.mainColor.withOpacity(0.3),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
