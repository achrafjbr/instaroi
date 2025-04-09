import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_roi/core/core_component/appbar_component/fixed_appbar.dart';
import 'package:insta_roi/core/manager/navigation/navigation_cubit.dart';
import 'package:insta_roi/features/home/presentation/pages/home_screen.dart';

class WebDevice extends StatelessWidget {
  const WebDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FixedAppbar.navigationBar(
        NavigationCubit.instance(context).changePage,
        context
      ),
      body: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          if(state is GoNavigationState) {
            return state.currentPage;
          } else {
            return const HomeScreen();
          }
        },
      ),
    );
  }
}
