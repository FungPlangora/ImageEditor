import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_rust_with_flutter/main.dart';

class EditorFilter extends StatelessWidget{
  const EditorFilter({Key? key}) : super(key: key);

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