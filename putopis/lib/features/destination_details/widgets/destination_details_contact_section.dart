import 'package:putopis/_all.dart';

class DestinationDetailsContactSection extends StatelessWidget {
  const DestinationDetailsContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Text(
            'Kontakt',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryTextColor,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 1,
          ),
          Column(
            spacing: 10,
            children: [
              DestinationDetailsContactListTile(
                icon: Icons.facebook,
                text: 'Instagram',
                onTap: () {
                  // TODO: Open Instagram
                },
              ),
              DestinationDetailsContactListTile(
                icon: Icons.facebook,
                text: 'Facebook',
                onTap: () {
                  // TODO: Open Facebook
                },
              ),
              DestinationDetailsContactListTile(
                icon: Icons.facebook,
                text: 'Viber',
                onTap: () {
                  // TODO: Open Viber
                },
              ),
              DestinationDetailsContactListTile(
                icon: Icons.phone,
                text: 'Telefon',
                onTap: () {
                  // TODO: Open Phone call
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
