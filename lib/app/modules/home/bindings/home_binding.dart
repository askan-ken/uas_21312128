import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  final String alamat;
  final String nama;
  final String npm;

  HomeBinding({
    required this.alamat,
    required this.nama,
    required this.npm,
  });
}