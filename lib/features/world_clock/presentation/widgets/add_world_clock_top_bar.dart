import 'package:ios_clock_app/core/imports/imports.dart';
import 'package:ios_clock_app/features/world_clock/presentation/widgets/add_world_clock_text_field.dart';

class AddWorldClockTopBar extends StatelessWidget {
  const AddWorldClockTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.responsiveWidth(context),
        vertical: 16.responsiveHeight(
          context,
        ),
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          //! Title
          Text(
            AppStrings.chooseACity,
            style: Styles.style17SemiBold(context),
          ),
          SizedBox(height: 16.responsiveHeight(context)),
          //! TextField & cancel button
          Row(
            children: [
              //! Text Field
              SizedBox(
                width: 275.responsiveWidth(context),
                child: const AddWorldClockTextField(),
              ),
              const Spacer(),
              //! Cancel Button
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  AppStrings.cancel,
                  style: Styles.style17(context).copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
