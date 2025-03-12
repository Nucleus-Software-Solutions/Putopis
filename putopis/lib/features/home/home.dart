import 'package:putopis/_all.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySurfaceColor,
      body: switch (index) {
        0 => Destinations(),
        1 => BookmarkedDestinations(),
        _ => throw UnimplementedError('NAVIGATION INDEX OUT OF RANGE'),
      },
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.secondarySurfaceColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavigationBarButton(
              icon: Icons.home,
              isSelected: index == 0,
              onTap: () => setState(() => index = 0),
            ),
            BottomNavigationBarButton(
              icon: Icons.bookmark_border,
              isSelected: index == 1,
              onTap: () => setState(() => index = 1),
            ),
          ],
        ),
      ),
    );
  }
}
