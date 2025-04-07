part of 'navigation_cubit.dart';

@immutable
sealed class NavigationState {}

final class NavigationInitial extends NavigationState {}
final class GoNavigationState extends NavigationState {
   // Current page (default: HomeScreen)
    Widget currentPage = const HomeScreen();
  GoNavigationState({required this.currentPage});
}
