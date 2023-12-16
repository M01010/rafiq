import 'package:flutter/material.dart';
import 'package:rafiq/core/app/app.bottomsheets.dart';
import 'package:rafiq/core/app/app.dialogs.dart';
import 'package:rafiq/core/app/app.locator.dart';
import 'package:rafiq/core/app/app.router.dart';
import 'package:rafiq/ui/common/app_colors.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
        background: kcBackgroundColor,
        primary: kcSecondaryColor2,
        secondary: kcGreyColor,
      ),
      fontFamily: 'almarai'),
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
