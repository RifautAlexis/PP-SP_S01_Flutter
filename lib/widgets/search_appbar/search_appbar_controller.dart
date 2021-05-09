import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/responses/search_page.dart';

class SearchAppbarController extends GetxController {
  var searchedValue = "".obs;
  Rx<SearchList> searchResults = SearchList([], SearchPage(null, ""), YoutubeHttpClient()).obs;

  @override
  void onInit() {
    super.onInit();

    debounce(searchedValue, (String value) => _search(value), time: Duration(milliseconds: 500));
  }

  setSearchedValue(String value) {
    searchedValue.value = value;
  }

  _search(String value) async {
    var yt = YoutubeExplode();
    var results = await yt.search.getVideos(value);
    searchResults.value = results;
    // for (var video in results) {
    //   print("==========");
    //   print(video.title);
    //   print(video.author);
    //   print(video.description);
    //   print(video.publishDate);
    //   print(video.uploadDate);
    //   print(video.url);
    //   print("==========");
    // }
  }
}