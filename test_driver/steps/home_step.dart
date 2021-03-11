import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../page/home_page.dart';



StepDefinitionGeneric ClickShrineCard() {
  return given<FlutterWorld>(
    'user click shrine on homepage',
    (context) async {
      final locator = find.text('Shrine');
    await context.world.driver.scrollIntoView(locator);
    await FlutterDriverUtils.tap(context.world.driver, locator);
    },
  );
}
