import 'package:rafiq/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:rafiq/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:rafiq/ui/views/home/home_view.dart';
import 'package:rafiq/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:rafiq/ui/views/navigation/navigation_view.dart';
import 'package:rafiq/ui/views/login/login_view.dart';
import 'package:rafiq/ui/views/profile/profile_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: NavigationView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: ProfileView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}