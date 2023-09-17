import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.pink, Colors.lightBlueAccent],
                ),
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      icon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      icon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Login'),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.fingerprint,
                        color: Colors.pink,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Sign in with fingerprint',
                        style: TextStyle(color: Colors.lightBlueAccent),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0), // Menambahkan spasi antara baris
                  Text(
                    'Dont have an account yet? Sign up now!',
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.pink[200],
              padding: EdgeInsets.all(16.0),
              child: Text(
                'How to login:\n\n'
                '1. Enter your username and password.\n'
                    '2. Press the Login button\n'
                    '3. If you dont have an account yet, you can register by following the link below',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
