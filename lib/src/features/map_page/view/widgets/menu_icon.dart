import 'package:app_ui/app_ui.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onTap,
      onTap: onTap,
      child: Container(
        height: 40.w,
        width: 40.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryColor,
        ),
        child: const Icon(
          Icons.menu,
          color: AppColors.white,
        ),
      ),
    );
  }
}
