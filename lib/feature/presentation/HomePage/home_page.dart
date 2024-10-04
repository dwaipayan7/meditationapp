import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meditationapp/feature/presentation/bottom_Nav_bar/bloc/navigation_bloc.dart';
import 'package:meditationapp/feature/presentation/bottom_Nav_bar/widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Widget> pages = [
    Scaffold(body: Center(child: Text('test 1', style: TextStyle(color: Colors.red),),),),
    Scaffold(body: Center(child: Text('test 2', style: TextStyle(color: Colors.red),),),),
    Scaffold(body: Center(child: Text('test 3', style: TextStyle(color: Colors.red),),),),
  ];

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> bottomNavItems = [
      BottomNavigationBarItem(icon: Image.asset('assets/menu_home.png'), label: ''),
      BottomNavigationBarItem(icon: Image.asset('assets/menu_songs.png'), label: ''),
    ];

    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            if (state is NavigationInitial) {
              return pages[state.index];
            }
            return pages[0]; // Default to first page if no state change
          }
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            int currentIndex = 0;
            if (state is NavigationInitial) {
              currentIndex = state.index;
            }
            return BottomNavBar(
              items: bottomNavItems,
              currentIndex: currentIndex,
            );
          }
      ),
    );
  }
}
