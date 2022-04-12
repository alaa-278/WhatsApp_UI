import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/Screens/status_screen.dart';
import 'package:whatsapp/Screens/chat_screen.dart';
import 'package:whatsapp/Screens/call_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  late int x;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: const Text(
            'WhatsApp',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom:  TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: IconButton(
                  onPressed: () async{
                   ImagePicker picker = ImagePicker();
                   XFile? result = await picker.pickImage(source: ImageSource.camera);
                   print(result!.path);
                  },
                  icon: const Icon(Icons.camera_alt),
                ) ,
              ),
              const Tab(
                child: Text('Chats'),
              ),
              const Tab(
                child: Text('Status'),
              ),
              const Tab(
                child: Text('Calls'),
              ),
            ],
          ),
        ),

        body:

        TabBarView(
          children: [
             Container(),
             const ChatScreen(),
             const StatusScreen(),
             const CallScreen(),

          ],
        )


      ),
    );
  }
}
