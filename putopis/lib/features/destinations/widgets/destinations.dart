import 'package:putopis/_all.dart';

class Destinations extends StatelessWidget {
  const Destinations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySurfaceColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondarySurfaceColor,
        title: Text(
          'Putopis',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Destinations',
        ),
      ),
    );
  }
}
