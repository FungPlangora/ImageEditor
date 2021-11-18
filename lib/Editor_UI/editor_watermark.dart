import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditorWaterMark extends StatefulWidget {
  const EditorWaterMark({Key? key}) : super(key: key);

  @override
  _EditorWaterMark createState() => new _EditorWaterMark();
}

class _EditorWaterMark extends State<EditorWaterMark>{
  PlatformFile? file;
  List<PlatformFile> userPickFilesWaterMarks = [];
  late String _saveAsFileName;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: SizedBox(
                height: screenHeight/7,
                width: screenWidth/20,
                child: GestureDetector(
                    child: Image.asset("assets/images/icon_custom_watermark.png"),
                  onTap: () async{
                    FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.image);
                    if (result == null) return;
                    file = result.files.first;
                    setState(() {
                      userPickFilesWaterMarks.add(file!);
                    });
                    print('watermark list: ${userPickFilesWaterMarks.length}');
                    print("Select your own Watermark");
                  },
                ),
              ),
            ),
            SizedBox(
              height: screenHeight/7,
              width: screenWidth/20,
              child: GestureDetector(
                child: Image.asset("assets/images/icon_default_watermark.png"),
                onTap: () async{
                  print("You selected default watermark");
                },
              ),
            ),
            SizedBox(
              height: screenHeight/7,
              width: screenWidth/1.2,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: userPickFilesWaterMarks.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      print('You selected custom added water marks ${userPickFilesWaterMarks[index].path.toString()}');
                    },
                    child: Container(
                        width: 50,
                        height: 50,
                        child: Image.file(File(userPickFilesWaterMarks[index].path.toString()))
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){},
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          print("you pressed X button");
                        },
                        child: Image.asset("assets/images/icon_x.png")
                    ),
                    GestureDetector(
                        onTap: () {
                          print("you pressed Check button");
                        },
                        child: Image.asset("assets/images/icon_check.png")
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}