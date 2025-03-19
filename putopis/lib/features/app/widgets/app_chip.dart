import 'package:putopis/_all.dart';

class AppChip extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const AppChip({
    super.key,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondarySurfaceColor,
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        text,
        style: style ??
            TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryTextColor,
              overflow: TextOverflow.ellipsis,
            ),
        maxLines: 1,
      ),
    );
  }
}
