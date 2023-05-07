import 'package:flutter/material.dart';

import 'main_button.dart';
import 'test_listview.dart';
import 'test_avata.dart';
import 'test_card.dart';

class AppMainPage extends StatefulWidget {
  final String title;

  const AppMainPage({super.key, required this.title});

  @override
  State<AppMainPage> createState() => _AppMainPageState();
}

class _AppMainPageState extends State<AppMainPage> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
      Text('Index 0: Home', style: optionStyle),
      Text('Index 0: Business', style: optionStyle),
      Text('Index 0: School', style: optionStyle)
    ];

  Widget _buildHome() {
    return(Row(
      mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [ 
                  TestAvata(),
                  TestCard()
                ])),
          const Expanded(
            flex: 2,
            child: TestListview()),
          ]));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getCurrentWidget(int index)
  {
    if (index == 0)
    {
      return(_buildHome());   
    }

    return(_widgetOptions.elementAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo !!!"),
      ),
      body: Center(
        child: _getCurrentWidget(_selectedIndex)
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
