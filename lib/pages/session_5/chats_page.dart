import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/app_bar.dart';
import 'package:oech_app001/widgets/chat_card_widget.dart';
import 'package:oech_app001/widgets/search_bar_widget.dart';

class ChatsPage extends StatelessWidget {
  static const routeName = '/chats-page';
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 4.0,
        centerTitle: true,
        title: AppBarWidget(
          text: 'Chats',
          isBack: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Column(
                children: [
                  SearchBarWidget(),
                  SizedBox(height: 25),
                  ChatCardWidget(
                    imgName: 's5_ava_John.png',
                    name: 'John Joshua',
                    subtitle: 'Thanks for your service',
                    indexMessage: 1,
                  ),
                  SizedBox(height: 16),
                  ChatCardWidget(
                    imgName: 's5_ava_Chinonso.png',
                    name: 'Chinonso James',
                    subtitle: 'Alright, I wll be waiting',
                    indexMessage: 0,
                  ),
                  SizedBox(height: 16),
                  ChatCardWidget(
                    imgName: 's5_ava_Raph.png',
                    name: 'Raph Ron',
                    subtitle: 'Thanks for your service',
                    indexMessage: 5,
                  ),
                  SizedBox(height: 16),
                  ChatCardWidget(
                    imgName: 's5_ava_Joy.png',
                    name: 'Joy Ezekiel',
                    subtitle: 'Thanks for your service',
                    indexMessage: 0,
                  ),
                  SizedBox(height: 16),
                  ChatCardWidget(
                    imgName: 's5_ava_Joy2.png',
                    name: 'Joy Ezekiel',
                    subtitle: 'Thanks for your service',
                    indexMessage: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
