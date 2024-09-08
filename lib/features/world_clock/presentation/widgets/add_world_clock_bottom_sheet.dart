import 'package:ios_clock_app/core/imports/imports.dart';
import 'package:ios_clock_app/features/world_clock/presentation/widgets/add_world_clock_items_listview.dart';
import 'package:ios_clock_app/features/world_clock/presentation/widgets/add_world_clock_top_bar.dart';

void addWorldClocksBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.gray6,
    isScrollControlled: true,
    builder: (newContext) {
      return BlocProvider.value(
        value: context.read<WorldClocksCubit>(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 730.responsiveHeight(context),
          child: const Column(
            children: [
              //! Top Bar
              AddWorldClockTopBar(),
              //! Items List View
              AddWorldClocksItemsListView(),
            ],
          ),
        ),
      );
    },
  );
}
