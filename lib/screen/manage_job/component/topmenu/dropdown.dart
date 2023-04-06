import 'package:app_erp/screen/manage_job/createteam.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  bool isContainerExpanded1 = false;
  bool isContainerExpanded2 = false;
  bool isContainerExpanded3 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            // onTap: () {
            //   setState(() {
            //     isContainerExpanded1 = !isContainerExpanded1;
            //   });
            // },
            onLongPress: () {
              Future.delayed(Duration(milliseconds: 500), () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                      ),
                    ),
                    height: 265,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          child: ListView(
                            children: [
                              Container(
                                height: 30,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Tùy chọn team',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CreateTeam()),
                                  );
                                },
                                child: Container(
                                  height: 42,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 212, 235, 248),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.border_color_outlined,
                                            color: Colors.blue,
                                            size: 15.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: Text('Tạo dự án/ kế hoạch',
                                              style: TextStyle(
                                                fontSize: 12,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 42,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 212, 235, 248),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.add_outlined,
                                          color: Colors.blue,
                                          size: 15.0,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text('Hiệu chỉnh team',
                                            style: TextStyle(
                                              fontSize: 12,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 42,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 212, 235, 248),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.person_outline,
                                          color: Colors.blue,
                                          size: 15.0,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text('Quản lý thành viên',
                                            style: TextStyle(
                                              fontSize: 12,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 42,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 212, 235, 248),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.cloud_outlined,
                                          color: Colors.blue,
                                          size: 15.0,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text('Lưu trữ team',
                                            style: TextStyle(
                                              fontSize: 12,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 42,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 245, 215, 215),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.delete_outlined,
                                          color: Colors.red,
                                          size: 15.0,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text('Xóa team',
                                            style: TextStyle(
                                              fontSize: 12,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              });
            },

            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color.fromARGB(255, 212, 235, 248),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 30,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 221, 202, 27),
                                          size: 25.0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Favorite',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isContainerExpanded1 =
                                            !isContainerExpanded1;
                                      });
                                    },
                                    icon: Icon(
                                      isContainerExpanded1
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    color: Colors.blue,
                                    alignment: Alignment.center,
                                    splashColor: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: isContainerExpanded1 ? 70 : 0,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 221, 202, 27),
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Lịch làm việc',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 221, 202, 27),
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Oteam Work',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Kế hoạch 007',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            // onTap: () {
            //   setState(() {
            //     isContainerExpanded2 = !isContainerExpanded2;
            //   });
            // },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color.fromARGB(255, 212, 235, 248),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 30,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 135, 186, 231),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 25.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Khối R&D',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isContainerExpanded2 =
                                            !isContainerExpanded2;
                                      });
                                    },
                                    icon: Icon(
                                      isContainerExpanded2
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    color: Colors.blue,
                                    alignment: Alignment.center,
                                    splashColor: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: isContainerExpanded2 ? 70 : 0,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 221, 202, 27),
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Lịch làm việc',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 221, 202, 27),
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Oteam Work',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Kế hoạch 007',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            // onTap: () {
            //   setState(() {
            //     isContainerExpanded3 = !isContainerExpanded3;
            //   });
            // },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: Color.fromARGB(255, 212, 235, 248),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 30,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 135, 186, 231),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 25.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Khối R&D',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isContainerExpanded3 =
                                            !isContainerExpanded3;
                                      });
                                    },
                                    icon: Icon(
                                      isContainerExpanded3
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    color: Colors.blue,
                                    alignment: Alignment.center,
                                    splashColor: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: isContainerExpanded3 ? 70 : 0,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 221, 202, 27),
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Lịch làm việc',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 221, 202, 27),
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Oteam Work',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Kế hoạch 007',
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
