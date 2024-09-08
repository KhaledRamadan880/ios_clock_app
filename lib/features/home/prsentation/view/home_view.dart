import 'package:ios_clock_app/core/imports/imports.dart';
import 'package:ios_clock_app/features/home/prsentation/widgets/bottom_navigation_bar.dart';
import 'package:ios_clock_app/features/world_clock/presentation/views/world_clock_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const WorldClockView(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[selectedIndex],
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
        ),
      ),
    );
  }
}
