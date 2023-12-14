import 'package:flutter/material.dart';
import 'package:rafiq/ui/views/home/home_view.dart';
import 'package:rafiq/ui/views/profile/profile_view.dart';
import 'package:stacked/stacked.dart';

import 'navigation_viewmodel.dart';

class NavigationView extends StackedView<NavigationViewModel> {
  const NavigationView({super.key});

  @override
  Widget builder(
    BuildContext context,
    NavigationViewModel viewModel,
    Widget? child,
  ) {
    final List<Widget> pages = [
      const HomeView(),
      const HomeView(),
      const ProfileView(),
    ];
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: viewModel.index,
        onDestinationSelected: viewModel.setPage,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          NavigationDestination(
            icon: Icon(Icons.bus_alert),
            label: 'home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
      ),
      body: pages[viewModel.index],
    );
  }

  @override
  NavigationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NavigationViewModel();
}
