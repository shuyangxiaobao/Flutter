// import 'package:flutter/material.dart';
// import 'package:flutter_driver/flutter_driver.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:hello_world/21/21.TestDemo.dart' as prefix0;
// // import '../lib/21/21.TestDemo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/21/21.TestDemo.dart' as prefix0;
// import 'package:flutter_driver/flutter_driver.dart';


void main() {

    testWidgets('widget testing demo', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: prefix0.Day21Demo(),
      )
    );
     final labeltext = find.text('hello');
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

  group('Appp', () {
    flutter
      FlutterDriver driver;

      final actionChip = find.byValueKey('actionChip');
      final actionChipLabelText = find.byValueKey('actionChipLabelText');


      setUpAll(()async{
        driver = await FlutterDriver.connect();
      });
      tearDownAll(()async{
        if(driver != null){
          driver.close();
        }
      });

      test('start at 0',() async{
        expect(await driver.getText(actionChipLabelText),'0');
        
      });

      

      

      test('increments the counter', ()async {
        await driver.tap(actionChip);
        expect(await driver.getText(actionChipLabelText),'1');
        
      });




    });
}


  
