import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import '../element/home_page_element.dart';

class HomePageAction {
  FlutterDriver driver;
  Duration timeout = const Duration(minutes: 25);
  HomePageElement elementHome = new HomePageElement();

  // Declare Variable
  dynamic cardShrine;

  HomePageAction(FlutterDriver flutterDriver) {
    driver = flutterDriver;
    cardShrine = find.text(elementHome.shrineCard);
  }

  Future<void> clickShrineCard() async {
    await driver.tap(cardShrine);
  }
}
