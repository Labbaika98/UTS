import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 760),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'labbaika',
          theme: ThemeData(
            // canvasColor: Palette.team2color,
            // tabBarTheme: TabBarTheme(
            //   labelColor: AppTheme.thirdColor,
            //   unselectedLabelColor: Colors.red,
            //   indicatorSize: TabBarIndicatorSize.label,
            // ),
            progressIndicatorTheme: const ProgressIndicatorThemeData(
              // circularTrackColor: AppTheme.thirdColor,
              color: Colors.orange,
            ),
            // primarySwatch: Palette.team2color,
            dividerColor: Colors.transparent,
            fontFamily: 'Poppins',
            appBarTheme: AppBarTheme(
              elevation: 1,
              centerTitle: true,
              titleTextStyle: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white,
                fontSize: ScreenUtil().setSp(18),
                fontWeight: FontWeight.w600,
              ),
            ),
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            // scaffoldBackgroundColor: Palette.team2color,
            textTheme: TextTheme(
              titleLarge: TextStyle(
                fontSize: ScreenUtil().setSp(18),
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(244, 150, 10, 1),
              ),
              bodyLarge: TextStyle(
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w600,
                  color: Colors.yellow),
              // bodyText2: TextStyle(fontSize: ScreenUtil().setSp(14), fontWeight: FontWeight.w600, color: AppTheme.textColor),
              labelLarge: TextStyle(
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w600,
                  color: Colors.blue),
            ),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              // elevation: 1,
              // backgroundColor: Palette.team2color,
              selectedItemColor: Color.fromRGBO(244, 150, 10, 1),
              // unselectedItemColor: AppTheme.thirdColor,
              showUnselectedLabels: true,
              showSelectedLabels: true,
            ),
          ),
          routerDelegate: goRouter.routerDelegate,
          routeInformationParser: goRouter.routeInformationParser,
          routeInformationProvider: goRouter.routeInformationProvider,
        );
      },
    );
  }
}
