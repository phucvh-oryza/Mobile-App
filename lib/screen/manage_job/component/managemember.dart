import 'package:app_erp/screen/manage_job/manage_job_screen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';

class ManageMember extends StatefulWidget {
  const ManageMember({Key? key}) : super(key: key);

  @override
  State<ManageMember> createState() => _ManageMemberState();
}

class Member {
  String name;
  String email;
  bool isChecked;
  String avatarUrl;

  Member(this.name, this.email, this.isChecked, this.avatarUrl);
}

List<Member> members = [
  Member('Member 1', 'member1@example.com', false,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsBYr74_gQa67jqByHwpak09laiS8EJJf-InhdRpdI&s'),
  Member('Member 2', 'member2@example.com', false,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsBYr74_gQa67jqByHwpak09laiS8EJJf-InhdRpdI&s'),
  Member('Member 3', 'member3@example.com', false,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsBYr74_gQa67jqByHwpak09laiS8EJJf-InhdRpdI&s'),
  Member('Member 4', 'member4@example.com', false,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsBYr74_gQa67jqByHwpak09laiS8EJJf-InhdRpdI&s'),
  Member('Member 5', 'member5@example.com', false,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsBYr74_gQa67jqByHwpak09laiS8EJJf-InhdRpdI&s'),
];

class _ManageMemberState extends State<ManageMember> {
  //tick chon thanh vien
  int selectedCount = 0;
  bool isSelected = false;

//giong noi
  final TextEditingController _textEditingController = TextEditingController();

  stt.SpeechToText _speechToText = stt.SpeechToText();
  bool _isListening = false;
  String _text = '';

  @override
  void initState() {
    super.initState();
    _speechToText = stt.SpeechToText();
  }

  @override
  void dispose() {
    super.dispose();
    _speechToText.stop();
  }

  _onListen() async {
    bool hasSpeech = await _speechToText.initialize(
      onStatus: (status) => print('onStatus: $status'),
      onError: (error) => print('onError: $error'),
    );

    if (hasSpeech) {
      // Kiểm tra quyền truy cập microphone
      PermissionStatus status = await Permission.microphone.status;
      if (status != PermissionStatus.granted) {
        // Yêu cầu cấp quyền truy cập microphone
        PermissionStatus newStatus = await Permission.microphone.request();
        if (newStatus != PermissionStatus.granted) {
          // Nếu không cấp quyền, thông báo lỗi
          throw Exception('Microphone permission not granted.');
        }
      }

      setState(() {
        _isListening = true;
      });

      _speechToText.listen(
        onResult: (result) => setState(() {
          _textEditingController.text = result.recognizedWords;
        }),
        onSoundLevelChange: (level) => print('onSoundLevelChange: $level'),
        listenFor: Duration(minutes: 1),
        pauseFor: Duration(seconds: 5),
        partialResults: true,
        localeId: 'en_US',
      );
    }
  }

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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManageJobPage()),
                    );
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.blue,
                ),
                Text(
                  'Quản lý thành viên',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 30,
                        child: TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(211, 211, 211, 0.5),
                            hintText: "Tìm kiếm thành viên...",
                            prefixIcon: Icon(Icons.search, color: Colors.blue),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  _isListening ? Icons.mic : Icons.mic_none),
                              iconSize: 18,
                              color: Colors.blue,
                              onPressed: _onListen,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                          maxLines: 1,
                          cursorColor: Colors.grey,
                          textAlignVertical: TextAlignVertical.center,
                        ),
                      ),
                    ),
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
                            icon: Icon(Icons.done_all_outlined,
                                color: isSelected ? Colors.grey : Colors.blue),
                            onPressed: () {
                              setState(() {
                                if (isSelected) {
                                  for (var member in members) {
                                    member.isChecked = false;
                                  }
                                  selectedCount = 0;
                                } else {
                                  for (var member in members) {
                                    member.isChecked = true;
                                  }
                                  selectedCount = members.length;
                                }
                                isSelected = !isSelected;
                              });
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
                            tooltip:
                                isSelected ? 'Bỏ chọn tất cả' : 'Thêm người',
                            iconSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: members.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(members[index].avatarUrl),
                      ),
                      title: Text(members[index].name,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600)),
                      subtitle: Text(members[index].email,
                          style: TextStyle(
                            fontSize: 10,
                          )),
                      trailing: Checkbox(
                        shape: CircleBorder(),
                        value: members[index].isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            members[index].isChecked = value!;
                            selectedCount = members
                                .where((member) => member.isChecked)
                                .length;
                            isSelected = selectedCount > 0;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            if (isSelected)
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: DottedLine(
                                dashColor: Colors.blue,
                                lineThickness: 1.0,
                                dashGapLength: 2.0,
                                dashRadius: 0.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Đã chọn: $selectedCount',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Container(
                                    width: 180,
                                    child: Text(
                                      'Admin kế hoạch, người tạo kế hoạch mặc định được chọn',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text(
                                              'Bạn có chắc không?',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            content: Text(
                                                'Bạn có muốn tiếp tục?',
                                                style: TextStyle(fontSize: 12)),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  // Code to execute when No is pressed.
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text('Có'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  // Code to execute when Yes is pressed.
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text('Không'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    icon: Icon(Icons.save_outlined),
                                    iconSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
