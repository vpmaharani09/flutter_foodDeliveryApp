import 'package:flutter/material.dart';
import 'package:food_delivery_app/const/colors.dart';
import './screens/landingScreen.dart';
import './screens/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "Metropolis",
          primarySwatch: Colors.red,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.orange),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          )),
          textTheme: TextTheme(bodyText2: TextStyle(color: AppColor.secondary))
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => LandingScreen(),
      },
    );
  }
}
