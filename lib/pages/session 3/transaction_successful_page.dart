import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:oech_app001/pages/session%203/transation_succesful_2.dart';
import 'package:oech_app001/widgets/btn_widget.dart';

class TransactionSucces1 extends StatefulWidget {
  const TransactionSucces1({super.key});

  @override
  _TransactionSucces1State createState() => _TransactionSucces1State();
}

class _TransactionSucces1State extends State<TransactionSucces1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..repeat();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/transaction');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int countStar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(children: [
                SizedBox(height: 190),
                SizedBox(
                  width: 119,
                  height: 119,
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: _controller.value * 2 * pi,
                        child: CircularProgressIndicator(
                          strokeWidth: 10,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.orange,
                          ),
                          backgroundColor: Colors.grey[200],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 100),
                Padding(
                  padding: EdgeInsets.only(top: 45),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Rate Rider',
                          style: TextStyle(color: Color(0xff0560FA)),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              countStar = 1;
                              setState(() {});
                            },
                            icon: countStar >= 1
                                ? Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  )
                                : Icon(Icons.star),
                          ),
                          IconButton(
                            onPressed: () {
                              countStar = 2;
                              setState(() {});
                            },
                            icon: countStar >= 2
                                ? Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  )
                                : Icon(Icons.star),
                          ),
                          IconButton(
                            onPressed: () {
                              countStar = 3;
                              setState(() {});
                            },
                            icon: countStar >= 3
                                ? Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  )
                                : Icon(Icons.star),
                          ),
                          IconButton(
                            onPressed: () {
                              countStar = 4;
                              setState(() {});
                            },
                            icon: countStar >= 4
                                ? Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  )
                                : Icon(Icons.star),
                          ),
                          IconButton(
                            onPressed: () {
                              countStar = 5;
                              setState(() {});
                            },
                            icon: countStar >= 5
                                ? Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  )
                                : Icon(Icons.star),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                spreadRadius: 0,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Add feedback',
                              prefixIcon: Icon(
                                Icons.messenger_rounded,
                                color: Color(0xff0560FA),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ButtonWidget(
                        buttonName: 'Done',
                        buttonColor: const Color.fromRGBO(5, 96, 250, 1),
                        onTap: () {
                          Navigator.pushNamed(context, '/traking_page');
                        
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
