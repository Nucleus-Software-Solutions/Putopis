import 'package:putopis/_all.dart';

class DestinationDetailsPage extends StatelessWidget {
  const DestinationDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySurfaceColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              DestinationDetailsHeaderImage(),
              DestinationDetailsDescriptionSection(),
              DestinationDetailsContactSection(),
            ],
          ),
          DestinationDetailsAppBar(),
        ],
      ),
    );
  }
}
