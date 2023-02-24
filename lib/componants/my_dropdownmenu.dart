import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const List<String> list = <String>['Mohamed', 'Zeyad', 'Ali'];

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatefulWidget {
  const DropdownButtonApp({super.key});

  @override
  State<DropdownButtonApp> createState() => _DropdownButtonAppState();
}

class _DropdownButtonAppState extends State<DropdownButtonApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),

      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: DropdownButton<String>(
          hint: Text('Assign to User'),
          isExpanded: true,

          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          elevation: 5,
          style: const TextStyle(color: Colors.grey),
          underline: Container(

          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
