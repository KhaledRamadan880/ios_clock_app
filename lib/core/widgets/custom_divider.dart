import 'package:ios_clock_app/core/imports/imports.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.lightGray,
      thickness: .25.responsiveHeight(context),
    );
  }
}