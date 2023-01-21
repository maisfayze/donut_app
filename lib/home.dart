import 'package:donut_app/tabs/burger_tab.dart';
import 'package:donut_app/tabs/dount_tab.dart';
import 'package:donut_app/tabs/pancake_tab.dart';
import 'package:donut_app/tabs/pizza_tab.dart';
import 'package:donut_app/tabs/smoothie_tab.dart';
import 'package:donut_app/utils/my_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> myTab = [
    //donut tab
    MyTab(
      iconPath: 'images/dount.png',
    ),
    //burger
    MyTab(iconPath: 'images/burgu.png'),

    //pizza
    MyTab(iconPath: 'images/pizza.png'),
    //smoothie
    MyTab(iconPath: 'images/smoothie.png'),

    //pancake
    const MyTab(iconPath: 'images/pancake.png')
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  // account button tapped
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 24, color: Colors.grey[600]),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),

            // tab bar
            TabBar(tabs: myTab, indicatorColor: Colors.pink),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  Donut(),
                  Burger(),
                  Pizza(),
                  Smooth(),
                  Pancake(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
