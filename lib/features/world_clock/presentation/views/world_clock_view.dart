import 'package:ios_clock_app/core/imports/imports.dart';
import 'package:ios_clock_app/core/widgets/edit_and_add_bar.dart';
import 'package:ios_clock_app/features/world_clock/presentation/widgets/add_world_clock_bottom_sheet.dart';
import 'package:ios_clock_app/features/world_clock/presentation/widgets/world_clock_list_view.dart';

class WorldClockView extends StatelessWidget {
  const WorldClockView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.responsiveWidth(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! Edit & Add Bar
            EditAndAddBar(
              addOnTap: () {
                addWorldClocksBottomSheet(context);
              },
            ),
            SizedBox(height: 15.responsiveHeight(context)),
            //! Title
            Text(
              AppStrings.worldClock,
              style: Styles.style34Bold(context),
            ),
            //! Clocks List View
            const WorldClockListView(),
            // const NoItemText(title: AppStrings.noWorldClocks,),
          ],
        ),
      ),
    );
  }
}
