import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meditationapp/feature/presentation/bottom_Nav_bar/bloc/navigation_bloc.dart';
import 'package:meditationapp/feature/presentation/bottom_Nav_bar/widgets/bottom_nav_bar.dart';
import 'package:meditationapp/feature/presentation/pages/meditation_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Widget> pages = [
    const MeditationScreen(),
    Scaffold(body: Center(child: Text('Songs Screen'))),
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
