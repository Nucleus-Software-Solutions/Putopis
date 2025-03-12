import 'package:putopis/_all.dart';

class BottomNavigationBarButton extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final void Function() onTap;

  const BottomNavigationBarButton({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      padding: const EdgeInsets.all(20),
      icon: Icon(
        icon,
        size: 40,
        color: isSelected ? AppColors.primaryColor : AppColors.primaryTextColor,
      ),
    );
  }
}
