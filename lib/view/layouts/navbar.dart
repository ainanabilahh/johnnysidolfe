import 'package:flutter/material.dart';
// import 'package:johnnysidolfe/groups.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.home), onPressed: () {}),
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                SizedBox(width: 40), // The dummy child
                IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
                IconButton(icon: Icon(Icons.message), onPressed: () {}),
              ],
            ),
          )),
    );
  }
}
