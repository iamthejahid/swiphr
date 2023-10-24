import 'dart:developer';

import 'package:app_ui/app_ui.dart';
import 'package:swiphr/src/core/temp_string.dart';
import 'package:swiphr/src/features/map_page/view/widgets/custom_app_bard.dart';
import 'package:swiphr/src/features/map_page/view/widgets/menu_icon.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  void initState() {
    super.initState();
    // Implement some initialization operations here.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        leading: MenuIcon(
          onTap: () => log("tap"),
        ),
        midWidget: Image.asset('assets/center_logo.jpg'),
        lastWidget: CircleAvatar(
          radius: 40.w,
          backgroundImage: const NetworkImage(AVATAR_URL),
        ),
      ),
    );
  }
}
