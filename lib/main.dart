import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:sdmanewsclientflutter/features/news/cubit/news_details/news_details_cubit.dart';
import 'package:sdmanewsclientflutter/features/news/cubit/news_list/news_list_cubit.dart';
import 'package:sdmanewsclientflutter/features/news/pages/news_list_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'common/http_override.dart';
import 'common/theme.dart';
import 'common/util.dart';

SharedPreferences? preferences;

void main() async {
  HttpOverrides.global = HttpOverride();
  WidgetsFlutterBinding.ensureInitialized();
  preferences = await SharedPreferences.getInstance();
  configLoading();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Mirza", "Mirza");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsListCubit(),
        ),
        BlocProvider(
          create: (context) => NewsDetailsCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: brightness == Brightness.light ? theme.light() : theme.dark(),
        home: const NewsListPage(),
      ),
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 5.0
    ..userInteractions = false
    ..dismissOnTap = false;
}
