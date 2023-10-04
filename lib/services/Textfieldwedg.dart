import 'package:flutter/material.dart';

class TextFormwedgit extends StatelessWidget {
  const TextFormwedgit({
    super.key,
    required this.name,
    required this.icon,
    required this.obsure,
  });

  final String name;
  final Icon icon;
  final bool obsure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        obscureText: obsure,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.amber),
          prefixIconColor: Colors.amber,
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
