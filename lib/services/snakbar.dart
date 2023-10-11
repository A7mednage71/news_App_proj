import 'package:flutter/material.dart';

void ShowSnak(BuildContext context, String state) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state)));
}
