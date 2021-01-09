import 'package:flutter/material.dart';
import '../itemmanager.dart';
import '../pages/settings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              title: Text("Choose"),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Settings(),
                  ),
                )
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: ItemManager(),
    );
  }
}
