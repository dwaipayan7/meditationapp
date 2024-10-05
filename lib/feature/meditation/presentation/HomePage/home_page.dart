import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../music/presentation/pages/music_player.dart';
import '../bottom_Nav_bar/bloc/navigation_bloc.dart';
import '../bottom_Nav_bar/widgets/bottom_nav_bar.dart';
import '../pages/meditation_screen.dart';
import '../pages/play_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Widget> pages = [
    const MeditationScreen(),
     PlayListScreen()
   // const MusicPlayerScreen(),

  ];

  BottomNavigationBarItem createBottomNavItem(
      String assetName, bool isActive, BuildContext context) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        assetName,
        color: isActive
            ? Theme.of(context).primaryColor
            : Theme.of(context).focusColor,
      ),
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            if (state is NavigationInitial) {
              return pages[state.index];
            }
            return pages[0]; // Default to first page if no state change
          }),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            int currentIndex = 0;
            if (state is NavigationInitial) {
              currentIndex = state.index;
            }
            return BottomNavBar(
              items: [
                createBottomNavItem('assets/menu_home.png', currentIndex == 0, context),
                createBottomNavItem('assets/menu_songs.png', currentIndex == 1, context),
              ],
              currentIndex: currentIndex,
            );
          }),
    );
  }
}
