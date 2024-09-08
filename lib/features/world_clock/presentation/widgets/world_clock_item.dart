import 'package:ios_clock_app/core/imports/imports.dart';

class WorldClockItem extends StatelessWidget {
  const WorldClockItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 386.responsiveWidth(context),
      child: Row(
        children: [
          //! Remove Icon Button
          // Padding(
          //   padding: EdgeInsets.only(right: 10.responsiveWidth(context)),
          //   child: IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.remove_circle,
          //       color: AppColors.red,
          //     ),
          //   ),
          // ),
          //! City & time zone
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              //! Time Zone
              Text(
                "Today, +0HRS",
                style: Styles.style15(context).copyWith(
                  color: AppColors.lightGray,
                ),
              ),
              Text(
                "New York",
                style: Styles.style28(context),
              ),
            ],
          ),
          const Spacer(),
          //! Drag Icon Button
          GestureDetector(
            onLongPress: () {},
            child: const Icon(
              Icons.menu,
              color: AppColors.gray1,
            ),
          ),
        ],
      ),
    );
  }
}
