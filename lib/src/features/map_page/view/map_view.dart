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
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      // appBar: CustomAppBar(
      //   leading: MenuIcon(
      //     onTap: () => log("tap"),
      //   ),
      //   midWidget: Image.asset('assets/center_logo.jpg'),
      //   lastWidget: CircleAvatar(
      //     radius: 40.w,
      //     backgroundImage: const NetworkImage(AVATAR_URL),
      //   ),
      // ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(36.0.w),
            child: Column(
              children: [
                gap16,
                CustomAppBar(
                  leading: MenuIcon(
                    onTap: () => log("tap"),
                  ),
                  midWidget: Image.asset('assets/center_logo.jpg'),
                  lastWidget: CircleAvatar(
                    radius: 40.w,
                    backgroundImage: const NetworkImage(AVATAR_URL),
                  ),
                ),
                gap16,
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        24.r,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // button part
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: AppColors.primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: EdgeInsets.all(6.w),
                                    child: Container(
                                      height: 8.w,
                                      width: 8.w,
                                      decoration: const BoxDecoration(
                                        color: AppColors.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  gap12,
                                  Text(
                                    "Skate Park",
                                    style: ContentTextStyle.bodyText1,
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 10.w,
                                color: AppColors.grey,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: AppColors.red,
                                    size: 24.sp,
                                  ),
                                  gap12,
                                  Text(
                                    "Home",
                                    style: ContentTextStyle.bodyText1,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.w, horizontal: 12.w),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  24.r,
                                ),
                              ),
                              border: Border.all(
                                color: const Color(0xFFCACACA),
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                // Icon
                                Container(
                                  height: 18.w,
                                  width: 18.w,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFCACACA),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.add,
                                    color: AppColors.white,
                                    size: 16.sp,
                                  ),
                                ),
                                gap4,
                                Text(
                                  "Add",
                                  style: ContentTextStyle.bodyText1,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
