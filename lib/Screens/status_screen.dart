import 'package:flutter/material.dart';
class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff075E54),
        onPressed: (){},
        child: const Icon(Icons.camera_alt),
      ),
      body: ListView(
        children: List.generate(
            12,
                (index) => Stack(
              children: const [
                ListTile(
                  leading:
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff36c0a5),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/flower2.jpg'),
                    ),
                  ),
                  title:  Text(
                    "My status",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: (Text('10 minutes ago')),

                ),
              ],
            )),
      ),
    );
  }
}
