import 'package:flutter/material.dart';
class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff075E54),
        onPressed: (){},
        child: const Icon(Icons.call),
      ),
      body:  ListView(
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
                      Icon(Icons.arrow_forward,color: Colors.red,),

                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Text('9 April, 00:12',style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w600
                        ),),
                      ),

                    ],
                  ),
                  trailing:
                  const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Icon(Icons.call)
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
