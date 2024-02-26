import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CallPageWidget extends StatelessWidget {
  final String imgName;
  final String name;
  const CallPageWidget({
    super.key,
    required this.imgName,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/$imgName'),
                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(
                    color: Color(0xff0560FA),
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '+234 603 6543 7265',
                  style: TextStyle(
                    color: Color(0xffA7A7A7),
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: 120),
                Container(
                  padding: EdgeInsets.all(55),
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/images/s5_plus.svg'),
                          SvgPicture.asset('assets/images/s5_pause.svg'),
                          SvgPicture.asset('assets/images/s5_video.svg'),
                        ],
                      ),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/images/s5_speaker.svg'),
                          SvgPicture.asset('assets/images/s5_microphone.svg'),
                          SvgPicture.asset('assets/images/s5_keyboard.svg'),
                        ],
                      ),
                      SizedBox(height: 70),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child:
                            SvgPicture.asset('assets/images/s5_callback.svg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
