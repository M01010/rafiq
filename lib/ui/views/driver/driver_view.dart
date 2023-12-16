import 'package:flutter/material.dart';
import 'package:rafiq/ui/common/app_colors.dart';
import 'package:rafiq/ui/common/custom_app_bar.dart';
import 'package:rafiq/ui/common/school_icon.dart';
import 'package:rafiq/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../common/bus_icon.dart';
import '../../common/student_icon.dart';
import 'driver_viewmodel.dart';

class DriverView extends StackedView<DriverViewModel> {
  const DriverView({super.key});

  @override
  Widget builder(
    BuildContext context,
    DriverViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: CustomAppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.support_agent))
        ],
      ),
      body: SafeArea(
        child: FlutterMap(
          options: MapOptions(
            center: const LatLng(24.71, 46.67),
            zoom: 18,
            maxZoom: 18,
            minZoom: 14,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            ),
            PolylineLayer(
              polylines: [
                Polyline(
                  color: kcPrimaryColor,
                  strokeWidth: 10,
                  points: [
                    const LatLng(24.71090, 46.67000),
                    const LatLng(24.71140, 46.67110),
                    const LatLng(24.71068, 46.67146),
                    const LatLng(24.70985, 46.66945),
                    const LatLng(24.70935, 46.66970),
                    const LatLng(24.70855, 46.66795),
                    const LatLng(24.70783, 46.66834),
                    const LatLng(24.70812, 46.66900),
                  ],
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                    point: const LatLng(24.71090, 46.670),
                    builder: (BuildContext context) => const BusIcon()),
                Marker(
                    point: const LatLng(24.711, 46.67115),
                    builder: (BuildContext context) => const StudentIcon()),
                Marker(
                    point: const LatLng(24.710, 46.670),
                    builder: (BuildContext context) => const StudentIcon()),
                Marker(
                    point: const LatLng(24.709, 46.669),
                    builder: (BuildContext context) => const StudentIcon()),
                Marker(
                    point: const LatLng(24.7080, 46.669),
                    builder: (BuildContext context) => const SchoolIcon()),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(8),
                width: screenWidth(context) / 2,
                decoration: BoxDecoration(
                    color: kcButtonColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        spreadRadius: 3,
                        blurRadius: 7,
                      )
                    ]),
                child: const Text('١٣ دقيقة حتى الوصول',
                    textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  DriverViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DriverViewModel();
}
