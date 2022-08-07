import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(BuildContext context, String title, IconData icon, String routeName) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          buildListTile(
            context,
            'Meals',
            Icons.restaurant,
            '/',
          ),
          buildListTile(context, 'Filters', Icons.settings, FilterScreen.routeName),
        ],
      ),
    );
  }
}
