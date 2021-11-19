import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditorWaterMark extends StatefulWidget {
  const EditorWaterMark({Key? key}) : super(key: key);

  @override
  _EditorWaterMark createState() => new _EditorWaterMark();
}

class _EditorWaterMark extends State<EditorWaterMark>{
  PlatformFile? file;
  List<PlatformFile> userPickFilesWaterMarks = [];

  void _openDialog(context) {
    showCupertinoDialog(
        context: context,
        builder: (_) => CupertinoAlertDialog(
          title: const Text("Discard edits"),
          content: const Text("Did you want to discard the edits you just made?"),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                    child: const Text('Discard'),
                    onPressed: () {
                      // Implement the revert changes of the current photo edit here.


                      print('Revert changes to original');
                      Navigator.of(context).pop();
                    }),
                CupertinoButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      print('Cancel command and stay on current page');
                      Navigator.of(context).pop();
                    }
                ),
              ],
            ),
          ],
        )
    );
  }

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
                height: 60,
                child: GestureDetector(
                    child: Image.asset("assets/images/icon_custom_watermark.png", fit: BoxFit.contain),
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
              height: 100,
              child: GestureDetector(
                child: Image.asset("assets/images/icon_default_watermark.png", fit: BoxFit.contain),
                onTap: () async{
                  print("You selected default watermark");
                },
              ),
            ),
            SizedBox(
              height: screenHeight/7,
              width: screenWidth/1.7,
              child: ListView.builder(
                itemExtent: 100.0,
                scrollDirection: Axis.horizontal,
                itemCount: userPickFilesWaterMarks.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      print('You selected custom added water marks ${userPickFilesWaterMarks[index].path.toString()}');
                    },
                    child: Container(
                        child: Image.file(File(userPickFilesWaterMarks[index].path.toString()), fit: BoxFit.contain)
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
                          _openDialog(context);
                        },
                        child: Image.asset("assets/images/icon_x.png")
                    ),
                    GestureDetector(
                        onTap: () {
                          print("you pressed Check button");
                          Navigator.pop(context);
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