import 'package:putopis/_all.dart';

class BookmarkedDestinations extends StatelessWidget {
  const BookmarkedDestinations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySurfaceColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondarySurfaceColor,
        title: Text(
          'Favoriti',
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
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return DestinationCard();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 20);
        },
      ),
    );
  }
}
