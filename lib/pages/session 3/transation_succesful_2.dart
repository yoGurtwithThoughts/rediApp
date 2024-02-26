import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oech_app001/widgets/btn_widget.dart';

class TransactionSucces extends StatefulWidget {
  const TransactionSucces({super.key});

  @override
  State<TransactionSucces> createState() => _TransactionSuccesState();
}

class _TransactionSuccesState extends State<TransactionSucces> {
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
                Container(
                  alignment: Alignment.center,
                  width: 125,
                  height: 125,
                  child: AnimatedSvg(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 45),
                  child: Column(
                    children: [
                      Container(
                        child: Text('Delivery Successful',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your Item has been delivered successfully',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(height: 25),
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
                                    color: Colors.black
                                        .withOpacity(0.15), // Цвет тени
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
                               // (Route<dynamic> route) => false,
                            
                            },
                          ),
                        ],
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

class AnimatedSvg extends StatefulWidget {
  @override
  _AnimatedSvgState createState() => _AnimatedSvgState();
}

class _AnimatedSvgState extends State<AnimatedSvg>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Stack(
            children: [
              // Внешний контур
              Positioned.fill(
                child: Transform.scale(
                  scale: _isExpanded ? 0.5 : 1.1,
                  child: SvgPicture.asset(
                    'assets/images/ellipse.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Внутренний контур, анимированный
              Positioned.fill(
                child: Transform.scale(
                  scale: _isExpanded
                      ? 1 + _controller.value * 0.1
                      : 1 - _controller.value * 0.4,
                  child: SvgPicture.asset(
                    'assets/images/check.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
