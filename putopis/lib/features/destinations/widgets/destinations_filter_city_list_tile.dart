import 'package:putopis/_all.dart';

class DestinationsFilterCityListTile extends StatelessWidget {
  final String text;
  final bool isSelected;
  final void Function() onTap;

  const DestinationsFilterCityListTile({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        color: AppColors.secondarySurfaceColor,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isSelected ? AppColors.primaryColor : AppColors.primaryTextColor,
          ),
        ),
      ),
    );
  }
}
