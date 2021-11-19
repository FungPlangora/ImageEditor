import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_rust_with_flutter/main.dart';

class EditorFilter extends StatelessWidget{
  const EditorFilter({Key? key}) : super(key: key);

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
    double screenWidth = MediaQuery. of(context). size. width;
    double screenHeight = MediaQuery. of(context). size. height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: screenHeight/7.5,
              width: screenWidth,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints.expand(
                          width: 85,
                      ),
                      child: GestureDetector(
                        child: Image.asset("assets/images/icon_filter_original.png"),
                        onTap: (){
                          print("Original Filter is pressed");
                        },
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints.expand(
                          width: 85
                      ),
                      child: GestureDetector(
                        child: Image.asset("assets/images/icon_filter_vintage.png"),
                        onTap: (){
                          print("vintage Filter is pressed");
                        },
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints.expand(
                          width: 85
                      ),
                      child: GestureDetector(
                        child: Image.asset("assets/images/icon_filter_pastel.png"),
                        onTap: (){
                          print("Pastel Filter is pressed");
                        },
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints.expand(
                          width: 85
                      ),
                      child: GestureDetector(
                        child: Image.asset("assets/images/icon_filter_golden.png"),
                        onTap: (){
                          print("golden Filter is pressed");
                        },
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints.expand(
                          width: 85
                      ),
                      child: GestureDetector(
                        child: Image.asset("assets/images/icon_filter_dramatic.png"),
                        onTap: (){
                          print("Dramatic Filter is pressed");
                        },
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints.expand(
                          width: 85
                      ),
                      child: GestureDetector(
                        child: Image.asset("assets/images/icon_filter_nenu.png"),
                        onTap: (){
                          print("Nenu Filter is pressed");
                        },
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints.expand(
                          width: 85
                      ),
                      child: GestureDetector(
                        child: Image.asset("assets/images/icon_filter_cali.png"),
                        onTap: (){
                          print("Cali Filter is pressed");
                        },
                      ),
                    ),
                  ],
                ),
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
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          _openDialog(context);
                          print("you pressed X button");
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