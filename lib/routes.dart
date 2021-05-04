import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/screens/home/home_binding.dart';

import 'screens/home/home.dart';

final List<GetPage> routes = [
  GetPage(name: '/', page: () => HomeWidget(), binding: HomeBind())
];