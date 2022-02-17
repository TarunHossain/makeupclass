import 'package:flutter/material.dart';
class RadioWidget extends StatelessWidget {
  const RadioWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Radio Button"),
        ),
        body: ButtonWidget(),
      ),
    );
  }
}
class ButtonWidget extends StatefulWidget {
  const ButtonWidget({ Key? key }) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}
enum OS {mac, windows, linux, Tarun, Faysal, Fahim}
class _ButtonWidgetState extends State<ButtonWidget> {
  OS? _os = OS.mac;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          const Text("Which is your operating system?"),
          const SizedBox(height: 10,),
          ListTile(
            title: const Text('Mac'),
            leading: Radio<OS>(
              value: OS.mac, 
              groupValue: _os, 
              onChanged: (OS? value){
                setState(() {
                  _os = value;
                });
              } ),
          ),
           ListTile(
            title: const Text('Windows'),
            leading: Radio<OS>(
              value: OS.windows, 
              groupValue: _os, 
              onChanged: (OS? value){
                setState(() {
                  _os = value;
                });
              } ),
          ), ListTile(
            title: const Text('Linux'),
            leading: Radio<OS>(
              value: OS.linux, 
              groupValue: _os, 
              onChanged: (OS? value){
                setState(() {
                  _os = value;
                });
              } ),
          ),
          const SizedBox(height: 30,),
          const Text("Which is your name?"),
          const SizedBox(height: 10,),
          ListTile(
            title: const Text('Tarun'),
            leading: Radio<OS>(
              value: OS.Tarun, 
              groupValue: _os, 
              onChanged: (OS? value){
                setState(() {
                  _os = value;
                });
              } ),
          ),
           ListTile(
            title: const Text('Faysal'),
            leading: Radio<OS>(
              value: OS.Faysal, 
              groupValue: _os, 
              onChanged: (OS? value){
                setState(() {
                  _os = value;
                });
              } ),
          ), ListTile(
            title: const Text('Fahim'),
            leading: Radio<OS>(
              value: OS.Fahim, 
              groupValue: _os, 
              onChanged: (OS? value){
                setState(() {
                  _os = value;
                });
              } ),
          ),
        ],
        
      ),
      
    );
  }
}
