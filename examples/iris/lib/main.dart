import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:iris_ui/iris_ui.dart' as iris_ui;
import 'package:annhub_flutter/annhub_flutter.dart' as annhub_flutter;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get_it/get_it.dart';

import 'main.config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configLoading();
  _configureDependencies();
  runApp(const MyApp());
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.foldingCube
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..maskType = EasyLoadingMaskType.black
    ..dismissOnTap = false
    ..userInteractions = false;
}

final sl = GetIt.instance;
@injectableInit
void configureDependencies() => $initGetIt(GetIt.instance);

void _configureDependencies() async {
  sl.allowReassignment = true;
  annhub_flutter.configureDependencies();
  iris_ui.configureDependencies();
  configureDependencies();
  $initGetIt(sl);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const iris_ui.IrisPage(),
        builder: EasyLoading.init(),
      ),
    );
  }
}
