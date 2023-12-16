import 'package:flutter/material.dart';
import 'package:rafiq/ui/views/driver/driver_view.dart';
import 'package:rafiq/ui/views/home/home_view.dart';
import 'package:rafiq/ui/views/profile/profile_view.dart';
import 'package:stacked/stacked.dart';

import '../supervisor/supervisor_view.dart';
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
      const DriverView(),
      const SupervisorView(),
      const ProfileView(),
    ];
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: viewModel.index,
        onDestinationSelected: viewModel.setPage,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.directions_bus_filled),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.ad_units),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_rounded),
            label: '',
          ),
        ],
      ),
      body: IndexedStack(
        index: viewModel.index,
        children: pages,
      ),
    );
  }

  @override
  NavigationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NavigationViewModel();
}
