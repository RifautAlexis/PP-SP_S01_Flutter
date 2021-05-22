import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/widgets/search_appbar/search_appbar.dart';
import 'package:pp_sp_s01_flutter/widgets/search_appbar/search_appbar_controller.dart';

void main() {
  late Finder searchBarTextField;
  late SearchAppbarController searchAppbarController;

  setUp(() {
    searchBarTextField = find.byKey(Key('SearchBarTextField'));
  });

  setUpAll(() {
    searchAppbarController = Get.put(SearchAppbarController());
  });

  testWidgets('Should match widgets/type composing SearchAppbarWidget',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      GetMaterialApp(
        home: Scaffold(
          body: SearchAppbarWidget(),
        ),
      ),
    );

    expect(searchBarTextField, findsOneWidget);
  });

  /*
    Can't test cause implmentetion of library "youtube_explode_dart"
  */
  // testWidgets('Should contains a text when typing it and set value to search in the controller', (WidgetTester tester) async {
  //   await tester.pumpWidget(
  //     GetMaterialApp(
  //       home: Scaffold(
  //         body: SearchAppbarWidget(),
  //       ),
  //     ),
  //   );

  //   await tester.enterText(searchBarTextField, 'jdg');

  //   expect(find.text('jdg'), findsOneWidget);

  //   expect(searchAppbarController.searchedValue.value, equals('jdg'));
  //   // expect(searchAppbarController.searchResults.value, isNot(equals([])));
  // });
}
