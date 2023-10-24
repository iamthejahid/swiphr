import 'package:app_ui/app_ui.dart';
import 'package:app_utils/app_utils.dart';
import 'package:swiphr/src/features/map_page/view/map_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (_, ctx) => const DismissKeyboard(
          child: MaterialApp(
        home: MapView(),
      )),
      designSize: const Size(375, 812),
    );
  }
}
