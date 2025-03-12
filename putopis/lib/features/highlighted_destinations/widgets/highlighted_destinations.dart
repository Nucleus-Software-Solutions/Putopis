import 'package:putopis/_all.dart';

class HighlightedDestinations extends StatelessWidget {
  const HighlightedDestinations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return HighlightedDestinationCard();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 20);
        },
      ),
    );
  }
}
