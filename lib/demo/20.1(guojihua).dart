import 'package:flutter/material.dart';
import '20.bao_demo_localizations.dart';
import '20.ninghao_demo_localizations.dart';
class Demo201 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("20.1 国际化"),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(Localizations.of(context, GeqiangbaoLocations).title),    
            Text(locale.toString() + "      2323"),
            // Text(GeqiangbaoLocations.of(context).title),
            Text(NinghaoDemoLocalizations.of(context).title),
            Text(NinghaoDemoLocalizations.of(context).greet('67')),
          ],
        ),
      ),
    );
  }
}