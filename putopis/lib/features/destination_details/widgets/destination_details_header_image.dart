import 'package:putopis/_all.dart';

class DestinationDetailsHeaderImage extends StatelessWidget {
  const DestinationDetailsHeaderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20),
      ),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.width * 0.7,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
