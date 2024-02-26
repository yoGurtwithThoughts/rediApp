import 'package:flutter/material.dart';
import 'package:oech_app001/Pages/session_5/ls_chat_page.dart';

class ChatCardWidget extends StatelessWidget {
  final String imgName;
  final String name;
  final String subtitle;
  final int indexMessage;
  const ChatCardWidget({
    super.key,
    required this.imgName,
    required this.name,
    required this.subtitle,
    required this.indexMessage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LsChatWidget(
              name: name,
              imgName: imgName,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(
                width: 1,
                color: const Color(0xffA7A7A7),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: Row(
              children: [
                Image.asset('assets/images/$imgName'),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                indexMessage != 0
                    ? Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Color(0xff0560FA),
                          borderRadius: BorderRadius.all(
                            Radius.circular(140),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '$indexMessage',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
