import 'package:flutter/material.dart';
import 'package:taxi_app/pages/notification_history_page.dart';
import 'package:taxi_app/pages/profile_page.dart';
import 'package:taxi_app/pages/ride_history_page2.dart';
import 'package:taxi_app/pages/support_page.dart';
import 'package:taxi_app/pages/wallet_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            accountEmail: Text(''), // keep blank text because email is required
            accountName: Row(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    child: Icon(
                      Icons.check,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(''),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Waceem Virk',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.price_change_rounded,
              color: Colors.black87,
            ),
            title: Text(
              "Wallet",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () async {
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WalletPage(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.notification_important_rounded,
              color: Colors.black87,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () async {
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationHistoryPage(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.history,
              color: Colors.black87,
            ),
            title: Text(
              "Ride History",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () async {
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RideHistoryPage2(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.schedule_rounded,
              color: Colors.black87,
            ),
            title: Text(
              "Schedules Rides",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () async {
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profile_page(),
                  ));
            },
            leading: Icon(
              Icons.help_center_rounded,
              color: Colors.black87,
            ),
            title: Text(
              "Help",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () async {
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SupportPage(),
                  ));
            },
            leading: Icon(
              Icons.logout_rounded,
              color: Colors.black87,
            ),
            title: Text(
              "Logout",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
