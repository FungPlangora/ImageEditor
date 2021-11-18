import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditorColorSwatch extends StatelessWidget{
  const EditorColorSwatch({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;
    final double _width = screenWidth/13;
    final double _height = screenHeight/25;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border:  Border(top: BorderSide(color: Colors.grey, width: 1), left: BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFF016E8F)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF016E8F),
                      border: Border(left: BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFF52D6FC)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF52D6FC),
                      border: Border(left: BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFCBF0FF)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFCBF0FF),
                      border: Border(left: BorderSide(color: Colors.grey, width: 1), bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 2
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 1");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: const Color(0xFFEBEBEB),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFF0042A9)");
                  },
                  child: Container(
                    color: const Color(0xFF0042A9),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFF74A7FF)");
                  },
                  child: Container(
                    color: const Color(0xFF74A7FF),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFD2E2FE)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: const Color(0xFFD2E2FE),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 3
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 2");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFD6D6D6),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFF2C0977)");
                  },
                  child: Container(
                    color: const Color(0xFF2C0977),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFF864FFD)");
                  },
                  child: Container(
                    color: const Color(0xFF864FFD),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFD8C9FE)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: const Color(0xFFD8C9FE),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 4
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 3");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFC2C2C2),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFF61187C)");
                  },
                  child: Container(
                    color: const Color(0xFF61187C),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFD357FE)");
                  },
                  child: Container(
                    color: const Color(0xFFD357FE),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFEFCAFE)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFCAFE),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 5
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 4");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFADADAD),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFF791A3D)");
                  },
                  child: Container(
                    color: const Color(0xFF791A3D),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFEE719E)");
                  },
                  child: Container(
                    color: const Color(0xFFEE719E),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFF9D3E0)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFF9D3E0),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 6
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 5");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF999999),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFB51A00)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFB51A00),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFFF8C82)");
                  },
                  child: Container(
                    color: const Color(0xFFFF8C82),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFFFDAD8)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFDAD8),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 7
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 6");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF858585),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFAD3E00)");
                  },
                  child: Container(
                    color: const Color(0xFFAD3E00),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFFEA57D)");
                  },
                  child: Container(
                    color: const Color(0xFFFEA57D),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFFFE2D6)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFE2D6),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 8
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 7");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF707070),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFA96800)");
                  },
                  child: Container(
                    color: const Color(0xFFA96800),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFFEC777)");
                  },
                  child: Container(
                    color: const Color(0xFFFEC777),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFFEECD4)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFEECD4),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 9
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 8");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF5C5C5C),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFA67B01)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFA67B01),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFFED977)");
                  },
                  child: Container(
                    color: const Color(0xFFFED977),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFFEF1D5)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFEF1D5),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 10
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 9");
                  },
                  child: Container(
                    color: const Color(0xFF474747),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFC4BC00)");
                  },
                  child: Container(
                    color: const Color(0xFFC4BC00),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFFFF994)");
                  },
                  child: Container(
                    color: const Color(0xFFFFF994),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFFDFBDD)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFDFBDD),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 11
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 10");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF333333),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFF9BA50E)");
                  },
                  child: Container(
                    color: const Color(0xFF9BA50E),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFEAF28F)");
                  },
                  child: Container(
                    color: const Color(0xFFEAF28F),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFF6FADB)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6FADB),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
            ),
            Column( // COL 12
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("im white shade 11");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF000000),
                      border: Border(top:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFF4E7A27)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF4E7A27),
                      border: Border(right:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFB1DD8B)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: const Color(0xFFB1DD8B),
                      border: Border(right:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("im Color(0xFFDEEED4)");
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: const Color(0xFFDEEED4),
                      border: Border(bottom:BorderSide(color: Colors.grey, width: 1), right:BorderSide(color: Colors.grey, width: 1)),
                    ),
                    width: _width,
                    height: _height,
                  ),
                ),
              ],
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