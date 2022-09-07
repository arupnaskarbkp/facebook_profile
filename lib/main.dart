import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'navigation/routing.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.
            englishLike2018.apply(fontSizeFactor: 1.sp),
            fontFamily: "Lato",
            useMaterial3: true,
          ),
          routerDelegate: AppRoute.router.routerDelegate,
          routeInformationProvider: AppRoute.router.routeInformationProvider,
          routeInformationParser: AppRoute.router.routeInformationParser,
        );
      },
    );
  }
}