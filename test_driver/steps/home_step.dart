import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../page/home_page.dart';



StepDefinitionGeneric ClickShrineCard() {
  return given<FlutterWorld>(
    'user click shrine on homepage',
    (context) async {
      final shrine = find.text('Shrine');
      final next = find.text('NEXT');
    //  final drawer = find.text('MENU');
    //  final clothing = find.text('CLOTHING');
      final sku = find.text('Walter henley (white)');
    await context.world.driver.scrollIntoView(shrine);
    await FlutterDriverUtils.tap(context.world.driver, shrine);
    await FlutterDriverUtils.tap(context.world.driver, next);
    //await FlutterDriverUtils.tap(context.world.driver, drawer);
    //await FlutterDriverUtils.tap(context.world.driver, clothing);
    await context.world.driver.scrollIntoView(sku);
    },
  );
}
