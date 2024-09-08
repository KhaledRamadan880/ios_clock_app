import 'package:ios_clock_app/core/imports/imports.dart';

class EditAndAddBar extends StatelessWidget {
  const EditAndAddBar({
    super.key,
    this.onEditing,
    this.editOnTap,
    this.addOnTap,
  });

  final bool? onEditing;
  final Function()? editOnTap;
  final Function()? addOnTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //! Edit Text Button
        GestureDetector(
          onTap: editOnTap,
          child: Text(
            onEditing == false ? AppStrings.done : AppStrings.edit,
            style: Styles.style17(context).copyWith(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: addOnTap,
          icon: Icon(Icons.add, color: Theme.of(context).primaryColor),
        ),
      ],
    );
  }
}
