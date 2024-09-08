import 'package:ios_clock_app/core/imports/imports.dart';
import 'package:ios_clock_app/features/world_clock/data/models/cities_time_zone_model.dart';

class AddWorldClocksItemsListView extends StatelessWidget {
  const AddWorldClocksItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorldClocksCubit, WorldClocksState>(
      builder: (context, state) {
        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: AppColors.lightGray,
                  width: .5.responsiveHeight(context),
                ),
              ),
            ),
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const CustomDivider();
              },
              itemCount: CityModel.cities.length,
              padding: EdgeInsets.symmetric(
                horizontal: 16.responsiveWidth(context),
                vertical: 4.responsiveHeight(context),
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    child: Text(
                      CityModel.cities[index].city,
                      style: Styles.style17(context),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
