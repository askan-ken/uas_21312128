import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:uas_21312128/app/modules/home/bindings/home_binding.dart';

class HomeController {
  final CollectionReference _dataCollection =
      FirebaseFirestore.instance.collection('data');

  Future<List<HomeBinding>> fetchData() async {
    var querySnapshot = await _dataCollection.get();
    return querySnapshot.docs.map((doc) {
      return HomeBinding(
        alamat: doc['alamat'],
        nama: doc['nama'],
        npm: doc['npm'],
      );
    }).toList();
  }
}
