import 'package:putopis/_all.dart';

class HighlightedDestinationCard extends StatelessWidget {
  const HighlightedDestinationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondarySurfaceColor,
      ),
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        spacing: 10,
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [
                PhysicalModel(
                  color: AppColors.secondarySurfaceColor,
                  elevation: 3,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                    bottom: Radius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                      bottom: Radius.circular(30),
                    ),
                    child: Image.network(
                      'https://media.istockphoto.com/id/1160947136/photo/couple-relax-on-the-beach-enjoy-beautiful-sea-on-the-tropical-island.jpg?s=612x612&w=0&k=20&c=WJWEH22TFinjI0edzblfH-Nw0cdBfPX5LV8EMvs8Quo=',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.secondarySurfaceColor,
                          border: Border.all(color: AppColors.borderColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        child: Text(
                          'Maldivi',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Putovanje za dvoje 3.6.2025',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryTextColor,
            ),
          ),
          Text(
            '500KM',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
