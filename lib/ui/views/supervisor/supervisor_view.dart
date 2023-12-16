import 'package:flutter/material.dart';
import 'package:rafiq/ui/common/custom_app_bar.dart';
import 'package:stacked/stacked.dart';

import '../../common/child_card.dart';
import 'supervisor_viewmodel.dart';

class SupervisorView extends StackedView<SupervisorViewModel> {
  const SupervisorView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SupervisorViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: CustomAppBar(actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.support_agent)),
      ]),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20.0, right: 20.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 9,
            itemBuilder: (context, index) {
              return const ChildCard();
            }),
      ),
    );
  }

  @override
  SupervisorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SupervisorViewModel();
}
