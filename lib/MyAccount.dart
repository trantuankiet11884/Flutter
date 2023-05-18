import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyOrders.dart';

class MyAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    radius: 40,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 64,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'user',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'user@gmail.com.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Orders'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrdersPage()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('My Addresses'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment Methods'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {},
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
