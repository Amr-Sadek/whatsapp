import 'package:flutter/material.dart';
import '/assignment_flutter 1/whatsapp/message.dart';
// dart format off

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 44,
        backgroundColor: Color(0xff168c4b),
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(('assets/images/whatsapp/menu.png'),
              color: Colors.white
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/whatsapp/profile_image.png'),
            ),
            SizedBox(width: 10),
            Text('Amr Sadek' , style: TextStyle(color: Colors.white)),
          ],
        ),
        actions: [
          ImageIcon(AssetImage('assets/images/whatsapp/Phone.png') , color: Colors.white, size: 25),
          SizedBox(width: 16),
          ImageIcon(AssetImage('assets/images/whatsapp/video.png') , color: Colors.white, size: 25),
          SizedBox(width: 16),
          ImageIcon(AssetImage('assets/images/whatsapp/More-vertical.png') , color: Colors.white, size: 25),
          SizedBox(width: 15),
        ]
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff181818),
          image: DecorationImage(
            image: AssetImage('assets/images/whatsapp/background_pattern.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15, top: 33, right: 15),
          child: Column(
            spacing: 16,
            children: [
              Message(
                alignment: Alignment.centerLeft,
                text: 'Hello !',
                boxWidth: 79,
              ),
              Message(
                text: 'Hello !',
                alignment: Alignment.centerRight,
                boxWidth: 79,
                boxColor: 0xff232D36,
                topLeftRadius: 16,
                topRightRadius: 0,
              ),
              Message(
                text: 'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
                alignment: Alignment.centerLeft,
                boxWidth: 268,
              ),
              Message(
                text: 'what a Great Content Tp learn Flutter',
                alignment: Alignment.centerLeft,
                boxWidth: 268,
                imagePath: 'assets/images/whatsapp/message_image.png',
              ),
              Message(
                text: 'what a Great Content Tp learn Flutterwhat a Great Content Tp learn Flutter',
                alignment: Alignment.centerRight,
                boxWidth: 267,
                boxColor: 0xff232D36,
                topLeftRadius: 16,
                topRightRadius: 0,
              ),
              Row(
                children: [
                  Container(
                    width: 304,
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(39),
                      border: Border.all(
                        color: Color(0xff168c4b),
                        width: 2,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 14),
                        Icon(Icons.camera_alt_outlined,color: Colors.white,),
                        SizedBox(width: 8),
                        Text('Type a message ...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 115),
                          child: Icon(Icons.send,color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff168c4b),
                    child: Icon(Icons.mic,color: Colors.white,),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// dart format on
