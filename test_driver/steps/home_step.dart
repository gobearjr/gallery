import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:path/path.dart';
import '../page/home_page.dart';



StepDefinitionGeneric clickShrineCard() {
  return given<FlutterWorld>(
    'user click shrine on homepage',
    (context) async {
      final shrine = find.text('Shrine');
      final next = find.text('NEXT');
    await context.world.driver.scrollIntoView(shrine);
    await FlutterDriverUtils.tap(context.world.driver, shrine);
    await FlutterDriverUtils.tap(context.world.driver, next);
    },
  );
}

StepDefinitionGeneric clickDrawerMenu(){
  return when1<String, FlutterWorld>('user click drawer menu and select {string} section', (value, context) async {
    final drawer = find.byValueKey('drawer');
    final clothing = find.text('CLOTHING');
    await FlutterDriverUtils.tap(context.world.driver, drawer);
    await FlutterDriverUtils.tap(context.world.driver, clothing);
  });
}

StepDefinitionGeneric addItemToCart(){
  return and1<String, FlutterWorld>('user add {String} item', (value, context) async {
    final start = find.byValueKey('scrollProduct');
    final sku = find.text('Walter henley (white)');
    await context.world.driver.scrollUntilVisible(start, sku, dxScroll: -300.0);
    await FlutterDriverUtils.tap(context.world.driver, sku);
  });
}

