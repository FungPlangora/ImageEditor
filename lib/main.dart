import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:learn_rust_with_flutter/BottomNavBar/editor_navbar_.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Rust With Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Learn Flutter with Rust',
      ),
      //
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  {
  PlatformFile? file;

  final List<PlatformFile> userPickFiles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        height: 50.0,
        items: [
          TabItem(
              icon: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/icon_plus.png', height: 15.0, width: 15.0,),
              )),
        ],
        backgroundColor: Colors.white,
        disableDefaultTabController: true,
        top: -30.0,
        curveSize: 100.0,
        style: TabStyle.fixedCircle,
        initialActiveIndex: 0,//optional, default as 0
        onTap: (int i) async {
          FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.image);
          if (result == null) return;  // if user don't pick any thing then do nothing just return.
          file = result.files.first;

          setState(() {
            userPickFiles.add(file!);
          });

          if(file !=null){
            // Editor Page
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => ImageEditorView(file: file!.path!)),
            );
          }
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Align(
                        alignment: userPickFiles.isEmpty ? Alignment.center : Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 50.0),
                          child: userPickFiles.isEmpty ?
                          const Text("Start Editing",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ) : Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
                            child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 0.75,
                                  crossAxisCount: 2,
                                ),
                                itemCount: userPickFiles.length,
                                itemBuilder: (BuildContext ctx, index) {
                                  return Card(
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: GestureDetector(
                                      onTap: () async {
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => ImageEditorView(file: userPickFiles[index].path!)),
                                        );
                                        print('you tapped image: ${userPickFiles[index].path}');
                                      },
                                      child: Image.file(
                                        File(userPickFiles[index].path.toString()),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                }),
                            ),
                          )
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
    );
  }
}

class ImageEditorView extends StatelessWidget{
  final String file;

  const ImageEditorView({Key? key, required this.file}) : super(key: key);

  void _openDialog(context) {
    showCupertinoDialog(
        context: context,
        builder: (_) => CupertinoAlertDialog(
          title: const Text("Unsaved edits"),
          content: const Text("If you go back now, you will lose the edits that you’ve made."),
          actions: [
            CupertinoButton(
                child: const Text('Save'),
                onPressed: () {
                  //Implement save here or call the function save here
                  //Update the contents of the list to show in main page: after editing using rust
                  //Current list being used is <PlatformFile> userPickFiles = [];

                  print('Save changes and go back to main page');
                  // Then close the dialog
                  Navigator.of(context).pop();
                  // go back to main page
                  Navigator.pop(context);
                }),
            CupertinoButton(
              child: const Text('Discard'),
              onPressed: () {
                print('Discard changes and go back to main page');
                Navigator.of(context).pop();
                Navigator.pop(context);
              },
            ),
            CupertinoButton(
              child: const Text('Cancel'),
              onPressed: () {
                print('Cancel and stay on current page');
                Navigator.of(context).pop();
              }
            ),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        leading: IconButton(
            onPressed: (){
              _openDialog(context);
              },
            icon: const Icon(Icons.arrow_back_ios_new),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Edit", style: TextStyle(color: Colors.black),),
            IconButton(
              icon: Image.asset("assets/images/icon_save.png"),
              onPressed: () {
                //Implement save here or call the function save here
                //Update the contents of the list to show in main page: after editing using rust
                //Current list being used is <PlatformFile> userPickFiles = [];

                print("save and go back to main page");
                Navigator.pop(context);
              },
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: const EditorBottomNavBar(),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 390, top: 20),
                  child: Image.file(
                      File(file)
                   ),
                  ),
                ),
            ],
          ),
        ),
        ],
      ),
      extendBody: true,
    );
  }
}

