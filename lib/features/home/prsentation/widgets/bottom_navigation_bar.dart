import 'package:flutter_svg/svg.dart';
import 'package:ios_clock_app/core/imports/imports.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar(
      {super.key, required this.onTap, required this.selectedIndex});

  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: NavBarIcon(icon: Assets.imagesWorld),
          activeIcon: NavBarIcon(icon: Assets.imagesWorld, isActive: true),
          label: AppStrings.worldClock,
        ),
        BottomNavigationBarItem(
          icon: NavBarIcon(icon: Assets.imagesAlarm),
          activeIcon: NavBarIcon(icon: Assets.imagesAlarm, isActive: true),
          label: AppStrings.alarm,
        ),
        BottomNavigationBarItem(
          icon: NavBarIcon(icon: Assets.imagesStopwatch),
          activeIcon: NavBarIcon(icon: Assets.imagesStopwatch, isActive: true),
          label: AppStrings.stopwatch,
        ),
        BottomNavigationBarItem(
          icon: NavBarIcon(icon: Assets.imagesTimer),
          activeIcon: NavBarIcon(icon: Assets.imagesTimer, isActive: true),
          label: AppStrings.timer,
        ),
      ],
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: AppColors.gray4,
      selectedLabelStyle: Styles.style10(context).copyWith(
        color: Theme.of(context).primaryColor,
      ),
      unselectedLabelStyle: Styles.style10(context).copyWith(
        color: AppColors.gray4,
      ),
      iconSize: 30.responsiveHeight(context),
      backgroundColor: AppColors.black,
      enableFeedback: false,
      currentIndex: selectedIndex,
      onTap: onTap,
    );
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({super.key, required this.icon, this.isActive});

  final String icon;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3.responsiveHeight(context)),
      child: SvgPicture.asset(
        icon,
        height: 25.responsiveHeight(context),
        fit: BoxFit.fitHeight,
        colorFilter: ColorFilter.mode(
          isActive == true ? Theme.of(context).primaryColor : AppColors.gray1,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
