import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/screens/home/home_binding.dart';
import 'package:pp_sp_s01_flutter/screens/search/search.dart';
import 'package:pp_sp_s01_flutter/screens/search/search_binding.dart';

import 'screens/home/home.dart';

final List<GetPage> routes = [
  GetPage(name: '/', page: () => HomeScreen(), binding: HomeBind()),
  GetPage(name: '/search', page: () => SearchScreen(), binding: SearchBind()),
];
