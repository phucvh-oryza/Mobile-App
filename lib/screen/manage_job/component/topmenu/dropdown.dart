import 'dart:async';

import 'package:app_erp/screen/manage_job/component/managemember.dart';
import 'package:app_erp/screen/manage_job/createteam.dart';
import 'package:app_erp/screen/project/manageproject.dart';
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

  //check delete
  final _controller = TextEditingController();
  final _textStreamController = StreamController<String>.broadcast();
  bool _isButtonDisabled = true;
  Color _buttonColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    _controller.addListener(checkAndUpdateButtonState);
  }

  @override
  void dispose() {
    _controller.dispose();
    _textStreamController.close();
    super.dispose();
  }

  void checkAndUpdateButtonState() {
    _textStreamController.add(_controller.text);
  }

  void _submitDialog() {
    Navigator.of(context).pop(_controller.text);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
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
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                          title: Text(
                                            'Hiệu chỉnh team',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 16),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        height: 30,
                                                        child: TextField(
                                                          controller:
                                                              _controller,
                                                          onChanged: (value) {
                                                            _textStreamController
                                                                .add(value);
                                                          },
                                                          decoration:
                                                              InputDecoration(
                                                            filled: true,
                                                            fillColor:
                                                                Color.fromRGBO(
                                                                    211,
                                                                    211,
                                                                    211,
                                                                    0.5),
                                                            hintText:
                                                                "Tên team...",
                                                            prefixIcon: Icon(
                                                                Icons
                                                                    .diversity_3_outlined,
                                                                color: Colors
                                                                    .white),
                                                            border: InputBorder
                                                                .none,
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            10),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                            hintStyle:
                                                                TextStyle(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10),
                                                          maxLines: 1,
                                                          cursorColor:
                                                              Colors.white,
                                                          textAlignVertical:
                                                              TextAlignVertical
                                                                  .center,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          height: 35,
                                                          width: 35,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.blue,
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                              color:
                                                                  Colors.blue,
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .save_outlined),
                                                            color: Colors.white,
                                                            iconSize: 15,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: []);
                                    },
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
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ManageMember()),
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
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                          title: Text(
                                            'Lưu trữ team',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Bạn đang lưu trữ team: Khối RD. Nhập 7 để xác nhận hành động!',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(height: 16),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        height: 30,
                                                        child: TextField(
                                                          controller:
                                                              _controller,
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          onChanged: (value) {
                                                            _textStreamController
                                                                .add(value);
                                                          },
                                                          decoration:
                                                              InputDecoration(
                                                            filled: true,
                                                            fillColor:
                                                                Color.fromRGBO(
                                                                    211,
                                                                    211,
                                                                    211,
                                                                    0.5),
                                                            hintText:
                                                                "Nhập xác nhận...",
                                                            prefixIcon: Icon(
                                                                Icons.search,
                                                                color: Colors
                                                                    .white),
                                                            border: InputBorder
                                                                .none,
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            10),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                            hintStyle:
                                                                TextStyle(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10),
                                                          maxLines: 1,
                                                          cursorColor:
                                                              Colors.white,
                                                          textAlignVertical:
                                                              TextAlignVertical
                                                                  .center,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 35,
                                                          width: 35,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                              color:
                                                                  Colors.blue,
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .cloud_download_outlined),
                                                            color: Colors.blue,
                                                            iconSize: 15,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 40,
                                                          width: 180,
                                                          child: StreamBuilder<
                                                              String>(
                                                            stream:
                                                                _textStreamController
                                                                    .stream,
                                                            builder: (context,
                                                                snapshot) {
                                                              final value =
                                                                  snapshot.data ??
                                                                      '';
                                                              final isButtonDisabled =
                                                                  value ==
                                                                          'save'
                                                                      ? false
                                                                      : true;
                                                              final buttonColor =
                                                                  isButtonDisabled
                                                                      ? Colors
                                                                          .grey
                                                                      : Colors
                                                                          .green;
                                                              return ElevatedButton(
                                                                onPressed:
                                                                    isButtonDisabled
                                                                        ? null
                                                                        : () =>
                                                                            _submitDialog(),
                                                                child: Text(
                                                                    'Tiếp tục'),
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      buttonColor,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: []);
                                    },
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
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                          title: Text(
                                            'Xóa team',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Bạn đang xóa team: Khối RD. Nhập 7 để xác nhận hành động!',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(height: 16),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        height: 30,
                                                        child: TextField(
                                                          controller:
                                                              _controller,
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          onChanged: (value) {
                                                            _textStreamController
                                                                .add(value);
                                                          },
                                                          decoration:
                                                              InputDecoration(
                                                            filled: true,
                                                            fillColor:
                                                                Color.fromRGBO(
                                                                    211,
                                                                    211,
                                                                    211,
                                                                    0.5),
                                                            hintText:
                                                                "Nhập xác nhận...",
                                                            prefixIcon: Icon(
                                                                Icons.search,
                                                                color: Colors
                                                                    .white),
                                                            border: InputBorder
                                                                .none,
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            10),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                            hintStyle:
                                                                TextStyle(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10),
                                                          maxLines: 1,
                                                          cursorColor:
                                                              Colors.white,
                                                          textAlignVertical:
                                                              TextAlignVertical
                                                                  .center,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 35,
                                                          width: 35,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                              color: Colors.red,
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .delete_outline),
                                                            color: Colors.red,
                                                            iconSize: 15,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 40,
                                                          width: 180,
                                                          child: StreamBuilder<
                                                              String>(
                                                            stream:
                                                                _textStreamController
                                                                    .stream,
                                                            builder: (context,
                                                                snapshot) {
                                                              final value =
                                                                  snapshot.data ??
                                                                      '';
                                                              final isButtonDisabled =
                                                                  value ==
                                                                          'delete'
                                                                      ? false
                                                                      : true;
                                                              final buttonColor =
                                                                  isButtonDisabled
                                                                      ? Colors
                                                                          .grey
                                                                      : Colors
                                                                          .green;
                                                              return ElevatedButton(
                                                                onPressed:
                                                                    isButtonDisabled
                                                                        ? null
                                                                        : () =>
                                                                            _submitDialog(),
                                                                child: Text(
                                                                    'Tiếp tục'),
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      buttonColor,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: []);
                                    },
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ManageProject()),
                                );
                              },
                              child: Container(
                                height: 20,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 221, 202, 27),
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
