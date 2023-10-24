import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leading;
  final Widget? midWidget;
  final Widget? lastWidget;

  const CustomAppBar({
    Key? key,
    this.midWidget,
    this.lastWidget,
    required this.leading,
  }) : super(key: key);

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: midWidget,
      actions: lastWidget == null ? null : [lastWidget!],
    );
  }
}
