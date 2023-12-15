import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/custom_app_bar.dart';
import '../../common/custom_button.dart';
import '../../common/driver_card.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: Column(children: [
            const DriverCard(),
            CustomButton(
              onPressed: viewModel.navigateToMap,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.pin_drop),
                  SizedBox(
                    width: 20,
                  ),
                  Text('تتبع'),
                ],
              ),
            ),
            CustomButton(
              onPressed: viewModel.navigateToMap,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.support_agent),
                  SizedBox(
                    width: 20,
                  ),
                  Text('التواصل نع الدعم الفني'),
                ],
              ),
            ),
            CustomButton(
              onPressed: viewModel.navigateToMap,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.call),
                  SizedBox(
                    width: 20,
                  ),
                  Text('التواصل مع السائق'),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
