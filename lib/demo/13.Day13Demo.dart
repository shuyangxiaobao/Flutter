import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import '10.material_components.dart';
import '13.chip_demo.dart';
import '13.data_table_demo.dart';
import '13.paginated_data_table_demo.dart';
import '13.card_demo.dart';
import '13.stepper_demo.dart';

class Day13Demo extends StatelessWidget {
  const Day13Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day13Demo"),
        elevation: 10.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "ChipDemo",page: ChipDemo(),),
          ListItem(title: "DataTableDemo",page: DataTableDemo(),), 
          ListItem(title: "PostDataSource",page: PaginatedDataTableDemo(),), 
          ListItem(title: "CardDemo",page: CardDemo(),), 
          ListItem(title: "StepperDemo",page: StepperDemo(),), 

        ],
      ),

    );
  }
}
