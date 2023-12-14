import 'package:stacked/stacked.dart';

class NavigationViewModel extends BaseViewModel {
  int _index = 0;
  int get index => _index;

  void setPage(int value) {
    _index = value;
    rebuildUi();
  }
}
