import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wastly/controlrs/cubits/app_cubit/them_cubit.dart';
import 'package:wastly/views/welcome_views/welcome_views.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: (context, child) {
          return BlocProvider(
            create: (context) => ThemCubit(false),
            child: BlocBuilder<ThemCubit, bool>(
              builder: (context, state) {
                return MaterialApp(
                  theme:state==false?ThemeData.light():ThemeData.dark(),
                  darkTheme: ThemeData.dark(),
                  debugShowCheckedModeBanner: false,
                  home: WelcomeScreen(),
                );
              },
            ),
          );
        });
  }
}
