import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:fluttertoast/fluttertoast.dart';

import '../componants/my_dropdownmenu.dart';


class Edit_Note extends StatefulWidget {
   Edit_Note({Key? key}) : super(key: key);

  @override
  State<Edit_Note> createState() => _Edit_NoteState();
}

class _Edit_NoteState extends State<Edit_Note> {
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
          title: const Text('Edit Note'),
          automaticallyImplyLeading: false,
          elevation: 3,
          backgroundColor: Colors.blueAccent,
          actions: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.save, size: 20),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Note has been Edited Successfuly",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                    Navigator.of(context).pop();
                  },
                ),

              ],
            )
          ],
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(15),
            child: Column(
              children:  [
                TextField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Note',

                  ),
                ),

                SizedBox(height: 20,),
                DropdownButtonExample(),

              ],
            ),
          ),
        ),

      ),
    );
  }
}
