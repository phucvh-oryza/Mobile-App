import 'package:flutter/material.dart';

class CreateTeam extends StatefulWidget {
  const CreateTeam({Key? key}) : super(key: key);

  @override
  State<CreateTeam> createState() => _CreateTeamState();
}

class _CreateTeamState extends State<CreateTeam> {
  List<Widget> avatars = [
    CircleAvatar(
      backgroundImage:
          NetworkImage('https://s3.o7planning.com/images/boy-128.png'),
    ),
    CircleAvatar(
      backgroundImage:
          NetworkImage('https://s3.o7planning.com/images/boy-128.png'),
    ),
    CircleAvatar(
      backgroundImage:
          NetworkImage('https://s3.o7planning.com/images/boy-128.png'),
    ),
    CircleAvatar(
      backgroundImage:
          NetworkImage('https://s3.o7planning.com/images/boy-128.png'),
    ),
    CircleAvatar(
      backgroundImage:
          NetworkImage('https://s3.o7planning.com/images/boy-128.png'),
    ),
    CircleAvatar(
      backgroundImage:
          NetworkImage('https://s3.o7planning.com/images/boy-128.png'),
    ),
    CircleAvatar(
      backgroundImage:
          NetworkImage('https://s3.o7planning.com/images/boy-128.png'),
    ),
    CircleAvatar(
      backgroundImage:
          NetworkImage('https://s3.o7planning.com/images/boy-128.png'),
    ),
    CircleAvatar(
      backgroundImage:
          NetworkImage('https://s3.o7planning.com/images/boy-128.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  color: Colors.blue,
                ),
                Text(
                  'Tạo team mới',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    'Khổi R&D / Team mới',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 42,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Tên team...",
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic),
                  ),
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                  maxLines: 1,
                  cursorColor: Colors.grey,
                  textAlignVertical: TextAlignVertical.center,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10),
                  child: Text(
                    'Chọn người theo dõi ',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    '(${avatars.length}) ',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 1),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.person_add_outlined, color: Colors.blue),
                      onPressed: () {
                        // Xử lý sự kiện khi người dùng nhấn nút
                      },
                      color: Colors.white,
                      splashColor: Colors.green,
                      highlightColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      disabledColor: Colors.grey,
                      padding: EdgeInsets.all(3),
                      constraints: BoxConstraints(),
                      visualDensity: VisualDensity.compact,
                      tooltip: 'Thêm người',
                      iconSize: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 42,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: avatars.length <= 6
                          ? avatars.length
                          : 7, // chỉ hiển thị tối đa 5 avatar thật
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 6 && avatars.length > 6) {
                          return GestureDetector(
                            onTap: () {
                              // hiển thị danh sách các avatar thật
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 137, 195, 236),
                                ),
                                child: Center(
                                  child: Text(
                                    "+${avatars.length - 6}",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              )),
                            ),
                          );
                        } else {
                          return Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: avatars[index],
                          );
                        }
                      },
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Are you sure?'),
                        content: Text('Do you want to proceed?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              // Code to execute when No is pressed.
                              Navigator.of(context).pop();
                            },
                            child: Text('No'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Code to execute when Yes is pressed.
                              Navigator.of(context).pop();
                            },
                            child: Text('Yes'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Tạo mới',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
