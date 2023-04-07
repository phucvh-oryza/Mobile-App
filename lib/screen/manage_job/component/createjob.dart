import 'package:app_erp/screen/project/manageproject.dart';
import 'package:flutter/material.dart';

import '../manage_job_screen.dart';

class CreateJob extends StatefulWidget {
  const CreateJob({super.key});

  @override
  State<CreateJob> createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
              child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.close_outlined),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManageProject()),
                      );
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Tạo công việc mới',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350, // Kích thước của TextField
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        maxLength: 30,
                        controller: _textController,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Tiêu đề công việc...",
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.black, // màu của border khi focus
                            ),
                          ),
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        onChanged: (text) {
                          if (text.length > 30) {
                            _textController.text = text.substring(0, 30);
                            _textController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: _textController.text.length));
                          }
                        },
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _textController.clear(); // Xóa nội dung TextField
                        });
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Nội dung',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
