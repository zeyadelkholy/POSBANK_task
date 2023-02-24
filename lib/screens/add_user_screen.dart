import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../componants/validator_textfield.dart';

class AddUser_Screen extends StatefulWidget {
  const AddUser_Screen({Key? key}) : super(key: key);

  @override
  State<AddUser_Screen> createState() => _AddUser_ScreenState();
}

class _AddUser_ScreenState extends State<AddUser_Screen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  ImagePicker picker = ImagePicker();
  XFile? image;

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
        title: const Text('Add User'),
        elevation: 3,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CircleAvatar(
                  maxRadius: 50,
                  child:
                      Image.asset('lib/assets/profile.png', fit: BoxFit.cover),
                ),
              ),
              MaterialButton(
                  color: Colors.blue,
                  child: const Text(
                      "Pick Image",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold
                      )
                  ),
                  onPressed: () {

                    File? image;
                    Future pickImage() async {
                      try {
                        final image = await ImagePicker().pickImage(source: ImageSource.gallery);
                        if(image == null) return;
                        final imageTemp = File(image.path);
                        setState(() => this.image = imageTemp as XFile?);
                      } on PlatformException catch(e) {
                        print('Failed to pick image: $e');
                      }
                    }
                  }
              ),

              validator(),
            ],
          ),
        ),
      ),
    ));
  }
}
