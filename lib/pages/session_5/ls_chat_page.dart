import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oech_app001/model/message_class.dart';
import 'package:oech_app001/pages/session_5/call_page.dart';

class LsChatWidget extends StatefulWidget {
  final String imgName;
  final String name;
  const LsChatWidget({
    super.key,
    required this.imgName,
    required this.name,
  });

  @override
  State<LsChatWidget> createState() => _LsChatWidgetState();
}

List<MessageClass> listMessage = [
  MessageClass(
    message:
        'Hello, Please check your phone, I just booked you to deliver my stuff',
    type: '1',
  ),
  MessageClass(
    message: 'Thank you for contacting me.',
    type: '2',
  ),
  MessageClass(
    message: 'I am already on my way to the pick up venue.',
    type: '2',
  ),
  MessageClass(
    message: 'Alright, I wll be waiting',
    type: '1',
  ),
];

class _LsChatWidgetState extends State<LsChatWidget> {
  @override
  void dispose() {
    listMessage = [
      MessageClass(
        message:
            'Hello, Please check your phone, I just booked you to deliver my stuff',
        type: '1',
      ),
      MessageClass(
        message: 'Thank you for contacting me.',
        type: '2',
      ),
      MessageClass(
        message: 'I am already on my way to the pick up venue.',
        type: '2',
      ),
      MessageClass(
        message: 'Alright, I wll be waiting',
        type: '1',
      ),
    ];
    super.dispose();
  }

  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 90,
                bottom: 70,
              ),
              child: ListView.builder(
                itemCount: listMessage.length,
                itemBuilder: (BuildContext context, int index) {
                  if (listMessage[index].type == '1') {
                    return YourMessageWidget(text: listMessage[index].message);
                  } else if (listMessage[index].type == '2') {
                    return ResponseMessageWidget(
                        text: listMessage[index].message);
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(0, 2),
                    blurRadius: 5,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset('assets/images/s5_icon_arrow-left.png'),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/${widget.imgName}',
                        width: 43,
                        height: 43,
                      ),
                      const SizedBox(width: 9),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          widget.name,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CallPageWidget(
                            imgName: widget.imgName,
                            name: widget.name,
                          ),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.phone_outlined,
                      color: Color(0xff0560FA),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/images/s5_emoji.svg'),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        controller: messageController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'Enter message',
                          suffixIcon: const Icon(Icons.mic_outlined),
                          fillColor: const Color(0xffA7A7A7).withOpacity(0.7),
                          filled: true,
                          hoverColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        listMessage.add(
                          MessageClass(
                              message: messageController.text, type: '1'),
                        );
                        messageController.text = '';
                        setState(() {});
                      },
                      child: SvgPicture.asset('assets/images/s5_send_btn.svg'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResponseMessageWidget extends StatelessWidget {
  final String text;
  const ResponseMessageWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 220,
        ),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Color(0xffCFCFCF),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

class YourMessageWidget extends StatelessWidget {
  final String text;
  const YourMessageWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 220,
        ),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Color(0xff0560FA),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
