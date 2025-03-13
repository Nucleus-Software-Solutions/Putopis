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
        surfaceTintColor: AppColors.secondarySurfaceColor,
        title: Text(
          'Putopis',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryColor,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(20),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return HighlightedDestinations();
          }

          if (index == 1) {
            return DestinationsFilters();
          }

          // final i = index - 1;

          return DestinationCard();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 20);
        },
      ),
    );
  }
}
