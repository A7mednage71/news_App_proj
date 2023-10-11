import 'package:flutter/material.dart';

class TextFormwedgit extends StatelessWidget {
  TextFormwedgit(
      {super.key,
      required this.name,
      required this.icon,
      required this.obsure,
      this.word});

  final String name;
  final Icon icon;
  final bool obsure;

  Function(String)? word;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return 'field is requird';
          }
        },
        onChanged: word,
        obscureText: obsure,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.amber),
          prefixIconColor: Colors.amber,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2.0,
            ),
          ),
          labelText: name,
          prefixIcon: icon,
        ),
      ),
    );
  }
}
