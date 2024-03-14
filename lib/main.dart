import 'package:exchange_rate/screens/root_screens.dart';
import 'package:flutter/material.dart';
import 'package:exchange_rate/constants/constants.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MainApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top],
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // Persian
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.whiteColor,
        appBarTheme: AppBarTheme(backgroundColor: Constants.blackColor),
        textTheme: TextTheme(
          titleSmall: TextStyle(
            color: Constants.whiteColor,
            fontFamily: "lalezar",
            fontSize: 20,
          ),
          titleMedium: TextStyle(
            color: Constants.whiteColor,
            fontFamily: "lalezar",
            fontSize: 10,
          ),
          bodyMedium: TextStyle(
            color: Constants.blackColor,
            fontFamily: "iranSans",
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          bodySmall: TextStyle(
            color: Constants.blackColor,
            fontFamily: "iranSans",
            fontSize: 22,
          ),
          bodyLarge: TextStyle(
            color: Constants.blackColor,
            fontFamily: "iranSans",
            fontSize: 16,
          ),
          titleLarge: TextStyle(
            color: Constants.blackColor,
            fontFamily: "lalezar",
            fontSize: 20,
          ),
          displayLarge: const TextStyle(
            color: Colors.blue,
            fontFamily: "lalezar",
            fontSize: 20,
          ),
        ),
      ),
      home: const RootScreen(),
    );
  }
}
