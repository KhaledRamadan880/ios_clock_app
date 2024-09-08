import 'package:ios_clock_app/core/imports/imports.dart';
import 'package:ios_clock_app/features/world_clock/presentation/widgets/world_clock_item.dart';

class WorldClockListView extends StatelessWidget {
  const WorldClockListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12.responsiveHeight(context),
      ),
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: AppColors.lightGray,
            width: .3.responsiveHeight(context),
          ),
        ),
      ),
      child: Wrap(
        children: [
          ListView.separated(
            separatorBuilder: (context, index) {
              return const CustomDivider();
            },
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return const WorldClockItem();
            },
          ),
        ],
      ),
    );
  }
}
