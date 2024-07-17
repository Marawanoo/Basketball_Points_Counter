import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballCounter());
}

class BasketballCounter extends StatefulWidget {
  const BasketballCounter({super.key});

  @override
  State<BasketballCounter> createState() => _BasketballCounterState();
}

class _BasketballCounterState extends State<BasketballCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'BasketBall Points Counter',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.red[900],
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 45),
                      ),
                      Text(
                        '$teamAPoints',
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints++;
                            });
                          },
                          style: const ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              fixedSize: WidgetStatePropertyAll(Size(150, 60)),
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xffb71c1c))),
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      const Padding(padding: EdgeInsets.only(bottom: 20)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 2;
                            });
                          },
                          style: const ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              fixedSize: WidgetStatePropertyAll(Size(150, 60)),
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xffb71c1c))),
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      const Padding(padding: EdgeInsets.only(bottom: 20)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 3;
                            });
                          },
                          style: const ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              fixedSize: WidgetStatePropertyAll(Size(150, 60)),
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xffb71c1c))),
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      const Padding(padding: EdgeInsets.only(bottom: 20)),
                    ],
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      thickness: 2,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 45),
                      ),
                      Text(
                        '$teamBPoints',
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints++;
                            });
                          },
                          style: const ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              fixedSize: WidgetStatePropertyAll(Size(150, 60)),
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xffb71c1c))),
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      const Padding(padding: EdgeInsets.only(bottom: 20)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 2;
                            });
                          },
                          style: const ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              fixedSize: WidgetStatePropertyAll(Size(150, 60)),
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xffb71c1c))),
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      const Padding(padding: EdgeInsets.only(bottom: 20)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 3;
                            });
                          },
                          style: const ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              fixedSize: WidgetStatePropertyAll(Size(150, 60)),
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xffb71c1c))),
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      const Padding(padding: EdgeInsets.only(bottom: 20)),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints = 0;
                        teamBPoints = 0;
                      });
                    },
                    style: const ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                        fixedSize: WidgetStatePropertyAll(Size(200, 60)),
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xffb71c1c))),
                    child: const Text(
                      'Reset',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
