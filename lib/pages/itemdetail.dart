import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final Map<String, String> item;
  ItemDetail(this.item);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Item Detail"),
        ),
        body: //Center(child:
            Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(item["img"]),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(item["title"]),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text("Delete Item"),
                onPressed: () => Navigator.pop(context, true),
              ),
            ),
          ],
        ),
        //),
      ),
    );
  }
}
