import 'package:ios_clock_app/core/imports/imports.dart';

class AddWorldClockTextField extends StatelessWidget {
  const AddWorldClockTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: AppStrings.search,
        hintStyle: Styles.style17(context).copyWith(
          color: AppColors.lightGray,
        ),
        filled: true,
        fillColor: AppColors.gray7,
        contentPadding: EdgeInsets.zero,
        prefixIcon: const Icon(Icons.search),
        // suffixIcon: const Icon(Icons.mic),
        prefixIconColor: AppColors.lightGray,
        suffixIconColor: AppColors.lightGray,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.transparent,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.transparent,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
