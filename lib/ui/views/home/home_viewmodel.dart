import 'package:rafiq/core/app/app.locator.dart';
import 'package:rafiq/core/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToMap() {
    _navigationService.navigateTo(Routes.mapView);
  }
}
