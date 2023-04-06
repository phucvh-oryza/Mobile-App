import 'package:flutter/material.dart';

class OutOfDate extends StatefulWidget {
  const OutOfDate({super.key});

  @override
  State<OutOfDate> createState() => _OutOfDateState();
}

class _OutOfDateState extends State<OutOfDate> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
          child: SizedBox(
            child: Container(
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 240, 247),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                            value: isChecked,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.blue),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '[Story] Thêm mới tính năng Priority tối đa 2 dòng thôi nha. tính năng Priority tối đa 2 dòng thôi nha tính năng Priority tối đa 2 dòng thôi nha ',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: Colors.blue,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Text(
                                '11/07/2022',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                ' - ',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '11/08/2022',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Row(
                              children: [
                                Container(
                                  height: 22,
                                  width: 22,
                                  child: Icon(
                                    Icons.list,
                                    color: Colors.blue,
                                    size: 22.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('3/3', style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpG7IwZyfPu4xnkU1SZP5U2FeJk5804tOKdFusx2Hc&s',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            child: Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 209, 197, 84),
                              size: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    child: Icon(
                                      Icons.sms_outlined,
                                      color: Colors.blue,
                                      size: 22.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text('Bình luận',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    child: Icon(
                                      Icons.attach_file,
                                      color: Colors.blue,
                                      size: 22.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text('Tệp tin',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
          child: SizedBox(
            child: Container(
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 240, 247),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                            value: isChecked,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.blue),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '[Story] Thêm mới tính năng Priority tối đa 2 dòng thôi nha. tính năng Priority tối đa 2 dòng thôi nha tính năng Priority tối đa 2 dòng thôi nha ',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: Colors.blue,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Text(
                                '11/07/2022',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                ' - ',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '11/08/2022',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Row(
                              children: [
                                Container(
                                  height: 22,
                                  width: 22,
                                  child: Icon(
                                    Icons.list,
                                    color: Colors.blue,
                                    size: 22.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('3/3', style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpG7IwZyfPu4xnkU1SZP5U2FeJk5804tOKdFusx2Hc&s',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            child: Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 209, 197, 84),
                              size: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    child: Icon(
                                      Icons.sms_outlined,
                                      color: Colors.blue,
                                      size: 22.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text('Bình luận',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    child: Icon(
                                      Icons.attach_file,
                                      color: Colors.blue,
                                      size: 22.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text('Tệp tin',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
          child: SizedBox(
            child: Container(
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 240, 247),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                            value: isChecked,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.blue),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '[Story] Thêm mới tính năng Priority tối đa 2 dòng thôi nha. tính năng Priority tối đa 2 dòng thôi nha tính năng Priority tối đa 2 dòng thôi nha ',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: Colors.blue,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Text(
                                '11/07/2022',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                ' - ',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '11/08/2022',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Row(
                              children: [
                                Container(
                                  height: 22,
                                  width: 22,
                                  child: Icon(
                                    Icons.list,
                                    color: Colors.blue,
                                    size: 22.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('3/3', style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpG7IwZyfPu4xnkU1SZP5U2FeJk5804tOKdFusx2Hc&s',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            child: Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 209, 197, 84),
                              size: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    child: Icon(
                                      Icons.sms_outlined,
                                      color: Colors.blue,
                                      size: 22.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text('Bình luận',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    child: Icon(
                                      Icons.attach_file,
                                      color: Colors.blue,
                                      size: 22.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text('Tệp tin',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
          child: SizedBox(
            child: Container(
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 240, 247),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                            value: isChecked,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.blue),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '[Story] Thêm mới tính năng Priority tối đa 2 dòng thôi nha. tính năng Priority tối đa 2 dòng thôi nha tính năng Priority tối đa 2 dòng thôi nha ',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: Colors.blue,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Text(
                                '11/07/2022',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                ' - ',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '11/08/2022',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Row(
                              children: [
                                Container(
                                  height: 22,
                                  width: 22,
                                  child: Icon(
                                    Icons.list,
                                    color: Colors.blue,
                                    size: 22.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('3/3', style: TextStyle(fontSize: 12))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpG7IwZyfPu4xnkU1SZP5U2FeJk5804tOKdFusx2Hc&s',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            child: Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 209, 197, 84),
                              size: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    child: Icon(
                                      Icons.sms_outlined,
                                      color: Colors.blue,
                                      size: 22.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text('Bình luận',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    child: Icon(
                                      Icons.attach_file,
                                      color: Colors.blue,
                                      size: 22.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text('Tệp tin',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
