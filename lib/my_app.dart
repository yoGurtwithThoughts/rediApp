import 'package:flutter/material.dart';
import 'package:oech_app001/pages/session%201/holder.dart';
import 'package:oech_app001/pages/session%202/forgot_password_page.dart';
import 'package:oech_app001/pages/session%202/loginIn_page.dart';
import 'package:oech_app001/pages/session%201/onboarding1.dart';
import 'package:oech_app001/pages/session%201/onboarding3.dart';
import 'package:oech_app001/pages/session%201/onboarding4.dart';
import 'package:oech_app001/pages/session%202/new_password_page.dart';
import 'package:oech_app001/pages/session%202/signUp_page.dart';
import 'package:oech_app001/pages/session%203/main_page.dart';
import 'package:oech_app001/pages/session%203/profile_page.dart';
import 'package:oech_app001/pages/session%203/receipt_page.dart';
import 'package:oech_app001/pages/session%203/send_a_package.dart';
import 'package:oech_app001/pages/session%203/notification_page.dart';
import 'package:oech_app001/pages/session%203/transaction_successful_page.dart';
import 'package:oech_app001/pages/session%203/transation_succesful_2.dart';
import 'package:oech_app001/pages/session%204/traking_page.dart';
import 'package:oech_app001/pages/session%204/wallet_page.dart';
import 'package:oech_app001/pages/session_5/chats_page.dart';
import 'package:oech_app001/pages/session_5/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Schyler',
      ),
      initialRoute: '/',
      routes: {
        // 1 session
        '/': (context) => const Onboarding1Page(),
        '/onb3': (context) => const Onboarding3Page(),
        '/onb4': (context) => const Onboarding4Page(),
        '/hold': (context) => const HolderPage(),
        // 2 session
        '/signup': (context) => const SignUpPage(),
        '/signin': (context) => const LoginPage(),
        '/forgotpass': (context) => const ForgotPasswoprdPage(),
        '/newpass': (context) => const NewPasswordPage(),
        // 3 session
        '/receipt-page': (context) => const ReceiptPage(),
        '/main-page': (context) => const MainPage(),
        '/profile': (context) => const ProfilePage(),
        '/sendpack': (context) => const SendPackage(),
        '/notification': (context) => const NotificationPage(),
        '/transation1': (context) => const TransactionSucces1(),
        '/transaction': (context) => const TransactionSucces(),
        // 4 session
         '/traking_page' :(context) => const TrakingPage(),
        '/wall': (context) => const WalletPage(),
        // 5 session
        '/home-page': (context) => const HomePage(),
        '/chats-page': (context) => const ChatsPage(),
      },
    );
  }
}
