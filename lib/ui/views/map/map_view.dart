import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rafiq/ui/common/custom_app_bar.dart';
import 'package:stacked/stacked.dart';

import 'map_viewmodel.dart';

class MapView extends StackedView<MapViewModel> {
  const MapView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MapViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition:
          const CameraPosition(target: LatLng(24.71, 46.67), zoom: 14.5),
          markers: viewModel.markers,
          polylines: viewModel.polylines,
        ),
      ),
    );
  }

  @override
  MapViewModel viewModelBuilder(
    BuildContext context,
  ) {
    final vm = MapViewModel();
    vm.init();
    return vm;
  }
}
