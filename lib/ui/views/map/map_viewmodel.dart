import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class MapViewModel extends BaseViewModel {
  final Set<Marker> _markers = {
    const Marker(markerId: MarkerId('0'), position: LatLng(24.71, 46.67)),
    const Marker(markerId: MarkerId('1'), position: LatLng(24.72, 46.67)),
    const Marker(markerId: MarkerId('2'), position: LatLng(24.71, 46.68)),
  };
  late final Set<Polyline> _lines;

  void init() {
    _lines = {
      Polyline(
        polylineId: const PolylineId('0'),
        points: [_markers.first.position, _markers.last.position],

      )
    };
  }

  get markers => _markers;

  get polylines => _lines;
}
