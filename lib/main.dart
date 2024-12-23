import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_new_version_flutter/flutter_3_27_0_version/screens/CarouselView.dart';
import 'package:test_new_version_flutter/flutter_3_27_0_version/screens/CupertinoNavigationBar.dart';
import 'package:test_new_version_flutter/flutter_3_27_0_version/screens/CupertinoSlidingSegmentedControl.dart';
import 'package:test_new_version_flutter/utils/app_size.dart';


void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: const ui.Size(414, 896),
      builder: (context, child) {
        ScreenUtil.init(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
          home: child,
        );
      },
      child: Flutter_3_27_0CarouselView(),
    );
  }
}
