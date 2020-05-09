import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/21/21.TestDemo.dart' as prefix0;
import '../lib/21/21.TestDemo.dart';

void main(){

  test('description', (){
    var string = NinghaoTestDemo.greet('ninghao');
    expect(string, 'hello ninghao');
  });

  testWidgets('widget testing demo', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: prefix0.Day21Demo(),
      )
    );
     final labeltext = find.text('hello');
     FlutterDriver driver;
    // expect(labeltext, findsNothing);
    // expect(labeltext, findsOneWidget);
    expect(labeltext, findsNWidgets(1));

    final actionChipLabelText = find.text('0');
    expect(actionChipLabelText, findsOneWidget);


    final actionChip = find.byType(ActionChip);
    await tester.tap(actionChip);
    await tester.pump();
    await tester.tap(actionChip);
    await tester.pump();

    final actionChipLabelTextAfterTap = find.text('2');
    expect(actionChipLabelTextAfterTap, findsOneWidget);
    expect(actionChipLabelText, findsNothing);

  });

 
}