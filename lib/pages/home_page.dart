import 'package:coffee_ui_app/components/body_widget.dart';
import 'package:flutter/material.dart';
import 'package:coffee_ui_app/components/bottom_navigator_widget.dart';
import 'package:coffee_ui_app/components/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: buildAppBar(),
        body: buildBody(),
        bottomNavigationBar: buildBottomNavigationBar());
  }
}
