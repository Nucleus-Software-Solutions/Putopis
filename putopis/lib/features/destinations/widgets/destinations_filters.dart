import 'package:putopis/_all.dart';

class DestinationsFilters extends StatelessWidget {
  const DestinationsFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Sve destinacije',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryTextColor,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => Container(
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: AppColors.primarySurfaceColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'Destinacije',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView.separated(
                        itemCount: 21,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return DestinationsFilterCityListTile(
                              isSelected: true,
                              text: 'Sve destinacije',
                              onTap: () {},
                            );
                          }

                          return DestinationsFilterCityListTile(
                            isSelected: false,
                            text: 'Mostar',
                            onTap: () {},
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(height: 10),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          icon: Icon(
            Icons.tune,
          ),
        ),
      ],
    );
  }
}
