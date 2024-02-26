import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Otp extends StatefulWidget {
  final TextEditingController otpController;

  const Otp({
    Key? key,
    required this.otpController,
  }) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

var otpColor = Color(0xffA7A7A7);
var isFilled = false;

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: TextFormField(
        controller: widget.otpController,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
            isFilled = true;
            otpColor = Color(0xff0560FA);
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
            isFilled = false;
            otpColor = Color(0xffA7A7A7);
          }
          setState(() {});
        },
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: otpColor,
            ),
          ),
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: otpColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: otpColor,
            ),
          ),
        ),
      ),
    );
  }
}

class OtpScreen extends StatefulWidget {
  final EmailOTP respOtp;
  final String email;
  const OtpScreen({
    Key? key,
    required this.respOtp,
    required this.email,
  }) : super(key: key);
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  var resentOtp;
  var buttonColor = Color(0xffA7A7A7);

  @override
  void initState() {
    super.initState();
    otp6Controller.addListener(() {
      if (otp6Controller.text != '') {
        buttonColor = Color(0xff0560FA);
      } else {
        buttonColor = Color(0xffA7A7A7);
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    otp6Controller.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    EmailOTP myauth;
    if (resentOtp == null) {
      myauth = widget.respOtp;
    } else {
      myauth = resentOtp;
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text(
              "OTP Verification",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "Enter the 6 digit numbers sent to your email",
              style: TextStyle(
                color: Color(0xffA7A7A7),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Otp(
                  otpController: otp1Controller,
                ),
                Otp(
                  otpController: otp2Controller,
                ),
                Otp(
                  otpController: otp3Controller,
                ),
                Otp(
                  otpController: otp4Controller,
                ),
                Otp(
                  otpController: otp5Controller,
                ),
                Otp(
                  otpController: otp6Controller,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: Wrap(
                children: [
                  Text(
                    'If you didn’t receive code, ',
                    style: TextStyle(
                      color: Color(0xffA7A7A7),
                      fontSize: 14,
                    ),
                  ),
                  InkWell(
                    focusNode: FocusNode(skipTraversal: true),
                    onTap: () async {
                      myauth.setConfig(
                          appEmail: "contact@hdevcoder.com",
                          appName: "Email OTP",
                          userEmail: widget.email,
                          otpLength: 6,
                          otpType: OTPType.digitsOnly);
                      if (await myauth.sendOTP() == true) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("OTP has been resent"),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Oops, OTP not resended"),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'resend',
                      style: TextStyle(
                        color: Color(0xff0560FA),
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            InkWell(
              onTap: () async {
                if (buttonColor == Color(0xff0560FA)) {
                  if (await myauth.verifyOTP(
                          otp: otp1Controller.text +
                              otp2Controller.text +
                              otp3Controller.text +
                              otp4Controller.text +
                              otp5Controller.text +
                              otp6Controller.text) ==
                      true) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("OTP is verified"),
                      ),
                    );
                    Navigator.pushNamed(context, '/newpass');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Invalid OTP"),
                    ));
                    otpColor = Color(0xffED3A3A);
                    setState(() {});
                  }
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Center(
                  child: const Text(
                    "Set New Password",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
