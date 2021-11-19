import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_rust_with_flutter/Editor_UI/editor_color_swatch.dart';
import 'package:learn_rust_with_flutter/Editor_UI/editor_filter.dart';
import 'package:learn_rust_with_flutter/Editor_UI/editor_watermark.dart';

class EditorBottomNavBar extends StatefulWidget {
  final Function openCallback;
  const EditorBottomNavBar({Key? key, required this.openCallback}) : super(key: key);

  @override
  _EditorBottomNavBar createState() => _EditorBottomNavBar();
}

class _EditorBottomNavBar extends State<EditorBottomNavBar> {
  bool istapped = false;
  bool editorTextModeTap = false;
  bool editorWaterMarkModeTap = false;
  bool editorFilterModeTap = false;
  GlobalKey<ExpandableBottomSheetState> key = GlobalKey();
  double _currentSliderValue = 0;

  void _untoggle() {
    setState(() {
        key.currentState!.contract();
        widget.openCallback(false);
    });
  }
  void _toggle() {
    setState(() {
      key.currentState!.expand();
      widget.openCallback(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return ExpandableBottomSheet(
      key: key,
      enableToggle: true,
      background: editorTextModeTap == true ? RotatedBox(
        quarterTurns: 3,
        child: Padding(
          padding: EdgeInsets.only(right: screenHeight/5),
          child: SizedBox(
            height: 40,
            width: screenHeight/3,
            child: SliderTheme(
              data: const SliderThemeData(
                  activeTrackColor: Color(0xFF787880),
                  inactiveTrackColor: Color(0xB3787880),
                  thumbColor: Colors.white,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15)),
              child: Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 5,
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
          ),
        ),
      ) : Text(""),
      persistentHeader: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        height: screenHeight/10,
        child: Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: (){
                  print("im 1");
                  editorTextModeTap = !editorTextModeTap;
                  if(editorTextModeTap){
                    _toggle();
                    editorWaterMarkModeTap = false;
                    editorFilterModeTap = false;
                  }else{
                    _untoggle();
                  }
                },
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/icon_text_edit.png'),
                      const Text("Text"), // text
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  print("im 2");
                  editorWaterMarkModeTap = !editorWaterMarkModeTap;
                  if(editorWaterMarkModeTap == true){
                    _toggle();
                    editorFilterModeTap = false;
                    editorTextModeTap = false;
                  }else{
                    _untoggle();
                  }
                },
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/icon_watermark_edit.png'),
                      const Text("Watermark"), // text
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  print("im 3");
                  editorFilterModeTap = !editorFilterModeTap;
                  if(editorFilterModeTap == true){
                    _toggle();
                    editorWaterMarkModeTap = false;
                    editorTextModeTap = false;
                  }else{
                    _untoggle();
                  }
                },
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/icon_filter_edit.png'),
                      const Text("Filter"), // text
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      expandableContent: Container(
        height: screenHeight/4,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: editorTextModeTap ? const EditorColorSwatch() : editorWaterMarkModeTap ? EditorWaterMark() :
          const EditorFilter(),
        ),
      ),
    );
  }
}