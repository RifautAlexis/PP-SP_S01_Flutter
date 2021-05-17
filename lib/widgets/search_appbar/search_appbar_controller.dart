import 'package:flutter/foundation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/responses/search_page.dart'; // ignore: 

class SearchAppbarController extends GetxController {
  var searchedValue = "".obs;
  Rx<SearchList> searchResults =
      SearchList([], SearchPage(null, ""), YoutubeHttpClient()).obs;

  @override
  void onInit() {
    super.onInit();

    debounce(searchedValue, (String value) => search(value),
        time: Duration(milliseconds: 500));
  }

  setSearchedValue(String value) {
    searchedValue.value = value;
  }

  @visibleForTesting
  search(String value) async {
    var yt = YoutubeExplode();
    var results = await yt.search.getVideos(value);
    searchResults.value = results;
  }
}
