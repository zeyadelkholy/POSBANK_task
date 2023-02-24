import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../componants/off_button.dart';

class Option_Screen extends StatefulWidget {
  const Option_Screen({Key? key}) : super(key: key);

  @override
  State<Option_Screen> createState() => _Option_ScreenState();
}

class _Option_ScreenState extends State<Option_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded, size: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text('Options'),
          automaticallyImplyLeading: false,
          elevation: 3,
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Use local Database',textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height:10),
                Row(
                  children: [
                    Text('instaed of using HTTP call to work with the\napp data, please use Sql lite for this'),
                    Spacer(),
                    SwitchExample(),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
