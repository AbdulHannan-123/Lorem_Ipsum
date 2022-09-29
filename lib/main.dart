import 'package:flutter/material.dart';
import 'package:ms_globle_task/screens/post_screen.dart';
import 'package:provider/provider.dart';

import 'provider/auth.dart';
import 'screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Auth(),
          ),
        ],
        child: Consumer<Auth>(
          builder: (ctx, authData, _) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: const Color(0xffE43228),
              colorScheme: ColorScheme.fromSwatch().copyWith(
                primary:const Color(0xffE43228),
                secondary: const Color(0xffAF0917),
              ),
              accentColor:const Color(0xffAF0917),
              textTheme: ThemeData.light().textTheme.copyWith(
                titleMedium: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.w700,
                ),
              )
            ),
            home: Scaffold(
              body: authData.isAuth ?PostMainScreen() : MyStatefulWidget(),
              // body: PostMainScreen(),
            ),
          ),
        ));
  }
}
