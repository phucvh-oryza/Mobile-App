import 'package:app_erp/screen/home/homepage_screen.dart';
import 'package:app_erp/screen/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../../auth/auth_service.dart';
import '../../../manage_job/manage_job_screen.dart';

class TopMenu extends StatefulWidget {
  const TopMenu({super.key});

  @override
  State<TopMenu> createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  final AuthService _authService = AuthService();
  int _currentPage = 1;
  bool _showFirstContainer = true;

  void _changePage(int page) {
    setState(() {
      _currentPage = page;
      _showFirstContainer = page == 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/office.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          height: 100,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Xác nhận"),
                                  content: Text("Bạn có chắc muốn thoát?"),
                                  actions: [
                                    TextButton(
                                      onPressed: () async {
                                        await _authService.getToken();
                                        Navigator.of(context).pop(false);
                                      },
                                      child: Text("Không"),
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        await _authService.logout();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen(),
                                            ));
                                      },
                                      child: Text("Có"),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                        ),
                        Text(
                          'Team',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          icon: Icon(
                            Icons.qr_code_scanner_outlined,
                            color: Colors.white,
                          ),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.update),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.textsms_outlined),
                          color: Colors.white,
                        ),
                        CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 233, 232, 229),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://s3.o7planning.com/images/boy-128.png"),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -65,
          right: 10,
          left: 10,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 10),
                    blurRadius: 3,
                    spreadRadius: -10)
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0, top: 2),
                            child: Text(
                              'Ứng dụng',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: IconButton(
                                    onPressed: _currentPage == 1
                                        ? null
                                        : () => _changePage(_currentPage - 1),
                                    icon: Icon(Icons.arrow_back_ios),
                                    iconSize: 10,
                                    color: Colors.blue,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    width: 10,
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 10),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    child: Text(
                                      '/',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 10),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    width: 10,
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 10),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: IconButton(
                                    onPressed: _currentPage == 2
                                        ? null
                                        : () => _changePage(_currentPage + 1),
                                    icon: Icon(Icons.arrow_forward_ios),
                                    iconSize: 10,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 10,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: _showFirstContainer
                              ? Column(
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ManageJobPage()),
                                                );
                                              },
                                              child: Container(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 40,
                                                      width: 40,
                                                      child: IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                            Icons.language),
                                                        iconSize: 25,
                                                        color: Colors.blue,
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Quản lý công \nviệc',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.language),
                                                    iconSize: 25,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    'Lịch họp\n',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.language),
                                                    iconSize: 25,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    'Quản lý phòng \nhọp',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.language),
                                                    iconSize: 25,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    'Quản lý \nworkspace',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.album),
                                                    iconSize: 25,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    'Quản lý công \nviệc 2',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.album),
                                                    iconSize: 25,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    'Lịch họp\n',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.album),
                                                    iconSize: 25,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    'Quản lý phòng \nhọp',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.album),
                                                    iconSize: 25,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    'Quản lý \nworkspace',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
