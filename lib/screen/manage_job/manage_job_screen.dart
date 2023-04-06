import 'package:flutter/material.dart';

import '../home/component/topmenu/topmenu.dart';
import '../home/homepage_screen.dart';
import 'component/topmenu/dropdown.dart';
import 'component/topmenu/topmenu.dart';

class ManageJobPage extends StatefulWidget {
  const ManageJobPage({super.key});

  @override
  State<ManageJobPage> createState() => _ManageJobPageState();
}

class _ManageJobPageState extends State<ManageJobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      TopMenu_ManageJob(),
                    ],
                  ),
                )),
            Expanded(
              flex: 4,
              child: Container(
                child: Container(child: DropDown()),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
