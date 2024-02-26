import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oech_app001/widgets/btn_widget.dart';

class TrakingPage extends StatefulWidget {
  const TrakingPage({super.key});

  @override
  State<TrakingPage> createState() => _TrakingPageState();
}

class _TrakingPageState extends State<TrakingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 361,
            width: 658,
            child: Image(
              image: AssetImage('assets/images/traking.png'),
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 13, top: 6.5),
                child: Text('Traking Number',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.5, left: 8.5),
                child: SvgPicture.asset('assets/images/fr_170.svg'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13, top: 2.3),
                child: Text(
                  'Package Status',
                  style: TextStyle(color: Color.fromRGBO(167, 167, 167, 1)),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.5, left: 8.5),
                child: Row(children: [
                  SvgPicture.asset('assets/images/fr_178.svg'),
                  Padding(
                    padding: EdgeInsets.only(left: 5.5, top: 13),
                    child: SvgPicture.asset('assets/images/fr_179.svg'),
                  ),
                ]),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 55),
                  child: Container(
                    width: 362,
                    height: 55,
                    child: ButtonWidget( 
                      buttonName: 'View Package Info',
                      buttonColor: const Color.fromRGBO(5, 69, 250, 1),
                      onTap: () {
                        Navigator.pushNamed(context, '/main_page');
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
