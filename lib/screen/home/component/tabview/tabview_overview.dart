import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class OverView extends StatefulWidget {
  const OverView({super.key});

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 90,
                      width: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 184, 227, 247),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Icon(
                                    Icons.layers_outlined,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  '30',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text(
                                  '15%',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Trong tuần',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 182, 218, 185),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Icon(
                                    Icons.mode_standby,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  '30',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text(
                                  '82%',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Đang thực hiện',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 243, 218, 218),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Icon(
                                    Icons.show_chart,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  '30',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  '15%',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Quá hạn',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //--------------------------------------------------------------------------------------------
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bạn có 2 cuộc họp trong tuần này',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward),
                    iconSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            child: Scrollbar(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      width: 350.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(255, 211, 235, 255),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, top: 3, bottom: 3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Họp nhân sự tháng 7',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('Phòng họp chính',
                                    style: TextStyle(fontSize: 10)),
                                Text(
                                  'Lầu 1, Oryza',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Text(
                                  'Lê Thành Hiếu',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, right: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '17/07/2022',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '11:00',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      ' đến',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      '17:00',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      width: 350.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(255, 211, 235, 255),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, top: 3, bottom: 3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Họp nhân sự tháng 8',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('Phòng họp chính',
                                    style: TextStyle(fontSize: 10)),
                                Text(
                                  'Lầu 1, Oryza',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Text(
                                  'Lê Thành Hiếu',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, right: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '17/08/2022',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '11:00',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      ' đến',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      '17:00',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 120,
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 100,
                  ranges: <GaugeRange>[
                    GaugeRange(
                        startValue: 0, endValue: 40, color: Colors.green),
                    GaugeRange(
                        startValue: 40, endValue: 80, color: Colors.yellow),
                    GaugeRange(
                        startValue: 80, endValue: 100, color: Colors.red),
                  ],
                  pointers: <GaugePointer>[
                    NeedlePointer(value: 75),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        widget: Text('75', style: TextStyle(fontSize: 25)),
                        positionFactor: 0.5,
                        angle: 90)
                  ],
                ),
              ],
            ),
          ),

          Container(
            child: Expanded(
                flex: 1,
                child: (Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        DefaultTabController(
                            length: 2, // length of tabs
                            initialIndex: 0,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Container(
                                    height: 20,
                                    child: TabBar(
                                      indicatorColor: Colors.blue,
                                      labelColor: Colors.blue,
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w600),
                                      unselectedLabelColor: Colors.black,
                                      tabs: [
                                        Tab(text: 'Nhiệm vụ cá nhân'),
                                        Tab(text: 'Lịch sử cộng trừ điểm'),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 125,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              top: BorderSide(
                                                  color: Colors.white,
                                                  width: 0.5))),
                                      child: TabBarView(children: <Widget>[
                                        Container(
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              '+1',
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              'Chuyên cần',
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '17/26',
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              '+0',
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              'Check in',
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.done,
                                                              color:
                                                                  Colors.green,
                                                              size: 15.0,
                                                              semanticLabel:
                                                                  'Text to announce in accessibility modes',
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              '+1',
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              'Check out',
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .hourglass_empty_rounded,
                                                              color:
                                                                  Colors.black,
                                                              size: 15.0,
                                                              semanticLabel:
                                                                  'Text to announce in accessibility modes',
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              '+1',
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              'Báo cáo công việc',
                                                              style: TextStyle(
                                                                  fontSize: 10),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .hourglass_empty_rounded,
                                                              color:
                                                                  Colors.black,
                                                              size: 15.0,
                                                              semanticLabel:
                                                                  'Text to announce in accessibility modes',
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Center(
                                            child: Text('Display Tab 2',
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ]))
                                ])),
                      ]),
                ))),
          )
        ],
      )),
    );
  }
}
