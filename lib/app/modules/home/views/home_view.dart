import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_21312128/app/controllers/auth_controller.dart';
import 'package:uas_21312128/app/modules/home/bindings/home_binding.dart';
import 'package:uas_21312128/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   final List<HomeBinding> data;

  HomeView({required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        var item = data[index];
        return ListTile(
          title: Text(item.nama),
          subtitle: Text('Alamat: ${item.alamat}\nNPM: ${item.npm}'),
        );
      },
    );
  }
}
