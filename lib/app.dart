/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/

import 'package:my_profile/exports.dart';
import 'package:my_profile/main.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataService>(create: (context) => DataService()),
      ],
      builder: (context, child) {
        return OKToast(
          child: MaterialApp(
            title: 'My Profile',
            debugShowCheckedModeBanner: false,
            navigatorKey: locator<NavigationService>().navigationKey,
            theme: ThemeData(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
                useMaterial3: true,
                splashColor: AppColors.transparent,
                highlightColor: AppColors.transparent,
                appBarTheme: const AppBarTheme(
                  scrolledUnderElevation: 0,
                  elevation: 0,
                )),
            onGenerateRoute: onGenerateRoute,
            initialRoute: RouteNames.loginViewRoute,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: const Locale('en'),
            supportedLocales: const [
              Locale('en'), // English
            ],
          ),
        );
      },
    );
  }
}
