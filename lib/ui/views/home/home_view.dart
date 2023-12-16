import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/custom_app_bar.dart';
import '../../common/custom_button.dart';
import '../../common/driver_card.dart';
import '../../common/text_container.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(children: [
            const DriverCard(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.camera_alt),
                        SizedBox(
                          width: 20,
                        ),
                        Text('مشاهدة'),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                  onPressed: viewModel.navigateToMap,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.pin_drop),
                        SizedBox(
                          width: 20,
                        ),
                        Text('تتبع'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            CustomButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.support_agent),
                  SizedBox(
                    width: 20,
                  ),
                  Text('التواصل مع الدعم الفني'),
                ],
              ),
            ),
            CustomButton(
              onPressed: () {},
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
            const TextContainer(
                text: 'موعد الخروج من المدرسة : 12:00',
                text2: 'موعد الوصول المتوقع : 12:20'),
            const TextContainer(
                text: 'موعد الخروج من البيت : 6:00',
                text2: 'موعد الوصول المتوقع : 6:20'),
          ]),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
