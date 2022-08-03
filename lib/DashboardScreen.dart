import 'package:flutter/material.dart';

import 'package:appone/FirstScreen.dart';

void main() {
  runApp(DashboardScreen());
}

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MySecondApp(),
//     );
//   }
// }

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  void showToast() {}

  void _navigateToNextScreen(BuildContext context) {
    // Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (context) => second()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome to the app',
            style: TextStyle(color: Colors.amber, fontSize: 20),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black, width: 4),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text('welcome1'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black, width: 4),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text('welcome2'),
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black, width: 4),
                color: Colors.red,
              ),
              child: Center(
                child: Text('welcome3'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black, width: 4),
                color: Colors.red,
              ),
              child: Center(
                child: Text('welcome3'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter First name',
                    labelText: 'First Name',
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Last name',
                    labelText: 'Last Name',
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 20)),
              ),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('SignUp'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/first');
              },
            ),
            Image.asset('assets/logo.png')
          ],
        ),
      ),
    );
  }
}
