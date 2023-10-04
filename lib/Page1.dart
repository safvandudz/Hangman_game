import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int count = 0;
  bool head = false;
  bool body = false;
  bool ll = false;
  bool la = false;
  bool ra = false;
  bool rl = false;
  bool l1 = false;
  bool l2 = false;
  bool l3 = false;
  bool l4 = false;
  bool l5 = false;
  bool l6 = false;


  Display(String text, bool visib) {
    return Container(
        width: 50,
        height: 50,
        color: Colors.black,
        child: Center(
            child: Visibility(
                visible: visib,
                child: Text(
                  "$text",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))));
  }

  Display1(String tex) {
    return Visibility(
        child: InkWell(
      onTap: () {
        setState(() {
          if (tex == 'T') {
            l1 = true;
          } else if (tex == 'E') {
            l2 = true;
          } else if (tex == 'G') {
            l3 = true;
          } else if (tex == 'F') {
            l4 = true;
          } else if (tex == 'L') {
            l5 = true;
          } else if (tex == 'Y') {
            l6 = true;
            if (l6) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Alert'),
                    content: Text('You are win......yeaaa'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            }
          } else {
            count = count + 1;
            if (count == 1) {
              head = true;
            } else if (count == 2) {
              head = true;
            } else if (count == 3) {
              body = true;
            } else if (count == 4) {
              ra = true;
            } else if (count == 5) {
              rl = true;
            } else if (count == 6) {
              la = true;
            } else if (count == 7) {
              ll = true;
              if (ll) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Alert'),
                      content: Text('Vere valla panikkum pokkooede'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              }
            }
          }
        });
      },
      child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "$tex",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
    ));
  }

  void _onClearButtonPressed() {
    setState(() {
       head = false;
       body = false;
       ll = false;
       la = false;
       ra = false;
       rl = false;
       l1 = false;
       l2 = false;
       l3 = false;
       l4 = false;
       l5 = false;
       l6 = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: double.maxFinite,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
              child: Container(
                height: 400,
                width: double.maxFinite,
                child: Center(
                    child: Stack(
                  children: [
                    Image.asset("Assets/hang.png"),
                    Visibility(
                        visible: head, child: Image.asset("Assets/head.png")),
                    Visibility(
                        visible: body, child: Image.asset("Assets/body.png")),
                    Visibility(
                        visible: la, child: Image.asset("Assets/la.png")),
                    Visibility(
                        visible: ra, child: Image.asset("Assets/ra.png")),
                    Visibility(
                        visible: rl, child: Image.asset("Assets/ll.png")),
                    Visibility(
                        visible: ll, child: Image.asset("Assets/rl.png")),

                  ],
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: Container(
                width: double.maxFinite,
                height: 50,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Display("T", l1),
                      Display("E", l2),
                      Display("G", l3),
                      Display("F", l4),
                      Display("L", l5),
                      Display("Y", l6),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30.0, right: 20),
              child: Container(
                height: 50,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Display1("A"),
                    Display1("B"),
                    Display1("C"),
                    Display1("D"),
                    Display1("E"),
                    Display1("F"),
                    Display1("G"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5.0, right: 20),
              child: Container(
                height: 50,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Display1("H"),
                    Display1("I"),
                    Display1("J"),
                    Display1("K"),
                    Display1("L"),
                    Display1("M"),
                    Display1("N"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5.0, right: 20),
              child: Container(
                height: 50,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Display1("O"),
                    Display1("P"),
                    Display1("Q"),
                    Display1("R"),
                    Display1("S"),
                    Display1("T"),
                    Display1("U"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5.0, right: 20),
              child: Container(
                height: 50,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Display1("V"),
                    Display1("W"),
                    Display1("X"),
                    Display1("Y"),
                    Display1("Z"),
                  ],
                ),
              ),
            ),
            Row(mainAxisAlignment:MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8,right: 10),
                  child: Container(
                    height:50 ,width: 100,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          _onClearButtonPressed();
                        },
                        child: Text(
                          'C',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8,right: 10),
                  child: Container(
                    height:50 ,width: 100,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),


              ],
            ),

          ]),
        ),
      ),
    );
  }
}
