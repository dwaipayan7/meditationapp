part of 'navigation_bloc.dart';

@immutable
sealed class NavigationState {}


final class NavigationInitial extends NavigationState {
  final int index;

  NavigationInitial({required this.index});
}
