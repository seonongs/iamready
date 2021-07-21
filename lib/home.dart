import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nurschedule',
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 100)),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.settings,
                color: Color.fromRGBO(0, 0, 0, 10),
              ),
              onPressed: () {
                print('setting');
              }),
          IconButton(
            icon: const Icon(Icons.logout,
              color: Color.fromRGBO(0, 0, 0, 11),
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => const LoginPage()));
              print('Logout');
            },
          ),
        ],
      ),
      body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.yellowAccent,
              onPrimary: Colors.black,
            ),
            onPressed: () {
              // Respond to button press
            },
            child: const Text('HomePage'),
          ),
        ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/ssk2.png'),
                backgroundColor: Colors.white,
              ),
              accountName: const Text('신세경',
                style: TextStyle(color: Color.fromRGBO(10, 0, 0, 100)),
              ),
              accountEmail: const Text('ssk@gmail.com',
                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 200)),
              ),
              onDetailsPressed: () {
                print('arrow');
              },
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )),
            ),
            ListTile(
              leading: const Icon(Icons.home,
                color: Color.fromRGBO(10, 10, 10, 10),
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) => const HomePage()));
                print('Home');
              },
              trailing: const Icon(Icons.format_align_justify),
            ),
            ListTile(
              leading: const Icon(Icons.schedule,
                color: Color.fromRGBO(10, 10, 10, 10),
              ),
              title: const Text('Schedule'),
              onTap: () {
                print('Schedule');
              },
              trailing: const Icon(Icons.format_align_justify),
            ),
            ListTile(
              leading: const Icon(Icons.local_hospital,
                color: Color.fromRGBO(10, 10, 10, 10),
              ),
              title: const Text('Group'),
              onTap: () {
                print('Group');
              },
              trailing: const Icon(Icons.format_align_justify),
            ),
            ListTile(
              leading: const Icon(Icons.people,
                color: Color.fromRGBO(10, 10, 10, 10),
              ),
              title: const Text('Friend'),
              onTap: () {
                print('Friend');
              },
              trailing: const Icon(Icons.format_align_justify),
            ),
            ListTile(
              leading: const Icon(Icons.question_answer,
                color: Color.fromRGBO(10, 10, 10, 10),
              ),
              title: const Text('Q&A'),
              onTap: () {
                print('Q&A');
              },
              trailing: const Icon(Icons.format_align_justify),
            ),
          ],
        ),
      ),
    );
  }
}
