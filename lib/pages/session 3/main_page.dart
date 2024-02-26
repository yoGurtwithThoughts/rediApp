import 'package:flutter/material.dart';
import 'package:oech_app001/pages/session%203/profile_page.dart';
import 'package:oech_app001/pages/session%203/send_a_package.dart';
import 'package:oech_app001/pages/session%204/wallet_page.dart';
import 'package:oech_app001/pages/session_5/home_page.dart';
import 'package:oech_app001/widgets/bottom_bar_widget.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/main-page';
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

List<Widget> listPage = const <Widget>[
  HomePage(),
  WalletPage(),
  SendPackage(),
  ProfilePage(),
];

int selectedIndex = 0;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPage[selectedIndex],
      // BOTTOM BAR
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        type: BottomNavigationBarType.fixed,
        items: [
          // H O M E
          BottomBarWidget(
            icon: Icons.home,
            iconColor: selectedIndex == 0
                ? const Color.fromRGBO(5, 96, 205, 1)
                : Colors.grey,
            textColor: selectedIndex == 0
                ? const Color.fromRGBO(5, 96, 205, 1)
                : Colors.grey,
            text: 'Home',
            textSize: 12.0,
            fontWeight: FontWeight.w400,
            activeIconColor: const Color.fromRGBO(5, 96, 205, 1),
            activeTextColor: const Color.fromRGBO(5, 96, 205, 1),
            isActive: selectedIndex == 0,
            iconSize: 24.0,
          ).toBottomNavigationBarItem(),

          // W A L E T
          BottomBarWidget(
            icon: Icons.account_balance_wallet_outlined,
            iconColor: selectedIndex == 1
                ? const Color.fromRGBO(5, 96, 205, 1)
                : Colors.grey,
            textColor: selectedIndex == 1
                ? const Color.fromRGBO(5, 96, 205, 1)
                : Colors.grey,
            text: 'Walet',
            textSize: 12.0,
            fontWeight: FontWeight.w400,
            activeIconColor: const Color.fromRGBO(5, 96, 205, 1),
            activeTextColor: const Color.fromRGBO(5, 96, 205, 1),
            isActive: selectedIndex == 1,
            iconSize: 24,
          ).toBottomNavigationBarItem(),

          // T R A C K
          BottomBarWidget(
            icon: Icons.spatial_tracking_outlined,
            iconColor: selectedIndex == 2
                ? const Color.fromRGBO(5, 96, 205, 1)
                : Colors.grey,
            textColor: selectedIndex == 2
                ? const Color.fromRGBO(5, 96, 205, 1)
                : Colors.grey,
            text: 'Track',
            textSize: 12.0,
            activeIconColor: const Color.fromRGBO(5, 96, 205, 1),
            activeTextColor: const Color.fromRGBO(5, 96, 205, 1),
            fontWeight: FontWeight.w400,
            isActive: selectedIndex == 2,
            iconSize: 24,
          ).toBottomNavigationBarItem(),

          // P R O F I L E
          BottomBarWidget(
            icon: Icons.account_circle_outlined,
            iconColor: selectedIndex == 3
                ? const Color.fromRGBO(5, 96, 205, 1)
                : Colors.grey,
            textColor: selectedIndex == 3
                ? const Color.fromRGBO(5, 96, 205, 1)
                : Colors.grey,
            text: 'Profile',
            textSize: 12.0,
            activeIconColor: const Color.fromRGBO(5, 96, 205, 1),
            activeTextColor: const Color.fromRGBO(5, 96, 205, 1),
            isActive: selectedIndex == 3,
            fontWeight: FontWeight.w400,
            iconSize: 24,
          ).toBottomNavigationBarItem(),
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            
          });
        },
        selectedItemColor: const Color.fromRGBO(5, 96, 205, 1),
      ),
    );
  }
}
