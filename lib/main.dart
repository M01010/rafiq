import 'package:flutter/material.dart';
import 'package:rafiq/core/app/app.bottomsheets.dart';
import 'package:rafiq/core/app/app.dialogs.dart';
import 'package:rafiq/core/app/app.locator.dart';
import 'package:rafiq/core/app/app.router.dart';
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
          colorScheme: ColorScheme.light(
        background: Colors.white70,
        primary: Colors.greenAccent.shade200,
        secondary: Colors.blueAccent.shade200,
      )),
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
