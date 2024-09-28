import 'dart:convert';
import 'dart:math';

import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/models/index.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/home/bloc/home_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/index.dart';
import 'core/services/local_database.dart';

var initialized = false;

Future<void> setupServices({bool isBackground = false}) async {
  try {
    if (initialized) return;
    initialized = true;
    await Hive.initFlutter();
    GoogleFonts.config.allowRuntimeFetching = false;

    final localDatabase = LocalDatabase();
    getIt.registerLazySingleton(() => localDatabase);

    List<ProductMdl> products = [
      const ProductMdl(
        name: 'Product 1',
        image: 'https://picsum.photos/200/300?random=1000',
        price: 100000,
        discount: 0.1,
      ),
      ...List.generate(
        10,
        (index) => ProductMdl(
          name: 'Product ${index + 2}',
          image: 'https://picsum.photos/200/300?random=$index',
          price: (Random().nextInt(200)+50) * 1000,
        ),
      ),
    ];
    List<Map<String, dynamic>> jsonList = products.map((product) => product.toJson()).toList();
    String jsonString = json.encode(jsonList);
    await localDatabase.setString(productsKey,  jsonString);
  } catch (e) {
    if (kDebugMode) {
      print('Error initializing services: $e');
    }
  }
}
