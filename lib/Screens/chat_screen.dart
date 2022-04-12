import 'package:flutter/material.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff075E54),
        onPressed: (){},
        child: const Icon(Icons.message_sharp),
      ),
      body:
      ListView(
        children: List.generate(
            12,
                (index) => Stack(
              children: [
                ListTile(
                  leading:
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/flower2.jpg'),
                  ),
                  title: const Text(
                    "Alaa Amin",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle:
                  Row(
                    children: const [
                      Icon(Icons.done_all,color: Colors.blue,),
                      SizedBox(width: 5,),
                      Text('Hello How are you? '),

                    ],
                  ),
                  trailing: const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child:  Text('00:12',style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                ),
              ],
            )),

      ),
    );
  }
}


