import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;

  const MyTextField({
    super.key,
    required TextEditingController controller,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            labelText: labelText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
