import 'package:flutter/material.dart';

class MySwitch extends StatelessWidget {
  const MySwitch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Switch Button"),
        ),
        body: SwitchScreen(),
      ),
    );
  }
}
class SwitchScreen extends StatefulWidget {
  SwitchClass createState() => new SwitchClass();
}
class SwitchClass extends State<SwitchScreen> {
  bool isSwitched = false;
  var textValue ='Switch is Off';
  void toggleSwich (bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is On');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 2,
          child: Switch(
            value: isSwitched,
            onChanged: toggleSwich,           
            activeColor: Colors.white,
            activeTrackColor: Colors.green,
            inactiveThumbColor: Colors.blueAccent,
            inactiveTrackColor: Colors.grey,
          ),
        ),
        Text(
          "$textValue",
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}