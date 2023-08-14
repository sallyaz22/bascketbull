import 'package:flutter/material.dart';

void main() {
  runApp(PouintCounter());
}

class PouintCounter extends StatefulWidget {
  PouintCounter({super.key});

  @override
  State<PouintCounter> createState() => _PouintCounterState();
}

class _PouintCounterState extends State<PouintCounter> {
  int teamAPoint = 0;
  int teamBPoint = 0;

  void addOnePoint() {
    print("add Point");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title:
              Text("Pounits Counter", style: TextStyle(color: Colors.black54)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(color: Colors.black, fontSize: 32),
                      ),
                      Text(
                        "$teamAPoint",
                        style: TextStyle(color: Colors.black, fontSize: 130),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoint++;
                          });
                          print(teamAPoint);
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoint = teamAPoint + 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoint += 3;
                          });
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(color: Colors.black, fontSize: 32),
                      ),
                      Text(
                        "$teamBPoint",
                        style: TextStyle(color: Colors.black, fontSize: 130),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoint++;
                          });
                          print(teamBPoint);
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoint += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoint += 3;
                          });
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      // Spacer(
                      //   flex: 12,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAPoint = 0;
                  teamBPoint = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
