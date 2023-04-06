import 'package:app_erp/screen/home/component/tabview/tabview_outofdate.dart';
import 'package:app_erp/screen/home/component/tabview/tabview_overview.dart';
import 'package:flutter/material.dart';

import 'component/topmenu/topmenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      TopMenu(),
                    ],
                  ),
                )),
            Expanded(
              flex: 3,
              child: DefaultTabController(
                  length: 4, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          height: 20,
                          child: TabBar(
                            indicatorColor: Colors.blue,
                            labelColor: Colors.blue,
                            labelStyle: TextStyle(fontWeight: FontWeight.w600),
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(
                                child: Text(
                                  'Tổng quan',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Quá hạn',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Trong tuần',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Timeline',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.white, width: 0.5))),
                              child: TabBarView(children: <Widget>[
                                OverView(),
                                OutOfDate(),
                                Container(
                                  color: Colors.amber,
                                ),
                                Container(
                                  color: Colors.amber,
                                )
                              ])),
                        )
                      ])),
            ),
          ],
        )),
      ),
    );
  }
}
