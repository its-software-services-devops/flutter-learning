import 'package:flutter/material.dart';

class TestListview extends StatelessWidget {
  const TestListview({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _testTile('Seubpong Monsar', '85 W Portal Ave', Icons.theaters),
        _testTile('Prakaporn Monsarrrrr', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        const Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile(
            'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
        title: Text(title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.purple[500],
        ),
      );
}

Padding _testTile(String title, String subtitle, IconData icon) {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Row(
      children: [ 
        Icon(icon, color: Colors.purple[500],),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ))),
        IconButton(
          iconSize: 14,
          icon: Icon(Icons.edit, color: Colors.blue[500],),
          onPressed: () {},
          )
      ],
    ));
}