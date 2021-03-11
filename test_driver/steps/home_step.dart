import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../page/home_page.dart'; //

class ClickShrineCard extends Given<FlutterWorld> {
  @override
  Future<void> executeStep() async {
      // implement your code
      HomePageAction homepage = new HomePageAction(world.driver);

      homepage.clickShrineCard();
    
  }

  @override
  RegExp get pattern => RegExp(r"user click shrine on homepage");
}
