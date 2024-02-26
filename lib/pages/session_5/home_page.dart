import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/card_home_widget.dart';
import 'package:oech_app001/widgets/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var peremBackColor = Colors.black.withOpacity(0.1);
var peremTextColor = const Color(0xff0560FA);
var peremBackColor2 = Colors.black.withOpacity(0.1);
var peremTextColor2 = const Color(0xff0560FA);
var peremBackColor3 = Colors.black.withOpacity(0.1);
var peremTextColor3 = const Color(0xff0560FA);
var peremBackColor4 = Colors.black.withOpacity(0.1);
var peremTextColor4 = const Color(0xff0560FA);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const SearchBarWidget(),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/s5__back__card.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/s5_ava_Ken.png',
                      width: 60,
                      height: 60,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          ' Hello Ken!',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          '  We trust you are having a great time',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 39),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Special for you',
                      style: TextStyle(
                        color: Color(0xffEC8000),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Image.asset('assets/images/s5_icon_arrow-right.png')
                  ],
                ),
              ),
              const SizedBox(height: 7),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 166,
                        height: 88,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: const Color(0xffEC8000),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/s5__back__card2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Text(
                          'Tech Meetup coming soon',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 166,
                        height: 88,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: const Color(0xffEC8000),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/s5__back__card3.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.7),
                              border: Border.all(
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(26),
                              ),
                            ),
                            child: const Text(
                              'Love \n Revolution',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffEBBC2E),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 166,
                        height: 88,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: const Color(0xffEC8000),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/s5__back__card4.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 166,
                        height: 88,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: const Color(0xffEC8000),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/s5__back__card5.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 166,
                        height: 88,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: const Color(0xffEC8000),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/s5__back__card6.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'What would you like to do',
                  style: TextStyle(
                    color: Color(0xff0560FA),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTapDown: (details) {
                      peremBackColor = const Color(0xff0560FA);
                      peremTextColor = Colors.white;
                      setState(() {});
                    },
                    onTapUp: (details) {
                      peremBackColor = Colors.black.withOpacity(0.1);
                      peremTextColor = const Color(0xff0560FA);
                      setState(() {});
                    },
                    child: CardHomeWidget(
                      peremBackColor: peremBackColor,
                      peremTextColor: peremTextColor,
                      icon: Icons.support_agent,
                      h3: 'Customer Care',
                      text:
                          'Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today',
                    ),
                  ),
                  GestureDetector(
                    onTapDown: (details) {
                      peremBackColor2 = const Color(0xff0560FA);
                      peremTextColor2 = Colors.white;
                      setState(() {});
                    },
                    onTapUp: (details) {
                      peremBackColor2 = Colors.black.withOpacity(0.1);
                      peremTextColor2 = const Color(0xff0560FA);
                      setState(() {});
                    },
                    child: CardHomeWidget(
                      peremBackColor: peremBackColor2,
                      peremTextColor: peremTextColor2,
                      icon: Icons.cases_outlined,
                      h3: 'Send a package',
                      text:
                          'Request for a driver to pick up or deliver your package for you',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTapDown: (details) {
                      peremBackColor3 = const Color(0xff0560FA);
                      peremTextColor3 = Colors.white;
                      setState(() {});
                    },
                    onTapUp: (details) {
                      peremBackColor3 = Colors.black.withOpacity(0.1);
                      peremTextColor3 = const Color(0xff0560FA);
                      setState(() {});
                    },
                    child: CardHomeWidget(
                      peremBackColor: peremBackColor3,
                      peremTextColor: peremTextColor3,
                      icon: Icons.account_balance_wallet,
                      h3: 'Fund your wallet',
                      text:
                          'To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today',
                    ),
                  ),
                  GestureDetector(
                    onTapDown: (details) {
                      peremBackColor4 = const Color(0xff0560FA);
                      peremTextColor4 = Colors.white;
                      setState(() {});
                    },
                    onTapUp: (details) {
                      peremBackColor4 = Colors.black.withOpacity(0.1);
                      peremTextColor4 = const Color(0xff0560FA);
                      setState(() {});
                      Future.delayed(const Duration(milliseconds: 250), () {
                        Navigator.of(context).pushNamed('/chats-page');
                      });
                    },
                    child: CardHomeWidget(
                      peremBackColor: peremBackColor4,
                      peremTextColor: peremTextColor4,
                      icon: Icons.messenger,
                      h3: 'Chats',
                      text: 'Search for available rider within your area',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
