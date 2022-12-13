import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pr1/cubit/bright_theme_cubit.dart';
import 'package:pr1/cubit/click_cubit.dart';
import 'package:pr1/cubit/res_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ClickCubit()),
          BlocProvider(create: (context) => BrightnessCubit()),
          BlocProvider(create: (context) => ResCubit()),
        ],
        child: BlocBuilder<BrightnessCubit, BrightThemeState>(
            builder: (context, state) {
          if (state is clickBrightnessLight) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(brightness: state.brightnessLight),
              home: MyHomePage(),
              debugShowCheckedModeBanner: false,
            );
          }
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.purple,
            ),
            home: MyHomePage(),
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  String res = '0';
  List<Color> ColorList = [
    Colors.purple,
    Colors.black,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.grey,
    Colors.pink,
    Colors.brown,
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<ClickCubit, ClickState>(
                builder: (context, state) {
                  if (state is clickError) {
                    return Text(
                      state.message,
                      style: Theme.of(context).textTheme.headline4,
                    );
                  }
                  if (state is Click) {
                    res = state.count.toString();
                    Random g = new Random();
                    int b = g.nextInt(ColorList.length);
                    return Text(res,
                        style: TextStyle(fontSize: 50, color: ColorList[b]));
                  }
                  return Container();
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: IconButton(
                          onPressed: () {
                            context.read<ClickCubit>().onClickPlusBright(
                                Theme.of(context).brightness);
                            context.read<ResCubit>().onClickResult(
                                Theme.of(context).brightness, res);
                          },
                          icon: const Icon(
                            Icons.exposure_plus_1,
                            size: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: IconButton(
                          onPressed: () {
                            context.read<ClickCubit>().onClickMinusDark();
                            context.read<ResCubit>().onClickResult(
                                Theme.of(context).brightness, res);
                          },
                          icon: const Icon(
                            Icons.exposure_neg_1,
                            size: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: IconButton(
                          onPressed: () {
                            context
                                .read<BrightnessCubit>()
                                .onClickLight(Theme.of(context).brightness);
                          },
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              BlocBuilder<ResCubit, ResState>(
                builder: (context, state) {
                  if (state is clickRes) {
                    return SizedBox(
                      height: 800,
                      width: 400,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: state.result,
                          )),
                    );
                  } else if (state is clickClear) {
                    return state.result;
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 600),
          child: FloatingActionButton(
            onPressed: () => context.read<ResCubit>().onClickClear(),
            tooltip: 'Сброс',
            backgroundColor: Colors.black,
            child: const Icon(Icons.fast_rewind),
          ), // This trailing comma makes auto-formatting nicer for b,)
        ));
  }
}
