import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../features/home/presentation/pages/home_screen.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());

 static NavigationCubit instance(BuildContext context)=>
      BlocProvider.of<NavigationCubit>(context);


  // Function to change pages
  void changePage(Widget page) {
    emit(GoNavigationState(currentPage: page));
  }
}
