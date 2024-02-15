import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app/constant/app_constant.dart';
import 'app/database/shared_preferences_db.dart';
import 'ui/home/view/home_view.dart';

void main() async {
  await SharedPreferencesDb.init();
  runApp(const ProviderScope(child: MyFavoriteBooksApp()));
}

class MyFavoriteBooksApp extends StatelessWidget {
  const MyFavoriteBooksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstant.appName,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.black,
          contentTextStyle: TextStyle(color: Colors.white),
        ),
      ),
      home: const HomeView(),
    );
  }
}
