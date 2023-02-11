import 'package:flutter/material.dart';
import 'package:notify_me_sa/screens/eskom.dart';
import 'package:notify_me_sa/screens/news.dart';
import 'package:notify_me_sa/screens/weather.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentPageIndex = 0;

  void _selected(int index){
    setState(() {
      _currentPageIndex = index;
    });
  }

  List pages = [
    const Eskom(),
    const Weather(),
    const News()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb), label: 'Eskom'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sunny_snowing), label: 'Weather'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
        ],
        onTap: _selected,
        currentIndex: _currentPageIndex,
      ),
      body: pages[_currentPageIndex],
      // drawer: Drawer(child: News(),),
    );
  }
}
