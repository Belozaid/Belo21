import 'package:flutter/material.dart';
// import 'package:flutter_application_1/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login",
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromARGB(255, 255, 255, 255)),
              "LOGIN",
            ),
            // iconTheme: IconThemeData.fallback(),
          ),
          body: Container(
            alignment: Alignment.center,
            color: Color.fromARGB(255, 40, 78, 109),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                    // backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    radius: 100,
                    backgroundImage: AssetImage("images/yousef.jpg")),
                const Padding(padding: EdgeInsets.all(5)),
                const Text(
                  "Belal Alsheikh",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                const Text("programming for application",
                    style: TextStyle(color: Colors.white54, fontSize: 15)),
                Container(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 300,
                            color: Colors.white,
                            child: Column(
                              // mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Icon(
                                        Icons.call,
                                        color: Colors.green,
                                        size: 30,
                                        shadows: [Shadow(blurRadius: 10)],
                                      ),
                                    ),
                                    Expanded(
                                        flex: 2, child: Text("+967 777433990"))
                                  ],
                                )
                                // Icon(
                                //   Icons.call,
                                //   color: Colors.green,
                                //   size: 30,
                                //   shadows: [Shadow(blurRadius: 10)],
                                // ),
                                // Text("+967 777453902")
                                // Padding(padding: EdgeInsets.all(10))
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 300,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Icon(
                                        Icons.email,
                                        size: 30,
                                        shadows: [Shadow(blurRadius: 10)],
                                        color: Colors.green,
                                      ),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child:
                                            Text("Belo7757@gmail.com"))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
