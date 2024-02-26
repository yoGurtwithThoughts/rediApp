import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:oech_app001/pages/session%202/otp_screen.dart';
import 'package:oech_app001/widgets/btn_widget.dart';
import 'package:oech_app001/widgets/s2_text_field_widget2.dart';

class ForgotPasswoprdPage extends StatefulWidget {
  const ForgotPasswoprdPage({super.key});

  @override
  State<ForgotPasswoprdPage> createState() => _ForgotPasswoprdPageState();
}

bool buttonPressed = false;

class _ForgotPasswoprdPageState extends State<ForgotPasswoprdPage> {
  final controllerEmail = TextEditingController();
  var buttonColor = Color(0xffA7A7A7);
  @override
  void initState() {
    super.initState();
    controllerEmail.addListener(() {
      if (controllerEmail.text != '') {
        buttonColor = Color(0xff0560FA);
      } else {
        buttonColor = Color(0xffA7A7A7);
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controllerEmail.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    EmailOTP myauth = EmailOTP();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 170, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Forgot Password',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontWeight: FontWeight.w500,
                  )),
              const Text(
                'Enter your email address',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(167, 167, 167, 1),
                ),
              ),
              const SizedBox(height: 56),
              Container(
                padding: EdgeInsets.zero,
                child: S2TextFieldWidget2(
                  controller: controllerEmail,
                  textTitle: 'Email Address',
                  textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                  textSize: 14,
                  hintText: '***********@mail.com',
                ),
              ),
              const SizedBox(height: 56),
              Column(
                children: [
                  SizedBox(
                    width: 380,
                    child: buttonPressed == false
                        ? ButtonWidget(
                            buttonName: 'Send OTP',
                            buttonColor: buttonColor,
                            onTap: () async {
                              buttonPressed = true;
                              setState(() {});
                              myauth.setConfig(
                                  appEmail: "contact@hdevcoder.com",
                                  appName: "Email OTP",
                                  userEmail: controllerEmail.text,
                                  otpLength: 6,
                                  otpType: OTPType.digitsOnly);
                              if (await myauth.sendOTP() == true) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("OTP has been sent"),
                                ));
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OtpScreen(
                                      email: controllerEmail.text,
                                      respOtp: myauth,
                                    ),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Oops, OTP send failed"),
                                  ),
                                );
                              }
                            },
                          )
                        : Center(
                            child: CircularProgressIndicator(
                              color: Color(0xff0560FA),
                            ),
                          ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Remember password? Back to ',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(167, 167, 167, 1)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign in',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(5, 96, 250, 1)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/signin');
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
