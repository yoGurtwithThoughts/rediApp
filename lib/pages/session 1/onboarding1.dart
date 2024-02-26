import 'package:flutter/material.dart';

class Onboarding1Page extends StatelessWidget {
  const Onboarding1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 20),
                Image.asset('assets/images/s1_Onboarding 1.png'),
                const SizedBox(height: 50),
                const Text(
                  'Quick Delivery At Your Doorstep',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                    fontSize: 33,
                    color: Color.fromARGB(255, 5, 96, 250),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Enjoy quick pick-up and delivery to your destination',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                        fontSize: 21,
                        color: Color.fromARGB(255, 58, 58, 58)),
                  ),
                ),
                const SizedBox(height: 70),
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                      height: 50,
                      //this is a button that allows you go to the registration page
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/onb3');
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 5, 96, 250),
                                        width: 1)))),
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 5, 96, 250),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 90,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/onb4');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(4), // <-- Radius
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 5, 96, 250),
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
