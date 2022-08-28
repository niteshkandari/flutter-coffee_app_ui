import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: const Icon(Icons.menu),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.person),
        ),
      ]);
}
