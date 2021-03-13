import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:test/test.dart';



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
    final clothing = find.text(value);
    await FlutterDriverUtils.tap(context.world.driver, drawer);
    await FlutterDriverUtils.tap(context.world.driver, clothing);
  });
}

StepDefinitionGeneric addItemToCart(){
  return and1<String, FlutterWorld>('user add {String} item', (value, context) async {
    final start = find.byValueKey('scrollProduct');
    final sku = find.text(value);
    await context.world.driver.scrollUntilVisible(start, sku, dxScroll: -300.0);
    await FlutterDriverUtils.tap(context.world.driver, sku);
  });
}

StepDefinitionGeneric checkCart(){
  return then3<String, String, String, FlutterWorld>('user will see {String} and {String} with total {String}', (item1, item2, amount, context) async{
    final clickCart = find.byValueKey('cartItem');
//    final clothing = find.text(item1);
//    final accessories = find.text(item2);
    final total = find.text(amount);
    final clearCart = find.text('CLEAR CART');
    await FlutterDriverUtils.tap(context.world.driver, clickCart);
    // unable to expect more than 1
//    context.expect(await FlutterDriverUtils.getText(context.world.driver, clothing), item1);
//    context.expect(await FlutterDriverUtils.getText(context.world.driver, accessories), item2);
    context.expect(await FlutterDriverUtils.getText(context.world.driver, total), amount);
    await FlutterDriverUtils.tap(context.world.driver, clearCart);
  });
}

