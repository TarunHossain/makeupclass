import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class TableWidget extends StatefulWidget {
  const TableWidget({ Key? key }) : super(key: key);

  @override
  _TableWidgetState createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Data Table"),
        ),
        body: ListView(
          children: [
            Center(
              child: Text("Student Name List", style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold
              ),),
            ),
            DataTable(columns: [
              DataColumn(label: Text('Roll No',style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold
              ),)),
              DataColumn(label: Text('Name',style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold
              ),)),
              DataColumn(label: Text('Class',style: TextStyle(
                color: Colors.amber,
                fontSize: 20, fontWeight: FontWeight.bold,
                
              ),)),
            ], 
            rows:[
              DataRow(cells: 
              [
                DataCell(Text('001')),
              DataCell(Text('TARUN')),
              DataCell(Text('Masters')),
              ]
              ),
              DataRow(cells: 
              [
                DataCell(Text('002')),
              DataCell(Text('Foysal')),
              DataCell(Text('Honours')),
              ]
              ),DataRow(cells: 
              [
                DataCell(Text('003')),
              DataCell(Text('Ridoy')),
              DataCell(Text('3')),
              ]
              ),DataRow(cells: 
              [
                DataCell(Text('004')),
              DataCell(Text('FAHIM')),
              DataCell(Text('4')),
              ]
              ),
            ] ),
          ],
        ),
      ),
    );
  }
}