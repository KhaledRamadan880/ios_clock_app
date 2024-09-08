import 'package:ios_clock_app/core/imports/imports.dart';

class NoItemText extends StatelessWidget {
  const NoItemText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          title,
          style: Styles.style22(context).copyWith(
            color: AppColors.lightGray,
          ),
        ),
      ),
    );
  }
}