import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Stack(
            children: [
              // ... (Previous Positioned widgets)
// Menu Icon (Three Lines)
              Positioned(
                top: 9,
                left: 19,
                child: Container(
                  width: 24,
                  height: 24,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 15,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        width: 24, // Longer middle line
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        width: 15,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // GDSC BOOKSTORE Text
              Positioned(
                top: 5,
                left: 60,
                child: Text(
                  'GDSC BOOKSTORE',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    height: 1.8, // Corresponds to line-height 32px
                    letterSpacing: 0,
                  ),
                ),
              ),
              // Search Box
              Positioned(
                top: 34.5,
                left: 15,
                child: Container(
                  width: 394.02,
                  height: 42.27,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Looking for...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          // Implement search functionality here
                        },
                      ),
                    ],
                  ),
                ),
              ),
              // First Blue Box
              Positioned(
                top: 35,
                left: 407,
                child: Container(
                  width: 51,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.white, width: 1.68),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Stack(
                    children: [
                      // White bordered blue circle 1
                      Positioned(
                        top: 17,
                        left: 7,
                        child: Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            border:
                                Border.all(color: Colors.white, width: 1.68),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      // White bordered blue circle 2
                      Positioned(
                        top: 17,
                        right: 7,
                        child: Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            border:
                                Border.all(color: Colors.white, width: 1.68),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      // White line 1
                      Positioned(
                        top: 17,
                        left: 15,
                        child: Container(
                          width: 14,
                          height: 1.68,
                          color: Colors.white,
                        ),
                      ),
                      // White line 2
                      Positioned(
                        top: 17,
                        right: 15,
                        child: Container(
                          width: 14,
                          height: 1.68,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Second Blue Box
              Positioned(
                top: 132.73,
                left: 15,
                child: Container(
                  width: 470,
                  height: 210.88,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.white, width: 1.68),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                  ),
                  child: Image.asset(
                    'assets/up.png',
                    fit: BoxFit.cover, // Adjust the fit as needed
                  ),
                ),
              ),

              // ... (Remaining code)
            ],
          ),
        ),
      ),
    );
  }
}
